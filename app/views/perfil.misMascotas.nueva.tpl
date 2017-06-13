<section class="padding-top-30">
    <div class="row" ng-show="misMascotasNueva.pasos < 3">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2 center-align">Nueva Mascota</h4>
        </div>
    </div>
</section>
<section ng-form="nuevaMascotaForm" ng-init="misMascotasNueva.pasos = 1" ng-switch="misMascotasNueva.pasos">
    <div ng-form="formPaso1" ng-switch-when="1">
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
                        <input ng-model="misMascotasNueva.datos.mascota.nombre" ng-class="{'valido': formPaso1.nombreMascota.$valid, 'erroneo': (!formPaso1.nombreMascota.$valid && formPaso1.nombreMascota.$dirty)}" placeholder="Nombre de tu mascota " type="text" name="nombreMascota" minlength="3" required>
                        <cdx-validez data-validez="formPaso1.nombreMascota.$valid" data-mostrar="formPaso1.nombreMascota.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.nombreMascota.$error" ng-show="formPaso1.nombreMascota.$dirty">
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
                        <md-select ng-model="misMascotasNueva.datos.mascota.genero" ng-class="{'valido': formPaso1.generoMasccota.$valid, 'erroneo': (!formPaso1.generoMasccota.$valid && formPaso1.generoMasccota.$dirty)}" placeholder="Genero" class="md-no-underline" name="generoMasccota" required>
                            <md-option value="Masculino">Masculino</md-option>
                            <md-option value="Femenino">Femenino</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso1.generoMasccota.$valid" data-mostrar="formPaso1.generoMasccota.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.generoMasccota.$error" ng-show="formPaso1.generoMasccota.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Fecha de Nacimiento *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-class="{'valido': formPaso1.fecha.$valid, 'erroneo': (!formPaso1.fecha.$valid && formPaso1.fecha.$dirty)}" input-date type="text" name="fecha" id="inputCreated" ng-model="misMascotasNueva.datos.mascota.nacimiento" container="" format="dd/mm/yyyy" months-full="{{misMascotasNueva.datosDatepicker.meses}}" months-short="{{misMascotasNueva.datosDatepicker.mesesCorto}}" weekdays-full="{{misMascotasNueva.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{misMascotasNueva.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{misMascotasNueva.datosDatepicker.max}}" today="misMascotasNueva.datosDatepicker.hoy" first-day="1" clear="misMascotasNueva.datosDatepicker.limpiar" close="misMascotasNueva.datosDatepicker.cerrar" select-years="12" required/>
                        <cdx-validez data-validez="formPaso1.fecha.$valid" data-mostrar="formPaso1.fecha.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.fecha.$error" ng-show="formPaso1.fecha.$dirty">
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
                        <md-select ng-model="misMascotasNueva.datos.mascota.especie" ng-class="{'valido': formPaso1.especie.$valid, 'erroneo': (!formPaso1.especie.$valid && formPaso1.especie.$dirty)}" placeholder="Especie" name="especie" class="md-no-underline" required>
                            <md-option value="Perro">Perro</md-option>
                            <md-option value="Gato">Gato</md-option>
                            <md-option value="Conejo">Conejo</md-option>
                            <md-option value="Hurón">Hurón</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso1.especie.$valid" data-mostrar="formPaso1.especie.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.especie.$error" ng-show="formPaso1.especie.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Raza *</div>
                <div class="input-formulario">
                    <div>
                        <md-select ng-model="misMascotasNueva.datos.mascota.razas_idRaza" ng-class="{'valido': formPaso1.raza.$valid, 'erroneo': (!formPaso1.raza.$valid && formPaso1.raza.$dirty)}" placeholder="Raza" name="raza" class="md-no-underline" required>
                            <md-option value="algo">Yorkshire Terrier</md-option>
                            <md-option value="algo2">San Bernardo</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso1.raza.$valid" data-mostrar="formPaso1.raza.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.raza.$error" ng-show="formPaso1.raza.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Número de chip</div>
                <div class="input-formulario"><input ng-model="misMascotasNueva.datos.mascota.chip" placeholder="Número de chip" type="text"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Peso</div>
                <div class="input-formulario">
                    <md-select ng-model="misMascotasNueva.datos.mascota.peso" placeholder="Peso" class="md-no-underline">
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
                    <textarea ng-model="misMascotasNueva.datos.mascota.comentarios" placeholder="Comentarios" rows="3"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m10 offset-m1">
                    * Dato requerido
                </div>
            </div>
        </div>
    </div>
    <div ng-form="formPaso2" ng-switch-when="2">
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
                        <input ng-model="misMascotasNueva.placa.codigo" ng-class="{'valido': formPaso2.numeroPlaca.$valid, 'erroneo': (!formPaso2.numeroPlaca.$valid && formPaso2.numeroPlaca.$dirty)}" placeholder="Introduce el número de tu placa" type="text" name="numeroPlaca" required>
                        <cdx-validez data-validez="formPaso2.numeroPlaca.$valid" data-mostrar="formPaso2.numeroPlaca.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso2.numeroPlaca.$error" ng-show="formPaso2.numeroPlaca.$dirty">
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

                <cdx-formas data-seleccionado="misMascotasNueva.seleccionado"></cdx-formas>

            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1 center-align">
                <cdx-modelos ng-model="misMascotasNueva.placa.modelos_idModelo"></cdx-modelos>
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
    <div ng-switch-when="3">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm2x.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>Has agregado una nueva mascota</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align">
                Has creado el perfil de una nueva mascota, para editar sus datos accede a su ficha.
            </div>
        </div>

    </div>
</section>
<section>
    <div class="row">
        <div class="col s4 offset-s4 botones-formulario" ng-show="misMascotasNueva.pasos < 3">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="misMascotasNueva.avanzar(nuevaMascotaForm.$valid)" ng-class="{'bloqueado' : !nuevaMascotaForm.$valid }">SIGUIENTE</button>
        </div>

        <div class="col s12 m4 offset-m4 botones-formulario" ng-show="misMascotasNueva.pasos == 3">
            <button class="boton-verde">VER PERFIL</button>
        </div>
    </div>
</section>
