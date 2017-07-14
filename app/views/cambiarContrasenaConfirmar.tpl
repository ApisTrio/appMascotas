<section class="cambiar-contrasena">

    <div class="container" ng-switch="cambiarContrasenaConfirmar.pasos" ng-init="cambiarContrasenaConfirmar.pasos = 1">

        <div class="row" ng-switch-default>

            <div class="col s12 m6 offset-m3 l6 offset-l3 xl8 offset-xl2 center-align">
                <img src="assets/images/icons/candado2x.png" width="120" class="margin-bottom-30">
                <p class="recordar-usuario-titulo">Cambiar Contraseña</p>
                <br>
                <div class="text-left">
                    <div class="row" ng-form="cambiarContrasenaConfirmarForm">


                        <!------ Contraseña ------>
                        <div class="col s12 m12 l6">
                            <div class="campo-formulario">Contraseña *</div>
                            <div class="input-formulario">
                                <div ng-class="{'margin-bottom-30': cambiarContrasenaConfirmarForm.clave.$pristine || cambiarContrasenaConfirmarForm.clave.$valid}">
                                    <input ng-model="cambiarContrasenaConfirmar.pass" ng-class="{'valido': cambiarContrasenaConfirmarForm.clave.$valid, 'erroneo': (!cambiarContrasenaConfirmarForm.clave.$valid && cambiarContrasenaConfirmarForm.clave.$dirty)}" placeholder="Contraseña" type="password" name="clave" minlength="6" required>
                                    <cdx-validez data-validez="cambiarContrasenaConfirmarForm.clave.$valid" data-mostrar="cambiarContrasenaConfirmarForm.clave.$dirty"></cdx-validez>
                                </div>
                                <div ng-messages="cambiarContrasenaConfirmarForm.clave.$error" ng-show="cambiarContrasenaConfirmarForm.clave.$dirty">
                                    <div ng-message="required">Este campo es requerido.</div>
                                    <div ng-message="minlength">Debe contener al menos 6 caracteres.</div>
                                </div>
                            </div>
                        </div>

                        <!------ Verificar Contraseña ------>
                        <div class="col s12 m12 l6">
                            <div class="campo-formulario">Verificar contraseña *</div>
                            <div class="input-formulario">
                                <div ng-class="{'margin-bottom-30': cambiarContrasenaConfirmarForm.clave2.$pristine || cambiarContrasenaConfirmarForm.clave2.$valid}">
                                    <input ng-model="cambiarContrasenaConfirmar.verificarPass" ng-class="{'valido': cambiarContrasenaConfirmarForm.clave2.$valid, 'erroneo': (!cambiarContrasenaConfirmarForm.clave2.$valid && cambiarContrasenaConfirmarForm.clave2.$dirty)}" placeholder="Verificar contraseña" type="password" name="clave2" cdx-validacion-clave data-validacion="{{cambiarContrasenaConfirmar.pass}}" required>
                                    <cdx-validez data-validez="cambiarContrasenaConfirmarForm.clave2.$valid" data-mostrar="cambiarContrasenaConfirmarForm.clave2.$dirty"></cdx-validez>
                                </div>
                                <div ng-messages="cambiarContrasenaConfirmarForm.clave2.$error" ng-show="cambiarContrasenaConfirmarForm.clave2.$dirty">
                                    <div ng-message="required">Este campo es requerido.</div>
                                    <div ng-message="identica">Las contraseñas deben ser identicas.</div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <br>
                <button class="boton-verde landing" ng-click="cambiarContrasenaConfirmar.cambiarContrasena(cambiarContrasenaConfirmar.pass, cambiarContrasenaConfirmarForm.$valid)" ng-class="{'bloqueado' : !cambiarContrasenaConfirmarForm.$valid }">CAMBIAR CONTRASEÑA</button>
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
                    <h5>Tu contraseña ha sido cambiada con exito</h5>
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                   El proceso de cambio de contraseña fue realizado con exito, ya puedes utilizar tu nueva contraseña para acceder a tu perfil privado.
                </div>
            </div>

        </div>

        <div class="row" ng-switch-when="3">

              <div class="row">
                <div class="col s10 offset-s1 center-align">
                    <img src="assets/images/icons/alerta.png">
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1 center-align">
                    <h5>Ha ocurrido un problema</h5>
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                   El proceso de cambio de contraseña ha fallado. Es posible que tu solicitud no sea válida. 
                </div>
            </div>
            
        </div>


    </div>

</section>
