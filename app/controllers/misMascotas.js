angular.module("mascotas")

.controller("misMascotasController", ["mascotasService", "usuariosService", "placasService", "apiConstant", "$scope", function (mascotasService, usuariosService, placasService, apiConstant, $scope) {
    
    var cdx = this;

    $scope.$parent.seleccionado = 2;
    
    cdx.mascotas = [];
    
    cdx.apiDir = apiConstant;
    
    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function(res){
        
        cdx.mascotas = res;
        
        angular.forEach(cdx.mascotas, function(valor, llave){
            
            placasService.placasAsignadas(valor.idMascota).then(function(res){
                
                cdx.mascotas[llave].placas = res;
                
                
            })
            
            
        })
        
    })
    
    

}])
