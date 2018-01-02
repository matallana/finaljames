'use strict'; 

var Sequelize = require('sequelize');
 //   bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');


// 1: The model schema.
var modelPerfil = {
    perfilId: {
        type: Sequelize.INTEGER,
        unique: true,
        allowNull: false,
        primaryKey: true
    },
    nombrePerfil: {
        type: Sequelize.STRING,
        unique: true,
        allowNull: false
    },
};



// 3: Define the User model.
var PerfilModel = db.define('perfil', modelPerfil);


module.exports = PerfilModel;