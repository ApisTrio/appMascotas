angular.module("mascotas")

.controller("headerController", ["usuariosService", "$rootScope", "$scope", function (usuariosService, $rootScope, $scope) {

    var cdx = this;

    cdx.autorizado = usuariosService.autorizado();

    $scope.$watch('$root.objetoToken', function (valor, nuevoValor) {

        if (valor !== nuevoValor) {

            cdx.autorizado = $rootScope.objetoToken;

        }

    });

    cdx.menuMostrar = function () {
        if (cdx.hmenuMostrar) {
            cdx.hmenuMostrar = false;
        } else {
            cdx.hmenuMostrar = true;
        }
    }
    
    cdx.salir = function(){
        
        usuariosService.salir();
        
    }


}])
