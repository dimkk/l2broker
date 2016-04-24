'use strict';

class XenonSettingPaneController {
  //start-non-standard
  menu = [{
    'title': 'Home',
    'state': 'main'
  }, {
    'title': 'Xenon',
    'state': 'xenon'
  }];

  isCollapsed = true;
  //end-non-standard

  constructor(Auth) {
    this.isLoggedIn = Auth.isLoggedIn;
    this.isAdmin = Auth.isAdmin;
    this.getCurrentUser = Auth.getCurrentUser;
  }
}

angular.module('siteApp')
  .controller('XenonSettingPaneController', XenonSettingPaneController);
