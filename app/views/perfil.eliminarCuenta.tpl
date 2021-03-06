<section ng-switch="eliminarCuenta.pasos" ng-init="eliminarCuenta.pasos = 1" class="padding-top-30">
    <div ng-switch-when="1">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/icons/eliminar_cuenta.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Estás a punto de eliminar tu cuenta</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Este paso es irreversible, si deseas continuar con la eliminación de tu cuenta te enviaremos un correo electrónico para que lo confirmes.
            </div>
        </div>

        <div class="row">
            <div class="col s6 offset-s3 col m4 offset-m4 col l4 offset-l4 botones-formulario">
                <div class="row">
                    <div class="col s12 m12 l6" style="margin-bottom: 10px">
                        <button style="width: 100%" class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
                    </div>
                    <div class="col s12 m12 l6">
                        <button style="width: 100%" class="boton-verde" ng-click="eliminarCuenta.avanzar()">ELIMINAR</button>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div ng-switch-when="2">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Hemos eliminado tu perfil</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Te hemos enviado un e-mail para que confirmes la eliminación de tu cuenta. Tienes 24 horas para confirmarlo, de lo contrario tu cuenta seguirá estando activa.
            </div>
        </div>
    </div>
</section>
