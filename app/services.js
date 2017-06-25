angular.module("mascotas")


.constant("apiConstant", {

    dominio: "http://localhost/",

    path: "apiMascotas/",

    imagenes: {

        modelos: "public/images/corbatas/",

        mascotas: "public/images/mascotas/"

    }

})


.factory("apiRootFactory", ["apiConstant", function (apiConstant) {

    return apiConstant.dominio + apiConstant.path;

}])

.service("validarService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {


    this.validar = function (llave, valor) {


        var defered = $q.defer();
        var promise = defered.promise;

        var path = llave + "/" + valor;

        $http.get(apiRootFactory + "usuarios/check/" + path).then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
            if (res.data.response) {

                if (res.data.result) {

                    defered.resolve();

                } else {


                    defered.reject();
                }

            } else {

                defered.reject();
            }

        })
        return promise;

    }

    this.placa = function (idPlaca) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "placas/asignada/" + idPlaca).then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
            if (res.data.response) {

                defered.reject();

            } else {

                defered.resolve();
            }

        });

        return promise;

    }


    this.placaDisponible = function (idPlaca) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "placas/creada/" + idPlaca).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();

            }

        });

        return promise;

    }


}])



/////////////////////////
/////// USUARIOS ////////
/////////////////////////

.service("usuariosService", ["$http", "$q", "apiRootFactory", "$window", "$rootScope", function ($http, $q, apiRootFactory, $window, $rootScope) {

    this.borrar = function (token) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "usuarios/borrar/" + token).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });

        return promise;


    }

    this.registro = function (datos) {

        var defered = $q.defer();
        var promise = defered.promise;


        $http.post(apiRootFactory + "usuarios/registro", datos)

        .then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.idInsertado);

            } else {

                defered.reject(res.data.idInsertado);

            }
        })

        return promise;
    }

    this.confirmar = function (id, token) {

        var defered = $q.defer();
        var promise = defered.promise;

        var path = id + "/" + token;

        $http.get(apiRootFactory + "usuarios/confirmar/" + path)

        .then(function (res) {

            defered.resolve();

        })

        .catch(function (res) {

            defered.reject();

        })

        return promise;

    }

    this.sesion = function (usuario, clave) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "usuarios/login", {
            usuario: usuario,
            pass: clave
        })

        .then(function (res) {

            var objetoToken = res.data;
            $window.localStorage.setItem('cdxToken', JSON.stringify(objetoToken));
            $rootScope.objetoToken = objetoToken;

            defered.resolve(res);

        })

        .catch(function (res) {

            $window.localStorage.removeItem('cdxToken');
            defered.reject()

        })

        return promise;

    }



    this.autorizado = function () {

        if ($rootScope.objetoToken) {

            return $rootScope.objetoToken;

        } else {

            if ($window.localStorage.getItem('cdxToken')) {

                $rootScope.objetoToken = JSON.parse($window.localStorage.getItem('cdxToken'));

                return $rootScope.objetoToken;

            } else {

                return false;

            }

        }

    }


    this.salir = function () {

        $rootScope.objetoToken = false;
        $window.localStorage.removeItem('cdxToken');

    }

    this.actualizarSesion = function (objetoToken) {

        $window.localStorage.setItem('cdxToken', JSON.stringify(objetoToken));
        $rootScope.objetoToken = objetoToken;
    }

}])


///////////////////////
////// MASCOTAS////////
///////////////////////

.service("mascotasService", ["$http", "$q", "apiRootFactory", "$httpParamSerializer", "usuariosService", "Upload", function ($http, $q, apiRootFactory, $httpParamSerializer, usuariosService, Upload) {

    this.datosModificar = function (datos) {

        var defered = $q.defer();
        var promise = defered.promise;
        $http.post(apiRootFactory + "mascotas/modificar", datos).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })
        return promise;


    }

    this.modificarDueno = function (datos) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "duenos/modificar", datos).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.eliminarDueno = function (idDueno) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "duenos/borrar", {
            id: idDueno
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })

        return promise;

    }


    this.darBaja = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mascotas/borrar", $httpParamSerializer({
            idMascota: idMascota
        }), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })

        return promise;
    }

    this.foto = function (imagen, tipo) {
        var defered = $q.defer();
        var promise = defered.promise;

        Upload.upload({
            url: apiRootFactory + 'subir-imagen',
            data: {
                imagen: imagen,
                tipo: tipo,
                path: 'mascotas'
            },
        }).then(function (res) {

            defered.resolve(res.data);
        })

        return promise;
    }

    this.nuevaFoto = function (idMascota, foto) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mascotas/asignar/foto", $httpParamSerializer({
            id: idMascota,
            nombreimg: foto
        }), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })

        return promise;


    }

    this.vacunas = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "informacion/vacunas/" + idMascota).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });

        return promise;

    }


    this.registrarVacuna = function (datos) {



        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "informacion/registro-vacuna", $httpParamSerializer(datos), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                //defered.reject();
            }

        })

        return promise;

    }
    
    this.eliminarVacuna = function(idVacuna){
        
        
        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "informacion/borrar-vacuna/" + idVacuna).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });

        return promise;
        
        
    }

    this.nuevaEncontrada = function (idMascota) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "perdidas/cambiar/encontrada", $httpParamSerializer({
            idMascota: idMascota
        }), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                //defered.reject();
            }

        })

        return promise;

    }

    this.mascotasPerdidasDueno = function (idDueno) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "perdidas/dueno/" + idDueno).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });

        return promise;

    }


    this.nuevaPerdida = function (datos) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "perdidas/registro", $httpParamSerializer(datos), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve();

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.crear = function (datos) {



        var defered = $q.defer();
        var promise = defered.promise;

        datos.idDueno = usuariosService.autorizado().dueno.idDueno;



        $http.post(apiRootFactory + "mascotas/registro", $httpParamSerializer(datos), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {


            if (res.data.response) {

                var datosAsignarPlaca = {
                    codigo: datos.codigo,
                    mascotas_idMascota: res.data.idInsertado,
                    modelos_idModelo: datos.modelos_idModelo
                }

                $http.post(apiRootFactory + "placas/asignar", $httpParamSerializer(datosAsignarPlaca), {
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    }
                }).then(function (resPlacaAsignada) {

                    if (resPlacaAsignada.data.response) {

                        defered.resolve({
                            codigo: resPlacaAsignada.data.result.codigo,
                            idMascota: res.data.idInsertado
                        });

                    } else {

                        defered.reject();
                        //BORRAR SI ES NECESARIO
                    }

                })



            } else {

                defered.reject();
            }

        });


        return promise;



    }

    this.datos = function (idMascota) {



        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "mascotas/datos/" + idMascota).then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });


        return promise;


    }

    this.datosMedicos = function (idMascota) {


        var defered = $q.defer();
        var promise = defered.promise;


        $http.get(apiRootFactory + "informacion/datos/" + idMascota).then(function (res) {


            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        });

        return promise;

    }

    this.datosMedicosEditar = function (datos) {
        console.log(datos);
        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "informacion/registro", datos).then(function (res) {

            if (res.data.response) {
                console.log(res.data)
                defered.resolve(res.data.idInsertado);

            } else {

                defered.reject();
            }

        })

        return promise;


    }

    this.perdidas = function (cantidad, salto) {




        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "perdidas/lista/" + cantidad + "/" + salto).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;

    }

    this.encontradas = function (cantidad, salto) {




        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "perdidas/encontradas/lista/" + cantidad + "/" + salto).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;

    }

    this.mascotasDueno = function (idDueno) {

        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "mascotas/dueno/" + idDueno).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;

    }

    this.duenosMascota = function (idMascota) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "duenos/mascota/" + idMascota).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;

    }





            }])

///////////////////////
////// PLACAS /////////
///////////////////////

.service("placasService", ["$http", "$q", "apiRootFactory", "$httpParamSerializer", function ($http, $q, apiRootFactory, $httpParamSerializer) {


    this.asignar = function (datos) {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "placas/asignar", $httpParamSerializer(datos), {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.verificarAsignada = function (idPlaca) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "placas/asignada/" + idPlaca).then(function (res) {


            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;


    }


    this.placasAsignadas = function (idMascota) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "placas/mascota/" + idMascota).then(function (res) {


            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;

    }
    
    this.desactivarPlaca = function (idPlaca) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "placas/desactivar/" + idPlaca).then(function (res) {


            if (res.data.response) {

                defered.resolve();


            } else {

                defered.reject();
            }

        });


        return promise;

    }
}])


///////////////////////
////// ESPECIES ///////
///////////////////////

.service("especiesService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

    this.lista = function () {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "especies/lista").then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });

        return promise;

    }

}])

///////////////////////
//////// RAZAS ////////
///////////////////////

.service("razasService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

    this.lista = function () {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "razas/lista").then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;


    }


    this.listaEspecie = function (idEspecie) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "razas/lista/" + idEspecie).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;


    }


}])

/////////////////
////MODELOS//////
/////////////////

.service("modelosService", ["apiRootFactory", "$http", "$q", "$httpParamSerializer", function (apiRootFactory, $http, $q, $httpParamSerializer) {


    this.listaForma = function (forma) {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "/modelos/forma/" + forma).then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;


    }


}])


.service("mailService", ["apiRootFactory", "$http", "$q", "$httpParamSerializer", "$filter", function (apiRootFactory, $http, $q, $httpParamSerializer, $filter) {

    this.recuperarUsuario = function (email) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/recordar-usuario", {
            emailU: email
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;

    }


    this.borrarUsuario = function (idUsuario) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/cuenta-eliminada", {
            id: idUsuario
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.activarAlerta = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/alerta-activada", {
            id: idMascota
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;


    }

    this.desactivarAlerta = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/alerta-desactivada", {
            id: idMascota
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.confirmacionCuenta = function (idUsuario) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/confirmacion-cuenta", {
            id: idUsuario
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;
    }


    this.nuevaMascota = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/nueva-mascota", {
            id: idMascota
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;
    }


    this.placaEscaneada = function (idMascota, latitud = false, longitud = false, direccion = false) {

        var defered = $q.defer();
        var promise = defered.promise;


        var hoy = new Date();

        var fecha = $filter('date')(hoy, "dd/MM/yyyy");
        var hora = $filter('date')(hoy, "hh:mm a");


        var enlace = latitud && longitud ? "https://www.google.co.ve/maps/@" + latitud + "," + longitud : "";


        $http.post(apiRootFactory + "mail/placa-escaneada", {
            id: idMascota,
            fecha: fecha + " a las " + hora,
            latitud: latitud,
            longitud: longitud,
            direccion: direccion,
            enlace: enlace
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;



    }

    this.darBaja = function (idMascota) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/baja-mascota", {
            id: idMascota
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

    this.cambiarContrasena = function (email) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post(apiRootFactory + "mail/cambiar-contrasena", {
            emailU: email
        }).then(function (res) {

            if (res.data) {

                defered.resolve(res.data);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

}])

.service("vacunasService", ["$http", "$q", "apiRootFactory",function ($http, $q, apiRootFactory) {


    this.lista = function () {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "/vacunas/lista").then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject();
            }

        })

        return promise;

    }


}])

.service("googleMapsService", ["$http", "$q", function ($http, $q) {

    this.geoCodeInverso = function (latitud, longitud, apiKey) {

        var defered = $q.defer();
        var promise = defered.promise;

        $http.post("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + latitud + "," + longitud + "&key=" + apiKey + "&language=es").then(function (res) {

            if (res.data.status == "OK") {

                defered.resolve(res.data.results[0].formatted_address);

            } else {

                defered.reject();
            }

        })

        return promise;

    }

}])


.factory('AuthInterceptor', function ($window, $q, $rootScope) {

    function salir() {

        $rootScope.objetoToken = false;
        $window.localStorage.removeItem('cdxToken');

    }


    function autorizado() {

        if ($rootScope.objetoToken) {

            return $rootScope.objetoToken;

        } else {

            if ($window.localStorage.getItem('cdxToken')) {

                $rootScope.objetoToken = JSON.parse($window.localStorage.getItem('cdxToken'));

                return $rootScope.objetoToken;

            } else {

                return false;

            }

        }

    }

    return {
        request: function (config) {
            config.headers = config.headers || {};
            if (autorizado()) {
                config.headers.auth = autorizado().token;
            }
            return config || $q.when(config);
        },
        response: function (response) {
            if (response.status === 401) {
                salir();
            }
            return response || $q.when(response);
        }
    };
})



.factory("formatearFactory", [function () {



    var formatear = function (texto) {

        return texto.replace("&ntilde;", "ñ")

    }

    return formatear;

}])
