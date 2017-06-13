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



}])


///////////////////////
////// MASCOTAS////////
///////////////////////

.service("mascotasService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

    this.datos = function (idMascota) {



        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "/mascotas/datos/" + idMascota).then(function (res) {

            ////////////////////////////LLENAR LOS PROMISES///////////////////////////////
            if (res.data.response) {

                defered.resolve(res.data.result);


            } else {

                defered.reject();
            }

        });


        return promise;


    }



    this.perdidas = function () {




        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "perdidas/lista/").then(function (res) {

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



        $http.get(apiRootFactory + "/mascotas/dueno/" + idDueno).then(function (res) {

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
////// ESPECIES ///////
///////////////////////

.service("especiesService", ["$http", "$q", "apiRootFactory", function ($http, $q, apiRootFactory) {

    this.lista = function () {


        var defered = $q.defer();
        var promise = defered.promise;



        $http.get(apiRootFactory + "especies/lista/").then(function (res) {

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



        $http.get(apiRootFactory + "razas/lista/").then(function (res) {

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
