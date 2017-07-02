<section class="padding-top-30" ng-show="desactivarAlerta.opciones != 2">

    <div class="row">
        <div class="col s10 offset-s1 center-align">
            <img src="assets/images/icons/alerta.png">
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1 center-align">
            <h4 class="titulo2 negrita interlineado20 c2">¿Has encontrado a tu mascota?</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
            Si has encontrado a tu mascota desactiva la alerta de mascota perdida desde aquí. 
        </div>
    </div>
</section>
<section ng-form="alertaForm" ng-switch="desactivarAlerta.opciones" ng-init="desactivarAlerta.opciones = 1" ng-class="{'padding-top-30': desactivarAlerta.opciones == 2}">
    <!-- MASCOTA -->
    <div ng-switch-when="1" class="row" ng-form="formPaso1">

        <div class="col s11 offset-s1 m6 offset-m3">
            <div class="campo-formulario">Mascota *</div>
            <div class="input-formulario">
                <div ng-class="{'margin-bottom-30': formPaso1.mascota.$pristine || formPaso1.mascota.$valid}">
                    <md-select ng-model="desactivarAlerta.datos.idMascota" placeholder="Selecciona una mascota" name="mascota" class="md-no-underline" ng-class="{'valido': formPaso1.mascota.$valid, 'erroneo': (!formPaso1.mascota.$valid && formPaso1.mascota.$dirty)}" required>
                        <md-option ng-value="{{mascota.idMascota}}" ng-repeat="mascota in desactivarAlerta.mascotas track by $index">{{mascota.nombre}}</md-option>
                    </md-select>
                    <cdx-validez data-validez="formPaso1.mascota.$valid" data-mostrar="formPaso1.mascota.$dirty"></cdx-validez>
                </div>

                <div ng-messages="formPaso1.mascota.$error" ng-show="formPaso1.mascota.$dirty">
                    <div ng-message="required">Este campo es requerido.</div>
                </div>
            </div>
        </div>
    </div>

    <!-- EMAIL -->
    <div ng-switch-when="2">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Has desactivado la alerta de mascota perdida</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Recibirás un e-mail confirmando la desactivación de la alerta.
            </div>
        </div>
    </div>



    <div class="row" ng-if="desactivarAlerta.opciones !=2">
        <div class="col s6 offset-s3 col m4 offset-m4 col l4 offset-l4 botones-formulario">
            <div class="row">
                <div class="col s12 m12 l6" style="margin-bottom: 10px">
                    <button class="boton-neutro" ng-click="desactivarAlerta.volver(desactivarAlerta.codigo)">Cancelar</button> 
                </div>
                <div class="col s12 m12 l6">
                    <button class="boton-verde" ng-click="desactivarAlerta.avanzar(alertaForm.$valid, desactivarAlerta.datos.idMascota)" ng-class="{'bloqueado' : !alertaForm.$valid }" >DESACTIVAR</button>
                </div>
            </div>
        </div>

    </div>

</section>
