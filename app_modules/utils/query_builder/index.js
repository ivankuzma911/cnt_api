/**
 * Created by IvanDev on 05.08.2017.
 */
const databaseCredentials = require('../../../config/config')['mysqlConnection'];
const queryBuilder = require('node-querybuilder').QueryBuilder(databaseCredentials, 'mysql', 'single');

module.exports = queryBuilder;