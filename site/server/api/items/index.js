'use strict';

var express = require('express');
var controller = require('./items.controller');

var router = express.Router();

router.get('/', controller.index);
router.get('/:id', controller.show);
//router.post('/:id', controller.sort);

module.exports = router;
