angular.module("mascotas")

.controller("misMascotasIndividualController", ["placasService", "mascotasService", "$stateParams", "placaValida",function (placasService, mascotasService, $stateParams, placaValida) {
    
    var cdx = this;
    
    cdx.datos = placaValida;
    
}])
