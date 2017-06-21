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
                Para continuar con la eliminación de tu cuenta te enviaremos un correo electrónico para confirmar la eliminación y que no haya sido un error.
            </div>
        </div>

        <div class="row">
            <div class="col s4 offset-s4 botones-formulario">
                <button class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
                <button class="boton-verde" ng-click="eliminarCuenta.avanzar()">ELIMINAR</button>
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
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Te hemos enviado un e-mail para que confirmes la eliminación de tu cuenta. Tienes 24 horas para confirmarlo, de lo contrario tu cuenta seguirá estando activa.
            </div>
        </div>
    </div>
</section>
