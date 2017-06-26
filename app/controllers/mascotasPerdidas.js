angular.module("mascotas")

.controller("mascotasPerdidasController", ["mascotasService", "formatearFactory", "apiConstant", function (mascotasService, formatearFactory, apiConstant) {

    var cdx = this;
    cdx.apiDir = apiConstant;
    cdx.perdidas = [];
    cdx.encontradas = [];

    mascotasService.perdidas(12, 0).then(function (res) {

        cdx.perdidas = res;

    })

    mascotasService.encontradas(12, 0).then(function (res) {

        cdx.encontradas = res;

    })


    cdx.formatear = function (texto) {

        return formatearFactory(texto);

    }

}])
