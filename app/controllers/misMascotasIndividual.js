angular.module("mascotas")

.controller("misMascotasIndividualController", ["placasService", "mascotasService", "$stateParams", "placaValida", "apiConstant", "$filter", "razasService", function (placasService, mascotasService, $stateParams, placaValida, apiConstant, $filter, razasService) {

    var cdx = this;

    cdx.datos = placaValida;

    cdx.apiDir = apiConstant;

    cdx.cargar = function ($file) {

        mascotasService.foto($file, "." + $file.type.split("/")[1]).then(function (res) {

            mascotasService.nuevaFoto(placaValida.basico.idMascota, res).then(function (resNuevaFoto) {

                cdx.datos.basico.foto = res;

            })



        })


    }

    cdx.razas = [];

    mascotasService.datosMedicos(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.medicos = res[0];

    });

    mascotasService.vacunas(placaValida.basico.idMascota).then(function (res) {

        cdx.datos.vacunas = res;

    });

    razasService.listaEspecie(cdx.datos.basico.idEspecie).then(function (res) {

        cdx.razas = res;


    })


    cdx.espejo = {
        basico: {},
        medico: {},
        vacunas: [],
        duenos: []
    }


    cdx.editar = {

        basico: {
            comenzar: function (basicoOriginal) {

                var fecha_nacimiento = new Date(basicoOriginal.fecha_nacimiento.split("/")[2], basicoOriginal.fecha_nacimiento.split("/")[1] - 1, basicoOriginal.fecha_nacimiento.split("/")[0]);

                cdx.espejo.basico = {

                    anios: basicoOriginal.anios,
                    chip: basicoOriginal.chip,
                    codigo: basicoOriginal.codigo,
                    comentarios: basicoOriginal.comentarios,
                    edad: basicoOriginal.edad,
                    encontrado: basicoOriginal.encontrado,
                    especie: basicoOriginal.especie,
                    fecha_nacimiento: fecha_nacimiento,
                    genero: basicoOriginal.genero,
                    idEspecie: basicoOriginal.idEspecie,
                    idMascota: basicoOriginal.idMascota,
                    idRaza: basicoOriginal.idRaza,
                    meses: basicoOriginal.meses,
                    nombre: basicoOriginal.nombre,
                    perdida: basicoOriginal.perdida,
                    peso: basicoOriginal.peso,
                    raza: basicoOriginal.raza

                }



                cdx.editar.basico.pasos = true;

            },
            cancelar: function () {

                cdx.espejo.basico = null;
                cdx.editar.basico.pasos = false;

            },
            guardar: function (valido, basicoEspejo) {

                if (valido) {

                    basicoEspejo.fecha_nacimiento = $filter('date')(basicoEspejo.fecha_nacimiento, "dd/MM/yyyy");

                    mascotasService.datosModificar(basicoEspejo).then(function (res) {

                        basicoEspejo.foto = cdx.datos.basico.foto;
                        cdx.datos.basico = basicoEspejo;
                        cdx.editar.basico.pasos = false;

                    }).catch(function (res) {

                        cdx.espejo.basico = null;
                        cdx.editar.basico.pasos = false;

                    })

                }

            },
            pasos: false
        },
        medico: {
            comenzar: function (medicoOriginal) {

                if (medicoOriginal) {


                    var fecha_i = new Date(medicoOriginal.desparasitacion_i.split("/")[2], medicoOriginal.desparasitacion_i.split("/")[1] - 1, medicoOriginal.desparasitacion_i.split("/")[0]);

                    var fecha_e = new Date(medicoOriginal.desparasitacion_e.split("/")[2], medicoOriginal.desparasitacion_e.split("/")[1] - 1, medicoOriginal.desparasitacion_e.split("/")[0]);



                    //llenar
                    cdx.espejo.medico = {

                        idInformacion: medicoOriginal.idInformacion,
                        idMascota: cdx.datos.basico.idMascota,
                        desparasitacion_i: fecha_i,
                        desparasitacion_e: fecha_e,
                        centro: medicoOriginal.centro,
                        veterinario: medicoOriginal.veterinario,
                        direccion_veterinario: medicoOriginal.direccion_veterinario,
                        telefono_veterinario: medicoOriginal.telefono_veterinario

                    }



                } else {

                    cdx.espejo.medico = {

                        idInformacion: null,
                        idMascota: cdx.datos.basico.idMascota,
                        desparasitacion_i: null,
                        desparasitacion_e: null,
                        centro: null,
                        veterinario: null,
                        direccion_veterinario: null,
                        telefono_veterinario: null
                    }

                }

                cdx.editar.medico.pasos = true;
            },
            cancelar: function () {

                cdx.espejo.medico = null;
                cdx.editar.medico.pasos = false;
            },
            guardar: function (valido, medicoEspejo) {

                if (valido) {

                    medicoEspejo.desparasitacion_i = $filter('date')(medicoEspejo.desparasitacion_i, "dd/MM/yyyy");
                    medicoEspejo.desparasitacion_e = $filter('date')(medicoEspejo.desparasitacion_e, "dd/MM/yyyy");

                    mascotasService.datosMedicosEditar(medicoEspejo)

                    .then(function (res) {

                        cdx.datos.medicos = medicoEspejo;

                        if (res) {

                            cdx.datos.medicos.idInformacion = res;

                        }

                        cdx.editar.medico.pasos = false;

                    }).catch(function (res) {
                        cdx.espejo.medico = null;
                        cdx.editar.medico.pasos = false;

                    })

                }

            },
            pasos: false
        },
        vacunas: {
            comenzar: function () {

            },
            cancelar: function () {

            },
            guardar: function () {

            }
        },
        duenos: {
            comenzar: function (duenosOriginal) {

                angular.forEach(duenosOriginal, function (valor, llave) {

                    cdx.espejo.duenos[llave] = valor;

                })

                cdx.editar.duenos.pasos = true;


            },
            cancelar: function () {

            },
            guardar: function (valido, duenosEspejo) {

            },
            pasos: false
        }
    };





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






}])
