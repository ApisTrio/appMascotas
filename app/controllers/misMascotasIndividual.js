angular.module("mascotas")

.controller("misMascotasIndividualController", ["placasService", "mascotasService", "$stateParams", "placaValida", function (placasService, mascotasService, $stateParams, placaValida) {

    var cdx = this;

    cdx.datos = placaValida;

    mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.medicos = res[0];

    });

    mascotasService.vacunas(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.vacunas = res;

    });

}])
