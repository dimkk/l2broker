'use strict';
var q = require('q');

var mongoose = require('bluebird').promisifyAll(require('mongoose'));
var Schema = mongoose.Schema;

var itemsArchiveSchema = new Schema({
	id: { type: Number, index: true },
	imageUrl: String,
	title: { type: String, index: true },
	description: String,
	lastmodified: Date,
	dates: [
		{
			date: String,
			sellers: [
				{
					coords: {
						x: String,
						y: String,
						z: String
					},
					zoneId: String,
					city: String,
					date: { type: Date, index: true },
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
					date: { type: Date, index: true },
					q: Number,
					price: Number,
					name: String
				}
			],
			sellersCount: Number,
			buyersCount: Number,
			averageBuyPrice: Number,
			averageSellPrice: Number
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

var model = mongoose.model('itemsArchive', itemsArchiveSchema);

module.exports = model;
