// The User model.
'use strict'; 

var Sequelize = require('sequelize'),
    bcrypt = require('bcrypt');

var config = require('../config'),
    db = require('../services/database');

var perfil = require('../models/perfil');    

// 1: The model schema.
var modelDefinition = {
    nombreUsuario: {
        type: Sequelize.STRING,
        unique: true,
        allowNull: false
    },

    apellidoUsuario: {
        type: Sequelize.STRING,
        allowNull: false
    },

    emailUsuario: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true
    },

    avatarUsuario: {
        type: Sequelize.STRING,
        allowNull: true
    },

    password: {
        type: Sequelize.STRING,
        allowNull: false
    },

    telefonoMovil: {
        type: Sequelize.INTEGER,
        allowNull: true
    },
    
    telefonoFijo: {
        type: Sequelize.INTEGER,
        allowNull: true
    },

    perfilId: {
        type: Sequelize.INTEGER,
        defaultValue: config.userRoles.user
    },

    cuentaId: {
        type: Sequelize.INTEGER,
        allowNull: true
    },


     
    
};

// 2: The model options.
var modelOptions = {
    instanceMethods: {
        comparePasswords: comparePasswords
    },
    hooks: {
        beforeValidate: hashPassword
    }
};

// 3: Define the User model.
var UserModel = db.define('user', modelDefinition, modelOptions);

// Compares two passwords.
function comparePasswords(password, callback) {
    bcrypt.compare(password, this.password, function(error, isMatch) {
        if(error) {
            return callback(error);
        }

        return callback(null, isMatch);
    });
}

// Hashes the password for a user object.
function hashPassword(user) {
    if(user.changed('password')) {
        return bcrypt.hash(user.password, 10).then(function(password) {
            user.password = password;
        });
    }
}


module.exports = UserModel;