angular.module("mascotas")

.controller("confirmarController", ["$stateParams", "usuariosService",function ($stateParams, usuariosService) {
    
    var cdx = this;
    
    
    usuariosService.confirmar($stateParams.id, $stateParams.token)
    
    .then(function(res){
   
        cdx.opciones = 2;
        
    })
    
    .catch(function(res){
        
        
        
    })

}])
