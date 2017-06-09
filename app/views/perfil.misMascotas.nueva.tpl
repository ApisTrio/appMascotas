<div class="row">
    <div class="col s12 m10 offset-m1 negrita">
        Introduce los datos de tu mascota.
    </div>
</div>
<div class="row">
    <div class="col s12 m4 offset-m1">
        <div class="campo-formulario">Nombre de tu mascota *</div>
        <div class="input-formulario">
            <div>
                <input ng-model="registro.datos.mascota.nombre" ng-class="{'valido': formPaso2.nombreMascota.$valid, 'erroneo': (!formPaso2.nombreMascota.$valid && formPaso2.nombreMascota.$dirty)}" placeholder="Nombre de tu mascota " type="text" name="nombreMascota" minlength="3" required>
                <cdx-validez data-validez="formPaso2.nombreMascota.$valid" data-mostrar="formPaso2.nombreMascota.$dirty"></cdx-validez>
            </div>
            <div ng-messages="formPaso2.nombreMascota.$error" ng-show="formPaso2.nombreMascota.$dirty">
                <div ng-message="required">Este campo es requerido.</div>
                <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
            </div>
        </div>
    </div>
    <div class="col s12 m4 offset-m2">
        <div class="campo-formulario">Foto *</div>
        <div class="input-formulario text-center">
            <input class="ng-hide" id="input-file-id" type="file" accept="image/*" />
            <label for="input-file-id" class="boton-verde-negativo">CARGAR FOTO</label>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12 m4 offset-m1">
        <div class="campo-formulario">Género *</div>
        <div class="input-formulario">
            <div>
                <md-select ng-model="registro.datos.mascota.genero" ng-class="{'valido': formPaso2.generoMasccota.$valid, 'erroneo': (!formPaso2.generoMasccota.$valid && formPaso2.generoMasccota.$dirty)}" placeholder="Genero" class="md-no-underline" name="generoMasccota" required>
                    <md-option value="Masculino">Masculino</md-option>
                    <md-option value="Femenino">Femenino</md-option>
                </md-select>
                <cdx-validez data-validez="formPaso2.generoMasccota.$valid" data-mostrar="formPaso2.generoMasccota.$dirty"></cdx-validez>
            </div>
            <div ng-messages="formPaso2.generoMasccota.$error" ng-show="formPaso2.generoMasccota.$dirty">
                <div ng-message="required">Este campo es requerido.</div>
            </div>
        </div>
    </div>
    <div class="col s12 m4 offset-m2">
        <div class="campo-formulario">Fecha de Nacimiento *</div>
        <div class="input-formulario">
            <div>
                <input ng-class="{'valido': formPaso2.fecha.$valid, 'erroneo': (!formPaso2.fecha.$valid && formPaso2.fecha.$dirty)}" input-date type="text" name="fecha" id="inputCreated" ng-model="registro.datos.mascota.nacimiento" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12" required/>
                <cdx-validez data-validez="formPaso2.fecha.$valid" data-mostrar="formPaso2.fecha.$dirty"></cdx-validez>
            </div>
            <div ng-messages="formPaso2.fecha.$error" ng-show="formPaso2.fecha.$dirty">
                <div ng-message="required">Este campo es requerido.</div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12 m4 offset-m1">
        <div class="campo-formulario">Especie *</div>
        <div class="input-formulario">
            <div>
                <md-select ng-model="registro.datos.mascota.especie" ng-class="{'valido': formPaso2.especie.$valid, 'erroneo': (!formPaso2.especie.$valid && formPaso2.especie.$dirty)}" placeholder="Especie" name="especie" class="md-no-underline" required>
                    <md-option value="Perro">Perro</md-option>
                    <md-option value="Gato">Gato</md-option>
                    <md-option value="Conejo">Conejo</md-option>
                    <md-option value="Hurón">Hurón</md-option>
                </md-select>
                <cdx-validez data-validez="formPaso2.especie.$valid" data-mostrar="formPaso2.especie.$dirty"></cdx-validez>
            </div>
            <div ng-messages="formPaso2.especie.$error" ng-show="formPaso2.especie.$dirty">
                <div ng-message="required">Este campo es requerido.</div>
            </div>
        </div>
    </div>
    <div class="col s12 m4 offset-m2">
        <div class="campo-formulario">Raza *</div>
        <div class="input-formulario">
            <div>
                <md-select ng-model="registro.datos.mascota.razas_idRaza" ng-class="{'valido': formPaso2.raza.$valid, 'erroneo': (!formPaso2.raza.$valid && formPaso2.raza.$dirty)}" placeholder="Raza" name="raza" class="md-no-underline" required>
                    <md-option value="algo">Yorkshire Terrier</md-option>
                    <md-option value="algo2">San Bernardo</md-option>
                </md-select>
                <cdx-validez data-validez="formPaso2.raza.$valid" data-mostrar="formPaso2.raza.$dirty"></cdx-validez>
            </div>
            <div ng-messages="formPaso2.raza.$error" ng-show="formPaso2.raza.$dirty">
                <div ng-message="required">Este campo es requerido.</div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12 m4 offset-m1">
        <div class="campo-formulario">Número de chip</div>
        <div class="input-formulario"><input ng-model="registro.datos.mascota.chip" placeholder="Número de chip" type="text"></div>
    </div>
    <div class="col s12 m4 offset-m2">
        <div class="campo-formulario">Peso</div>
        <div class="input-formulario">
            <md-select ng-model="registro.datos.mascota.peso" placeholder="Peso" class="md-no-underline">
                <md-option value="2-5 Kg">2-5 Kg</md-option>
                <md-option value="5-8 Kg">5-8 Kg</md-option>
            </md-select>
        </div>
    </div>
</div>
<div class="row">
    <div class="col s12 m4 offset-m1">
        <div class="campo-formulario">Comentarios</div>
        <div class="input-formulario">
            <textarea ng-model="registro.datos.mascota.comentarios" placeholder="Comentarios" rows="3"></textarea>
        </div>
    </div>
    <div class="row">
        <div class="col s12 m10 offset-m1">
            * Dato requerido
        </div>
    </div>
</div>
