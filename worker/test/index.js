'use strict';

var assert = require('assert');
var l2BrokerWorker = require('../lib');
var checkToAlert = require('../lib/checkToAlert');

describe('l-2-broker-worker', function () {
  it('should have unit test!', function () {
    assert(false, 'we expected this package author to add actual unit tests.');
  });
});


 var itemSeller = { 
            city: 'giran',
            price: '1000',
            name: 'test',
            attackPower:'500',
            enchant:'1',
          };
 var dbItem = {
     dbItem.averageSellPrice = 2000,
     dbItem.averageSellPriceA150E45 = 2000,
     title = "testItem",
     id = 15744
 }
 
 describe('l-2-broker-worker', function () {
  it('should have unit test!', function () {
    checkToAlert(dbItem, itemSeller, 'store');
  });
});
 
