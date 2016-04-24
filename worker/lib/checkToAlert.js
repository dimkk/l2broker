var sendEmail = require('./sendEmail');
var opts = require('./opts');
module.exports = function(dbItem, newItem, type){
    var medianSell = dbItem.averageSellPrice;
    var medianBuy = dbItem.averageBuyPrice;
    var median45Sell = dbItem.averageSellPriceA150E45;
    var median6Sell = dbItem.averageSellPriceA150E6;
    var median710Sell = dbItem.averageSellPriceA150E710;
    var median1113Sell = dbItem.averageSellPriceA150E1113;
    var median14Sell = dbItem.averageSellPriceA150E14;
    var koeffSell = 1.50;
    var absSell = 10000000;
    var koeffBuy = 0.50;
    var absBuy = 1000000;
    var result = '';
    var to = opts.sendToEmails;
    var subject = `${dbItem.title} in ${newItem.city} attention needed!`
    
    if (type === 'store' || type === 'bulk') {
        result += checkAndGetString(medianSell, newItem, koeffSell, false, absSell);
        result += checkAndGetString(median45Sell, newItem, koeffSell, false, absSell);
        result += checkAndGetString(median6Sell, newItem, koeffSell, false, absSell);
        result += checkAndGetString(median710Sell, newItem, koeffSell, false, absSell);
        result += checkAndGetString(median1113Sell, newItem, koeffSell, false, absSell);
        result += checkAndGetString(median14Sell, newItem, koeffSell, false, absSell);
    } else {
        result += checkAndGetString(medianBuy, newItem, koeffBuy, true, absBuy);
    }
    
    if (result){
        result += `<a href="http://l2broker.azurewebsites.net/broker/item/${dbItem.id}/sell">Ссылка на итем</a><br />`;
        result += `<a href="http://base.rpg-club.com/#db.item.main.${dbItem.id}#"> Ссылка на базу</a><br />`;
        sendEmail(to, subject, result);
        
    }
};

function checkAndGetString(medianSell, newItem, koeff, isBuy, abs){
    var result = '';
    
    if (!isBuy && medianSell && medianSell > 0 && ((medianSell / newItem.price) > koeff && (newItem.q * newItem.price) - (newItem.q * medianSell) > abs)){
        var diff = ((medianSell / newItem.price) * 100).toFixed(1) - 100;
        result = `SELL medianSell = ${medianSell}, itemSell = ${newItem.price}, diff=${diff}%, name=${newItem.name}, city=${newItem.city}, enchant=${newItem.enchant}, attr=${newItem.attackAttr} <br />`
    }
    if (isBuy && medianSell && medianSell > 0 && ((medianSell / newItem.price) < koeff && (newItem.q * newItem.price) - (newItem.q * medianSell) > abs)){
        var diff = ((medianSell / newItem.price) * 100).toFixed(1);
        result = `BUY medianSell = ${medianSell}, itemSell = ${newItem.price}, diff=${diff}%, name=${newItem.name}, city=${newItem.city}, enchant=${newItem.enchant}, attr=${newItem.attackAttr} <br />`
    }
    return result;
}