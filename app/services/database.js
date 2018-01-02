'use strict';

var config = require('./../config'),
    Sequelize = require('sequelize');

module.exports = new Sequelize(
    config.db.name,
    config.db.user,
    config.db.password,
    config.db.details
);

var Empresa = require('../models/empresa');
var General_kpi = require('../models/general_kpi');
var User = require('../models/user');
var Perfil = require('../models/perfil');
var Usr_cliente = require('../models/usr_cliente');
var Cuenta = require('../models/cuenta');






// Perfil.hasMany(User);

//creando las llaves foraneas
Empresa.hasMany(Usr_cliente, {foreignKey: 'empresaId'});
Usr_cliente.belongsTo(Empresa, {foreignKey: 'empresaId'});

//creando las llaves foraneas
Usr_cliente.belongsTo(Cuenta, {foreignKey: 'cuentaId'});
Cuenta.hasMany(Usr_cliente, {foreignKey: 'cuentaId'});

//creando las llaves foraneas
Usr_cliente.belongsTo(Cuenta, {foreignKey: 'cuentaId'});
Cuenta.hasMany(Usr_cliente, {foreignKey: 'cuentaId'});

// //creando las llaves foraneas
// Cuenta.belongsTo(User, {foreignKey: 'cuentaId'});
// User.hasMany(Cuenta, {foreignKey: 'cuentaId'});

// //creando las llaves foraneas
// User.belongsTo(Perfil, {foreignKey: 'perfilId'});
// Perfil.hasMany(User, {foreignKey: 'perfilId'});
