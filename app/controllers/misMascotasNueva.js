angular.module("mascotas")

.controller("misMascotasNuevaController", ["especiesService", "razasService", "mascotasService", "mailService", "$mdDialog", "$scope",function (especiesService, razasService, mascotasService, mailService, $mdDialog, $scope) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 2) {

        $scope.$parent.seleccionado = 2;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
        $scope.$parent.iconoSalir = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 5, $scope.$parent.iconosSalir);
    }

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

                if (cdx.imagen) {
                    
                    console.log(cdx.imagen)
                    
                    mascotasService.foto(cdx.imagen, "." + cdx.imagen.type.split("/")[1]).then(function (res) {

                        datos.foto = res;

                        mascotasService.crear(datos).then(function (res) {
                            
                            mailService.nuevaMascota(res.idMascota);
                            
                            cdx.pasos = cdx.pasos + 1;

                            cdx.perfilMascota = res.codigo;  

                        })

                    })

                } else {

                    mascotasService.crear(datos).then(function (res) {

                        cdx.pasos = cdx.pasos + 1;

                        cdx.perfilMascota = res;

                    })

                }


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
    
    
    
      cdx.previsualizar = function ($event, imagen) {
        
        $mdDialog.show({
            parent: angular.element(document.body),
            targetEvent: $event,
            templateUrl: "cdx.previsualizarMascota.html",
            locals: {
                imagen: imagen
            },
            controller: function ($scope, $mdDialog, imagen) {
            
                $scope.cerrarModal = function () {
                    $mdDialog.hide();
                }
                
                $scope.imagen = imagen;
            },
            clickOutsideToClose: true,
            escapeToClose: true
        });

      }








}])
