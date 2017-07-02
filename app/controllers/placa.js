angular.module("mascotas")

.controller("placaController", ["placasService", "mascotasService", "$stateParams", "placaValida", "formatearFactory", "googleMapsService", "NavigatorGeolocation", "mailService", "apiConstant", "$mdDialog", function (placasService, mascotasService, $stateParams, placaValida, formatearFactory, googleMapsService, NavigatorGeolocation, mailService, apiConstant, $mdDialog) {

    var cdx = this;


    if ($scope.$parent.seleccionado != 2) {

        $scope.$parent.seleccionado = 2;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
    }

    cdx.datos = placaValida;

    cdx.apiDir = apiConstant;

    mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.medicos = res[0];

    })

    mascotasService.vacunas(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.vacunas = res;

    })


    NavigatorGeolocation.getCurrentPosition()

    .then(function (position) {


        googleMapsService.geoCodeInverso(position.coords.latitude, position.coords.longitude, "AIzaSyD3rv58fVm8h5McUzT9wrG6J7lQFw_J7Uk").then(function (res) {

            mailService.placaEscaneada(cdx.datos.basico.idMascota, position.coords.latitude, position.coords.longitude, res);


        }).catch(function (res) {

            mailService.placaEscaneada(cdx.datos.basico.idMascota, position.coords.latitude, position.coords.longitude);

        })

    })

    .catch(function (res) {


        mailService.placaEscaneada(cdx.datos.basico.idMascota);
    })









    cdx.mostrarModal = function ($event, idMascota) {

        var promesa = $mdDialog.show({
            parent: angular.element(document.body),
            targetEvent: $event,
            templateUrl: "cdx.correoPlaca.html",
            locals: {
                id: idMascota
            },
            controller: function ($scope, $mdDialog, mailService, id, $scope) {

                $scope.idMascota = id;

                $scope.enviar = function (valido, idMascota, nombre, email, telefono, mensaje) {
                    
                    $scope.contactoForm.$setSubmitted();
                    if (valido) {

                        mailService.contacto(idMascota, nombre, email, telefono, mensaje);
                        $mdDialog.hide();

                    }
                }

                $scope.cerrarModal = function () {
                    $mdDialog.hide();
                }

            },
            clickOutsideToClose: true,
            escapeToClose: true
        });


        promesa.then(function (res) {

            cdx.pasos = 2;

        }).catch(function (res) {


            console.log("envio fallido");

        })

    }


}])
