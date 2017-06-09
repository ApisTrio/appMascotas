<section ng-form="nuevaPlacaForm" class="padding-top-30">
    <div class="row">
        <div class="col s12 m10 offset-m1 negrita">
            Agrega una nueva placa. Si no tienes una placa puedes comprarla en nuestra <a href="">tienda</a>.
        </div>
    </div>
    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="campo-formulario">Introduce el número de tu placa *</div>
            <div class="input-formulario">
                <div>
                    <input ng-model="registro.placa.codigo" ng-class="{'valido': nuevaPlacaForm.numeroPlaca.$valid, 'erroneo': (!nuevaPlacaForm.numeroPlaca.$valid && nuevaPlacaForm.numeroPlaca.$dirty)}" placeholder="Introduce el número de tu placa" type="text" name="numeroPlaca" required>
                    <cdx-validez data-validez="nuevaPlacaForm.numeroPlaca.$valid" data-mostrar="nuevaPlacaForm.numeroPlaca.$dirty"></cdx-validez>
                </div>
                <div ng-messages="nuevaPlacaForm.numeroPlaca.$error" ng-show="nuevaPlacaForm.numeroPlaca.$dirty">
                    <div ng-message="required">Este campo es requerido.</div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m2 offset-m1">
            <div class="campo-formulario">Selecciona un modelo *</div>
        </div>
        <div class="col s12 m2">

            <cdx-formas data-seleccionado="registro.seleccionado"></cdx-formas>

        </div>
    </div>

    <div class="row">
        <div class="col s12 m10 offset-m1 center-align">
            <cdx-modelos ng-model="registro.placa.modelos_idModelo"></cdx-modelos>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="campo-formulario">Asignar a *</div>
            <div class="input-formulario">
                <div>
                    <md-select ng-model="registro.datos.mascota.especie" ng-class="{'valido': nuevaPlacaForm.especie.$valid, 'erroneo': (!nuevaPlacaForm.especie.$valid && nuevaPlacaForm.especie.$dirty)}" placeholder="Especie" name="especie" class="md-no-underline" required>
                        <md-option value="Kira">Kira</md-option>
                        <md-option value="Gato Negro">Gato Negro</md-option>
                    </md-select>
                    <cdx-validez data-validez="nuevaPlacaForm.especie.$valid" data-mostrar="nuevaPlacaForm.especie.$dirty"></cdx-validez>
                </div>
                <div ng-messages="nuevaPlacaForm.especie.$error" ng-show="nuevaPlacaForm.especie.$dirty">
                    <div ng-message="required">Este campo es requerido.</div>
                </div>
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
    
     <div class="row">
        <div class="col s4 offset-s4 botones-formulario">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="registro.avanzar(nuevaPlacaForm.$valid)" ng-class="{'bloqueado' : !nuevaPlacaForm.$valid }">GUARDAR</button>
        </div>
    </div>
    
</section>
