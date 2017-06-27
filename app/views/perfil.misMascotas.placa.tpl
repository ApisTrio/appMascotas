<section class="padding-top-30">
    <div class="row">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2 center-align">Nueva Placa</h4>
        </div>
    </div>
</section>
<section ng-form="nuevaPlacaForm" ng-switch="misMascotasPlaca.pasos" ng-init="misMascotasPlaca.pasos = 1" class="padding-top-30">

    <div ng-switch-when="1">
        <div class="row">
            <div class="col s10 m10 offset-m1 negrita white-space-normal">
                Agrega una nueva placa. Si no tienes una placa puedes comprarla en nuestra <a href="/tienda">tienda</a>.
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Introduce el número de tu placa *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': nuevaPlacaForm.numeroPlaca.$pristine || nuevaPlacaForm.numeroPlaca.$valid}">
                        <input ng-model="misMascotasPlaca.placa.codigo" ng-class="{'valido': nuevaPlacaForm.numeroPlaca.$valid, 'erroneo': (!nuevaPlacaForm.numeroPlaca.$valid && nuevaPlacaForm.numeroPlaca.$dirty)}" placeholder="Introduce el número de tu placa" type="text" name="numeroPlaca" cdx-validacion data-validacion="placa" data-deseado="false" cdx-validacion-dispo required>
                        <cdx-validez data-validez="nuevaPlacaForm.numeroPlaca.$valid" data-mostrar="nuevaPlacaForm.numeroPlaca.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="nuevaPlacaForm.numeroPlaca.$error" ng-show="nuevaPlacaForm.numeroPlaca.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="placa">La placa no está disponible.</div>
                        <div ng-message="disponible">La placa no es válida.</div>
                    </div>
                    <div ng-messages="nuevaPlacaForm.numeroPlaca.$pending" ng-show="nuevaPlacaForm.numeroPlaca.$dirty">

                        <div ng-message="placa">Verificando la disponibilidad de la placa...</div>
                        <div ng-message="disponible">Verificando la válidez de la placa...</div>
                    </div>
                </div>
            </div>
        </div>

       <div class="row">
            <div class="col s12 m4 offset-m1 l2 offset-l1">
                <div class="campo-formulario">Selecciona un modelo *</div>
            </div>
            <div class="col s12 m2">

                <cdx-formas data-seleccionado="misMascotasPlaca.seleccionado"></cdx-formas>

            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1 center-align">
                <cdx-modelos ng-model="misMascotasPlaca.placa.modelos_idModelo" data-seleccionado="{{misMascotasPlaca.seleccionado}}"  required></cdx-modelos>
            </div>
        </div>
      
        <div class="col s12 m4 offset-m1">
            <div class="campo-formulario">Mascota *</div>
            <div class="input-formulario">
                <div ng-class="{'margin-bottom-30': nuevaPlacaForm.mascota.$pristine || nuevaPlacaForm.mascota.$valid}">
                    <md-select ng-model="misMascotasPlaca.placa.mascotas_idMascota" placeholder="Selecciona una mascota" name="mascota" class="md-no-underline" ng-class="{'valido': nuevaPlacaForm.mascota.$valid, 'erroneo': (!nuevaPlacaForm.mascota.$valid && nuevaPlacaForm.mascota.$dirty)}" required>
                        <md-option ng-value="{{mascota.idMascota}}" ng-repeat="mascota in misMascotasPlaca.mascotas track by $index">{{mascota.nombre}}</md-option>
                    </md-select>
                    <cdx-validez data-validez="nuevaPlacaForm.mascota.$valid" data-mostrar="nuevaPlacaForm.mascota.$dirty"></cdx-validez>
                </div>

                <div ng-messages="nuevaPlacaForm.mascota.$error" ng-show="nuevaPlacaForm.mascota.$dirty">
                    <div ng-message="required">Este campo es requerido.</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1">
                * Dato requerido
            </div>
        </div>
    </div>
    <div ng-switch-when="2">

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm2x.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">Haz activado tu nueva placa</h4>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                ¡Felicidades! Has agregado una nueva placa DinbeatQR. Recibirás un e-mail de confirmación. Puedes ver todos nuestros modelos en nuestra sección de tienda.
            </div>
        </div>
    </div>
</section>

<section ng-if="misMascotasPlaca.pasos != 2">
    <div class="row">
        <div class="col s4 offset-s4 botones-formulario">
            <button class="boton-neutro" ui-sref="perfil.miPerfil">Cancelar</button>
            <button class="boton-verde" ng-click="misMascotasPlaca.avanzar(nuevaPlacaForm.$valid, misMascotasPlaca.placa)" ng-class="{'bloqueado' : !nuevaPlacaForm.$valid }">GUARDAR</button>
        </div>
    </div>

</section>
