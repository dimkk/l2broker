'use strict';

angular.module('siteApp.auth', [
  'siteApp.constants',
  'siteApp.util',
  'ngCookies',
  'ui.router'
])
  .config(function($httpProvider) {
    $httpProvider.interceptors.push('authInterceptor');
  });
