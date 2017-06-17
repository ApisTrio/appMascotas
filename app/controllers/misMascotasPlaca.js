angular.module("mascotas")

.controller("misMascotasPlacaController", ["mascotasService", "placasService", "usuariosService",function (mascotasService, placasService, usuariosService) {

    var cdx = this;

    cdx.mascotas = [];

    cdx.placa = {};

    
    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function(res){
        
        cdx.mascotas = res;
        
    });
    
    cdx.avanzar = function (valido, datos) {

        if (valido) {
            
            placasService.asignar(datos).then(function(res){
                
               cdx.pasos = cdx.pasos + 1; 
                
            })

        }

    }




}])
