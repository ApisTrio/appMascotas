angular.module("mascotas")

.controller("misMascotasController", ["mascotasService", "usuariosService", "placasService",function (mascotasService, usuariosService, placasService) {
    
    var cdx = this;
    
    cdx.mascotas = [];
    
    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function(res){
        
        cdx.mascotas = res;
        
        angular.forEach(cdx.mascotas, function(valor, llave){
            
            placasService.placasAsignadas(valor.idMascota).then(function(res){
                
                cdx.mascotas[llave].placas = res;
                
                console.log(res)
                
            })
            
            
        })
        
    })
    
    

}])
