angular.module("mascotas")

.directive("cdxPasos", [function () {


    return {
        scope: {

            paso: "=paso"
        },
        controller: function ($scope) {

            $scope.pasos = {
                1: true,
                2: false,
                3: false,
                4: false,
                5: false
            }

        },
        
        link: function(scope){
            
            scope.$watch("paso", function(valor, viejoValor){
                
                if(valor !== viejoValor){
                    
                    scope.pasos[valor] = true;
                    
                }
                
            })
            
        },
        templateUrl: 'cdx.pasos.html'
    };


}]);
