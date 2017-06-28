<section class="padding-top-30 fondo-blanco">
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
<section class="fondo-blanco" ng-init="registro.pasos = 1" ng-switch="registro.pasos" ng-form="formPasos">

    <!-------------------------->
    <!----------PASO #1--------->
    <!-------------------------->

    <div ng-form="formPaso1" ng-switch-when="1">
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentra a tu mascota.
            </div>
        </div>
        <div class="row">

            <!------ Nombre ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.nombre.$pristine || formPaso1.nombre.$valid}">
                        <input ng-model="registro.datos.dueno.nombre" ng-class="{'valido': formPaso1.nombre.$valid, 'erroneo': (!formPaso1.nombre.$valid && formPaso1.nombre.$dirty)}" placeholder="Nombre" type="text" name="nombre" minlength="2" required>
                        <cdx-validez data-validez="formPaso1.nombre.$valid" data-mostrar="formPaso1.nombre.$dirty"></cdx-validez>
                    </div>

                    <div ng-messages="formPaso1.nombre.$error" ng-show="formPaso1.nombre.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>

            <!------ Apellido ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Apellido *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.apellido.$pristine || formPaso1.apellido.$valid}">
                        <input ng-model="registro.datos.dueno.apellido" ng-class="{'valido': formPaso1.apellido.$valid, 'erroneo': (!formPaso1.apellido.$valid && formPaso1.apellido.$dirty)}" placeholder="Apellido" type="text" name="apellido" minlength="2" required>
                        <cdx-validez data-validez="formPaso1.apellido.$valid" data-mostrar="formPaso1.apellido.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.apellido.$error" ng-show="formPaso1.apellido.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <!------ Email ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.email.$pristine || formPaso1.email.$valid}">
                        <input ng-model="registro.datos.usuario.emailU" ng-class="{'valido': formPaso1.email.$valid, 'erroneo': (!formPaso1.email.$valid && formPaso1.email.$dirty)}" placeholder="E-mail" type="email" name="email" cdx-validacion data-validacion="emailU" data-deseado="false" required>
                        <cdx-validez data-validez="formPaso1.email.$valid" data-mostrar="formPaso1.email.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.email.$error" ng-show="formPaso1.email.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="email">Debe ser un E-mail valido.</div>
                        <div ng-message="emailU">El E-mail se encuentra en uso.</div>
                    </div>

                    <div ng-messages="formPaso1.email.$pending" ng-show="formPaso1.email.$dirty">
                        <div ng-message="emailU">Verificando disponibilidad del E-mail...</div>
                    </div>

                </div>
            </div>


            <!------ Usuario ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Nombre de usuario *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.usuario.$pristine || formPaso1.usuario.$valid}">
                        <input ng-model="registro.datos.usuario.usuario" ng-class="{'valido': formPaso1.usuario.$valid, 'erroneo': (!formPaso1.usuario.$valid && formPaso1.usuario.$dirty)}" placeholder="Nombre de usuario" type="text" name="usuario" ng-pattern="/^[a-zA-Z0-9]*$/" minlength="6" cdx-validacion data-validacion="usuario" data-deseado="false" required>
                        <cdx-validez data-validez="formPaso1.usuario.$valid" data-mostrar="formPaso1.usuario.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.usuario.$error" ng-show="formPaso1.usuario.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="pattern">No se permiten caracteres especiales.</div>
                        <div ng-message="minlength">Debe contener al menos 6 caracteres.</div>
                        <div ng-message="usuario">El usuario se encuentra en uso.</div>
                    </div>
                    <div ng-messages="formPaso1.usuario.$pending" ng-show="formPaso1.usuario.$dirty">
                        <div ng-message="usuario">Verficiando disponibilidad del usuario...</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">


            <!------ Contraseña ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Contraseña *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.clave.$pristine || formPaso1.clave.$valid}">
                        <input ng-model="registro.datos.usuario.pass" ng-class="{'valido': formPaso1.clave.$valid, 'erroneo': (!formPaso1.clave.$valid && formPaso1.clave.$dirty)}" placeholder="Contraseña" type="password" name="clave" minlength="6" required>
                        <cdx-validez data-validez="formPaso1.clave.$valid" data-mostrar="formPaso1.clave.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.clave.$error" ng-show="formPaso1.clave.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 6 caracteres.</div>
                    </div>
                </div>
            </div>

            <!------ Verificar Contraseña ------>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Verificar contraseña *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso1.clave2.$pristine || formPaso1.clave2.$valid}">
                        <input ng-model="registro.verificarPass" ng-class="{'valido': formPaso1.clave2.$valid, 'erroneo': (!formPaso1.clave2.$valid && formPaso1.clave2.$dirty)}" placeholder="Verificar contraseña" type="password" name="clave2" cdx-validacion-clave data-validacion="{{registro.datos.usuario.pass}}" required>
                        <cdx-validez data-validez="formPaso1.clave2.$valid" data-mostrar="formPaso1.clave2.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso1.clave2.$error" ng-show="formPaso1.clave2.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="identica">Las contraseñas deben ser identicas.</div>
                    </div>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 condiciones-formulario">
                <input ng-model="registro.terminos" type="checkbox" class="filled-in" id="terminos" name="terminos" required/>
                <label for="terminos">He leido y acepto los <a href="/terminos-condiciones-dinbeat-qr" target="_blank">términos y condiciones</a>, así como las <a href="/politica-privacidad-dinbeat-qr" target="_blank">politicas de privacidad</a> de la empresa.</label>
            </div>
        </div>

    </div>


    <!-------------------------->
    <!----------PASO #2--------->
    <!-------------------------->

    <div ng-form="formPaso2" ng-switch-when="2">
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 negrita">
                Introduce los datos de tu mascota.
            </div>
        </div>
        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Nombre de tu mascota *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso2.nombreMascota.$pristine || formPaso2.nombreMascota.$valid}">
                        <input ng-model="registro.datos.mascota.nombre" ng-class="{'valido': formPaso2.nombreMascota.$valid, 'erroneo': (!formPaso2.nombreMascota.$valid && formPaso2.nombreMascota.$dirty)}" placeholder="Nombre de tu mascota " type="text" name="nombreMascota" minlength="2" required>
                        <cdx-validez data-validez="formPaso2.nombreMascota.$valid" data-mostrar="formPaso2.nombreMascota.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso2.nombreMascota.$error" ng-show="formPaso2.nombreMascota.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="margin-bottom-30">

                    <div class="campo-formulario" style="position: relative;">Foto <img style="cursor: pointer;" width="17" ng-mouseover="registro.aviso = true" ng-mouseleave="registro.aviso = false" src="assets/images/icons/info.png"> <div ng-show="registro.aviso" ng-init="registro.aviso = false" ng-click="registro.aviso = !registro.aviso" class="aviso-foto">Debes subir una foto de máximo 3Mb y con una medida mínima de 200px y 200px</div></div>

                    <div class="input-formulario " style="position: relative;">
                        <div ng-hide="registro.imagen">
                            <button class="boton-verde-negativo" ngf-select ng-model="registro.imagen" name="file" ngf-pattern="'image/*'" ngf-accept="'image/*'" ngf-max-size="5MB" ngf-min-height="200px" ngf-min-width="200px" ngf-resize="{width: 200, height: 200, type: 'image/jpeg',quality: 0.5, ratio: '1:1', centerCrop: true, restoreExif: false}" ngf-fix-orientation="true">CARGAR FOTO</button>
                            <div style="display: inline-block">
                            O
                            </div>
                            <button class="boton-verde-negativo" ngf-select ng-model="registro.imagen" name="file" ngf-pattern="'image/*'" ngf-accept="'image/*'" ngf-max-size="5MB" ngf-min-height="200px" ngf-min-width="200px" ngf-resize="{width: 200, height: 200, type: 'image/jpeg',quality: 0.5, ratio: '1:1', centerCrop: true, restoreExif: false}" ngf-fix-orientation="true" ngf-capture="'camera'">HACER FOTO</button>
                        </div>
                        <div ng-show="registro.imagen">
                            px
                            <button class="boton-verde" ng-click="registro.previsualizar($event, registro.imagen)">PREVISUALIZAR</button> O <button class="boton-neutro" ng-click="registro.imagen = null">Cancelar</button>
                            <!--<img ngf-src="misMascotasNueva.imagen">-->
                        </div>
                        
                        <div ng-messages="formPaso2.$error">
                            <div ng-message="maxSize">La imagen no puede superar los 3MB.</div>
                            <div ng-message="minHeight">La imagen debe tener al menos 200px de ancho.</div>
                            <div ng-message="minWidth">La imagen debe tener al menos 200px de alto.</div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Género *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso2.generoMasccota.$pristine || formPaso2.generoMasccota.$valid}">
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
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Fecha de Nacimiento *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso2.fecha.$pristine || formPaso2.fecha.$valid}">
                        <input ng-class="{'valido': formPaso2.fecha.$valid, 'erroneo': (!formPaso2.fecha.$valid && formPaso2.fecha.$dirty)}" input-date type="text" name="fecha" id="inputCreated" ng-model="registro.datos.mascota.fecha_nacimiento" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12" required/>
                        <cdx-validez data-validez="formPaso2.fecha.$valid" data-mostrar="formPaso2.fecha.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso2.fecha.$error" ng-show="formPaso2.fecha.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Especie *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso2.especie.$pristine || formPaso2.especie.$valid}">
                        <md-select ng-change="registro.cargarRazas(registro.datos.mascota.especie)" ng-model="registro.datos.mascota.especie" ng-class="{'valido': formPaso2.especie.$valid, 'erroneo': (!formPaso2.especie.$valid && formPaso2.especie.$dirty)}" placeholder="Especie" name="especie" class="md-no-underline" required>
                            <md-option ng-repeat="especie in registro.especies" value="{{especie.idEspecie}}">{{especie.especie}}</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso2.especie.$valid" data-mostrar="formPaso2.especie.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso2.especie.$error" ng-show="formPaso2.especie.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Raza *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso2.raza.$pristine || formPaso2.raza.$valid}">
                        <md-select ng-model="registro.datos.mascota.razas_idRaza" ng-class="{'valido': formPaso2.raza.$valid, 'erroneo': (!formPaso2.raza.$valid && formPaso2.raza.$dirty)}" placeholder="Raza" name="raza" class="md-no-underline" required>
                            <md-option ng-repeat="raza in registro.razas" value="{{raza.idRaza}}">{{raza.raza}}</md-option>
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
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Número de chip</div>
                    <div class="input-formulario"><input ng-model="registro.datos.mascota.chip" placeholder="Número de chip" type="text"></div>
                </div>
            </div>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Peso</div>
                    <div class="input-formulario">
                        <md-select ng-model="registro.datos.mascota.peso" placeholder="Peso" class="md-no-underline">
                            <md-option value="-1 Kg">-1 Kg</md-option>
                            <md-option value="2-4 Kg">2-4 Kg</md-option>
                            <md-option value="5-14 Kg">5-14 Kg</md-option>
                            <md-option value="15-24 Kg">15-24 Kg</md-option>
                            <md-option value="25-40 Kg">25-40 Kg</md-option>
                            <md-option value="+40 Kg">+40 Kg</md-option>
                        </md-select>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s11 offset-s1 m10 offset-m1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Comentarios</div>
                    <div class="input-formulario">
                        <textarea ng-model="registro.datos.mascota.comentarios" placeholder="Comentarios" rows="3"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

    </div>

    <!-------------------------->
    <!----------PASO #3--------->
    <!-------------------------->

    <div ng-form="formPaso3" ng-switch-when="3">

        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 negrita">
                Introduce los datos de tu placa. Si no tienes una placa puedes comprarla en nuestra <a target="_blank" href="https://www.dinbeat.com/tienda/">tienda</a>.
            </div>
        </div>
        <div class="row">
            <div class="col s11 offset-s1 m10 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Introduce el número de tu placa *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso3.numeroPlaca.$pristine || formPaso3.numeroPlaca.$valid}">
                        <input ng-model="registro.datos.placa.codigo" ng-class="{'valido': formPaso3.numeroPlaca.$valid, 'erroneo': (!formPaso3.numeroPlaca.$valid && formPaso3.numeroPlaca.$dirty)}" placeholder="Introduce el número de tu placa" type="text" name="numeroPlaca" cdx-validacion data-validacion="placa" data-deseado="false" cdx-validacion-dispo required>
                        <cdx-validez data-validez="formPaso3.numeroPlaca.$valid" data-mostrar="formPaso3.numeroPlaca.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso3.numeroPlaca.$error" ng-show="formPaso3.numeroPlaca.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="placa">La placa no está disponible.</div>
                        <div ng-message="disponible">La placa no es válida.</div>
                    </div>
                    <div ng-messages="formPaso3.numeroPlaca.$pending" ng-show="formPaso3.numeroPlaca.$dirty">

                        <div ng-message="placa">Verificando la disponibilidad de la placa...</div>
                        <div ng-message="disponible">Verificando la válidez de la placa...</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m4 offset-m1 l2 offset-l1">
                <div class="campo-formulario">Selecciona un modelo *</div>
            </div>
            <div class="col s10 offset-s1 m4">

                <cdx-formas data-seleccionado="registro.seleccionado" class="margin-bottom-30"></cdx-formas>

            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 center-align">
                <cdx-modelos ng-model="registro.datos.placa.modelos_idModelo" data-seleccionado="{{registro.seleccionado}}" class="margin-bottom-30"></cdx-modelos>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>
    </div>


    <!-------------------------->
    <!----------PASO #4--------->
    <!-------------------------->

    <div ng-form="formPaso4" ng-switch-when="4" ng-init="registro.datos.dueno.email = registro.datos.usuario.emailU">
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentran a tu mascota.
            </div>
        </div>

        <div class="row">

            <!--- NOMBRE DEL CONTACTO --->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.nombre.$valid}">
                        <input ng-model="registro.datos.dueno.nombre" ng-class="{'valido': formPaso4.nombre.$valid, 'erroneo': (!formPaso4.nombre.$valid)}" placeholder="Nombre Completo" type="text" name="nombre" minlength="2" required>
                        <cdx-validez data-validez="formPaso4.nombre.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.nombre.$error" ng-show="formPaso4.nombre.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>

            <!--- APELLIDO --->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Apellido *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.nombre.$valid}">
                        <input ng-model="registro.datos.dueno.apellido" ng-class="{'valido': formPaso4.apellido.$valid, 'erroneo': (!formPaso4.apellido.$valid)}" placeholder="Apellido" type="text" name="apellido" minlength="2" required>
                        <cdx-validez data-validez="formPaso4.apellido.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.apellido.$error" ng-show="formPaso4.apellido.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- TELEFONO -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Télefonos de contacto *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.telefono.$pristine || formPaso4.telefono.$valid}">
                        <input ng-model="registro.datos.dueno.telefono" ng-class="{'valido': formPaso4.telefono.$valid, 'erroneo': (!formPaso4.telefono.$valid && formPaso4.telefono.$dirty)}" placeholder="Télefonos de contacto" type="tel" name="telefono" ng-pattern="/^[0-9]*$/" required>
                        <cdx-validez data-validez="formPaso4.telefono.$valid" data-mostrar="formPaso4.telefono.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.telefono.$error" ng-show="formPaso4.telefono.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="pattern">Solo se aceptan digitos.</div>
                    </div>
                </div>
            </div>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.nombre.$valid}">
                        <input ng-model="registro.datos.dueno.email" ng-class="{'valido': formPaso4.email.$valid, 'erroneo': (!formPaso4.email.$valid)}" placeholder="E-mail" type="email" name="email" required>
                        <cdx-validez data-validez="formPaso4.email.$valid" data-mostrar="true"></cdx-validez>
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
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Fecha de Nacimiento</div>
                <div class="input-formulario">
                    <div class="margin-bottom-30">
                        <input input-date type="text" name="fecha" ng-model="registro.datos.dueno.nacimiento" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12" />
                    </div>
                </div>
            </div>

            <!-- SEXO -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Sexo</div>
                <div class="input-formulario">
                    <div class="margin-bottom-30">
                        <md-select ng-model="registro.datos.dueno.sexo" placeholder="Sexo" class="md-no-underline">
                            <md-option value="Masculino">Masculino</md-option>
                            <md-option value="Femenino">Femenino</md-option>
                        </md-select>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- PAIS -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">País *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.pais.$pristine || formPaso4.pais.$valid}">
                        <md-select ng-model="registro.datos.dueno.pais" ng-class="{'valido': formPaso4.pais.$valid, 'erroneo': (!formPaso4.pais.$valid && formPaso4.pais.$dirty)}" placeholder="País" class="md-no-underline" name="pais" required>
                            <md-option value="{{pais}}" ng-repeat="pais in registro.paises">{{pais}}</md-option>
                        </md-select>
                        <cdx-validez data-validez="formPaso4.pais.$valid" data-mostrar="formPaso4.pais.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.pais.$error" ng-show="formPaso4.pais.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- PROVINCIA -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Provincia *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.provincia.$pristine || formPaso4.provincia.$valid}">
                        <input ng-model="registro.datos.dueno.provincia" ng-class="{'valido': formPaso4.provincia.$valid, 'erroneo': (!formPaso4.provincia.$valid && formPaso4.provincia.$dirty)}" placeholder="Provincia" type="text" name="provincia" required>
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
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Ciudad *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.ciudad.$pristine || formPaso4.ciudad.$valid}">
                        <input ng-model="registro.datos.dueno.ciudad" ng-class="{'valido': formPaso4.ciudad.$valid, 'erroneo': (!formPaso4.ciudad.$valid && formPaso4.ciudad.$dirty)}" placeholder="Ciudad" type="text" name="ciudad" required>
                        <cdx-validez data-validez="formPaso4.ciudad.$valid" data-mostrar="formPaso4.ciudad.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.ciudad.$error" ng-show="formPaso4.ciudad.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- DIRECCION -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Dirección</div>
                <div class="input-formulario">
                    <div class="margin-bottom-30">
                        <input ng-model="registro.datos.dueno.direccion" placeholder="Dirección" type="text">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <!-- CODIGO POSTAL -->
            <div class="col s11 offset-s1 m4 offset-m1">
                <div class="campo-formulario">Código postal *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': formPaso4.postcode.$pristine || formPaso4.postcode.$valid}">
                        <input ng-model="registro.datos.dueno.codigo_postal" ng-class="{'valido': formPaso4.postcode.$valid, 'erroneo': (!formPaso4.postcode.$valid && formPaso4.postcode.$dirty)}" placeholder="Código postal" type="text" name="postcode" required>
                        <cdx-validez data-validez="formPaso4.postcode.$valid" data-mostrar="formPaso4.postcode.$dirty"></cdx-validez>
                    </div>
                    <div ng-messages="formPaso4.postcode.$error" ng-show="formPaso4.postcode.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>
        </div>

        <!--------------------->
        <!-- OTROS CONTACTOS -->
        <!--------------------->

        <div class="row" ng-show="registro.datos.duenos.length">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>
        </div>

        <div class="row" ng-show="registro.datos.duenos.length">
            <div class="col s10 offset-s1 m10 offset-m1 negrita">
                <h4 class="titulo2 negrita interlineado20 c2">Información de otros contactos</h4>
            </div>
        </div>



        <div ng-form="duenoExtraForm" ng-repeat="dueno in registro.datos.duenos">

            <div class="row">

                <!--- NOMBRE DEL CONTACTO --->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="campo-formulario">Nombre *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.nombre.$pristine || duenoExtraForm.nombre.$valid}">
                            <input ng-model="dueno.nombre" ng-class="{'valido': duenoExtraForm.nombre.$valid, 'erroneo': (!duenoExtraForm.nombre.$valid && duenoExtraForm.nombre.$dirty)}" placeholder="Nombre Completo" type="text" name="nombre" minlength="2" required>
                            <cdx-validez data-validez="duenoExtraForm.nombre.$valid" data-mostrar="duenoExtraForm.nombre.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.nombre.$error" ng-show="duenoExtraForm.nombre.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                        </div>
                    </div>
                </div>

                <!--- APELLIDO --->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="campo-formulario">Apellido *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.apellido.$pristine || duenoExtraForm.apellido.$valid}">
                            <input ng-model="dueno.apellido" ng-class="{'valido': duenoExtraForm.apellido.$valid, 'erroneo': (!duenoExtraForm.apellido.$valid && duenoExtraForm.apellido.$dirty)}" placeholder="Apellido" type="text" name="apellido" minlength="2" required>
                            <cdx-validez data-validez="duenoExtraForm.apellido.$valid" data-mostrar="duenoExtraForm.apellido.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.apellido.$error" ng-show="duenoExtraForm.apellido.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- TELEFONO -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="campo-formulario">Télefonos de contacto *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.telefono.$pristine || duenoExtraForm.telefono.$valid}">
                            <input ng-model="dueno.telefono" ng-class="{'valido': duenoExtraForm.telefono.$valid, 'erroneo': (!duenoExtraForm.telefono.$valid && duenoExtraForm.telefono.$dirty)}" placeholder="Télefonos de contacto" type="tel" name="telefono" ng-pattern="/^[0-9]*$/" required>
                            <cdx-validez data-validez="duenoExtraForm.telefono.$valid" data-mostrar="duenoExtraForm.telefono.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.telefono.$error" ng-show="duenoExtraForm.telefono.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="pattern">Solo se aceptan digitos.</div>
                        </div>
                    </div>
                </div>
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="campo-formulario">E-mail *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.email.$pristine || duenoExtraForm.email.$valid}">
                            <input ng-model="dueno.email" ng-class="{'valido': duenoExtraForm.email.$valid, 'erroneo': (!duenoExtraForm.email.$valid && duenoExtraForm.email.$dirty)}" placeholder="E-mail" type="email" name="email" required>
                            <cdx-validez data-validez="duenoExtraForm.email.$valid" data-mostrar="duenoExtraForm.email.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.email.$error" ng-show="duenoExtraForm.email.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="email">Debe ser un E-mail valido.</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- FECHA -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="campo-formulario">Fecha de Nacimiento</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.fecha.$pristine || duenoExtraForm.fecha.$valid}">
                            <input input-date type="text" name="fecha" ng-model="dueno.nacimiento" container="" format="dd/mm/yyyy" months-full="{{registro.datosDatepicker.meses}}" months-short="{{registro.datosDatepicker.mesesCorto}}" weekdays-full="{{registro.datosDatepicker.diasSemana}}" weekdays-short="" weekdays-letter="{{registro.datosDatepicker.diasSemanaCorto}}" disable="disable" max="{{registro.datosDatepicker.max}}" today="registro.datosDatepicker.hoy" first-day="1" clear="registro.datosDatepicker.limpiar" close="registro.datosDatepicker.cerrar" select-years="12" />
                        </div>
                    </div>
                </div>

                <!-- SEXO -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="campo-formulario">Sexo</div>
                    <div class="input-formulario">
                        <div class="margin-bottom-30">
                            <md-select ng-model="dueno.sexo" placeholder="Sexo" class="md-no-underline">
                                <md-option value="Masculino">Masculino</md-option>
                                <md-option value="Femenino">Femenino</md-option>
                            </md-select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- PAIS -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="campo-formulario">País *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.pais.$pristine || duenoExtraForm.pais.$valid}">
                            <md-select ng-model="dueno.pais" ng-class="{'valido': duenoExtraForm.pais.$valid, 'erroneo': (!duenoExtraForm.pais.$valid && duenoExtraForm.pais.$dirty)}" placeholder="País" class="md-no-underline" name="pais" required>
                                <md-option value="{{pais}}" ng-repeat="pais in registro.paises">{{pais}}</md-option>
                            </md-select>
                            <cdx-validez data-validez="duenoExtraForm.pais.$valid" data-mostrar="duenoExtraForm.pais.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.pais.$error" ng-show="duenoExtraForm.pais.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                        </div>
                    </div>
                </div>

                <!-- PROVINCIA -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="campo-formulario">Provincia *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.provincia.$pristine || duenoExtraForm.provincia.$valid}">
                            <input ng-model="dueno.provincia" ng-class="{'valido': duenoExtraForm.provincia.$valid, 'erroneo': (!duenoExtraForm.provincia.$valid && duenoExtraForm.provincia.$dirty)}" placeholder="Provincia" type="text" name="provincia" required>
                            <cdx-validez data-validez="duenoExtraForm.provincia.$valid" data-mostrar="duenoExtraForm.provincia.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.provincia.$error" ng-show="duenoExtraForm.provincia.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <!-- CIUDAD -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="campo-formulario">Ciudad *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.ciudad.$pristine || duenoExtraForm.ciudad.$valid}">
                            <input ng-model="dueno.ciudad" ng-class="{'valido': duenoExtraForm.ciudad.$valid, 'erroneo': (!duenoExtraForm.ciudad.$valid && duenoExtraForm.ciudad.$dirty)}" placeholder="Ciudad" type="text" name="ciudad" required>
                            <cdx-validez data-validez="duenoExtraForm.ciudad.$valid" data-mostrar="duenoExtraForm.ciudad.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.ciudad.$error" ng-show="duenoExtraForm.ciudad.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                        </div>
                    </div>
                </div>

                <!-- DIRECCION -->
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Dirección</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.direccion" placeholder="Dirección" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <!-- CODIGO POSTAL -->
                <div class="col s11 offset-s1 m4 offset-m1">
                    <div class="campo-formulario">Código postal *</div>
                    <div class="input-formulario">
                        <div ng-class="{'margin-bottom-30': duenoExtraForm.postcode.$pristine || duenoExtraForm.postcode.$valid}">
                            <input ng-model="dueno.codigo_postal" ng-class="{'valido': duenoExtraForm.postcode.$valid, 'erroneo': (!duenoExtraForm.postcode.$valid && duenoExtraForm.postcode.$dirty)}" placeholder="Código postal" type="text" name="postcode" required>
                            <cdx-validez data-validez="duenoExtraForm.postcode.$valid" data-mostrar="duenoExtraForm.postcode.$dirty"></cdx-validez>
                        </div>
                        <div ng-messages="duenoExtraForm.postcode.$error" ng-show="duenoExtraForm.postcode.$dirty">
                            <div ng-message="required">Este campo es requerido.</div>
                        </div>
                    </div>
                </div>


                <div class="col s11 offset-s1 m4 offset-m3">
                    <div class="margin-bottom-30">
                        <button class="boton-neutro" ng-click="registro.datos.duenos.splice($index, 1)">Eliminar este contacto</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1">
                    <div class="divider"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                <div class="boton-agregar" ng-click="registro.datos.duenos.push({nombre: null, apellido: null, telefono: null, email: null, nacimiento: null, direccion: null, pais: null, provincia: null, ciudad: null, codigo_postal: null, sexo: null})"></div> Agregar persona de contacto
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>
        </div>
    </div>

    <!-------------------------->
    <!----------PASO #5--------->
    <!-------------------------->

    <div ng-switch-when="5">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita interlineado20 c2">¡Felicidades!</h4>
                <h4 class="titulo2 negrita interlineado20 c2">Tu cuenta ha sido creada</h4>
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Te enviaremos un e-mail de confirmación con tus datos para que actives tu cuenta. Una vez activada entra en el perfil de tu mascota para completar su información médica, contacto veterinario y otros datos importantes.
            </div>
        </div>
    </div>


    <!--------- SIGUIENTE -------->

    <div class="row no-margin-bottom" style="padding-bottom: 40px;">
        <div class="col s10 offset-s1 m4 offset-m4 botones-formulario" ng-show="registro.pasos < 5 && registro.listo">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="registro.avanzar(formPasos.$valid, registro.datos)" ng-class="{'bloqueado' : !formPasos.$valid }">SIGUIENTE</button>
        </div>
        <div class="col s12 m4 offset-m4 botones-formulario" ng-show="registro.pasos == 5">
            <button class="boton-verde" ui-sref="login">INICIAR SESIÓN</button>
        </div>
    </div>
</section>
