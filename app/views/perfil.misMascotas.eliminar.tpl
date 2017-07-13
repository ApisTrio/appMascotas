<section ng-switch="misMascotasEliminar.pasos" ng-init="misMascotasEliminar.pasos = 1" class="padding-top-30">
    <div ng-switch-when="1">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/baja-icon.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Sentimos que tengas que dar de baja a tu mascota</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Esperamos haber ayudado a su correcta identificación durante el tiempo que ha permanecido en nuestra plataforma. Ya sabes que puedes contar con nosotros para proteger e identificar a tus mascotas. Si quieres contactar con nosotros escribenos a <a href="mailto:qr@gdinbeat.com">qr@dinbeat.com</a>
            </div>
        </div>

        <div class="row">
            <div class="col s6 offset-s3 col m4 offset-m4 col l4 offset-l4 botones-formulario">
                <div class="row">
                    <div class="col s12 m6 l6" style="margin-bottom: 10px;">
                        <button style="width: 100%" class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
                    </div>
                    <div class="col s12 m6 l6">
                        <button style="width: 100%" class="boton-verde" ng-click="misMascotasEliminar.avanzar(misMascotasEliminar.placa)">CONFIRMAR</button>
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
                <h4 class="titulo2 negrita interlineado20 c2">Hemos dado de baja a tu mascota</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Recibirás un e-mail con la confirmación de que el perfil de tu mascota ha sido dado de baja.
            </div>
        </div>
    </div>
</section>
