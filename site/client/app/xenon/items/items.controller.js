'use strict';

(function() {

class ItemsController {

  constructor(
    $stateParams, itemsService, $rootScope, $location,
    commonService, $state, $timeout
  ) {
    this.$timeout = $timeout;
    this.$rootScope = $rootScope;
    this.commonService = commonService;
    this.itemsService = itemsService;
    this.$location = $location;
    this.$stateParams = $stateParams;
    this.$state = $state;
    this.model = {};
    this.useRefresh = false;
    this.loading = true;
    this.enchant = false;
    this.attr = false;
    this.sorts = [
      {field:'sellersCount', dir:-1},
      {field:'averageSellPrice', dir:0},
      {field:'buyersCount', dir:0},
      {field:'averageBuyPrice', dir:0},
    ]
    
    this.laters = {
      fresh: moment().subtract(30, 'minutes')._d,
      hour: moment().subtract(1, 'hours')._d,
      hours: moment().subtract(2, 'hours')._d,
      day: moment().subtract(1, 'days')._d,
      month: moment().subtract(1, 'months')._d,
    };

    
    //this.laterThen = 'hours';
    this.params = $stateParams;
    this.model.search = this.params.search;
    this.sorts = commonService.setSorts(this.sorts, this.params);
    this.size = 20;
    this.page = 1;
    this.q = this.params.q;
    this.laterThen = this.params.later;
    // $rootScope.$on('$stateChangeSuccess', 
    //   function(event, toState, toParams, fromState, fromParams){ self.sorts = commonService.setSorts(self.sorts, params); self.find();  })
    
    // Object.observe(this.model,() => {
    //   this.find(false, 1);
    // })
    this.find(false, this.page); 
  }
  changeEnchant(){
    this.enchant = !this.enchant;
    this.find(false, this.page);
  }
  
   changeAttr(){
    this.attr = !this.attr;
    this.find(false, this.page);
  }
  
  setLaterThen(item){
    this.laterThen = item;
    this.find(false, this.page);
  };

  isClass(field, dir){
    var sortFind = this.sorts.filter(function(val){
      return val.field === field
    });
    if (sortFind.length === 0) return false;
    if (sortFind[0].dir === dir) return true;
    else return false;
  }

  setParams(){
    this.params = this.commonService.getSortParams(this.sorts, {});
    this.params.search = this.model.search;
    this.params.later = this.laterThen;
    //this.$stateParams = params;
    this.$state.transitionTo('broker.items', this.params);;
    //this.useRefresh = true;
  }
  goTo(item){
    // if (this.useRefresh){
    //   this.$rootScope.$state.reload('broker.items');
    // }
    this.$rootScope.$state.go('broker.item.sell', {id:item.id, title:item.title, img:item.imgSrc})
    //window.location.href = '/broker/item/sell/' + item.id;
  }
  changeSortPrice(field, dir){  
    this.page = 1;
    if (!dir){
      this.sorts.forEach((val) =>{
        if (val.field === field){
          val.dir = getDir(val.dir);
        } else {
          val.dir = 0;
        }
      });
    } else {
      this.sorts.forEach((val) =>{
        if (val.field === field){
          if (val.dir != dir){
            val.dir = dir;
          } else {
            val.dir = 0;
          }
          
        } else {
          val.dir = 0;
        }
      });
    }
    
    function getDir(val){
      var result;
      if (val === 0 || val === 1) result = -1;
      if (val === -1) result = 1;
      return result;
    };
    
    
    
    this.find(false, this.page);
   
  }
  
  
  getAutoComplete(search){
       return this.itemsService.getItems(this.model.search).then(data =>{
        return data.data.map((val)=>{
          return val.title
        });
      });
  }
  find(add, page){
    this.loading = true;
    this.setParams();
    this.itemsService.getItems(this.model.search, this.sorts, this.size, page, this.laters[this.laterThen], this.enchant, this.attr).then(data =>{
      this.loading = false;
       if (!add) this.items = data.data;
       else this.items = this.items.concat(data.data);
       if (data.data.length === 0) this.items = [];
       if (data.data.length < this.size) {
         this.scrollDisable = true;
       } else {
         this.scrollDisable = false;
       }
    }).catch(function(){
      this.loading = false;
    });
  }
  
  findMore(){
    this.page = this.page + 1;
    this.find(true, this.page);
  }
  
}


angular.module('siteApp')
  .controller('itemsController', ItemsController);
 
})();
