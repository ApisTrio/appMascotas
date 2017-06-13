<section ng-switch="confirmar.opciones" ng-init="confirmar.opciones=1" class="padding-top-30">

    <!-- ESPERA -->
    <div ng-switch-when="1">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                ICONO
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Por favor, aguardé mientras verificamos su e-mail.</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                El proceso de verificación debe tomar unos instantes.
            </div>
        </div>
    </div>

    <!--- EXITO -->
    <div ng-switch-when="2">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>¡Felicidades!</h5>
                <h5>Tu e-mail ha sido verificado</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Puedes acceder a tu cuenta ahora:
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m4 botones-formulario">
                <button class="boton-verde" ui-sref="login">INICIAR SESIÓN</button>
            </div>
        </div>
    </div>


    <!--- FALLO -->


    <div ng-switch-when="3">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm2x.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>¡Felicidades!</h5>
                <h5>Tu cuenta ha sido creada</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Te enviaremos un e-mail de confirmación con tus datos para que actives tu cuenta. Una vez activada entra en el perfil de tu mascota para completar su formación médica, contacto veterinario y otros importantes.
            </div>
        </div>
    </div>

    <!-- EL usuario ya está confirmado -->

    <div ng-switch-when="4">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm2x.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>¡Felicidades!</h5>
                <h5>Tu cuenta ha sido creada</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Te enviaremos un e-mail de confirmación con tus datos para que actives tu cuenta. Una vez activada entra en el perfil de tu mascota para completar su formación médica, contacto veterinario y otros importantes.
            </div>
        </div>
    </div>



</section>
