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

        link: function (scope) {

            scope.$watch("paso", function (valor, viejoValor) {

                if (valor !== viejoValor) {

                    scope.pasos[valor] = true;

                }

            })

        },
        templateUrl: 'cdx.pasos.html'
    };


}])

.directive("cdxValidez", [function () {

    return {
        scope: {

            validez: "=validez",
            mostrar: "=mostrar"
        },
        template: '<img src="assets/images/forms/check.png" ng-show="validez" ng-if="mostrar"><img src="assets/images/forms/warning.png" ng-hide="validez"  ng-if="mostrar">'
    };

}])

.directive("cdxFormas", [function () {

    return {
        scope: {
            seleccionado: "=seleccionado"
        },
        templateUrl: 'cdx.formas.html',
        link: function (scope) {



            scope.formas = [
                {

                    url: {
                        normal: "assets/images/forms/modelo_pajarita.png",
                        selected: "assets/images/forms/modelo_pajarita_selected.png"
                    },
                    id: 2,
                    forma: "pajarita"

                },
                {
                    url: {
                        normal: "assets/images/forms/modelo_redonda.png",
                        selected: "assets/images/forms/modelo_redonda_selected.png"
                    },
                    id: 1,
                    forma: "redonda"

                }
            ]



            angular.forEach(scope.formas, function (valor, llave) {

                if (llave != 0) {

                    scope.formas[llave].url.visible = scope.formas[llave].url.normal;

                } else {

                    scope.formas[llave].url.visible = scope.formas[llave].url.selected;
                    scope.seleccionado = scope.formas[llave].forma;
                }

            });

            //seleccionar forma

            scope.seleccionar = function (indice) {

                angular.forEach(scope.formas, function (valor, llave) {

                    if (llave == indice) {

                        scope.formas[llave].url.visible = scope.formas[llave].url.selected;

                        scope.seleccionado = scope.formas[llave].forma;

                    } else {

                        scope.formas[llave].url.visible = scope.formas[llave].url.normal;
                    }

                });
            }
        }
    };

}])

.directive('cdxModelos', function () {
    return {
        require: "ngModel",
        scope: true,
        templateUrl: 'cdx.modelos.html',
        controller: ["$scope", function ($scope) {




            $scope.modelos = [
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-01.png",
                    forma: "pajarita",
                    id: 1
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-04.png",
                    forma: "pajarita",
                    id: 2
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-03.png",
                    forma: "pajarita",
                    id: 3
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-05.png",
                    forma: "pajarita",
                    id: 4
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-06.png",
                    forma: "pajarita",
                    id: 5
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-07.png",
                    forma: "pajarita",
                    id: 6
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-08.png",
                    forma: "pajarita",
                    id: 7
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-09.png",
                    forma: "pajarita",
                    id: 8
                },
                {
                    url: "assets/images/placas/Pajaritas/placas_iconos-10.png",
                    forma: "pajarita",
                    id: 9
                }
            ];


            $scope.modelos[0].activo = true;
            $scope.valorCorbata = $scope.modelos[0].id;

            $scope.seleccionar = function (indice) {

                angular.forEach($scope.modelos, function (valor, llave) {

                    if (llave == indice) {

                        $scope.modelos[llave].activo = true;

                    } else {

                        $scope.modelos[llave].activo = false;

                    }




                })

            }

        }],
        link: function (scope, element, attrs, ngModel) {

            if (!ngModel) return;

            scope.actualizar = function () {
                ngModel.$setViewValue(scope.valorCorbata);
            };

            ngModel.$render = function () {
                scope.valorCorbata = ngModel.$modelValue;
            };
            
            ngModel.$setViewValue(scope.valorCorbata);


        }
    }
});
