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




}])
