angular.module("mascotas")

.controller("desactivarAlertaController", ["mascotasService", "usuariosService", "$filter",function (mascotasService, usuariosService, $filter) {

    var cdx = this;

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

    })



    cdx.avanzar = function (valido, idMascota) {

       
        if (valido) {

                mascotasService.nuevaEncontrada(idMascota)

                .then(function (res) {

                    cdx.opciones = cdx.opciones + 1;
                    console.log("hola")

                })

                .catch(function (res) {

                    console.log("error")

                })
                
              
            
        }

    }

}])
