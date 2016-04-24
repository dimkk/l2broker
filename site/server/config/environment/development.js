'use strict';
// Development specific configuration
// ==================================
module.exports = {

  // MongoDB connection options
  mongo: {
    uri: process.env.MONGO_URI,
    options:{
      user: process.env.MONGO_LOGIN,
      pass: process.env.MONGO_PASS
    }
  },

  // Seed database on startup
  seedDB: true

};
