angular.module("mascotas")

.controller("activarAlertaController", ["NavigatorGeolocation", "NgMap", "mascotasService", "usuariosService",function (NavigatorGeolocation, NgMap, mascotasService, usuariosService) {

    var cdx = this;

    cdx.centro = [];
    
    cdx.mascotas = [];


    NavigatorGeolocation.getCurrentPosition()
        .then(function (position) {

            cdx.centro[0] = position.coords.latitude;
            cdx.centro[1] = position.coords.longitude;

            NgMap.getMap().then(function (evtMap) {
                map = evtMap;
                var center = map.getCenter();
                google.maps.event.trigger(map, "resize");
                map.setCenter(center);
            });

            console.log(position)

        });
    
    
    mascotasService.mascotasDueno(usuariosService.autorizado().dueno.idDueno).then(function(res){
        
        cdx.mascotas = res;
        
    })


}])
