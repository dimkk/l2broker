'use strict';

(function () {

  function ItemsService(
    $http, $q,
    CacheFactory, commonService
    ) {
    var itemsCache, itemCache, sellersCache, sellerCache;
    if (!CacheFactory.get('itemsCache')) {
      CacheFactory.createCache('itemsCache', {
        deleteOnExpire: 'aggressive',
        recycleFreq: 5 * 60 * 1000
      });
    }
    if (!CacheFactory.get('itemCache')) {
      CacheFactory.createCache('itemCache', {
        deleteOnExpire: 'aggressive',
        recycleFreq: 5 * 60 * 1000
      });
    }
    itemsCache = CacheFactory.get('itemsCache');
    itemCache = CacheFactory.get('itemCache');
    var Items = {
      getItemSortMarketsPrice: (id, order, type) =>{
         var def = $q.defer();
          $http.post('/api/items/' + id, {order:order, type:type}).then(response => {
            def.resolve(response);
          });
          return def.promise;
      },
      getItems: (search, sorts, size, page, laterThen, enchant, attr) => {
        //console.log(laterThen);
        var params = {};
        if (!size) size = 50;
        if (!page) page = 1;
        if (search){
          params.q = search;
        } 
        if (sorts){
          params = commonService.getSortParams(sorts, params);
        }
        params.size = size;
        params.page = page;
        params.laterThen = laterThen;
        params.enchant = enchant;
        params.attr = attr;
        var def = $q.defer();
        $http({url:'/api/items', method:'GET', params:params}, {cache: itemsCache}).then(response => {
          def.resolve(response);;
        });
        return def.promise;
      },
      getItem: (id, type, sort, size, page)=>{
        var params = {};
        if (!size) size = 20;
        if (!page) page = 1;
        if (type){
          params.type = type;
        }
        if(sort){
          params = commonService.getSortParams(sort, params);
        };
        params.size = size;
        params.page = page;
        var def = $q.defer();
        $http({url:'/api/items/' + id, method:'GET', params:params}, {cache: itemCache}).then(response => {
          def.resolve(response);
        });
        return def.promise;
      }
    }
    return Items;
  }

  angular.module('siteApp')
    .factory('itemsService', ItemsService);

})();
