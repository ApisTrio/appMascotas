angular.module("mascotas")

.controller("misMascotasEliminarController", ["mascotasService", "placaValida", "mailService",function (mascotasService, placaValida, mailService) {
    
    var cdx = this;
    
    cdx.placa = placaValida;
    
    cdx.avanzar = function(idMascota){
        
        mascotasService.darBaja(idMascota).then(function(res){
            
            mailService.darBaja(idMascota);
            
            cdx.pasos = cdx.pasos + 1;
            
        });
        
    }
    
}])
