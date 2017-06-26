<section class="recordar-usuario">
	
	<div class="container">
		
		<div class="row" ng-switch="recordarUsuario.pasos" ng-init="recordarUsuario.pasos = 1">
			
			<div class="col s12 m6 l6 xl8 offset-xl2 center-align" ng-form="recordarUsuarioForm" ng-switch-default>
				<img src="assets/images/icons/usuario2x.png" width="120" class="margin-bottom-30">
				<p class="recordar-usuario-titulo">Recordar Usuario</p>
				<p class="recordar-usuario-texto">¡No te preocupes! A todos nos pasa alguna vez. Introduce tu correo electrónico y te ayudaremos a recordarlo.</p>
				<br>
				<div class="margin-auto" style="width: 300px;">
	                <div class="input-formulario text-left">
                        <div>
                            <input ng-model="recordarUsuario.email" placeholder="Email" type="email" name="email" ng-class="{'valido': recordarUsuarioForm.email.$valid, 'erroneo': (!recordarUsuarioForm.email.$valid && recordarUsuarioForm.email.$dirty)}" cdx-validacion data-validacion="emailU" data-deseado="true" required>
                            <cdx-validez data-validez="recordarUsuarioForm.email.$valid" data-mostrar="recordarUsuarioForm.email.$dirty"></cdx-validez>
                        </div>

                        <div ng-messages="recordarUsuarioForm.email.$error" ng-show="recordarUsuarioForm.email.$dirty || recordarUsuarioForm.$submitted">
                            <div ng-message="required">Este campo es requerido.</div>
                            <div ng-message="email">Debe ser un email válido.</div>
                            <div ng-message="emailU">El E-mail no está registrado.</div>
                        </div>                    
                        <div ng-messages="recordarUsuarioForm.email.$pending" ng-show="recordarUsuarioForm.email.$dirty || recordarUsuarioForm.$submitted">
                            <div ng-message="emailU">Verificando existencia del E-mail...</div>
                        </div>
                    </div>
		        </div>
		        <br>
		        <button class="boton-verde" ng-click="recordarUsuario.enviar(recordarUsuarioForm.$valid, recordarUsuario.email)">RECORDAR USUARIO</button>
		        <p class="recordar-usuario-texto white-space-normal">Si el e-mail introducido está en nuestra base de datos recibirás un correo recordándote tu nombre de usuario. Revisa tu bandeja de entrada.</p>
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
                    <p class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                        Te hemos enviado un e-mail con los pasos a seguir para recuperar tu nombre de usuario. Si tienes algún problema puedes contactarn
                    </p>
                </div>

            </div>

		</div>

	</div>

</section>