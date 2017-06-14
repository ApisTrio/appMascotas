angular.module("mascotas")

.controller("placaController", ["placasService", "mascotasService", "$stateParams", "placaValida", "formatearFactory", function (placasService, mascotasService, $stateParams, placaValida, formatearFactory) {

    var cdx = this;


    cdx.datos = placaValida;
    
   cdx.formatear = function(texto){
        
        return formatearFactory(texto);
        
    }


}])
