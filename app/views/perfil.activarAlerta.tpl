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
        <div class="col s10 offset-s1 m8 offset-m2 center-align">
            Selecciona tu mascota perdida, el lugar dónde se ha perdido y un mensaje personalizado, activa la alerta y avisa a todas las personas que se encuentran cerca de tí.
        </div>
    </div>
</section>
<section ng-switch="activarAlerta.opciones" ng-init="activarAlerta.opciones = 1" ng-class="{'padding-top-30': activarAlerta.opciones == 4}">
    <!-- MASCOTA -->
    <div ng-switch-when="1" class="row">

        <div class="col s12 m4 offset-m4">
            <div class="campo-formulario">Mascota</div>
            <div class="input-formulario">
                <div>
                    <md-select ng-model="activarAlerta.datos.mascota.idMascota" placeholder="Selecciona una mascota" name="mascota" class="md-no-underline" required>
                        <md-option ng-value="{{mascota.idMascota}}" ng-repeat="mascota in activarAlerta.mascotas">{{mascota.nombre}}</md-option>
                    </md-select>
                </div>
            </div>
        </div>
    </div>

    <!-- UBICACION -->
    <div ng-switch-when="2" class="row">

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
    <div ng-switch-when="3" class="row">
        <div class="col s12 m6 offset-m3">
            <div class="margin-bottom-30">
                <div class="campo-formulario">Comentarios</div>
                <div class="input-formulario">
                    <textarea ng-model="registro.datos.mascota.comentarios" placeholder="Comentarios" rows="3"></textarea>
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
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Te hemos enviados un e-mail con los datos de la alerta de mascota perdida que acabas de activar. Esperamos la recuperes pronto. Recuerda desactivar la alerta una vez la encuentres. Si lo deseas puedes contactar con nosotros en <a href="mailto:qr@dinbeat.com">qr@dinbeat.com</a>
            </div>
        </div>
    </div>



    <div class="row" ng-if="activarAlerta.opciones !=4">
        <div class="col s4 offset-s4 botones-formulario">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="activarAlerta.opciones = activarAlerta.opciones + 1">SIGUIENTE</button>
        </div>

    </div>

</section>
