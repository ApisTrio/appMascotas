angular.module("mascotas")

.controller("misMascotasPlacaController", [function () {
    
    var cdx = this;
    
    cdx.avanzar = function(valido, datos){
        
        if(valido){
            
            if(cdx.pasos < 2){
                
                cdx.pasos = cdx.pasos + 1;
            }
            
            else{
                
                
                
            }
            
        }
        
    }
    
}])
