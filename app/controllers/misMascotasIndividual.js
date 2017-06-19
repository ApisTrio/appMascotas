angular.module("mascotas")

.controller("misMascotasIndividualController", ["placasService", "mascotasService", "$stateParams", "placaValida", "apiConstant", function (placasService, mascotasService, $stateParams, placaValida, apiConstant) {

    var cdx = this;

    cdx.datos = placaValida;

    cdx.apiDir = apiConstant;

    mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.medicos = res[0];

    });

    mascotasService.vacunas(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.vacunas = res;

    });

}])