"use strict";

var express = require("express");

var service = require("../services/animals.service");

var router = express.Router();

//GET REQUEST
router.get("/getAll", service.getAll);

module.exports = router;
