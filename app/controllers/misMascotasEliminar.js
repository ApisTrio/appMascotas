angular.module("mascotas")

.controller("misMascotasEliminarController", ["mascotasService", "placaValida", "mailService", "$scope",function (mascotasService, placaValida, mailService, $scope) {
    
    var cdx = this;
    

    if ($scope.$parent.seleccionado != 2) {

        $scope.$parent.seleccionado = 2;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
        $scope.$parent.iconoSalir = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 5, $scope.$parent.iconosSalir);
    }

    cdx.placa = placaValida;
    
    cdx.avanzar = function(idMascota){
        
        mascotasService.darBaja(idMascota).then(function(res){
            
            mailService.darBaja(idMascota);
            
            cdx.pasos = cdx.pasos + 1;
            
        });
        
    }
    
}])
