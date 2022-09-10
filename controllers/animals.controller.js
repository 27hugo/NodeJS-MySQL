"use strict";

const animalsService = require('../services/animals.service');

let getAll = async (request, response) => {
    let animals = await animalsService.getAll();
    response.status(200).send(animals);
};

module.exports = {
    getAll
};
