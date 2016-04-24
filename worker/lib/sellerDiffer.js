var _ = require('lodash');
module.exports = function(now, was){
	var last = was[0]._doc.instances[was[0]._doc.instances.length - 1]._doc;
	var nnow = now.instances[0];
	var result = false;
	if (!_.isEqual(last.coords, nnow.coords)) result = true;
	var litems =  last.items.map(function(v){
		return {q:v.q.toString(), price:v.price.toString(), id:v.id.toString()};
	});
	var nitems =  nnow.items.map(function(v){
		return {q:v.q, price:v.price, id:v.id};
	});
	if (last.date.getDate() != nnow.date.getDate()){
		result = true;
	}
	
	if (!_.isEqual(litems, nitems)) result = true;
	return result;	
}