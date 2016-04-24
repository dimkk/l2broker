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

itemM.aggregateAsync([
   	{
		$group: {
			_id: "$id",
			count: { $sum: 1 },
			ids: { $push: '$_id' }
		}
	}
]).then(function (items) {
	items.forEach(function (val, index, arr) {
		console.log(val.count + ' ' + val._id);
		if (val.count > 1) {
			val.ids.forEach(function (vv) {
				console.log(vv);
				var anotherDef = q.defer();
				itemM.findOneAsync({ _id: vv }).then(function (data) {
					//console.log(data);
					if (!data.title) {
						itemM.findByIdAndRemoveAsync({ _id: vv }).then(function () {
							console.log('done removing ' + vv);
							anotherDef.resolve();
						});
					}
				})
			});
		}
	});
});

