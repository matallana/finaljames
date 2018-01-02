'use strict';



var db = require('../services/database'),
    Sequelize = require('sequelize'),
    usr_Cliente = require('../models/usr_cliente'),
    Empresa = require('../models/empresa');
    
    const Op = Sequelize.Op;

// Metodo buscar todo models usr_cliente.
var getclientebyId = {
    index(req, res) {
            var datosCid = '';
            console.log('holas');
            db.sync().then(function(){
                usr_Cliente.findById(req.params.id, {
                    //Return all books that have a matching author_id for the author
                    include: Empresa
                  })
                .then(function(usr_clientes){
                    this.datosCid = usr_clientes;
                    res.status(200).send(this.datosCid);
                });
            });
            
        },



     

   

     
};



module.exports = getclientebyId;