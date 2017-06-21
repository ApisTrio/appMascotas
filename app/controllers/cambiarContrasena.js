angular.module("mascotas")

.controller("cambiarContrasenaController", ["mailService", "$scope",function (mailService, $scope) {

    var cdx = this;


    cdx.enviar = function (valido, email) {
        
        if (valido) {
            cdx.pasos = cdx.pasos + 1;
            mailService.cambiarContrasena(email);
        }
    
    }
}])
