angular.module("mascotas")

.controller("loginController", ["usuariosService", "$state", "currentAuth", "$scope", function (usuariosService, $state, currentAuth,$scope) {

    var cdx = this;

    cdx.iniciarSesion = function (datos, valido) {
        $scope.loginForm.$setSubmitted();
        if (valido) {
            
            usuariosService.sesion(datos.usuario, datos.pass)
                
                .then(function (res) {

                    $state.go("perfil.miPerfil");

                })
        }

    }

}])
