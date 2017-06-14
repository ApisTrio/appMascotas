angular.module("mascotas")

.controller("mascotasPerdidasController", ["mascotasService", "formatearFactory", function (mascotasService, formatearFactory) {

    var cdx = this;

    cdx.perdidas = [];
    cdx.encontradas = [];

    mascotasService.perdidas(10, 0).then(function (res) {

        cdx.perdidas = res;

    })

    mascotasService.encontradas(10, 0).then(function (res) {

        cdx.encontradas = res;

    })


    cdx.formatear = function (texto) {

        return formatearFactory(texto);

    }

}])
