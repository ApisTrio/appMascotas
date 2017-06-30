<section class="login">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col s12 m12 l6 xl5 offset-xl1 center-align registrarse">
				<div class="col s10 offset-s1">
					<p class="titulo-registrate">CREAR MI CUENTA</p>
					<p style="font-size: 18px; color: #5c5b5c">¿Te apasionan los animales? <br>¡Entonces eres de los nuestros!</p>
					<br>
					<button class="boton-verde landing" ui-sref="registroUsuario">REGISTRARME</button>
				</div>
			</div>
			<div class="linea-media">
				<div class="uno"><div></div></div>
				<div class="dos" style="border: 2px solid #e5e5e5;
    border-radius: 50%;
    padding: 0px 5px 2px 5px;">o</div>
				<div class="tres"><div></div></div>
			</div>
			<div class="col s12 m12 l6 xl5 center-align iniciar-sesion" ng-form="loginForm">
				<p class="titulo-inicios">INICIAR SESIÓN</p>
				<div class="col s10 offset-s1">
					<input ng-model="login.usuario.usuario" type="text" name="usuario" placeholder="Usuario" ng-class="{'margin-bottom-30': ((loginForm.usuario.$pristine && !loginForm.$submitted) || (loginForm.usuario.$valid)),'error': login.error}" required>
                    <div ng-messages="loginForm.usuario.$error" ng-show="loginForm.$submitted || loginForm.usuario.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
				</div>
				<div class="col s10 offset-s1">
					<input ng-model="login.usuario.pass" type="password" name="pass" placeholder="Contraseña" ng-class="{'margin-bottom-30': ((loginForm.pass.$pristine && !loginForm.$submitted) || (loginForm.pass.$valid)), 'error': login.error}" required>
                    <div ng-messages="loginForm.pass.$error" ng-show="loginForm.$submitted || loginForm.pass.$dirty">
                        <div ng-message="required">Este campo es requerido.</div>
                    </div>
				</div>
				<div class="col s10 offset-s1 text-left">
					<input type="checkbox" class="filled-in" id="recuerdame" name="recuerdame" />
					<label class="label" for="recuerdame">Recuérdame</label>
				</div>
				<button class="boton-verde margin-out landing" type="submit" ng-click="login.iniciarSesion(login.usuario, loginForm.$valid)" >ACCEDER</button>
				<p class="pointer" style="color: #afb2b6;" ui-sref="cambiarContrasena">¿Has olvidado tu contraseña?</p>
				<p class="pointer" style="color: #afb2b6;" ui-sref="recordarUsuario">¿Has olvidado tu usuario?</p>
			</div>

		</div>

	</div>

</section>