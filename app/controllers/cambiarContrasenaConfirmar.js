angular.module("mascotas")

.controller("cambiarContrasenaConfirmarController", ["$scope", "$stateParams", "usuariosService", function ($scope, $stateParams, usuariosService) {

    var cdx = this;

    cdx.cambiarContrasena = function(contrasena, valido){
        
        if(valido){
            
            usuariosService.cambiarContrasena(contrasena, $stateParams.token).then(function(res){
                
                cdx.pasos = 2;
                
            })
            
            .catch(function(res){
                
                cdx.pasos =  3;
                
            })
            
        }        
        
    }

}])
