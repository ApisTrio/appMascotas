angular.module("mascotas")

.controller("headerController", ["usuariosService", "$rootScope", "$scope","$timeout", "$mdSidenav", function (usuariosService, $rootScope, $scope, $timeout, $mdSidenav) {

    var cdx = this;

    cdx.autorizado = usuariosService.autorizado();

    $scope.$watch('$root.objetoToken', function (valor, nuevoValor) {

        if (valor !== nuevoValor) {

            cdx.autorizado = $rootScope.objetoToken;

        }

    });

    function debounce(func, wait, context) {
        var timer;

        return function debounced() {
            var context = $scope,
                args = Array.prototype.slice.call(arguments);
            $timeout.cancel(timer);
            timer = $timeout(function() {
            timer = undefined;
            func.apply(context, args);
            }, wait || 10);
        };
    }

    /**
     * Build handler to open/close a SideNav; when animation finishes
     * report completion in console
     */
    function buildDelayedToggler(navID) {
        return debounce(function() {
            // Component lookup should always be available since we are not using `ng-if`
            $mdSidenav(navID)
            .toggle();
        }, 200);
    }

    cdx.toggleLeft = buildDelayedToggler('left');

    cdx.close = function () {
      // Component lookup should always be available since we are not using `ng-if`
      $mdSidenav('left').close()
        .then(function () {
          $log.debug("close LEFT is done");
        });

    };

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
