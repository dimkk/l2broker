'use strict';

angular.module('siteApp')
  .config(function($stateProvider) {
    $stateProvider
      .state('xenon', {
        url: '/xenon',
        templateUrl: 'app/xenon/xenon.html',
        controller: 'XenonController',
        controllerAs: 'xenon'
      });
  });
