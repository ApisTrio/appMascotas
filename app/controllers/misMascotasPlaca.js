angular.module("mascotas")

.controller("misMascotasPlacaController", ["mascotasService", "placasService", "usuariosService", "$stateParams", "$scope", function (mascotasService, placasService, usuariosService, $stateParams, $scope) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 2) {

        $scope.$parent.seleccionado = 2;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
    }

    cdx.mascotas = [];

    cdx.placa = {};


    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function (res) {

        cdx.mascotas = res;

       /* angular.forEach(cdx.mascotas, function (valor, llave) {

            if ($stateParams.idMascota && $stateParams.idMascota == valor.idMascota ) {
                cdx.placa.mascotas_idMascota = valor.idMascota; 
            }
        })*/

    });

    cdx.avanzar = function (valido, datos) {

        if (valido) {

            placasService.asignar(datos).then(function (res) {

                cdx.pasos = cdx.pasos + 1;

            })

        }

    }




}])
