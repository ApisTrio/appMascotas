<section>
    <div class="row">
        <div class="col s12 center-align">
            <h5 class="center-align">Registro</h5>
        </div>
    </div>
    <div class="row">
        <div class="col s12 center-align">
            <cdx-pasos data-paso="registro.pasos"></cdx-pasos>
        </div>
    </div>
</section>
<section ng-init="registro.pasos = 3" ng-switch="registro.pasos" ng-form="formPasos">

    <!-------------------------->
    <!----------PASO #1--------->
    <!-------------------------->

    <div ng-form="formPaso1" ng-switch-when="1">
        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentra a tu mascota.
            </div>
        </div>
        <div class="row">

            <!------ Nombre ------>
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.nombre" ng-class="{'valido': formPaso1.nombre.$valid, 'erroneo': (!formPaso1.nombre.$valid && formPaso1.nombre.$dirty)}" placeholder="Nombre" type="text" name="nombre" minlength="3" required>
                        <cdx-validez data-validez="formPaso1.nombre.$valid" data-mostrar="formPaso1.nombre.$dirty"></cdx-validez>
                    </div>

                    <div ng-messages="formPaso1.nombre.$error" ng-show="formPaso1.nombre.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
                    </div>
                </div>
            </div>

            <!------ Apellido ------>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Apellido *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.apellido" ng-class="{'valido': formPaso1.apellido.$valid, 'erroneo': (!formPaso1.apellido.$valid && formPaso1.apellido.$dirty)}" placeholder="Apellido" type="text" name="apellido" minlength="3" required>
                        <cdx-validez data-validez="formPaso1.apellido.$valid" data-mostrar="formPaso1.apellido.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.apellido.$error" ng-show="formPaso1.apellido.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <!------ Email ------>
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.email" ng-class="{'valido': formPaso1.email.$valid, 'erroneo': (!formPaso1.email.$valid && formPaso1.email.$dirty)}" placeholder="E-mail" type="email" name="email" required>
                        <cdx-validez data-validez="formPaso1.email.$valid" data-mostrar="formPaso1.email.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.email.$error" ng-show="formPaso1.email.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="email">Debe ser un E-mail valido.</div>
                    </div>

                </div>
            </div>


            <!------ Usuario ------>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Nombre de usuario *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.usuario" ng-class="{'valido': formPaso1.usuario.$valid, 'erroneo': (!formPaso1.usuario.$valid && formPaso1.usuario.$dirty)}" placeholder="Nombre de usuario" type="text" name="usuario" ng-pattern="/^[a-zA-Z0-9]*$/" minlength="6" required>
                        <cdx-validez data-validez="formPaso1.usuario.$valid" data-mostrar="formPaso1.usuario.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.usuario.$error" ng-show="formPaso1.usuario.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="pattern">No se permiten caracteres especiales.</div>
                        <div ng-message="minlength">Debe contener al menos 6 caracteres.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">


            <!------ Contraseña ------>
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Contraseña *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.clave" ng-class="{'valido': formPaso1.clave.$valid, 'erroneo': (!formPaso1.clave.$valid && formPaso1.clave.$dirty)}" placeholder="Contraseña" type="password" name="clave" minlength="6" required>
                        <cdx-validez data-validez="formPaso1.clave.$valid" data-mostrar="formPaso1.clave.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.clave.$error" ng-show="formPaso1.clave.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 6 caracteres.</div>
                    </div>
                </div>
            </div>

            <!------ Verificar Contraseña ------>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Verificar contraseña *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.clave2" ng-class="{'valido': formPaso1.clave2.$valid, 'erroneo': (!formPaso1.clave2.$valid && formPaso1.clave2.$dirty)}" placeholder="Verificar contraseña" type="password" name="clave2" required>
                        <cdx-validez data-validez="formPaso1.clave2.$valid" data-mostrar="formPaso1.clave2.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.clave2.$error" ng-show="formPaso1.clave2.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col s12 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1 condiciones-formulario">
                <input ng-model="registro.terminos" type="checkbox" class="filled-in" id="terminos" name="terminos" required/>
                <label for="terminos">He leido y acepto los <a href="/terminos-condiciones-dinbeat-qr">términos y condiciones</a>, así como las <a href="/politica-privacidad-dinbeat-qr">politicas de privacidad</a> de la empresa.</label>
            </div>
        </div>

    </div>


    <!-------------------------->
    <!----------PASO #2--------->
    <!-------------------------->

    <div ng-form="formPaso2" ng-switch-when="2">
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
                        <input ng-model="registro.nombreMascota" ng-class="{'valido': formPaso2.nombreMascota.$valid, 'erroneo': (!formPaso2.nombreMascota.$valid && formPaso2.nombreMascota.$dirty)}" placeholder="Nombre de tu mascota " type="text" name="nombreMascota" minlength="3" required>
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
                        <md-select ng-model="registro.generoMasccota" ng-class="{'valido': formPaso2.generoMasccota.$valid, 'erroneo': (!formPaso2.generoMasccota.$valid && formPaso2.generoMasccota.$dirty)}" placeholder="Genero" class="md-no-underline" name="generoMasccota" required>
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
                        <input ng-class="{'valido': formPaso2.fecha.$valid, 'erroneo': (!formPaso2.fecha.$valid && formPaso2.fecha.$dirty)}" input-date type="text" name="fecha" id="inputCreated" ng-model="registro.fecha" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12" required/>
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
                        <md-select ng-model="registro.especie" ng-class="{'valido': formPaso2.especie.$valid, 'erroneo': (!formPaso2.especie.$valid && formPaso2.especie.$dirty)}" placeholder="Especie" name="especie" class="md-no-underline" required>
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
                        <md-select ng-model="registro.raza" ng-class="{'valido': formPaso2.raza.$valid, 'erroneo': (!formPaso2.raza.$valid && formPaso2.raza.$dirty)}" placeholder="Raza" name="raza" class="md-no-underline" required>
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
                <div class="input-formulario"><input placeholder="Número de chip" type="text"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Peso</div>
                <div class="input-formulario">
                    <md-select ng-model="registro.peso" placeholder="Peso" class="md-no-underline">
                        <md-option value="algo">2-5 Kg</md-option>
                        <md-option value="algo2">5-8 Kg</md-option>
                    </md-select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Comentarios</div>
                <div class="input-formulario">
                    <textarea placeholder="Número de chip" rows="3"></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m10 offset-m1">
                    * Dato requerido
                </div>
            </div>
        </div>
    </div>

    <!-------------------------->
    <!----------PASO #3--------->
    <!-------------------------->

    <div ng-form="formPaso3" ng-switch-when="3">

        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Introduce los datos de tu placa. Si no tienes una placa puedes comprarla en nuestra <a href="">tienda</a>.
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Introduce el número de tu placa *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.numeroPlaca" ng-class="{'valido': formPaso3.numeroPlaca.$valid, 'erroneo': (!formPaso3.numeroPlaca.$valid && formPaso3.numeroPlaca.$dirty)}" placeholder="Introduce el número de tu placa" type="text" name="numeroPlaca" required>
                        <cdx-validez data-validez="formPaso3.numeroPlaca.$valid" data-mostrar="formPaso3.numeroPlaca.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso3.numeroPlaca.$error" ng-show="formPaso3.numeroPlaca.$dirty">
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
                
                    <cdx-formas></cdx-formas>
                
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1 center-align">
                SLIDER PLACAS
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1">
                * Dato requerido
            </div>
        </div>
    </div>


    <!-------------------------->
    <!----------PASO #4--------->
    <!-------------------------->

    <div ng-form="formPaso4" ng-switch-when="4">
        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentran a tu mascota.
            </div>
        </div>

        <div class="row">

            <!--- NOMBRE DEL CONTACTO --->
            <div class="col s12 m4 offset-m1" ng-init="">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.contacto.nombre" ng-class="{'valido': formPaso4.nombre.$valid, 'erroneo': (!formPaso4.nombre.$valid && formPaso4.nombre.$dirty)}" placeholder="Nombre Completo" type="text" name="nombre" minlength="3" required>
                        <cdx-validez data-validez="formPaso4.nombre.$valid" data-mostrar="formPaso4.nombre.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.nombre.$error" ng-show="formPaso4.nombre.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
                    </div>
                </div>
            </div>

            <!--- APELLIDO --->
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Apellido *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.contacto.apellido" ng-class="{'valido': formPaso4.apellido.$valid, 'erroneo': (!formPaso4.apellido.$valid && formPaso4.apellido.$dirty)}" placeholder="Apellido" type="text" name="apellido" minlength="3" required>
                        <cdx-validez data-validez="formPaso4.apellido.$valid" data-mostrar="formPaso4.apellido.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.apellido.$error" ng-show="formPaso4.apellido.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- TELEFONO -->
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Télefonos de contacto *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.telefono" ng-class="{'valido': formPaso4.telefono.$valid, 'erroneo': (!formPaso4.telefono.$valid && formPaso4.telefono.$dirty)}" placeholder="Télefonos de contacto" type="tel" name="telefono" ng-pattern="/^[0-9]*$/" required>
                        <cdx-validez data-validez="formPaso4.telefono.$valid" data-mostrar="formPaso4.telefono.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.telefono.$error" ng-show="formPaso4.telefono.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="pattern">Solo se aceptan digitos.</div>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.email" ng-class="{'valido': formPaso4.email.$valid, 'erroneo': (!formPaso4.email.$valid && formPaso4.email.$dirty)}" placeholder="E-mail" type="email" name="email" required>
                        <cdx-validez data-validez="formPaso4.email.$valid" data-mostrar="formPaso4.email.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.email.$error" ng-show="formPaso4.email.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="email">Debe ser un E-mail valido.</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- FECHA -->
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Fecha de Nacimiento</div>
                <div class="input-formulario">
                    <div>
                        <input input-date type="text" name="fecha" ng-model="registro.fechaNacimiento" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12"/>
                    </div>
                </div>
            </div>

            <!-- SEXO -->
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Sexo</div>
                <div class="input-formulario">
                    <md-select ng-model="registro.sexo" placeholder="Sexo" class="md-no-underline">
                        <md-option value="Masculino">Masculino</md-option>
                        <md-option value="Femenino">Femenino</md-option>
                    </md-select>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- PAIS -->
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">País *</div>
                <div class="input-formulario">
                    <div>
                        <md-select ng-model="registro.pais"  ng-class="{'valido': formPaso4.pais.$valid, 'erroneo': (!formPaso4.pais.$valid && formPaso4.pais.$dirty)}" placeholder="País" class="md-no-underline" name="pais" required>
                            <md-option value="España">España</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso4.pais.$valid" data-mostrar="formPaso4.pais.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.pais.$error" ng-show="formPaso4.pais.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- PROVINCIA -->
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Provincia *</div>
                <div class="input-formulario">
                    <div>
                        <md-select ng-model="registro.provincia" ng-class="{'valido': formPaso4.provincia.$valid, 'erroneo': (!formPaso4.provincia.$valid && formPaso4.provincia.$dirty)}" placeholder="Provincia" class="md-no-underline" name="provincia" required>
                            <md-option value="Alguna">Alguna</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso4.provincia.$valid" data-mostrar="formPaso4.provincia.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.provincia.$error" ng-show="formPaso4.provincia.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <!-- CIUDAD -->
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Ciudad *</div>
                <div class="input-formulario">
                    <div>
                        <md-select ng-model="registro.ciudad" ng-class="{'valido': formPaso4.ciudad.$valid, 'erroneo': (!formPaso4.ciudad.$valid && formPaso4.ciudad.$dirty)}" placeholder="Ciudad" class="md-no-underline" name="ciudad" required>
                            <md-option value="Alguna">Alguna</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso4.ciudad.$valid" data-mostrar="formPaso4.ciudad.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.ciudad.$error" ng-show="formPaso4.ciudad.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- DIRECCION -->
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Dirección</div>
                <div class="input-formulario">
                    <input placeholder="Dirección" type="text">
                </div>
            </div>
        </div>
        <div class="row">

            <!-- CODIGO POSTAL -->
            <div class="col s12 m3 offset-m1">
                <div class="campo-formulario">Código postal *</div>
                <div class="input-formulario">
                    <div>
                        <input ng-model="registro.postcode" ng-class="{'valido': formPaso4.postcode.$valid, 'erroneo': (!formPaso4.postcode.$valid && formPaso4.postcode.$dirty)}" placeholder="Código postal" type="text" name="postcode" required>
                        <cdx-validez data-validez="formPaso4.postcode.$valid" data-mostrar="formPaso4.postcode.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.postcode.$error" ng-show="formPaso4.postcode.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1">
                Agregar persona de contacto
            </div>
        </div>


        <div class="row">
            <div class="col s12 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

    </div>


    <!-------------------------->
    <!----------PASO #5--------->
    <!-------------------------->

    <div ng-switch-when="5">
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


    <!--------- SIGUIENTE -------->

    <div class="row">
        <div class="col s4 offset-s4 botones-formulario" ng-show="registro.pasos < 5">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="registro.avanzar(formPasos.$valid)">SIGUIENTE</button>
        </div>
        <div class="col s12 m4 offset-m4 botones-formulario" ng-show="registro.pasos == 5">
            <button class="boton-verde">INICIAR SESIÓN</button>
        </div>

    </div>
</section>
