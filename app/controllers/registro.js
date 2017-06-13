angular.module("mascotas")

.controller("registroController", ["usuariosService", function (usuariosService) {

    var cdx = this;
    
    cdx.listo = true;
    
    
    //funcion para el avance del formulario

    cdx.avanzar = function (valido, datos) {

        if (valido) {

            if (cdx.pasos < 4) {

                cdx.pasos = cdx.pasos + 1;

            } else if (cdx.pasos == 4) {

                if (cdx.listo) {
                    
                    cdx.listo = false;

                    usuariosService.registro(datos)

                    .then(function (res) {

                        console.log(res)
                        cdx.pasos = cdx.pasos + 1;

                    })

                    .catch(function (res) {

                        console.log("error")

                    })

                }

            }
        }


    }

    //datos para los datepickers

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


    // datos del formulario de registro

    cdx.datos = {
        "duenos": [],
        "dueno": {
            "nombre": null,
            "apellido": null,
            "email": null,
            "telefono": null,
            "nacimiento": null,
            "sexo": null,
            "provincia": null,
            "pais": null,
            "ciudad": null,
            "direccion": null,
            "codigo_postal": null

        },
        "usuario": {
            "emailU": null,
            "usuario": null,
            "pass": null

        },
        "mascota": {
            "nombre": null,
            "fecha_nacimiento": null,
            "genero": null,
            "especie": null,
            "razas_idRaza": null,
            "chip": null,
            "peso": null,
            "comentarios": null,
            "foto": null

        },
        "placa": {
            "modelos_idModelo": null,
            "codigo": null
        }
    };







}])
