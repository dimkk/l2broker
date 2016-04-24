'use strict';

angular.module('siteApp')
  .directive('topSellers', () => ({
    templateUrl: 'app/xenon/widgets/topSellers/topSellers.html',
    restrict: 'EA'
  }));
