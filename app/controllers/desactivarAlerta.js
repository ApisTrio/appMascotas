angular.module("mascotas")

.controller("desactivarAlertaController", ["mascotasService", "usuariosService", "$filter", "$stateParams", "$scope", "mailService", "$state", function (mascotasService, usuariosService, $filter, $stateParams, $scope, mailService, $state) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 4) {

        $scope.$parent.seleccionado = 4;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
        $scope.$parent.iconoSalir = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 5, $scope.$parent.iconosSalir);
    }


    cdx.centro = [];

    cdx.mascotas = [];

    cdx.datos = {};

    mascotasService.mascotasPerdidasDueno(usuariosService.autorizado().dueno.idDueno).then(function (res) {

        cdx.mascotas = res;

        angular.forEach(cdx.mascotas, function (valor, llave) {

            if ($stateParams.idMascota && $stateParams.idMascota == valor.idMascota) {
                cdx.datos.idMascota = parseInt(valor.idMascota);
                cdx.idMascota = valor.idMascota;
                cdx.codigo = valor.codigo;
            }
        })

    })



    cdx.avanzar = function (valido, idMascota) {


        if (valido) {

            mascotasService.nuevaEncontrada(idMascota).then(function (res) {

                mailService.desactivarAlerta(idMascota);

                cdx.opciones = cdx.opciones + 1;

            })




        }

    }


    cdx.volver = function (placa) {

        if (placa) {
            $state.go("perfil.misMascotasIndividual", {idPlaca: placa});
        }
        
        else{  
            $state.go("perfil.misMascotas");
        }

    }

}])
