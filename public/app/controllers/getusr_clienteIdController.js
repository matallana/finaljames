
(function() {
    'use strict';

    angular
        .module('jamesAuth')
        .controller('Getusr_clienteIdController', [
            '$http',
            '$scope',
            getusr_clienteIdController
        ]);

    function getusr_clienteIdController($http, $scope) {

        $http({ method: 'GET', url: '/api/admin/getcliente/'+ id })
            .then(function(response) {
                if(response && response.data) {
                    //  var arreglo = array[];
                    // $i = 0; 
                    // foreach(response.data as datosC)
                    // $scope.DatosC = response.data;
                    // console.log($scope.DatosC.id);
                    var arreglo = [];
                    array = JSON.stringify(response.data);
                    console.log(arreglo);
                }
            });
    };
})();