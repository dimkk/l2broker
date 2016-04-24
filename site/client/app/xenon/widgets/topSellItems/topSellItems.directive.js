'use strict';

angular.module('siteApp')
  .directive('topSellItems', () => ({
    templateUrl: 'app/xenon/widgets/topSellItems/topSellItems.html',
    restrict: 'EA'
  }));
