angular.module("mascotas")

.controller("miPerfilController", ["usuariosService", "mascotasService", "paisesValue",function (usuariosService, mascotasService, paisesValue) {

    var cdx = this;

    cdx.datos = usuariosService.autorizado();

    cdx.paises = paisesValue;
    
    cdx.editarComenzar = function (datosOriginales) {
        datosOriginales


        cdx.datosEspejo = {

            actualizado: datosOriginales.dueno.actualizado,
            apellido: datosOriginales.dueno.apellido,
            borrado: datosOriginales.dueno.borrado,
            ciudad: datosOriginales.dueno.ciudad,
            codigo_postal: datosOriginales.dueno.ciudad,
            creado: datosOriginales.dueno.creado,
            direccion: datosOriginales.dueno.direccion,
            email: datosOriginales.dueno.email,
            idDueno: datosOriginales.dueno.idDueno,
            nacimiento: datosOriginales.dueno.nacimiento,
            nombre: datosOriginales.dueno.nombre,
            pais: datosOriginales.dueno.pais,
            provincia: datosOriginales.dueno.provincia,
            sexo: datosOriginales.dueno.provincia,
            telefono: datosOriginales.dueno.telefono

        };

        cdx.pasos = 2;
    }

    cdx.editarGuardar = function (valido, datosEspejo) {

        if (valido) {
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

}])
