<section class="cambiar-contrasena">

    <div class="container">

        <div class="row" ng-switch="cambiarContrasena.pasos" ng-init="cambiarContrasena.pasos = 1">

            <div class="col s12 m6 l6 xl8 offset-xl2 center-align" ng-switch-default ng-form="cambiarContrasenaForm">
                <img src="assets/images/icons/candado2x.png" width="120" class="margin-bottom-30">
                <p class="recordar-usuario-titulo">Cambiar Contraseña</p>
                <p class="recordar-usuario-texto">¡No te preocupes! A todos nos pasa alguna vez. Introduce tu correo electrónico y te ayudaremos a crear una nueva.</p>
                <br>
                <div class="margin-auto" style="width: 300px;">
                    <div class="campo-formulario text-left">E-mail</div>
                    <div class="input-formulario text-left">
                        <div>
                            <input ng-model="cambiarContrasena.email" placeholder="Email" type="email" name="email" ng-class="{'valido': cambiarContrasenaForm.email.$valid, 'erroneo': (!cambiarContrasenaForm.email.$valid && cambiarContrasenaForm.email.$dirty)}" cdx-validacion data-validacion="emailU" data-deseado="true" required>
                            <cdx-validez data-validez="cambiarContrasenaForm.email.$valid" data-mostrar="cambiarContrasenaForm.email.$dirty"></cdx-validez>
                        </div>

                        <div ng-messages="cambiarContrasenaForm.email.$error" ng-show="cambiarContrasenaForm.email.$dirty || cambiarContrasenaForm.$submitted">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="email">Debe ser un email válido.</div>
                            <div ng-message="emailU">El E-mail no está registrado.</div>
                        </div>
                        <div ng-messages="cambiarContrasenaForm.email.$pending" ng-show="cambiarContrasenaForm.email.$dirty || cambiarContrasenaForm.$submitted">
                            <div ng-message="emailU">Verificando existencia del E-mail...</div>
                        </div>
                    </div>
                </div>
                <br>
                <button class="boton-verde landing" type="submit" ng-click="cambiarContrasena.enviar(cambiarContrasenaForm.$valid, cambiarContrasena.email)" ng-class="{'bloqueado' : !cambiarContrasenaForm.$valid }">CAMBIAR CONTRASEÑA</button>
                <p class="recordar-usuario-texto">Si el e-mail introducido está en nuestra base de datos recibirás un correo recordándote tu nombre de usuario. Revisa tu bandeja de entrada.</p>
            </div>
            <div ng-switch-when="2">
                <div class="row">
                    <div class="col s10 offset-s1 center-align">
                        <img src="assets/images/forms/Confirm.png">
                    </div>
                </div>

                <div class="row">
                    <div class="col s10 offset-s1 center-align">
                        <h4 class="titulo2 negrita interlineado20 c2">Correo enviado</h4>
                    </div>
                </div>

                <div class="row">
                    <p class="col s10 offset-s1 m8 offset-m2 center-align">
                        Te hemos enviado un e-mail con los pasos a seguir para cambiar tu contraseña. Si tienes algún problema puedes contactarnos
                    </p>
                </div>

            </div>

        </div>

    </div>

</section>
