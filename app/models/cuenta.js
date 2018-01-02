//The empresa model.
//PASO 1: se debe crear el model de la nueva entidad o tabla.  

'use strict'; 

var Sequelize = require('sequelize');
 //   bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');

// 1: The model schema.
var modelCuenta = {
    nombreCuenta: {
        type: Sequelize.STRING,
        // unique: true,
        allowNull: false
    },

    tipo_cuenta_idTipoCuenta: {
        type: Sequelize.INTEGER,
        unique: true,
        allowNull: false
    },

    usr_cliente_idCliente: {
        type: Sequelize.INTEGER,
        unique: true,
        allowNull: false
    },

};



// 3: Define the User model.
var CuentaModel = db.define('cuenta', modelCuenta);


module.exports = CuentaModel;

// Una vez que el model ha sido creado, este se exporta y se procede a configurar el authController.