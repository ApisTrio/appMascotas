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

    cdx.mascotasPerdidas = false;

    mascotasService.mascotasPerdidasDueno(usuariosService.autorizado().dueno.idDueno)
        .then(function (res) {

            if (res) {

                cdx.mascotasPerdidas = true;

            }
        })

    $scope.seleccionado = 0;

    $scope.iconoMiPerfil = [
        "assets/images/menu_iconos/profile.svg",
        "assets/images/menu_iconos/profile_hover.svg",
        "assets/images/menu_iconos/profile_selected.svg"
    ];
    $scope.iconoMisMascotas = [
        "assets/images/menu_iconos/huella.svg",
        "assets/images/menu_iconos/huella_hover.svg",
        "assets/images/menu_iconos/huella_selected.svg"
    ];
    $scope.iconoActivarAlerta = [
        "assets/images/menu_iconos/important_message.svg",
        "assets/images/menu_iconos/important_message_hover.svg",
        "assets/images/menu_iconos/important_message_selected.svg"
    ];
    $scope.iconoDesactivarAlerta = [
        "assets/images/menu_iconos/desactivar.svg",
        "assets/images/menu_iconos/desactivar_hover.svg",
        "assets/images/menu_iconos/desactivar_selected.svg"
    ];

    cdx.cambiarIcono = function(s, i, iconos){

        if (s == i) {
            return iconos[2];
        }

        return iconos[0];

    }



}])
