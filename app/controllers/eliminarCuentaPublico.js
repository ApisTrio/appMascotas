angular.module("mascotas")

.controller("eliminarCuentaPublicoController", ["usuariosService", "$stateParams", function (usuariosService, $stateParams) {

    var cdx = this;

    
    usuariosService.borrar($stateParams.token).then(function(res){
        
        
        usuariosService.salir();
        
    }).catch(function(res){
        
        
        
        
    })
    


}])
