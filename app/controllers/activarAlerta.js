angular.module("mascotas")

.controller("activarAlertaController", ["NavigatorGeolocation", "NgMap", "mascotasService", "usuariosService", "$filter", "mailService", function (NavigatorGeolocation, NgMap, mascotasService, usuariosService, $filter, mailService) {

    var cdx = this;

    cdx.centro = [];

    cdx.mascotas = [];

    cdx.datos = {
        fecha: null,
        ubicacion: null,
        mensaje: null,
        mascota: null
    };

    cdx.hoy = new Date();


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


    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno)

    .then(function (res) {

        angular.forEach(res, function (valor, llave) {

            if ((!valor.perdida && !valor.encontrado) || (valor.perdida && valor.encontrado)) {

                cdx.mascotas.push(res[llave]);

            }

        })

    })



    cdx.avanzar = function (valido, datos) {

        if (valido) {

            if (cdx.opciones < 3) {

                cdx.opciones = cdx.opciones + 1;

            } else if (cdx.opciones == 3) {

                datos.fecha = $filter('date')(cdx.hoy, "dd/MM/yyyy")

                mascotasService.nuevaPerdida(datos)

                .then(function (res) {

                    mailService.activarAlerta(datos.idMascota);

                    cdx.opciones = cdx.opciones + 1;


                })

                .catch(function (res) {

                    console.log("error")

                })

            }

        }

    }

}])
