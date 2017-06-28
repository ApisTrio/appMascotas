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
        "assets/images/menu_iconos/desactivar.svg",
        "assets/images/menu_iconos/desactivar_hover.svg",
        "assets/images/menu_iconos/desactivar_selected.svg"
    ];

    $scope.cambiarIcono = function(s, i, iconos){

        console.log(s,i,iconos);

        if (s == i) {
            return iconos[2];
        }

        return iconos[0];

    }

    //$scope.iconoMiPerfil = $scope.cambiarIcono($scope.seleccionado, 1, $scope.iconoMiPerfil);
    //$scope.iconoMisMascotas = $scope.cambiarIcono($scope.seleccionado, 2, $scope.iconoMisMascotas);
    //$scope.iconoActivarAlerta = $scope.cambiarIcono($scope.seleccionado, 3, $scope.iconoActivarAlerta);
    //$scope.iconoDesactivarAlerta = $scope.cambiarIcono($scope.seleccionado, 4, $scope.iconoDesactivarAlerta);


}])
