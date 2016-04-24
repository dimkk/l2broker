var _ = require('lodash');
module.exports = function(was, now){
	var result = false;
	if (!_.isEqual(was.coords, now.coords)) result = true;
	if (was.q != now.q || was.price != now.price) result = true
	if (was.date.getDate() != now.date.getDate()){
		result = true;
	}
	return result;
	
}