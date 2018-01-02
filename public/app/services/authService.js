(function() {
    'use strict';

    angular
        .module('jamesAuth')
        .factory('authService', [
            '$http',
            '$cookies',
            '$state',
            authService
        ]);

    function authService($http, $cookies, $state) {

        var authService = {
            login: login,
            logout: logout,
            signup: signup,
            empresa: empresa,
            usr_cliente: usr_cliente,
            general_kpi: general_kpi,
            getUserData: getUserData,
            isAuthenticated: isAuthenticated,
        };

        return authService;

        function login(nombreUsuario, password) {
            var reqObj = {
                method: 'POST',
                url: '/api/authenticate',
                data: {
                    nombreUsuario: nombreUsuario,
                    password: password
                }
            };

            return $http(reqObj).then(function(response) {
                if(response && response.data) {
                    response = response.data;
                    console.log(response);
                    

                    var expires = new Date(),
                        user = {},
                        usesion = {};
                        
                        user.nombreUsuario = response.nombreUsuario;
                        user.perfilId = response.perfilId;
                        user.idusuario = response.idusuario;
                        user.token = response.token;
                        usesion.idusuario = response.idusuario;
                        expires.setTime(expires.getTime() + (30 * 60 * 1000));

                    $cookies.put(
                        'user',
                        JSON.stringify(user),
                        { expires: expires }
                    );
                    $cookies.put(
                        'usesion',
                        usesion['idusuario'],
                        { expires: expires }
                    );

                    // var user = authService.getUserData();
                    // var sesionx = authService.getUserId();
                    // console.log(sesionx);
                    // console.log(user);


                }
            });
        }

        function logout() {
            $cookies.remove('user');
            $cookies.remove('usesion');            
            $state.go('login');
        }

        function isAuthenticated() {
            var user = $cookies.get('user');
         // var usesion = $cookies.get('usesion');
            return user && user !== 'undefined';
        }

        function getUserData() {
            if(isAuthenticated()) {
                return JSON.parse($cookies.get('user'));
            }

            return false;
        }


        // function getUserId() {
        //     if(isAuthenticated()) {
        //     return $cookies.get('usesion');               
        //     }

        //     return false;
        // }


        //Se carga el metodo POST De Usuario 
        function signup(nombreUsuario, apellidoUsuario, emailUsuario, avatarUsuario, password, telefonoMovil, telefonoFijo) {
            var reqObj = {
                method: 'POST',
                url: '/api/admin/signup',
                data: {
                    nombreUsuario: nombreUsuario,
                    apellidoUsuario: apellidoUsuario,
                    emailUsuario : emailUsuario,
                    avatarUsuario: avatarUsuario,
                    password: password,
                    telefonoMovil: telefonoMovil,
                    telefonoFijo: telefonoFijo,
                }
            };

            return $http(reqObj);
        }

        //Se carga el metodo POST de Empresa
        function empresa(nombreEmpresa){
            var reqObj = {
                method: 'POST',
                url: '/api/admin/empresa',
                data: {
                    nombreEmpresa: nombreEmpresa
                }
            };
            return $http(reqObj);
        }

        //Se carga el metodo POST de Cliente
        function usr_cliente(nombreCliente, apellidoPCliente, apellidoMCliente, emailCliente, telefonoFijoCliente, telefonoMovilCliente, password, empresaId){
            var reqObj = {
                method: 'POST',
                url: '/api/admin/usr_cliente',
                data: {
                    nombreCliente: nombreCliente, 
                    apellidoPCliente: apellidoPCliente,
                    apellidoMCliente: apellidoMCliente,
                    emailCliente: emailCliente,
                    telefonoFijoCliente: telefonoFijoCliente,
                    telefonoMovilCliente: telefonoMovilCliente,
                    password: password,
                    empresaId: empresaId
                }
            };
            return $http(reqObj);
        
        }

        //Se carga el metodo POST de KPIs
        function general_kpi(fans, alcance, impresiones, interacciones, publicaciones, 
            followers, reach, impressions, contribuidores, twettGenerados, retweets, respuestas, menciones,
             visitas, rebote, permanencia, nombreTipoMedio, fechaInicio, fechaFinal){
            var reqObj = {
                method: 'POST',
                url: '/api/general_kpi',
                data: {
                    fans: fans,
                    alcance: alcance,
                    impresiones: impresiones,
                    interacciones: interacciones,
                    publicaciones: publicaciones,
                    followers: followers,
                    reach: reach,
                    impressions: impressions,
                    contribuidores: contribuidores,
                    twettGenerados: twettGenerados,
                    retweets: retweets,
                    respuestas: respuestas,
                    menciones: menciones,
                    visitas: visitas,
                    rebote: rebote,
                    permanencia: permanencia,
                    nombreTipoMedio: nombreTipoMedio,
                    fechaInicio: fechaInicio,
                    fechaFinal: fechaFinal
                }
            };
            return $http(reqObj);
        
        }

    }
})();