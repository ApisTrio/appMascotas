<section ng-switch="misMascotasEliminar.pasos" ng-init="misMascotasEliminar.pasos = 1" class="padding-top-30">
    <div ng-switch-when="1">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/icons/eliminar_cuenta.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Sentimos que tengas que dar de baja a tu mascota</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Esperamos haber ayudado a su correcta identificación durante el tiempo que ha permanecido en nuestra plataforma. Ya sabes que puedes contar con nosotros para proteger e identificar a tus mascotas. Si quieres contactar con nosotros escribenos a <a href="mailto:qr@gdinbeat.com">qr@dinbeat.com</a>
            </div>
        </div>

        <div class="row">
            <div class="col s4 offset-s4 botones-formulario">
                <button class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
                <button class="boton-verde" ng-click="misMascotasEliminar.avanzar(misMascotasEliminar.placa)">CONFIRMAR</button>
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
                <h4 class="titulo2 negrita interlineado20 c2">Hemos dado de baja a tu mascota</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Recibirás un e-mail con la confirmación de que el perfil de tu mascota ha sido dado de baja.
            </div>
        </div>
    </div>
</section>
