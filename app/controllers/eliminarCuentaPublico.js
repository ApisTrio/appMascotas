angular.module("mascotas")

.controller("eliminarCuentaPublicoController", ["usuariosService", "$stateParams", function (usuariosService, $stateParams) {

    var cdx = this;

    usuariosService.borrar($stateParams.token).then(function(res){
        
        usuariosService.salir();
        
        cdx.pasos = 2;
        
    }).catch(function(res){
        
        if(res == 400){
            
            cdx.pasos = 3;
            
        } else{
            
            cdx.pasos = 4;
            
        }
         
    })
    


}])
