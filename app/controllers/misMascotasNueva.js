angular.module("mascotas")

.controller("misMascotasNuevaController", ["especiesService", "razasService", "mascotasService", function (especiesService, razasService, mascotasService) {

    var cdx = this;

    cdx.datos = {

        nombre: null,
        foto: null,
        genero: null,
        peso: null,
        comentarios: null,
        chip: null,
        fecha_nacimiento: null,
        razas_idRaza: null,
        idDueno: null

    }


    cdx.avanzar = function (valido, datos) {

        if (valido) {

            if (cdx.pasos < 2) {

                cdx.pasos = cdx.pasos + 1;

            } else {
                
                console.log(datos)

                mascotasService.crear(datos).then(function (res) {

                    cdx.pasos = cdx.pasos + 1;
                    
                    cdx.perfilMascota = res;

                })
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
        cdx.datos.razas_idRaza = null;
        razasService.listaEspecie(idEspecie).then(function (res) {

            cdx.razas = res;

        })

    }









}])
