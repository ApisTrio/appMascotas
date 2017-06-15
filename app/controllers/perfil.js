angular.module("mascotas")

.controller("perfilController", ["currentAuth", "usuariosService", "$rootScope", "$scope", "$state", function (currentAuth, usuariosService, $rootScope, $scope, $state) {
    
    var cdx = this;
    
    $scope.$watch('$root.objetoToken', function (valor, nuevoValor) {
        
        if (valor !== nuevoValor) {
            
            if($rootScope.objetoToken == false){
                
                                
                $state.go("login");
                
            }
            
        }
        
    });
    
 
    

}])
