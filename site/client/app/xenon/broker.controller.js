'use strict';

(function() {

class BrokerController {

  constructor($timeout, transContainer, $state, $rootScope, $translate,
  $http, socket, $stateParams
  ) {
    this.$state = $state;
    $rootScope.$state = $state;
    $rootScope.$stateParams = $stateParams;
    this.$http = $http;
    this.items = [];
    this.$translate = $translate;
    this.transContainer = transContainer;
    
    //$timeout(() => {  }, 0);
    this.menu = [];
    this.pushMenu();
    this.current = $state.current.name;
    $('body > div').height($(document).height());
    $timeout(()=>{jQuery('.page-loading-overlay').addClass('loaded');}, 0);
    
    $rootScope.$on('$stateChangeStart', (event, toState) => {
      this.current = toState.name;
    });
    $rootScope.$on('transContainerUpdated', () => {
      this.pushMenu();
    });
  }
  pushMenu(){
    this.menu = [];
    var temp = [
      {
        title:this.transContainer.get().LEFT_MENU_MAIN,
        icon:'fa-home',
        state:'broker.main'
      },
      // {
      //   title:this.transContainer.get().LEFT_MENU_SELL,
      //   icon:'fa-sellsy',
      //   state:'broker.sell'
      // },
      {
        title:this.transContainer.get().LEFT_MENU_ITEMS,
        icon:'fa-shopping-cart',
        state:'broker.items'
      },
      {
        title:this.transContainer.get().LEFT_MENU_SHOUT,
        icon:'fa-smile-o',
        state:'broker.shout'
      },
      {
        title:this.transContainer.get().LEFT_MENU_ABOUT,
        icon:'fa-question',
        state:'broker.about'
      }
    ];
    temp.forEach((val) => {
      this.menu.push(val);
    });
    
  }
  go(st){
    this.$state.go(st);
    if (this.$state.current.name === st && st === 'broker.items'){
      this.$state.reload();
    }
    
  }
  switchLanguage(){
    if (this.transContainer.get().FLAG === 'uk'){
      this.$translate.use('ru');
    } else {
      this.$translate.use('en');
    }
    
  }
  
}

angular.module('siteApp')
  .controller('BrokerController', BrokerController);

})();
