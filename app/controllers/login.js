angular.module("mascotas")

.controller("loginController", ["usuariosService", "$state", "currentAuth", "$scope", "$mdDialog", "$sce", function (usuariosService, $state, currentAuth, $scope, $mdDialog, $sce) {

    var cdx = this;

    cdx.mostrarModal = function ($event, texto) {

        
         if (texto == "Clave invalida") {
            var titulo = "La clave que has introducido no es vÃ¡lida";
            var mensaje = $sce.trustAsHtml("Verifica que la clave sea correcta");

        }
        
        else if(texto == "Su usuario no existe"){
            
            var titulo = "El usuario que has introducido no existe";
            var mensaje = $sce.trustAsHtml("Verifica que el usuario sea correcto");
            
        }
        
        
        else if(texto == "Usuario inactivo"){
            
            var titulo = "TodavÃ­a no has confirmado tu cuenta";
            var mensaje = $sce.trustAsHtml("Por favor, revisa tu bandeja de entrada y confirma tu cuenta para poder iniciar sesiÃ³n");
            
        }
        
        else if(texto == "Usuario borrado"){
            
            var titulo = "El usuario que has introducido ha sido eliminado";
            var mensaje = $sce.trustAsHtml("Si es un error, ponte en contacto con nosotros en <a href='mailto:qr@dinbeat.com'>qr@dinbeat.com</a>.");
            
        }


        $mdDialog.show({
            parent: angular.element(document.body),
            targetEvent: $event,
            templateUrl: "cdx.falloLogin.html",
            locals: {
                mensaje: mensaje,
                titulo: titulo,
            },
            controller: function ($scope, $mdDialog, mensaje, titulo) {

                $scope.cerrarModal = function () {
                    $mdDialog.hide();
                }
                
                $scope.mensaje = mensaje;
                $scope.titulo = titulo;
            },
            clickOutsideToClose: true,
            escapeToClose: true
        });



    }


    cdx.iniciarSesion = function (datos, valido) {

        $scope.loginForm.$setSubmitted();

        if (valido) {

            usuariosService.sesion(datos.usuario, datos.pass)

            .then(function (res) {

                $state.go("perfil.miPerfil");

            })

            .catch(function (res) {
                
                cdx.mostrarModal(null, res);


            })
        }

    }

}])
