'use strict';

(function () {

  function CommonService(
    $http, $q
    ) {
    
    var Commons = {
      getSortParams:(sorts, params)=>{
        var found = sorts.filter((v) => {
            return v.dir === -1 || v.dir === 1;
          });
          if (found.length > 0){
            params.sortField = found[0].field;
            params.sortOrder = found[0].dir;
          }
          return params;
      },
      setSorts:(sorts, params) =>{
        if (params && params.sortField && params.sortOrder)
        sorts.forEach((v) => {
          if (v.field === params.sortField){
            v.dir = parseInt(params.sortOrder);
          } else {
            v.dir = 0;
          }
        });
        return sorts
      }
    }
    return Commons;
  }

  angular.module('siteApp')
    .factory('commonService', CommonService);

})();
