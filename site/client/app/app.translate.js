'use strict';
angular.module('siteApp')
	.config(function($translateProvider){
		$translateProvider.translations('en',{
			//LEFT_MENU_SELL:'Goods for sell',
			LEFT_MENU_ITEMS:'Goods',
			LEFT_MENU_SHOUT:'Trade shouts from the cities',
			LEFT_MENU_MAIN:'Main page',
			LEFT_MENU_ABOUT:'About this site',
			FLAG:'uk',
			CURRENT_LANGUAGE:'English',
			GUEST:'GUEST',
			TOP_SELLERS:'Top Sellers',
			TOP_SELLERS_DESC:'By amount of goods',
			TOP_SELLITEMS: 'Most selling items',
			TOP_SELLITEMS_DESC:'By amount of sellers on market'
		});
		$translateProvider.translations('ru',{
			//LEFT_MENU_SELL:'Продажа товаров',
			LEFT_MENU_ITEMS:'Товары',
			LEFT_MENU_SHOUT:'Выкрики о сделках в городах',
			LEFT_MENU_MAIN:'Главная страница',
			LEFT_MENU_ABOUT:'Об этом сайте',
			FLAG:'ru',
			CURRENT_LANGUAGE:'Русский',
			GUEST:'ГОСТЬ',
			TOP_SELLERS:'Топ продавцы',
			TOP_SELLERS_DESC:'По количеству товаров',
			TOP_SELLITEMS: 'Самые продаваемые товары',
			TOP_SELLITEMS_DESC:'По количеству продавцов этого товара'
			
		});
		$translateProvider.preferredLanguage('ru');
		$translateProvider.useSanitizeValueStrategy('escape');
	})
	.constant('transArr', [
		'LEFT_MENU_ITEMS',
		'LEFT_MENU_SHOUT',
		'LEFT_MENU_MAIN',
		'LEFT_MENU_ABOUT',
		'FLAG',
		'CURRENT_LANGUAGE',
		'GUEST',
		'TOP_SELLERS',
		'TOP_SELLERS_DESC',
		'TOP_SELLITEMS',
		'TOP_SELLITEMS_DESC'
	])
	.run(function($translate, $rootScope, transContainer, transArr){
		$translate(transArr).then(function (translation) {
				transContainer.set(translation);
			});
		 $rootScope.$on('$translateChangeSuccess', function () {
			$translate(transArr).then(function (translation) {
				transContainer.set(translation);
				$rootScope.$broadcast('transContainerUpdated');
			});
		});
	})
	.service('transContainer', function(){
		var container;
		return {
			set:function(translation){
				container = translation;
			},
			get:function(){
				return container;
			}
		};
	});