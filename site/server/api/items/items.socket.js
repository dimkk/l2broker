/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var ItemsEvents = require('./items.events');

// Model events to emit
var events = ['update'];

exports.register = function(socket) {
  // Bind model events to socket events
  for (var i = 0, eventsLength = events.length; i < eventsLength; i++) {
    var event = events[i];
    var listener = createListener('item:' + event, socket);

    ItemsEvents.on(event, listener);
    socket.on('disconnect', removeListener(event, listener));
  }
};


function createListener(event, socket) {
  return function(docs) {
    socket.emit(event, docs);
  };
}

function removeListener(event, listener) {
  return function() {
    ItemsEvents.removeListener(event, listener);
  };
}
