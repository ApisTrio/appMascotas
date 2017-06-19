angular.module("mascotas")

.controller("placaController", ["placasService", "mascotasService", "$stateParams", "placaValida", "formatearFactory", "googleMapsService", "NavigatorGeolocation", "mailService", "apiConstant", function (placasService, mascotasService, $stateParams, placaValida, formatearFactory, googleMapsService, NavigatorGeolocation, mailService, apiConstant) {

    var cdx = this;

    cdx.datos = placaValida;
    
    cdx.apiDir = apiConstant;

    mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.medicos = res[0];

    })

    mascotasService.vacunas(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.vacunas = res;

    })


    NavigatorGeolocation.getCurrentPosition()

    .then(function (position) {


        googleMapsService.geoCodeInverso(position.coords.latitude, position.coords.longitude, "AIzaSyD3rv58fVm8h5McUzT9wrG6J7lQFw_J7Uk").then(function(res){
            
            mailService.placaEscaneada(cdx.datos.basico.idMascota, position.coords.latitude, position.coords.longitude, res );
            
            
        }).catch(function(res){
            
            mailService.placaEscaneada(cdx.datos.basico.idMascota, position.coords.latitude, position.coords.longitude);
            
        })

    })

    .catch(function(res){
        
        
         mailService.placaEscaneada(cdx.datos.basico.idMascota);
    })

}])
