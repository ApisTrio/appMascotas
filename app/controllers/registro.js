angular.module("mascotas")

.controller("registroController", ["usuariosService", "razasService", "especiesService", "mascotasService", "mailService",function (usuariosService, razasService, especiesService, mascotasService, mailService) {

    var cdx = this;
    
    cdx.especies = [];
    
    cdx.razas = [];
    
    cdx.listo = true;
    

    //funcion para el avance del formulario
    cdx.avanzar = function (valido, datos) {

        if (valido) {

            if (cdx.pasos < 4) {

                cdx.pasos = cdx.pasos + 1;

            } else if (cdx.pasos == 4) {

                if (cdx.listo) {
                    
                  if (cdx.imagen) {

                    mascotasService.foto(cdx.imagen, "." + cdx.imagen.type.split("/")[1]).then(function (res) {

                        datos.mascota.foto = res;

                        usuariosService.registro(datos).then(function (res) {
                            
                            mailService.confirmacionCuenta(res);
                            
                            cdx.pasos = cdx.pasos + 1;
                            

                        })

                    })

                } else {

                    usuariosService.registro(datos).then(function (res) {

                        mailService.confirmacionCuenta(res);
                        
                        cdx.pasos = cdx.pasos + 1;

                    })

                }

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
