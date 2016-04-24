'use strict';

var mongoose = require('bluebird').promisifyAll(require('mongoose'));
var Schema = mongoose.Schema;
var q = require('q');
var _ = require('lodash');
var moment = require('moment');

var ItemSchema = new Schema({
	id: { type: Number, index: true },
	imageUrl: String,
	title: { type: String, index: true },
	description: String,
	lastmodified:Date,
	sellers: [
		{
			coords: {
				x: String,
				y: String,
				z: String
			},
			zoneId: String,
			city: String,
			date: {type: Date, index:true},
			q: Number,
			price: Number,
			name: String,
			bulk: Boolean,
            attackAttr:Number,
            attackPower:Number,
            enchant:Number,
            fire:Number,
            water:Number,
            wind:Number,
            earth:Number,
            holy:Number,
            unholy:Number
		}
	],
	buyers: [
		{
			coords: {
				x: String,
				y: String,
				z: String
			},
			zoneId: String,
			city: String,
			date: {type: Date, index:true},
			q: Number,
			price: Number,
			name: String
		}
	],
	sellersCount: Number,
	buyersCount: Number,
	averageBuyPrice: Number,
	averageSellPrice: Number,
    averageSellPriceA150: Number,
    averageSellPriceA150E45: Number,
    averageSellPriceA150E6: Number,
    averageSellPriceA150E710: Number,
    averageSellPriceA150E1113: Number,
    averageSellPriceA150E14: Number,
    averageSellPriceA300: Number,
    averageSellPriceA300E45: Number,
    averageSellPriceA300E6: Number,
    averageSellPriceA300E710: Number,
    averageSellPriceA300E1113: Number,
    averageSellPriceA300E14: Number,

});
var model = mongoose.model('items', ItemSchema);

model.getItems = function (query) {

  if (query.laterThen) query.laterThen = new Date(query.laterThen);
  _.extend({
    q: '',
    sortField:'averageSellPrice',
    sortOrder:-1,
    size:50,
    page:1,
    enchant:false,
    attr:false,
    attackAttrMax:300,
    laterThen: moment().subtract(1, 'months')
  }, query);
  
  var findpattern = {};
  var sortPattern = {};
  if (query.q){
    var pat = query.q;
    findpattern =  { title: new RegExp(pat, 'i') }//{$text: {$search:newqq}};
  }
  findpattern.lastmodified = {'$gte':query.laterThen};
  findpattern.id = {'$nin': [1104, 5482, 7814, 5588, 118, 2163]};
  if (query.sortField  && query.sortOrder){
    sortPattern[query.sortField] = query.sortOrder;
  }
  sortPattern.lastmodified = -1;
  // if (query.enchant){
  //   findpattern['sellers.enchant'] = {$gt: 0};
  // }
  // if (query.attr){
  //   findpattern['sellers.attackPower'] = {$gt: 0};
  // }
  

  console.log(findpattern);
  var def = q.defer();
  this
    .find(findpattern, { sellers: { $slice: 0 }, buyers: { $slice: 0 } })
    .sort(sortPattern)
    .skip((parseInt(query.page) - 1) * parseInt(query.size))
    .limit(parseInt(query.size))
    .select('title imgSrc id sellersCount buyersCount averageBuyPrice averageSellPrice ')
    .exec(function (err, data) {
      def.resolve(data);
      //console.log(data);;
    });
  return def.promise;
}

model.getItem = function (id, params) {
  var def = q.defer();
  var aggOpts;
  var sortPattern = {};
  
  if (!params.size) params.size = 20;
  if (!params.page) params.page = 1;

  var skip = (parseInt(params.page) - 1) * parseInt(params.size);

  if (params.sortField  && params.sortOrder){
    sortPattern[params.sortField] = parseInt(params.sortOrder);
  }
  
  if (params.type === 'sell'){
    aggOpts = [
      { $match: { id : parseInt(id) } },
      { $unwind: '$sellers' },
      { $sort: 
        sortPattern
      },
      {$skip: skip},//(parseInt(params.page) - 1) * parseInt(params.size)},
      {$limit: (parseInt(params.size))},
      { $group: {'_id':'$_id', 'sellers': {$push:'$sellers'}, 'title': {$first:'$title'}, 'imgSrc': {$first:'$imgSrc'}}}
      
    ];
  }
  if (params.type === 'buy'){
    aggOpts = [
      { $match: { id : parseInt(id) } },
      { $unwind: '$buyers' },
      { $sort: 
      sortPattern
      },
      {$skip: skip},//(parseInt(params.page) - 1) * parseInt(params.size)},
      {$limit: 20},
      { $group: {'_id':'$_id', 'buyers': {$push:'$buyers'}, 'title': {$first:'$title'}, 'imgSrc': {$first:'$imgSrc'}}}
      
    ];
  }
  
  this.aggregate(aggOpts, function(err, res){
    def.resolve(res);
  });
   return def.promise;;
}

module.exports = model;