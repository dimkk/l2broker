'use strict';

(function() {

class ItemController {

  constructor(
    $stateParams, itemsService, $state
  ) {
    console.log('inside item controller');
    this.itemsService = itemsService;
    this.id = $stateParams.id;
    this.sellSorts = [
      {field:'sellers.date', dir:-1},
      {field:'sellers.q', dir:0},
      {field:'sellers.price', dir:0}
    ]  
    this.buySorts = [
      {field:'buyers.date', dir:-1},
      {field:'buyers.q', dir:0},
      {field:'buyers.price', dir:0}
    ]   
    this.getItemBuy();
    this.getItemSell();
    this.page = 1;
    this.size = 20;
    this.loading = true;
    this.tabData   = [
      {
        heading: 'Sell',
        route:   'broker.item.sell',
        params:{
          id:$stateParams.id
        }
      },
      {
        heading: 'Buy',
        route:   'broker.item.buy',
        params:{
          id:$stateParams.id
        }
      }
    ];
  }
  
  getItemBuy(add, page){
    this.loading = true;
    this.itemsService.getItem(this.id, 'buy', this.buySorts, this.size, page).then(response => {
      if (response.data.length > 0){
        if (!add) this.buyers = response.data[0].buyers;
        else this.buyers = this.buyers.concat(response.data[0].buyers);
        this.loading = false;
        if (response.data[0].buyers.length < this.size){
          this.scrollDisable = true;
        } else {
          this.scrollDisable = false;
        }
      };
    }).catch(function(){
      this.loading = false;
    });
  }
  
  getItemBuyMore(){
    this.page = this.page + 1;
    this.getItemBuy(true, this.page)
  }
  
   getItemSellMore(){
    this.page = this.page + 1;
    this.getItemSell(true, this.page)
  }
  
  getItemSell(add, page){
        this.loading = true;
    this.itemsService.getItem(this.id, 'sell', this.sellSorts, this.size, page).then(response => {
      if (response.data.length > 0){
         if (!add) this.sellers = response.data[0].sellers;
          else this.sellers = this.sellers.concat(response.data[0].sellers);
          this.loading = false;
          if (response.data[0].sellers.length < this.size){
            this.scrollDisable = true;
          } else {
            this.scrollDisable = false;
          }

      };
    }).catch(function(){
      this.loading = false;
    });;
  }
  
   changeSortSell(field){  
    this.sellSorts.forEach((val) =>{
      if (val.field === field){
        val.dir = getDir(val.dir);
      } else {
        val.dir = 0;
      }
    });
    
    function getDir(val){
      var result;
      if (val === 0 || val === 1) result = -1;
      if (val === -1) result = 1;
      return result;
    };
    this.page = 1;
    this.getItemSell(false, this.page);
   
  }
  
  changeSortBuy(field){  
    this.buySorts.forEach((val) =>{
      if (val.field === field){
        val.dir = getDir(val.dir);
      } else {
        val.dir = 0;
      }
    });
    
    function getDir(val){
      var result;
      if (val === 0 || val === 1) result = -1;
      if (val === -1) result = 1;
      return result;
    };
    this.page = 1;
    this.getItemBuy(false, this.page);
   
  }
}

angular.module('siteApp')
  .controller('itemController', ItemController);
 
})();
