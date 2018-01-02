//Controlador ver cliente para manejo de Front 

(function() {
    'use strict';

    angular
        .module('jamesAuth')
        .controller('Getusr_clienteController', [
            '$http',
            '$scope',
            getusr_clienteController
        ]);
        // funcion del controlador
    function getusr_clienteController($http, $scope) {
        // var vm = this;

        var DatosC = [];
   
        //carga de datos en Front segun metodo. (GET, PUT, POST, DELETE)
        $http({ method: 'GET', url: '/api/admin/getcliente' })
            .then(function(response) {
                if(response && response.data) {

                    // Se cargan los datos extraidos de la BD en DatosC para ser mostrados en Front
                    $scope.DatosC = response.data;

                }
            });
    }
})();