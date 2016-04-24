var q = require('q');
var duration = require('gulp-duration');
var del = require('del');
require('console-stamp')(console, '[HH:MM:ss.l]');
var fs = require('fs');
var mongoose = require('mongoose');


var sellerM = require('./seller.model');
var buyerM = require('./buyer.model');
var itemM = require('./item.model');
var itemMA = require('./itemArchive.model');
var opts = require('./opts');

mongoose.connect(opts.mongoCreds.url, {
  user: opts.mongoCreds.name,
  pass: opts.mongoCreds.pass
});
mongoose.connection.on('error', function (err) {
  console.error('MongoDB connection error: ' + err);
});

function clean(){
	var def = q.defer();
	var proms = [];
	 itemM.aggregateAsync(  [
   	{ 
               $group : {
				    _id : "$id" ,
					count: {$sum: 1},
					ids:{$push: '$_id'}
				} 
      }
   ]).then(function(items){
		 items.forEach(function(val, index, arr){
			if (val.count > 1){
				val.ids.forEach(function(vv){
					var anotherDef = q.defer();
					itemM.findOneAsync({_id:vv}).then(function(data){
						if (!data.title){
							itemM.findByIdAndRemoveAsync({_id:vv}).then(function(){
								console.log('done removing ' + vv);
								anotherDef.resolve();
							});
						}
					})
					proms.push(anotherDef.promise);
				});
			}
			if (index + 1 == arr.length){
				q.all(proms).then(function(){
					def.resolve();
				})
			}
		 });
	 });
	 
	return def.promise;
}

//archive();
function archive(){
	var def = q.defer();
	var proms = [];
	 itemM.findAsync().then(function(data){
		 data.forEach(function(item, index, arr){
			 proms.push(processItem(item));
			 if (index + 1 === arr.length){
				 q.all(proms).then(function(){
					def.resolve(); 
				});
			 }
		 });
	 });
	 
	return def.promise;
}

function processItem(item){
	var def = q.defer();
	var sellL = item.sellers.length;
	var buyL = item.buyers.length;
	if (sellL > 500){
		var diff = sellL - 500;
		console.log(item.sellers.length);
		item.sellers.splice(500, diff);	
		console.log(item.sellers.length);
	}
	if (buyL > 500){
		var diff = buyL - 500;
		console.log(item.buyers.length);
		item.buyers.splice(500, diff);	
		console.log(item.buyers.length);
		
	}
	item.save(function(){
			def.resolve();
			console.log('done removing items from ' + item.id);
		});
	return def.promise;
}
module.exports = {
	archive:archive,
	clean:clean
}