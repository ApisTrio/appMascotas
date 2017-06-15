angular.module("mascotas")

.controller("misMascotasController", ["mascotasService", "usuariosService",function (mascotasService, usuariosService) {
    
    var cdx = this;
    
    cdx.mascotas = [];
    
    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function(res){
        
        cdx.mascotas = res;
        
        console.log(cdx.mascotas)
        
    })
    
    

}])
