angular.module("mascotas")

.controller("landingController", ["mascotasService", "formatearFactory",function (mascotasService, formatearFactory) {
    
    var cdx = this;
    
    cdx.perdidas = [];
     
    mascotasService.perdidas(3, 0).then(function(res){
        
        cdx.perdidas = res;
        
    })
    
    cdx.formatear = function(texto){
        
        return formatearFactory(texto);
        
    }

}])

