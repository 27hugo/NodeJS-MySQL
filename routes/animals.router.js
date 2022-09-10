"use strict";

var express = require("express");

var controller = require("../controllers/animals.controller");

var router = express.Router();

router.get("/getAll", controller.getAll);

module.exports = router;
