angular.module("mascotas")

.controller("miPerfilController", ["usuariosService", "mascotasService", "paisesValue", "$scope", "$filter", function (usuariosService, mascotasService, paisesValue, $scope, $filter) {

    var cdx = this;

    if ($scope.$parent.seleccionado != 1) {

        $scope.$parent.seleccionado = 1;

        $scope.$parent.iconoMiPerfil = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 1, $scope.$parent.iconosMiPerfil);
        $scope.$parent.iconoMisMascotas = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 2, $scope.$parent.iconosMisMascotas);
        $scope.$parent.iconoActivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 3, $scope.$parent.iconosActivarAlerta);
        $scope.$parent.iconoDesactivarAlerta = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 4, $scope.$parent.iconosDesactivarAlerta);
        $scope.$parent.iconoSalir = $scope.$parent.cambiarIcono($scope.$parent.seleccionado, 5, $scope.$parent.iconosSalir);
    }

    cdx.datos = usuariosService.autorizado();

    cdx.paises = paisesValue;

    cdx.editarComenzar = function (datosOriginales) {

        if (datosOriginales.dueno.nacimiento) {
            var nacimiento = new Date(datosOriginales.dueno.nacimiento.split("/")[2], datosOriginales.dueno.nacimiento.split("/")[1] - 1, datosOriginales.dueno.nacimiento.split("/")[0]);
        }
        
        else{
            
            var nacimiento = null;
            
        }

        cdx.datosEspejo = {

            actualizado: datosOriginales.dueno.actualizado,
            apellido: datosOriginales.dueno.apellido,
            borrado: datosOriginales.dueno.borrado,
            ciudad: datosOriginales.dueno.ciudad,
            codigo_postal: datosOriginales.dueno.codigo_postal,
            creado: datosOriginales.dueno.creado,
            direccion: datosOriginales.dueno.direccion,
            email: datosOriginales.dueno.email,
            idDueno: datosOriginales.dueno.idDueno,
            nacimiento: nacimiento,
            nombre: datosOriginales.dueno.nombre,
            pais: datosOriginales.dueno.pais,
            provincia: datosOriginales.dueno.provincia,
            sexo: datosOriginales.dueno.sexo,
            telefono: datosOriginales.dueno.telefono

        };

        cdx.pasos = 2;
    }

    cdx.editarGuardar = function (valido, datosEspejo) {

        if (valido) {
            datosEspejo.nacimiento = $filter('date')(datosEspejo.nacimiento, "dd/MM/yyyy");

            mascotasService.modificarDueno(datosEspejo)

            .then(function (res) {


                cdx.datos.dueno = datosEspejo;
                usuariosService.actualizarSesion(cdx.datos);
                cdx.pasos = 1;

            }).catch(function (res) {


                cdx.datosEspejo = null;
                cdx.pasos = 1;
            })
        }

    }

    cdx.editarCancelar = function () {

        cdx.datosEspejo = null;
        cdx.pasos = 1;
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


}])
