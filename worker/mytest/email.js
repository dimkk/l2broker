'use strict';

var checkToAlert = require('../lib/checkToAlert');


 var itemSeller = { 
            city: 'giran',
            price: '1000',
            name: 'test',
            attackPower:'500',
            enchant:'1',
          };
 var dbItem = {
     averageSellPrice : 2000,
     averageSellPriceA150E45 : 2000,
     title : "testItem",
     id : 15744
 }

checkToAlert(dbItem, itemSeller, 'store');

