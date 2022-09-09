"use strict";

let getAll = async (request, response) => {
    response.status(200).send("Animals getAll works!");
};

module.exports = {
    getAll
};
