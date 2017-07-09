angular.module("mascotas")

.controller("misMascotasController", ["mascotasService", "usuariosService", "placasService", "apiConstant", "$scope", function (mascotasService, usuariosService, placasService, apiConstant, $scope) {
    
    var cdx = this;


    if ($scope.$parent.seleccionado != 2) {

        $scope.$parent.seleccionado = 2;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
        $scope.$parent.iconoSalir = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 5, $scope.$parent.iconosSalir);
    }
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
