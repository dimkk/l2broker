var q = require('q');
module.exports = function(model){
    var def = q.defer();
    var regularDef = q.defer();
    var proms = [];
    var regualarFindPattern = {
        //'sellers.enchant':{ $lte : 3}
        //,
        // 'sellers.attackPower': 0,
        // 'sellers.fire':0,
        // 'sellers.water':0,
        // 'sellers.wind':0,
        // 'sellers.earth':0,
        // 'sellers.holy':0,
        // 'sellers.umholy':0
    };
    
    // var fp150 = {
    //     $and:[
    //         {'sellers.enchant':{ $lte : 3} },
    //         {
    //             $or:[
    //                 {'sellers.attackPower': {$lte: 150}},
    //                 {'sellers.fire':{$lte: 60}},
    //                 {'sellers.water':{$lte: 60}},
    //                 {'sellers.wind':{$lte: 60}},
    //                 {'sellers.earth':{$lte: 60}},
    //                 {'sellers.holy':{$lte: 60}},
    //                 {'sellers.umholy':{$lte: 60}}
    //             ]
    //         }
    //     ]
    // };
    
    var fp45 = {
        $and:[
            {'sellers.enchant':{ $lte : 5} },
            {'sellers.enchant':{ $gt : 3} },
        ]
    }
    var fp6 = {'sellers.enchant':6 };
    var fp710 = {
        $and:[
            {'sellers.enchant':{ $lte : 10} },
            {'sellers.enchant':{ $gt : 6} },
        ]
    }
    var fp1113 = {
        $and:[
            {'sellers.enchant':{ $lte : 13} },
            {'sellers.enchant':{ $gt : 10} },
        ]
    }
    
    var fp14 =  {'sellers.enchant':{ $gt : 13} }
    
    model.findAsync(regualarFindPattern, {id:1, title:1, imgSrc:1, sellers:{$slice:20}, buyers:{$slice:20} })
        .then(function(docs){
            
        docs.forEach(function(v,index, arr){
            var abuy, asell;
            var priceDef = q.defer();
            if (v.buyers.length > 0){
                abuy = findMedian(v.buyers, 'price');
                if(v.sellers.length < 20){
                }
            }
             if (v.sellers.length > 0){
                asell = findMedian(v.sellers, 'price');
            }
            model.updateAsync(
                            {id:v.id},{$set:{
                             averageBuyPrice: abuy || 0,
                             averageSellPrice: asell || 0         
                        }}).then(function(result){
                            priceDef.resolve();
                        });
            proms.push(priceDef.promise);
        });
        q.all(proms).then(function(){
            regularDef.resolve();
            console.log('regular done');
        })
    });
    
    var finalProms = [regularDef.promise,
        processMedian(fp45, 'averageSellPriceA150E45', model),
        processMedian(fp6, 'averageSellPriceA150E6', model),
        processMedian(fp710, 'averageSellPriceA150E710', model),
        processMedian(fp1113, 'averageSellPriceA150E1113', model),
        processMedian(fp14, 'averageSellPriceA150E14', model)
    ]
    q.all(finalProms).then(function(){
            def.resolve();
            console.log('all done');
        })
    return def.promise;
}

function processMedian(pattern, prop, model){
    var def = q.defer();
    var proms = [];
    model.findAsync(pattern, {id:1, title:1, imgSrc:1, sellers:{$slice:20}, buyers:{$slice:20} })
        .then(function(docs){
            
        docs.forEach(function(v,index, arr){
            var asell;
            var priceDef = q.defer();
             if (v.sellers.length > 0){
                asell = findMedian(v.sellers, 'price');
            }
            var update = {};
            update[prop] = asell || 0;
                        
            model.updateAsync({id:v.id}, update).then(function(result){
                            priceDef.resolve();
                        });
            proms.push(priceDef.promise);
        });
        q.all(proms).then(function(){
            def.resolve();
            console.log(prop + ' done');
        })
    });
    return def.promise;
}

function findMedian(data, prop) {

    // extract the .values field and sort the resulting array
    var m = data.map(function(v) {
        return v[prop];
    }).sort(function(a, b) {
        return a - b;
    });

    var middle = Math.floor((m.length - 1) / 2); // NB: operator precedence
    if (m.length % 2) {
        return m[middle];
    } else {
        return (m[middle] + m[middle + 1]) / 2.0;
    }
}