angular.module("mascotas")

.controller("misMascotasPlacaController", ["mascotasService", "placasService", "usuariosService", "$stateParams", function (mascotasService, placasService, usuariosService, $stateParams) {

    var cdx = this;

    cdx.mascotas = [];

    cdx.placa = {};


    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function (res) {

        cdx.mascotas = res;

        angular.forEach(cdx.mascotas, function (valor, llave) {

            if ($stateParams.idMascota && $stateParams.idMascota == valor.idMascota ) {
                cdx.placa.mascotas_idMascota = valor.idMascota; 
            }
        })

    });

    cdx.avanzar = function (valido, datos) {

        if (valido) {

            placasService.asignar(datos).then(function (res) {

                cdx.pasos = cdx.pasos + 1;

            })

        }

    }




}])
