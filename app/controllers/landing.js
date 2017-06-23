angular.module("mascotas")

.controller("landingController", ["mascotasService", "formatearFactory", "apiConstant", "$mdDialog", "$scope", function (mascotasService, formatearFactory, apiConstant, $mdDialog, $scope) {

    var cdx = this;

    cdx.apiDir = apiConstant;

    cdx.perdidas = [];

    mascotasService.perdidas(3, 0).then(function (res) {

        cdx.perdidas = res;

    })

    cdx.formatear = function (texto) {

        return formatearFactory(texto);

    }



    cdx.mostrarModal = function ($event) {
        
        $mdDialog.show({
            parent: angular.element(document.body),
            targetEvent: $event,
            templateUrl: "cdx.encontreMascotaModal.html",
            controller: function ($scope, $mdDialog) {
            
                $scope.cerrarModal = function () {
                    $mdDialog.hide();
                }
            },
            clickOutsideToClose: true,
            escapeToClose: true
        });


    }
    
}])
