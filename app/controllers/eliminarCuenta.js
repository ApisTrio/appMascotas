angular.module("mascotas")

.controller("eliminarCuentaController", ["mailService", "usuariosService", function (mailService, usuariosService) {

    var cdx = this;



    cdx.avanzar = function () {

        mailService.borrarUsuario(usuariosService.autorizado().usuario.idUsuario);
        cdx.pasos = cdx.pasos + 1;

    }



}])
