"use strict";

var express = require("express");
var config = require("./config.json");
var info = require("./package.json");
var app = express();
var db = require('./database/database.js');
var cors = require('cors');
 
app.use(cors());

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use(`/animals/`, require("./routes/animals.router"));

if (global.SQLpool === undefined) {
    global.SQLpool = db.createPool();
}

app.listen(config.port, (error) =>{
    if(!error)
        console.log(`Server is Successfully Running, and App ${info.name} is listening on port ${config.port}`)
    else 
        console.log("Error occurred, server can't start", error);
    }
);

