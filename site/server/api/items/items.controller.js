/**
 * Using Rails-like standard naming convention for endpoints.
 * GET     /api/things              ->  index
 * POST    /api/things              ->  create
 * GET     /api/things/:id          ->  show
 * PUT     /api/things/:id          ->  update
 * DELETE  /api/things/:id          ->  destroy
 */

'use strict';

var _ = require('lodash');
var Items = require('./items.model');

function handleError(res, statusCode) {
  statusCode = statusCode || 500;
  return function(err) {
    res.status(statusCode).send(err);
  };
}

function responseWithResult(res, statusCode) {
  statusCode = statusCode || 200;
  return function(entity) {
    if (entity) {
      res.status(statusCode).json(entity);
    }
  };
}

function handleEntityNotFound(res) {
  return function(entity) {
    if (!entity) {
      res.status(404).end();
      return null;
    }
    return entity;
  };
}


// Gets a list of Iyrmd
exports.index = function(req, res) {
  Items.getItems(req.query)
    .then(handleEntityNotFound(res))
    .then(responseWithResult(res))
    .catch(handleError(res));
};

// Gets a single Thing from the DB
exports.show = function(req, res) {
  Items.getItem(req.params.id, req.query)
    .then(handleEntityNotFound(res))
    .then(responseWithResult(res))
    .catch(handleError(res));
};

// Gets a single Thing from the DB
// exports.sort = function(req, res) {
//   Items.getItemWithSortPrice(req.params.id, req.body)
//     .then(handleEntityNotFound(res))
//     .then(responseWithResult(res))
//     .catch(handleError(res));
// };