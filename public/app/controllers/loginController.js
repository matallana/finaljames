(function() {
    'use strict';

    angular
        .module('jamesAuth')
        .controller('LoginController', [
            '$state',
            'authService',
            loginController
        ]);

    function loginController($state, authService) {
        var vm = this;

        vm.loginError = false
        vm.loginErrorMessage = null;

        vm.login = login;

        function login() {
            vm.loginError = false
            vm.loginErrorMessage = null;

            if(!vm.nombreUsuario || !vm.password) {
                vm.loginError = true;
                vm.loginErrorMessage = 'nombreUsuario and password required!';
                return;
            }

            authService.login(vm.nombreUsuario, vm.password)
                .then(handleSuccessfulLogin)
                .catch(handleFailedLogin);
        }   

        function handleSuccessfulLogin() {
            $state.go('index');
        }

        function handleFailedLogin(response) {
            if(response && response.data) {
                vm.loginErrorMessage = response.data.message;
                vm.loginError = true;
            }
        }

    }
})();