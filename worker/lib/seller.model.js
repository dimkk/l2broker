'use strict';
var q = require('q');
var coll = require('./coll');

var mongoose = require('bluebird').promisifyAll(require('mongoose'));
var Schema = mongoose.Schema;

var rawSellerSchema = new Schema({
  name: {type:String, index:true},
  lastmodified:Date,
  instancesCount:Number,
  instances:[
	  {
		coords:{
			x:String,
			y:String,
			z:String
		},
		zoneId:String,
		city:String,
		date:Date,
		items:[
			{
				q:Number,
      			price:Number,
				id:Number
			}
		]
	  }
  ]
});

var model = mongoose.model('sellers', rawSellerSchema);

module.exports = model;
