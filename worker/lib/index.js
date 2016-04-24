'use strict';
var fs = require('fs');
var MongoClient = require('mongodb').MongoClient;
var q = require('q');
var _ = require('lodash');
var request = require('request');
var cheerio = require('cheerio');
var http = require('http');
var opts = require('./opts');

var dir = opts.storesDir;
var data = {};
var mongoUrl = opts.mongoCreds.urlSec;
var mongoLogin = opts.mongoCreds.login;
var mongoPass = opts.mongoCreds.pass;

var mDb;
var itemsPath = opts.itemsPath;

var sellerCollection = opts.collections.sellers;
var itemsCollection = opts.collections.items;

var rawSellers = [];
var promises = [];
var currentId, currentUrl;
var titles = [];


module.exports = function(){
    mongoConnect()
        .then(getTitles)
        .then(fillData)
        .catch(function (err) {
            throw err;
        })
        .done(function () {
            console.log('done!');
        })
};

function getTitles() {
    var def = q.defer();
    fs.readFile(itemsPath, 'utf-8', function(err, file){
        var lines = file.split('\n');
        lines.forEach(function(val, idx, arr){
            var id = val.split('\t')[0];
            var title = val.split('\t')[1];
            titles.push({id:id, title:title});
            if (idx + 1 === arr.length){
                def.resolve();
            }
        })
    });
    return def.promise;
}

function clearData(){
    var def = q.defer();
    var collection = mDb.collection(opts.collections.items);
    collection.find({}, {id:1, title:1, imgSrc:1}).toArray(function(err, docs) {
        var newDocs = [];
        docs.forEach(function(val){
            var title = val.title;
            var img = val.imgSrc;
            var result  = !title || !img
            if (result) newDocs.push(val);
        });
    });
}

function fillData(){
    var def = q.defer();
    var collection = mDb.collection(opts.collections.items);
    collection.find({}, {id:1, title:1, imgSrc:1}).toArray(function(err, docs) {
        var newDocs = [];
        docs.forEach(function(val){
            var title = val.title;
            var img = val.imgSrc;
            var result  = !title || !img
            if (result) {
                console.log(title);
                console.log(img);
                console.log(val.id);
                newDocs.push(val);
            }
        });
        docs = newDocs;
        console.log('need to get some titles ' + newDocs.length);
        (function myLoop (i) {         
            setTimeout(function () {   
                if (docs[i]){
                    var id = docs[i].id;
                    var found = titles.filter(function(v){
                        return v.id.toString() === id.toString();
                    });
                    var title = '';
                    if (found.length > 0 ){
                        var f = found[0];
                        title = f.title;
                        if (id === 2134){
                            console.log('fuck');
                        }
                    } else {
                        title  = 'no match';
                    }
                    var imgSrc = false;
                    if (!imgSrc){
                        getData(id).then(function(data){
                            if (id.toString() === "27023") data.imgSrc = "http://base.rpg-club.com/i/drop/items/etc_coins_gold_i00.gif";
                            collection.updateOne(
                                {id:id},{$set:{
                                title:title === 'no match' ? data.title : title,
                                imgSrc:data.imgSrc,
                                description:data.description
                            }}, function(err, result){
                                if (err) throw err;
                                console.log('updated item: ' + id + ' title: ' + title == 'no match' ? data.title : title);
                            });
                        });
                    } else {
                    console.log('got title and imgsrc skipping');
                    }
                    --i;        
                    console.log(i + ' ' + id);     
                    if (i === -1) def.resolve();
                    if (i >= 0) {
                        myLoop(i);
                    }      //  decrement i and call myLoop again if i > 0
                }
            }, 900)
        })(newDocs.length - 1);  
    });
    
    return def.promise;
}

function writeIdsToDb(){
    var proms = [];
     var def = q.defer();
    mDb.createCollection(itemsCollection, function (err, collection) {
        if (err) {
            throw err;
        }
        if (collection) {
            idtemp.forEach(function(val, index, arr){
                var loopDef = q.defer();
                collection.insert(val, function(err, stat){
                     if (err) console.log(err);
                     loopDef.resolve();
                });
                proms.push(loopDef.promise);
                if (index +1 === arr.length){
                    q.all(proms).then(function(){
                        def.resolve();
                    })
                }
            });
            
        }
    });

    return def.promise;
}

function getData(id) {
    var def = q.defer();
    if (id){
    var imageBase = "http://base.l2j.ru/";
    var url = "http://base.l2j.ru/index.php?p=2&id=" + id + "&lang=1";
    currentId = id;
    currentUrl = url;
    var counter = 0;
    function req(){
            request(url, function (error, response, html, url) {
            if (!error) {
                var $ = cheerio.load(html);
                var title, imgSrc, description;
                var temp = $('td.norm p').text().split('Description:');
                title = temp[0];
                if (temp.length > 0) description = temp[1];
                imgSrc = imageBase + $('td.norm p img').attr('src');
                if ((!title || !imgSrc) && counter < 11) {
                    console.log(currentId);
                    console.log(counter + " " + currentUrl);
                    counter++;
                    req();
                } else {
                    counter = 0;
                    def.resolve({
                        title: title,
                        imgSrc: imgSrc,
                        description: description
                    });
                }
            }
        })
    };
    req();
    } else {
        def.reject();
    }
    

    return def.promise;
}

var temp = [];
var idtemp = [];
var utemp = [];
var fi;

var seq = [];

function arrayUnique(array) {
    var a = array.concat();
    for(var i=0; i<a.length; ++i) {
        for(var j=i+1; j<a.length; ++j) {
            if(a[i] === a[j])
                a.splice(j--, 1);
        }
    }

    return a;
}


function setUniqueIds(){
    var def = q.defer();
    var collection = mDb.collection(itemsCollection);
    collection.find({}, {id:1}).toArray(function(err, items){
        if (err) console.log(err);
        var newTemp = items.map(function(va){
            return va.id;
        });
        var mergedTemp = arrayUnique(temp.concat(newTemp));
        console.log('newtemp ' + newTemp.length);
        console.log('mergedTemp ' + mergedTemp.length);
        utemp = mergedTemp.filter(function(item, pos) {
            var result = mergedTemp.indexOf(item) == pos;
            if (!result) console.log(item + " dublicate");
            return result;
        });
        console.log('utemp ' + utemp.length);
        idtemp = utemp.map(function(value, index){
            return {id: value}
        });
        console.log('idtemp ' + idtemp.length);
        def.resolve();
    })
    
    return def.promise;
}

function setItemIds() {
    var def = q.defer();
    rawSellers.forEach(function (val, index, arr) {
        val.items.forEach(function (item) {
            if (temp.indexOf(item.id) == -1) {
                temp.push(item.id);
            }
        });
        if (index === arr.length - 1) {
            def.resolve();
        }
    });
    return def.promise;
}

function setItems() {
    var def = q.defer();
    var insertPromises = [];
    mDb.createCollection(itemsCollection, function (err, collection) {
        if (err) {
            throw err;
        }
        if (collection) {
            rawSellers.forEach(function (value, index, arr) {

                var insertDef = q.defer();
                value.items.forEach(function (item, index) {
                    collection.find({ id: item.id }).toArray(function (err, foundItems) {
                        if (err) throw err;

                        var foundItem;
                        fi = foundItems;
                        if (foundItems.length > 1) {
                            console.log('ALARM OMG');
                            console.log(item.id);
                            console.log(foundItems.length);
                        }
                        if (foundItems.length > 0) {
                            foundItem = foundItems[0];
                        }
                        if (!foundItem) {

                        } else {
                            var sellerWithDate;
                            if (foundItem.sellers) {
                                var gotItems = foundItem.sellers.filter(function (seller, index) {
                                    return seller.name === value.name
                                });
                                sellerWithDate = gotItems.filter(function (seller, index) {
                                    return seller.date.getTime() === value.date.getTime()
                                });
                            }
                            if (!sellerWithDate || sellerWithDate.length === 0) {

                                collection.update(
                                    { id: foundItem.id },
                                    {
                                        $push: {
                                            sellers: {
                                                coords: value.coords,
                                                zoneId: value.zoneId,
                                                date: value.date,
                                                name: value.name,
                                                q: item.q,
                                                price: item.price
                                            }
                                        }
                                    }, function (err, resp) {
                                        if (err) insertDef.reject;

                                        console.log('added seller ' + value.name);
                                        insertDef.resolve();
                                    });
                            } else {
                                console.log('item skipping ' + item.id);
                                delay(1000).then(
                                    insertDef.resolve
                                    );
                            }
                        }
                    });
                    insertPromises.push(insertDef.promise);
                });
                if (index + 1 === arr.length) {
                    q.all(insertPromises).then(function () {
                        def.resolve();
                    }).catch(function () {
                        def.reject();
                    })
                }

            });


        }
    });

    return def.promise;
};


function setRawSellers() {
    var def = q.defer();
    var insertPromises = [];
    mDb.createCollection(sellerCollection, function (err, collection) {
        if (err) {
            throw err;
        }
        if (collection) {
            rawSellers.forEach(function (value, index, arr) {
                var insertDef = q.defer();
                collection.findOne({ name: value.name }, function (err, item) {
                    if (err) throw err;
                    if (item == undefined) {
                        collection.insert({
                            name: value.name,
                            instances: [
                                {
                                    coords: value.coords,
                                    zoneId: value.zoneId,
                                    date: value.date,
                                    items: value.items
                                }
                            ]
                        }, function (err, resp) {
                            if (err) throw err;
                            else insertDef.resolve();
                            console.log('inserted ' + value.name);
                        });

                    } else {
                        if (item.instances[item.instances.length - 1].date.getTime() != value.date.getTime()) {
                            collection.update(
                                {name:item.name},
                                {
                                    $push:{
                                        instances:{
                                            coords: value.coords,
                                            zoneId: value.zoneId,
                                            date: value.date,
                                            items: value.items
                                        }
                                    }
                                }, function (err, resp) {
                                if (err) throw err;
                                else insertDef.resolve();
                                console.log('added instance ' + value.name);
                            });
                        } else {
                            console.log('seller skipping ' + value.name);
                            q.delay(1000).then(insertDef.resolve)

                        }

                    }
                });

                insertPromises.push(insertDef.promise);
                if (index + 1 === arr.length) {
                    q.allSettled(insertPromises).then(function () {
                        def.resolve();
                    }).catch(function () {
                        def.reject();
                    })
                }

            })
        }
    });

    return def.promise;
}

function delay(ms) {
    var deferred = q.defer();
    setTimeout(deferred.resolve, ms);
    return deferred.promise;
}

function mongoConnect() {
    var mongoDefer = q.defer();
    MongoClient.connect(mongoUrl, function (err, db) {
        if (!err) {
            console.log("We are connected");
            //db.authenticate(mongoLogin, mongoPass, function (err, res) {
            //    if (err) throw err;
                mongoDefer.resolve();
                mDb = db;
            //});
        } else{
            console.error(err);
        }
    });
    return mongoDefer.promise;
};

function readFiles() {
    var filesDefer = q.defer();
    fs.readdir(dir, function (err, files) {
        if (err) throw err;
        var c = 0;
        files.forEach(function (file) {
            var def = q.defer();
            c++;
            fs.readFile(dir + file, 'utf-8', function (err, html) {
                fs.stat(dir + file, function (err, stat) {
                    if (err) throw err;
              
                    var linesSplit = html.split('\r\n');
                    var coords = {
                        x: linesSplit[0].split(',')[0],
                        y: linesSplit[0].split(',')[1],
                        z: linesSplit[0].split(',')[2]
                    }
                    var zoneId;
                    if (linesSplit[0].split(',').length > 4) {
                        zoneId = linesSplit[0].split(',')[3] + ',' + linesSplit[0].split(',')[4];
                    }
                    else {
                        zoneId = linesSplit[0].split(',')[3]
                    }
                    var items = [];
                    for (var i = 1; i < linesSplit.length; i++) {
                        var line = linesSplit[i];
                        var lineSplit = line.split(',');
                        if (lineSplit.length > 1){
                            var id = lineSplit[0];
                            var q = lineSplit[1];
                            var price = lineSplit[2];
                            if (id && q && price){
                                items.push({
                                    id: id,
                                    q: q,
                                    price: price
                                });
                            } else {
                                console.log('smth missing ' + file);
                            }
                        }
                    };

                    rawSellers.push({
                        name: file,
                        coords: coords,
                        zoneId: zoneId,
                        date: stat.mtime,
                        items: items
                    });

                    def.resolve();
                });
                data[file] = html;
                if (0 === --c) {
                    q.allSettled(promises).then(function () {
                        filesDefer.resolve();
                    });
                }
                promises.push(def.promise);
            });
        });

    });
    return filesDefer.promise;
};