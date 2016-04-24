'use strict';

angular.module('siteApp')
 .filter('elapsed', function(){
    return function(date){
        if (!date) return;
        var time = Date.parse(date),
            timeNow = new Date().getTime(),
            difference = timeNow - time,
            seconds = Math.floor(difference / 1000),
            minutes = Math.floor(seconds / 60),
            hours = Math.floor(minutes / 60),
            days = Math.floor(hours / 24);
        if (days > 1) {
            return days + " дней назад"//" days ago";
        } else if (days == 1) {
            return "1 день назад"//"1 day ago"
        } else if (hours > 1 && hours < 5) {
            return hours + " часа назад"//" hours ago";
        } else if (hours > 4 && hours < 25) {
            return hours + " часов назад"//" hours ago";
        } else if (hours == 1) {
            return "час назад"//"an hour ago";
        } else if (minutes > 1) {
            return minutes + " минут назад"//" minutes ago";
        } else if (minutes == 1){
            return "минуту назад"//"a minute ago";
        } else {
            return "несколько секунд назад"//"a few seconds ago";
        }
    }
}).filter('enh', ($sce)=>{
   return (item)=>{
       var result = '<span class="pull-right">';
       if (item.enchant && item.enchant != 0){
                result += `<span class="label label-warning">+${item.enchant}</span>`;
            }
       if (item.attackPower && item.attackPower != 0){
                // result.attackAttr = item.attackAttr;
                // result.attackPower = item.attackPower;
                var attr = getAttrAttrs(item.attackAttr);
                result += `<span class="label label-${attr.color}" tooltip="${attr.title}">${item.attackPower}</span>`;
            }
            
            var defCheck = false;
            if(item.fire && item.fire != 0){
                if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.fire = item.fire;
                result += `<span class="label label-red">${attr.title}</span>`;
            }
            if(item.water && item.water != 0){
                 if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.water = item.water;
                result += `<span class="label label-blue">${attr.title}</span>`;
            }
            if(item.wind && item.wind != 0){
                 if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.wind = item.wind;
                result += `<span class="label label-purple">${attr.title}</span>`;
            }
            if(item.earth && item.earth != 0){
                 if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.earth = item.earth;
                result += `<span class="label label-success">${attr.title}</span>`;
            }
            if(item.holy  && item.holy != 0){
                 if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.holy = item.holy;
                result += `<span class="label label-white">${attr.title}</span>`;
            }
            if(item.unholy && item.unholy != 0){
                 if (!defCheck){
                    result += '<i class="fa fa-shield"></i>';
                    defCheck = true;
                }
                //result.unholy = item.unholy;
                result += `<span class="label label-black">${attr.title}</span>`;
            }
            result += '</span>';
            $sce.trustAsHtml(result);
           
       return result;
   }
   function getAttrAttrs(attr){
       var result = {};
       if (attr === 0){
           result.title = 'fire';
           result.color = 'red';
       }
       if (attr === 1){
           result.title = 'water';
           result.color = 'blue';
       }
       if (attr === 2){
           result.title = 'wind';
           result.color = 'purple';
       }
       if (attr === 3){
           result.title = 'earth';
           result.color = 'success';
       }
       if (attr === 4){
           result.title = 'holy';
           result.color = 'white';
       }
       if (attr === 5){
           result.title = 'unholy';
           result.color = 'black';
       }
       return result;
   } 
});