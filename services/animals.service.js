"use strict";

const mysql = require('../database/database');

async function getAll() {
    let sql = 'CALL SP_GET_ANIMALS()';
    return new Promise( function(resolve, reject){
        mysql.query(sql, (error, results) => {
            if(error){
                console.log(error.message);
                reject(error);
            }else{
                resolve(results[0]);
            }
        });
    });
}

module.exports = {
    getAll
};
