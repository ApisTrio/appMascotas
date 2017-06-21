angular.module("mascotas")

.controller("recordarUsuarioController", ["mailService",function (mailService) {
    
    var cdx = this;
    
    cdx.enviar = function(valido, email){
        
        if(valido){
            
            
            mailService.recuperarUsuario(email);
            cdx.pasos = cdx.pasos + 1;
            
        }
        
        
    }
    

}])