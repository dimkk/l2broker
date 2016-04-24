'use strict';

angular.module('siteApp')
  .config(function($stateProvider, $urlRouterProvider) {
    //$urlRouterProvider.deferIntercept();
    $stateProvider
      .state('broker', {
        url: '/broker',
        abstract:true,
        templateUrl: 'app/xenon/broker.html',
        controller: 'BrokerController',
        controllerAs: 'broker'
      })
      .state('broker.main', {
        url: '/main',
        templateUrl: 'app/xenon/about/about.html'
      })
      .state('broker.items', {
        url: '/items/:sortField/:sortOrder/:later/:search',
        params:{
          sortField:'averageSellPrice',
          sortOrder:'-1',
          search:'',
          later:'hours'
        },
        templateUrl: 'app/xenon/items/items.html',
        controller: 'itemsController as vm',
        reloadOnSearch:true
      })
      .state('broker.buy', {
        url: '/buy',
        templateUrl: 'app/xenon/buy/buy.html'
      })
      .state('broker.shout', {
        url: '/shout',
        templateUrl: 'app/xenon/shout/shout.html'
      })
      .state('broker.about', {
        url: '/about',
        templateUrl: 'app/xenon/about/about.html'
      })
      .state('broker.me', {
        url: '/me',
        templateUrl: 'app/xenon/me/me.html'
      })
      .state('broker.item', {
        url: '/item/:id',
        templateUrl: 'app/xenon/item/item.html',
        controller: 'itemController as vm'
      }).state('broker.item.buy', {
        url: '/buy',
        templateUrl: 'app/xenon/item/buy.html',
        //controller: 'itemController as vm'
      }).state('broker.item.sell', {
        url: '/sell',
        templateUrl: 'app/xenon/item/sell.html',
        //controller: 'itemController as vm'
      })
      ;
      
  }).run(($rootScope, $urlRouter, $location, $state)=>{
    // $rootScope.$on('$locationChangeSuccess', function(e, newUrl, oldUrl) {
    //   // Prevent $urlRouter's default handler from firing
    //   e.preventDefault();
    //   console.log('hi from location change success');
    //   /** 
    //    * provide conditions on when to 
    //    * sync change in $location.path() with state reload.
    //    * I use $location and $state as examples, but
    //    * You can do any logic
    //    * before syncing OR stop syncing all together.
    //    */
    //   console.log($state.current.name);
    //   console.log(newUrl);
    //   console.log(oldUrl);;
    //   if ($state.current.name === 'broker.items') {
    //     // your stuff
    //     $urlRouter.sync();
    //   } else {
        
    //   }
    // });
    // // Configures $urlRouter's listener *after* your custom listener
    // $urlRouter.listen();
  });
