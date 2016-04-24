var mongoose = require('mongoose');
var Schema = mongoose.Schema;
module.exports = function(name){
    if (!(name in establishedModels)) {
        var Any = new Schema({ any: Schema.Types.Mixed });
        establishedModels[name] = mongoose.model(name, Any);
    }
    return establishedModels[name];
}
var establishedModels = {};