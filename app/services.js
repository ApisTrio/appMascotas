angular.module("mascotas")


.constant("apiConstant", {

    dominio: "http://localhost/",

    path: "apiMascotas/"

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

                    console.log("encontrado")
                    defered.resolve();

                } else {

                    console.log(" no encontrado");
                    defered.reject();
                }

            } else {

                console.log("fallo de consulta")
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

                console.log("placa ocupada o invalida")
                defered.reject();

            } else {

                console.log("placa valida")
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

    this.registro = function (datos) {

        var defered = $q.defer();
        var promise = defered.promise;


        $http.post(apiRootFactory + "usuarios/registro", datos)

        .then(function (res) {

            if (res.data.response) {

                defered.resolve(res.data.result);

            } else {

                defered.reject(res.data.result);

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
            console.log(res)

        })

        .catch(function (res) {

            defered.reject();
            console.log(res)

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



}])


///////////////////////
////// MASCOTAS////////
///////////////////////

.service("mascotasService", ["$http", "$q", "apiRootFactory", "$httpParamSerializer", "usuariosService", function ($http, $q, apiRootFactory, $httpParamSerializer, usuariosService) {

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

                defered.reject();
            }

        })
        
        .catch(function(res){
            
            console.log("hola aqui")
            
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

        ////////////ELIMINAR///////////////
        datos.foto = "algo";


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

                console.log(datos)

                $http.post(apiRootFactory + "placas/asignar", $httpParamSerializer(datosAsignarPlaca), {
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    }
                }).then(function (resPlacaAsignada) {

                    if (resPlacaAsignada.data.response) {
                        console.log(resPlacaAsignada.data)
                        defered.resolve(resPlacaAsignada.data.result.codigo);

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



    this.perdidas = function (cantidad, salto) {




        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "perdidas/lista/" + cantidad + "/" + salto).then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
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

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
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

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
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

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
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

.service("placasService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

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

}])


///////////////////////
////// ESPECIES ///////
///////////////////////

.service("especiesService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

    this.lista = function () {


        var defered = $q.defer();
        var promise = defered.promise;

        $http.get(apiRootFactory + "especies/lista").then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
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
