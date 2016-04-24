module.exports = function (contents) {
	var linesSplit = contents.split('\r\n');
	var firstLineSplit = linesSplit[0].split(';');
	var coords = {
        x: firstLineSplit[0],
        y: firstLineSplit[1],
        z: firstLineSplit[2]
	}
	var zoneId, city
    zoneId = firstLineSplit[3];
	city = getCity(firstLineSplit[4]);

	var items = [];
	for (var i = 1; i < linesSplit.length; i++) {
        var line = linesSplit[i];
        var lineSplit = line.split(',');
        if (lineSplit.length > 1) {
			var id = lineSplit[0];
			var q = lineSplit[1];
			var price = lineSplit[2];
            
            var result = {
					id: id,
					q: q,
					price: price
				};
            
            var attackAttr, attackPower,enchant,fire,water, wind, earth, holy,unholy;
            if (lineSplit.length > 3){
                attackAttr = lineSplit[3];
                attackPower = lineSplit[4];
                enchant = lineSplit[5];
                fire = lineSplit[6];
                water = linesSplit[7];
                wind = lineSplit[8];
                earth = lineSplit[9];
                holy = linesSplit[10];
                unholy = lineSplit[11];
            }
            
            if (attackPower != '0'){
                result.attackAttr = attackAttr;
                result.attackPower = attackPower;
            }
            if (enchant != '0'){
                result.enchant = enchant;
            }
            if(fire != '0'){
                result.fire = fire;
            }
            if(water != '0'){
                result.water = water;
            }
            if(wind != '0'){
                result.wind = wind;
            }
            if(earth != '0'){
                result.earth = earth;
            }
            if(holy != '0'){
                result.holy = holy;
            }
            if(unholy != '0'){
                result.unholy = unholy;
            }
            
			if (id && q && price) {
				items.push(result);
			} else {
				console.log('smth missing');
			}
        }
	};
	return {
		coords: coords,
        zoneId: zoneId,
		city:city,
        items: items
	}
}
function getCity(msg){
	var found = cities.filter(function(v){
		return msg.trim() === v.code;
	});
	var result = '';
	if (found.length > 0){
		result = found[0].city;
	}
	return result;
}
var cities = [
	{city: "Giran", code:"EzhAMD0="},
	{city: "Oren", code:"HkA1PQ=="},
	{city: "Aden", code:"Ez5APjQgEDQ1PQ=="},
	{city: "HV", code:"FDVANTI9TyAeRT5CPTg6PjI="},
	{city: "Runa", code:"IEM9MA=="},
	{city: "Goddard", code:"Ez40NDBANA=="},
	{city: "Dion", code:"FDg+PQ=="},
	{city: "Shutgart", code:"KENCMzBAQg=="}
]
