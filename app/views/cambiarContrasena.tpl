<section class="cambiar-contrasena">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col s12 m6 l6 xl8 offset-xl2 center-align">
				<img src="assets/images/icons/candado2x.png" width="120" class="margin-bottom-30">
				<p class="recordar-usuario-titulo">Cambiar Contraseña</p>
				<p class="recordar-usuario-texto">¡No te preocupes! A todos nos pasa alguna vez. Introduce tu correo electrónico y te ayudaremos a crear una nueva.</p>
				<br>
				<div class="margin-auto" style="width: 300px;">
	                <div class="campo-formulario text-left">E-mail</div>
	                <div class="input-formulario text-left">
                    	<div>
	                        <input placeholder="Email" type="text" name="email" minlength="3" style="width: 100%;" required>
	                    </div>

	                    <div ng-messages="formPaso1.nombre.$error" ng-show="formPaso1.nombre.$dirty">
	                        <div ng-message="required">Este campo es requerido.</div>
	                        <div ng-message="minlength">Debe contener al menos 3 caracteres.</div>
	                    </div>
	                </div>
		        </div>
		        <br>
		        <button class="boton-verde" ng-click="">CAMBIAR CONTRASEÑA</button>
		        <p class="recordar-usuario-texto">Si el e-mail introducido está en nuestra base de datos recibirás un correo recordándote tu nombre de usuario. Revisa tu bandeja de entrada.</p>
			</div>

		</div>

	</div>

</section>