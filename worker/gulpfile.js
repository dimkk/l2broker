'use strict';
var path = require('path');
var gulp = require('gulp');
var eslint = require('gulp-eslint');
var excludeGitignore = require('gulp-exclude-gitignore');
var mocha = require('gulp-mocha');
var istanbul = require('gulp-istanbul');
var nsp = require('gulp-nsp');
var plumber = require('gulp-plumber');
var watch = require('gulp-watch');
var through = require("through2");
var mongoose = require('mongoose');
var _ = require('lodash');
var q = require('q');
var duration = require('gulp-duration');
var del = require('del');
require('console-stamp')(console, '[HH:MM:ss.l]');
var fs = require('fs');
var moment = require('moment');


var parser = require('./lib/parser');
var sellerM = require('./lib/seller.model');
var buyerM = require('./lib/buyer.model');
var bulkM = require('./lib/bulk.model');
var itemModel = require('./lib/item.model');
var itemArchiveModel = require('./lib/itemArchive.model');
var anySellDiff = require('./lib/sellerDiffer');
var itemsDiffer = require('./lib/itemsDiffer');
var avg = require('./lib/avgPrice');
var filler = require('./lib');
var archive = require('./lib/archive');
var checkToAlert = require('./lib/checkToAlert');
var opts = require('./lib/opts');
var sellerModel;

var dir = opts.storesMask;
var data = {};
var mongoUrl = opts.mongoCreds.url;
var mongoLogin = opts.mongoCreds.login;
var mongoPass = opts.mongoCreds.pass;

var sellers = [];
var mongoItems = [];
var type = "";
setInterval(function () {
  sellers = [];
}, 1 * 60 * 1000)

var isBlocked;
var seller;

gulp.task('proc', function () {
  return gulp.src(dir)
    .pipe(plumber())
    .pipe(processFiles());
})

gulp.task('watch', function () {
  gulp.watch(dir, ['proc']);
});

gulp.task('arch', function (cb) {
  archive.archive().then(cb);
});

gulp.task('clean', function (cb) {
  archive.clean();
})


gulp.task('default', function () {
  avg(itemModel); //считаем среднее
  filler(); //заполняем данными


  setInterval(function () {
    avg(itemModel)
    filler();
  }, 20 * 60 * 1000)
});





function processFiles() {

  return through.obj(function (file, enc, cb) {
    try {
      if (file.isNull()) {
        cb(null, file);
        return;
      }

      if (file.isStream()) {
        cb(null, file);
        return;
      }

      if (file.isBuffer()) {
        var temp = file.path.split('\\');
        var name = temp[temp.length - 1];
        type = name.split('.')[1];
        name = name.split('.')[0];
        if (type == "store")
          sellerModel = sellerM
        if (type == "buy")
          sellerModel = buyerM;
        if (type == "bulk")
          sellerModel = bulkM;

        var contents = file.contents.toString(enc);

        var parsed = parser(contents);
        var newFileName = file.path + '.processing';

        var sellerInctance = {
          coords: parsed.coords,
          zoneId: parsed.zoneId,
          city: parsed.city,
          date: file.stat.mtime,
          items: parsed.items
        };
        seller = sellerInctance;

        console.log(name);
        renameFile(file.path, newFileName)
          .then(getItems())
          .then(saveItems(sellerInctance, name, itemModel))
          .then(function () { console.log('deleting'); del.sync(newFileName, { force: true }) })
          .then(function () {
            console.log('done');
            cb(null, null);
            return;
          }, function (err) {
            console.error(err);
            console.log(err.stack);
            cb(null, null);
          });
      }
    } catch (ex) {
      cb(null, null);
    } finally {

    }
  })

}

function swallowError(error) {
  console.log(error.toString());
}

function renameFile(oldPath, newPath) {
  var def = q.defer();
  fs.rename(oldPath, newPath, function (err) {
    def.resolve();
  });
  return def.promise;
}

function saveItems(sellerInctance, name, model, isOne) {
  return function (data) {
    var items = data.items;
    var archive = data.archive;
    var def = q.defer();
    var proms = [];
    sellerInctance.items.forEach(function (val) {
      var itemSeller = {
        coords: {
          x: sellerInctance.coords.x,
          y: sellerInctance.coords.y,
          z: sellerInctance.coords.z
        },
        zoneId: sellerInctance.zoneId,
        city: sellerInctance.city,
        date: sellerInctance.date,
        q: val.q,
        price: val.price,
        name: name,
        attackAttr: val.attackAttr,
        attackPower: val.attackPower,
        enchant: val.enchant,
        fire: val.fire,
        water: val.water,
        wind: val.wind,
        earth: val.earth,
        holy: val.holy,
        unholy: val.unholy
      };
      if (type === "bulk") {
        itemSeller.bulk = true;
      }
      var prop = type === "store" || type === "bulk" ? 'sellers' : 'buyers';
      var propCount = type === "store" || type === "bulk" ? 'sellersCount' : 'buyersCount';
      var create = {
        id: val.id,
        sellers: [],
        buyers: [],
        sellersCount: 0,
        buyersCount: 0
      };
      create[prop] = [itemSeller];
      create[propCount] = 1;

      if (val.id === "10549") {
        console.log('shit!'); // пофиксить чёто плохое с этим итемом
        var pr = q.defer();
        pr.resolve();
        proms.push(pr.promise);
      }
      console.log('omg!');
      var createArchive = {
        id: val.id,
        dates: [
          {
            date: moment().format("DD.MM.YYYY"),
            sellers: [],
            buyers: [],
            sellersCount: 0,
            buyersCount: 0
          }
        ],
        sellersCount: 0,
        buyersCount: 0
      };
      createArchive.dates[0][prop] = [itemSeller];
      createArchive.dates[0][propCount] = 1;
      createArchive[propCount] = 1;
      var updates = {
        $push: {
        },
        $inc: {
        },
        lastmodified: new Date()
      };

      updates.$push[prop] = {
        $each: [itemSeller],
        $position: 0
      };
      updates.$inc[propCount] = 1;

      var updatesArchive = {
        lastmodified: new Date(),
        $push: {},
        $inc: {}
      };
      updatesArchive.$push["dates.$." + prop] = {
        $each: [itemSeller],
        $position: 0
      };
      updatesArchive.$inc[propCount] = 1;
      updatesArchive.$inc["dates.$." + propCount] = 1;

      var found = items.filter(function (v) {
        return v.id == val.id
      });
      var foundA = archive.filter(function (v) {
        return v.id == val.id
      });
      console.log('processing item ' + val.id);
      if (found.length > 0) {
        var testItem = found[0];
        var docTestItem = testItem._doc;
        var testStores = docTestItem[prop];
        if (docTestItem[prop] && docTestItem[prop]._doc) {
          var testStoresDoc = testStores._doc;
          if (itemsDiffer(testStoresDoc[0], itemSeller)) {
            console.log(val.id + ' updating');
            proms.push(model.updateAsync({ id: create.id }, updates));

          } else {
            console.log('nothing to update');
            var pr = q.defer();
            pr.resolve();
            return pr.promise;
          }
        } else {
          console.log('adding ' + prop);
          proms.push(model.updateAsync({ id: create.id }, updates));
        }
      } else {
        console.log(create.id + ' creating');
        return model.createAsync(create);
      }
    });
    q.all(proms).then(def.resolve, def.resolve);
    return def.promise;
  }
}

function getItems() {
  return function () {
    var def = q.defer();
    var findObj = seller.items.map(function (v) {
      return v.id
    });
    console.log('gettin items ' + findObj.length);
    itemModel.findAsync({
      'id': {
        $in: findObj
      }
    }, { sellers: { $slice: 0 }, buyers: { $slice: 0 } }).then(function (data) {
      console.log('done, got ' + data.length);
      itemArchiveModel.findAsync({
        'id': {
          $in: findObj
        }
      }, { sellers: { $slice: 0 }, buyers: { $slice: 0 } }).then(function (archive) {
        def.resolve({ items: data, archive: archive });
      });
    });
    return def.promise
  }
}


function getSeller(name) {
  return sellerModel.findAsync({ name: name });
}

function getSellers() {
  var def = q.defer();
  if (sellers.length === 0) {
    console.log('gettin sellers');
    sellerModel.findAsync().then(function (data) {
      console.log('done, got ' + data.length);
      sellers = data;
      def.resolve()
    });
  } else {
    def.resolve();
  }
  return def.promise
}


function saveSeller(sellerInctance, name, model) {
  return function (fromMongo) {
    var pr = q.defer();
    var create = {
      instances: [sellerInctance],
      name: name,
      instancesCount: 1
    };

    var updates = {
      $push: {
        instances: {
          $each: [sellerInctance],
          $position: 0
        }
      },
      $inc: { instancesCount: 1 },
      lastmodified: new Date()
    };
    var entity;
    if (!fromMongo) {
      entity = sellers.filter(function (v) {
        return v.name === create.name;
      })
    } else {
      entity = fromMongo;
    }
    if (entity.length != 0) {
      if (anySellDiff(create, entity)) {
        console.log(create.name + ' updating');
        model.updateAsync({ name: create.name }, updates).then(function (d) {
          pr.resolve(create);
        });
      }
      else {
        console.log('nothing to update');
        pr.resolve(create);

      }
    } else {
      console.log(create.name + ' creating');
      model.createAsync(create).then(function (data) {
        pr.resolve(data._doc);
      });
    }
    return pr.promise;
  }
}