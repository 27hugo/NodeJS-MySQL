'use strict';

const mysql = require('mysql');
const config = require('../config.json');

const connection = mysql.createConnection(config.database);

connection.connect( (err) => {
  if(err){
		console.log(`Database error: ${err.sqlMessage?err.sqlMessage:err.code}`);
		return;
	}else{
		console.log('Base de datos conectada.');
	}
});

module.exports = connection;