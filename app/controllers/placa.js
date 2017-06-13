angular.module("mascotas")

.controller("placaController", ["placasService", "mascotasService", "$stateParams", "placaValida", function (placasService, mascotasService, $stateParams, placaValida) {

    var cdx = this;


    cdx.datos = placaValida;
    
    console.log(placaValida)


}])
