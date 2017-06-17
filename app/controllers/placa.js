angular.module("mascotas")

    .controller("placaController", ["placasService", "mascotasService", "$stateParams", "placaValida", "formatearFactory", function (placasService, mascotasService, $stateParams, placaValida, formatearFactory) {

        var cdx = this;

        cdx.datos = placaValida;
        
        mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

            cdx.datos.medicos = res[0];

        })
        
        mascotasService.vacunas(placaValida.basico.idMascota).then(function(res){
            
            cdx.datos.vacunas = res;
            
        })
        

}])
