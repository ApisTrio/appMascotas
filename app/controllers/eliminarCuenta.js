angular.module("mascotas")

.controller("eliminarCuentaController", ["mailService", "usuariosService", "$scope", function (mailService, usuariosService, $scope) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 1) {

        $scope.$parent.seleccionado = 1 ;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
    }



    cdx.avanzar = function () {

        mailService.borrarUsuario(usuariosService.autorizado().usuario.idUsuario);
        cdx.pasos = cdx.pasos + 1;

    }



}])
