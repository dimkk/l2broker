'use strict';

angular.module('siteApp', [
  'siteApp.auth',
  'siteApp.admin',
  'siteApp.constants',
  'ngCookies',
  'ngAnimate',
  'ngResource',
  'ngSanitize',
  'btford.socket-io',
  'ui.router',
  'ui.bootstrap',
  'validation.match',
  'pascalprecht.translate',
  'angular-cache',
  'infinite-scroll',
  'ui.router.tabs',
  'autocomplete'
])
  .config(function($urlRouterProvider, $locationProvider, CacheFactoryProvider) {
    $urlRouterProvider
      .otherwise('/broker/main');
    angular.extend(CacheFactoryProvider.defaults, { maxAge: 5 * 60 * 1000, storageMode:'localStorage' });
    $locationProvider.html5Mode(true);
  });
