<section class="padding-top-30" ng-show="activarAlerta.opciones != 4">

    <div class="row">
        <div class="col s10 offset-s1 center-align">
            <img src="assets/images/icons/alerta.png">
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1 center-align">
            <h4 class="titulo2 negrita interlineado20 c2">¿Has perdido a tu mascota?</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
            Selecciona tu mascota perdida, el lugar dónde se ha perdido y un mensaje personalizado, activa la alerta y avisa a todas las personas que se encuentran cerca de tí.
        </div>
    </div>
</section>
<section ng-form="alertaForm" ng-switch="activarAlerta.opciones" ng-init="activarAlerta.opciones = 1" ng-class="{'padding-top-30': activarAlerta.opciones == 4}">
    <!-- MASCOTA -->
    <div ng-switch-when="1" class="row" ng-form="formPaso1">

        <div class="col s11 offset-s1 m4 offset-m4">
            <div class="campo-formulario">Mascota *</div>
            <div class="input-formulario">
                <div ng-class="{'margin-bottom-30': formPaso1.mascota.$pristine || formPaso1.mascota.$valid}">
                    <md-select ng-model="activarAlerta.datos.idMascota" placeholder="Selecciona una mascota" name="mascota" class="md-no-underline" ng-class="{'valido': formPaso1.mascota.$valid, 'erroneo': (!formPaso1.mascota.$valid && formPaso1.mascota.$dirty)}" required>
                        <md-option ng-value="{{mascota.idMascota}}" ng-repeat="mascota in activarAlerta.mascotas">{{mascota.nombre}}</md-option>
                    </md-select>
                    <cdx-validez data-validez="formPaso1.mascota.$valid" data-mostrar="formPaso1.mascota.$dirty"></cdx-validez>
                </div>

                <div ng-messages="formPaso1.mascota.$error" ng-show="formPaso1.mascota.$dirty">
                    <div ng-message="required">Este campo es requerido.</div>
                </div>
            </div>
        </div>
    </div>

    <!-- UBICACION -->
    <div ng-switch-when="2" class="row" ng-form="formPaso2">

        <div class="col s12 m6 offset-m3">
            <div class="campo-formulario">Ubicación</div>
            <div class="input-formulario">
                <div>
                    <ng-map center="{{activarAlerta.centro}}" zoom="18" class="mapa"> </ng-map>
                </div>
            </div>
        </div>

    </div>

    <!-- MENSAJE -->
    <div ng-switch-when="3" class="row" ng-form="formPaso3">
        <div class="col s10 offset-s1 m6 offset-m3">
            <div class="margin-bottom-30">
                <div class="campo-formulario">Escribe un mensaje</div>
                <div class="input-formulario">
                    <textarea ng-model="activarAlerta.datos.mensaje" placeholder="Escribe un mensaje" rows="3" name="mensaje" style="width: 100%;"></textarea>
                </div>
            </div>
        </div>
    </div>


    <!-- EMAIL -->
    <div ng-switch-when="4">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Has activado la alerta de mascota perdida</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Te hemos enviado un e-mail con los datos de la alerta de mascota perdida que acabas de activar. Esperamos que la recuperes pronto. Recuerda desactivar la alerta una vez la encuentres. Si lo deseas puedes contactar con nosotros en <a href="mailto:qr@dinbeat.com">qr@dinbeat.com</a>
            </div>
        </div>
    </div>



    <div class="row" ng-if="activarAlerta.opciones !=4">
        <div class="col s4 offset-s4 botones-formulario">
            <div class="row">
                <div class="col s12 m12 l6" style="margin-bottom: 10px">
                    <button class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
                </div>
                <div class="col s12 m12 l6">
                    <button class="boton-verde" ng-click="activarAlerta.avanzar(alertaForm.$valid, activarAlerta.datos)" ng-if="activarAlerta.opciones < 3" ng-class="{'bloqueado' : !alertaForm.$valid }">SIGUIENTE</button>
                </div>
                <div class="col s12 m12 l6">
                    <button class="boton-verde" ng-click="activarAlerta.avanzar(alertaForm.$valid, activarAlerta.datos)" ng-if="activarAlerta.opciones == 3">ACTIVAR</button>
                </div>
            </div>
            
            
            
        </div>

    </div>

</section>
