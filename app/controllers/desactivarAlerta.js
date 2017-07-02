angular.module("mascotas")

.controller("desactivarAlertaController", ["mascotasService", "usuariosService", "$filter", "$stateParams", "$scope", "mailService",function (mascotasService, usuariosService, $filter, $stateParams, $scope, mailService) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 4) {

        $scope.$parent.seleccionado = 4 ;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
    }


    cdx.centro = [];

    cdx.mascotas = [];

    cdx.datos = {};
    
    /*cdx.hoy = new Date();


    NavigatorGeolocation.getCurrentPosition()

    .then(function (position) {

        cdx.centro[0] = position.coords.latitude;
        cdx.centro[1] = position.coords.longitude;

        cdx.datos.ubicacion = JSON.stringify({
            latitud: position.coords.latitude,
            longitud: position.coords.longitude
        });

        NgMap.getMap().then(function (evtMap) {

            map = evtMap;
            var center = map.getCenter();
            google.maps.event.trigger(map, "resize");
            map.setCenter(center);

        });

    });
*/

    mascotasService.mascotasPerdidasDueno(usuariosService.autorizado().dueno.idDueno).then(function (res) {

        cdx.mascotas = res;
        
        angular.forEach(cdx.mascotas, function (valor, llave) {

            if ($stateParams.idMascota && $stateParams.idMascota == valor.idMascota ) {
                cdx.datos.idMascota = valor.idMascota; 
            }
        })

    })



    cdx.avanzar = function (valido, idMascota) {

       
        if (valido) {

                mascotasService.nuevaEncontrada(idMascota).then(function (res) {
                    
                    console.log(idMascota)
                    mailService.desactivarAlerta(idMascota);
               
                    cdx.opciones = cdx.opciones + 1;

                })

              
              
            
        }

    }

}])
