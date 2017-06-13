angular.module("mascotas")

.controller("loginController", ["usuariosService", "$state", "currentAuth", function (usuariosService, $state, currentAuth) {

    var cdx = this;

    cdx.iniciarSesion = function (datos, valido) {
        
        if (valido) {
            
            usuariosService.sesion(datos.usuario, datos.pass)
                
                .then(function (res) {

                    $state.go("perfil.miPerfil");

                })
        }

    }

}])
