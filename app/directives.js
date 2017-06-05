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
        scope: {},
        templateUrl: 'cdx.formas.html',
        link: function (scope) {



            scope.formas = [
                {
                    url: {
                        normal: "assets/images/forms/modelo_pajarita.png",
                        selectd: ""
                    },
                    id: 1,
                    forma: "redonda"

                }, {

                    url: {
                        normal: "assets/images/forms/modelo_pajarita.png",
                        selectd: ""
                    },
                    id: 2,
                    forma: "pajarita"

                }
            ]

        }
    };

}])
