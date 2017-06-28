<!---- INFORMACION BASICA ---->
<section class="padding-top-30">
    <div class="row no-margin-bottom">
        <div class="col s12 m10 offset-m1">
            <h4 class="titulo2 negrita interlineado20 c2">Mi Perfil</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m10 offset-m1">
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info c2">Información Básica</div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info">E-mail</div>
            <div class="contenido-info white-space-normal">{{miPerfil.datos.usuario.emailU}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s12 m4 offset-m2">
            <div class="titulo-info">Nombre de usuario</div>
            <div class="contenido-info white-space-normal">{{miPerfil.datos.usuario.usuario}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row" style="margin-left: none;">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info">Fecha de nacimiento</div>
            <div class="contenido-info white-space-normal">{{miPerfil.datos.dueno.nacimiento}}</div>
        </div>
        <div class="col s12 m4 offset-m2">
            <div class="titulo-info">Sexo</div>
            <div class="contenido-info" ng-if="miPerfil.datos.usuario.sexo">{{miPerfil.datos.usuario.sexo}}</div>
            <div class="contenido-info" ng-if="!miPerfil.datos.usuario.sexo">...</div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m10 offset-m1">
            <div class="divider"></div>
        </div>
    </div>

</section>
<!---- INFORMACION DE CONTACTO---->
<section ng-switch="miPerfil.pasos" ng-init="miPerfil.pasos = 1">
    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info c2">Información de Contacto</div>
        </div>
    </div>
    <div ng-switch-default>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Nombre</div>
                <div class="contenido-info white-space-normal">{{miPerfil.datos.dueno.nombre}}</div>
                <div class="divider"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="titulo-info">Apellido</div>
                <div class="contenido-info white-space-normal">{{miPerfil.datos.dueno.apellido}}</div>
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Teléfono de contacto</div>
                <div class="contenido-info white-space-normal">{{miPerfil.datos.dueno.telefono}}</div>
                <div class="divider"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="titulo-info">E-mail</div>
                <div class="contenido-info white-space-normal">{{miPerfil.datos.dueno.email}}</div>
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Dirección</div>
                <div class="contenido-info white-space-normal" ng-if="miPerfil.datos.dueno.direccion">{{miPerfil.datos.dueno.direccion}}, {{miPerfil.datos.dueno.codigo_postal}}, {{miPerfil.datos.dueno.ciudad}}, {{miPerfil.datos.dueno.provincia}}, {{miPerfil.datos.dueno.pais}}</div>
                <div class="contenido-info white-space-normal" ng-if="!miPerfil.datos.dueno.direccion"> {{miPerfil.datos.dueno.codigo_postal}}, {{miPerfil.datos.dueno.ciudad}}, {{miPerfil.datos.dueno.provincia}}, {{miPerfil.datos.dueno.pais}}</div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1">
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 center-align">
                <button class="boton-verde-negativo" ng-click="miPerfil.editarComenzar(miPerfil.datos)">EDITAR</button>
            </div>
        </div>
    </div>
    <div ng-switch-when="2" ng-form="editarForm">
        <div class="row">

            <!--- NOMBRE DEL CONTACTO --->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.nombre.$valid}">
                        <input ng-model="miPerfil.datosEspejo.nombre" ng-class="{'valido': editarForm.nombre.$valid, 'erroneo': (!editarForm.nombre.$valid)}" placeholder="Nombre Completo" type="text" name="nombre" minlength="2" required>
                        <cdx-validez data-validez="editarForm.nombre.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.nombre.$error" ng-show="editarForm.nombre.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="minlength">Debe contener al menos 2 caracteres.</div>
                    </div>
                </div>
            </div>

            <!--- APELLIDO --->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Apellido *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.nombre.$valid}">
                        <input ng-model="miPerfil.datosEspejo.apellido" ng-class="{'valido': editarForm.apellido.$valid, 'erroneo': (!editarForm.apellido.$valid)}" placeholder="Apellido" type="text" name="apellido" minlength="2" required>
                        <cdx-validez data-validez="editarForm.apellido.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.apellido.$error" ng-show="editarForm.apellido.$dirty">
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
                    <div ng-class="{'margin-bottom-30': editarForm.telefono.$pristine || editarForm.telefono.$valid}">
                        <input ng-model="miPerfil.datosEspejo.telefono" ng-class="{'valido': editarForm.telefono.$valid, 'erroneo': (!editarForm.telefono.$valid && editarForm.telefono.$dirty)}" placeholder="Télefonos de contacto" type="tel" name="telefono" ng-pattern="/^[0-9]*$/" required>
                        <cdx-validez data-validez="editarForm.telefono.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.telefono.$error" ng-show="editarForm.telefono.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="pattern">Solo se aceptan digitos.</div>
                    </div>
                </div>
            </div>
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.nombre.$valid}">
                        <input ng-model="miPerfil.datosEspejo.email" ng-class="{'valido': editarForm.email.$valid, 'erroneo': (!editarForm.email.$valid)}" placeholder="E-mail" type="email" name="email" required>
                        <cdx-validez data-validez="editarForm.email.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.email.$error" ng-show="editarForm.email.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                        <div ng-message="email">Debe ser un E-mail valido.</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- FECHA -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">Código postal *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.postcode.$pristine || editarForm.postcode.$valid}">
                        <input ng-model="miPerfil.datosEspejo.codigo_postal" ng-class="{'valido': editarForm.postcode.$valid, 'erroneo': (!editarForm.postcode.$valid && editarForm.postcode.$dirty)}" placeholder="Código postal" type="text" name="postcode" required>
                        <cdx-validez data-validez="editarForm.postcode.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.postcode.$error" ng-show="editarForm.postcode.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- DIRECCION -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Dirección</div>
                <div class="input-formulario">
                    <div class="margin-bottom-30">
                        <input ng-model="miPerfil.datosEspejo.direccion" placeholder="Dirección" type="text">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- PAIS -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="campo-formulario">País *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.pais.$pristine || editarForm.pais.$valid}">
                        <md-select ng-model="miPerfil.datosEspejo.pais" ng-class="{'valido': editarForm.pais.$valid, 'erroneo': (!editarForm.pais.$valid && editarForm.pais.$dirty)}" placeholder="País" class="md-no-underline" name="pais" required>
                            <md-option value="{{pais}}" ng-repeat="pais in miPerfil.paises">{{pais}}</md-option>
                        </md-select>
                        <cdx-validez data-validez="editarForm.pais.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.pais.$error" ng-show="editarForm.pais.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>

            <!-- PROVINCIA -->
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="campo-formulario">Provincia *</div>
                <div class="input-formulario">
                    <div ng-class="{'margin-bottom-30': editarForm.provincia.$pristine || editarForm.provincia.$valid}">
                        <input ng-model="miPerfil.datosEspejo.provincia" ng-class="{'valido': editarForm.provincia.$valid, 'erroneo': (!editarForm.provincia.$valid && editarForm.provincia.$dirty)}" placeholder="Provincia" type="text" name="provincia" required>

                        <cdx-validez data-validez="editarForm.provincia.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.provincia.$error" ng-show="editarForm.provincia.$dirty">
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
                    <div ng-class="{'margin-bottom-30': editarForm.ciudad.$pristine || editarForm.ciudad.$valid}">
                        <input ng-model="miPerfil.datosEspejo.ciudad" ng-class="{'valido': editarForm.ciudad.$valid, 'erroneo': (!editarForm.ciudad.$valid && editarForm.ciudad.$dirty)}" placeholder="Ciudad" type="text" name="ciudad" required>
                        <cdx-validez data-validez="editarForm.ciudad.$valid" data-mostrar="true"></cdx-validez>
                    </div>
                    <div ng-messages="editarForm.ciudad.$error" ng-show="editarForm.ciudad.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="col s4 offset-s4 botones-formulario">
                <div class="row">
                    <div class="col s12 m12 l6" style="margin-bottom: 10px">
                        <button class="boton-neutro" ng-click="miPerfil.editarCancelar()">Cancelar</button>
                    </div>
                    <div class="col s12 m12 l6">
                        <button class="boton-verde" ng-click="miPerfil.editarGuardar(editarForm.$valid, miPerfil.datosEspejo)" ng-class="{'bloqueado' : !editarForm.$valid }">GUARDAR</button>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>

</section>
<section>
    <div class="row">
        <div class="col s10 offset-s1">
            <div ui-sref="perfil.eliminarCuenta" class="eliminar-pequeno">Eliminar cuenta</div>
        </div>
    </div>

</section>
