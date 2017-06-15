angular.module("mascotas")

.controller("misMascotasNuevaController", ["especiesService", "razasService", function (especiesService, razasService) {

    var cdx = this;

    cdx.avanzar = function (valido, datos) {

        if (valido) {

            if (cdx.pasos < 3) {

                cdx.pasos = cdx.pasos + 1;
            } else {



            }

        }

    }


    cdx.hoy = new Date();

    cdx.datosDatepicker = {

        meses: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        mesesCorto: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
        diasSemana: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        diasSemanaCorto: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
        hoy: 'Hoy',
        limpiar: 'Limpiar',
        cerrar: 'Cerrar',
        min: (new Date(cdx.hoy.getTime() - (1000 * 60 * 60 * 24 * 15))).toISOString(),
        max: (new Date(cdx.hoy.getTime() + (1000 * 60 * 60 * 24))).toISOString()

    }


    especiesService.lista().then(function (res) {

        cdx.especies = res;

    })


    cdx.cargarRazas = function (idEspecie) {

        cdx.razas = [];
        cdx.datos.mascota.razas_idRaza = null;
        razasService.listaEspecie(idEspecie).then(function (res) {

            cdx.razas = res;

        })

    }
    
    
    
    




}])