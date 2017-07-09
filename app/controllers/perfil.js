angular.module("mascotas")

.controller("perfilController", ["currentAuth", "usuariosService", "$rootScope", "$scope", "$state", "mascotasService", function (currentAuth, usuariosService, $rootScope, $scope, $state, mascotasService) {

    var cdx = this;

    $scope.$watch('$root.objetoToken', function (valor, nuevoValor) {

        if (valor !== nuevoValor) {

            if ($rootScope.objetoToken == false) {

                $state.go("login");

            }

        }

    });

    cdx.colapsar = function(menucColapsado) {
        console.log(menucColapsado)
        if (menucColapsado) {
            cdx.menuColapsado = false;
        } else {
            cdx.menuColapsado = true;
        }
    }

    $scope.seleccionado = 0;

    $scope.iconosMiPerfil = [
        "assets/images/menu_iconos/profile.svg",
        "assets/images/menu_iconos/profile_hover.svg",
        "assets/images/menu_iconos/profile_selected.svg"
    ];
    $scope.iconosMisMascotas = [
        "assets/images/menu_iconos/huella.svg",
        "assets/images/menu_iconos/huella_hover.svg",
        "assets/images/menu_iconos/huella_selected.svg"
    ];
    $scope.iconosActivarAlerta = [
        "assets/images/menu_iconos/important_message.svg",
        "assets/images/menu_iconos/important_message_hover.svg",
        "assets/images/menu_iconos/important_message_selected.svg"
    ];
    $scope.iconosDesactivarAlerta = [
        "assets/images/menu_iconos/important_message.svg",
        "assets/images/menu_iconos/important_message_hover.svg",
        "assets/images/menu_iconos/important_message_selected.svg"
    ];

    $scope.iconosSalir = [
        "assets/images/menu_iconos/logout.svg",
        "assets/images/menu_iconos/logout_hover.svg"
    ];

    $scope.cambiarIcono = function(s, i, iconos){

        if (s == i) {
            return iconos[2];
        }

        return iconos[0];

    }

    cdx.salir = function(){
        
        usuariosService.salir();
        
    }

}])
