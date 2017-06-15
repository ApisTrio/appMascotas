<section class="login" style="background-image: url('assets/images/wave.png'); background-repeat: no-repeat; background-size: contain; background-position: center center;">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col s12 m6 l6 xl5 offset-xl1 center-align registrarse">
				<div class="col s10 offset-s1">
					<p>CREAR MI CUENTA</p>
					<p style="font-size: 18px">¿Te apasionan los animales? <br>¡Entonces eres de los nuestros!</p>
					<br>
					<button class="boton-verde" ui-sref="registroUsuario">REGISTRARME</button>
				</div>
			</div>
			<div class="center-align flex justify-content column absolute center">
				<div class="" style="margin: 0 auto;height: 200px;"><div style="width: 1px;b;background-color: #e5e5e5;height: 200px;"></div></div>
				<div class="" style="
				    border: 1px solid #e5e5e5;
				    border-radius: 50%;
				    height: 35px;
				    width: 35px;
				    display: flex;
				    justify-content: center;
				    align-items: center;
				">o</div>
				<div class="" style="margin: 0 auto;height: 200px;"><div style="width: 1px;b;background-color: #e5e5e5;height: 200px;"></div></div>
			</div>
			<div class="col s12 m6 l6 xl5 center-align iniciar-sesion" ng-form="loginForm">
				<p>INICIAR SESIÓN</p>
				<div class="col s10 offset-s1">
					<input ng-model="login.usuario.usuario" type="text" name="usuario" placeholder="Usuario">
				</div>
				<div class="col s10 offset-s1">
					<input ng-model="login.usuario.pass" type="password" name="pass" placeholder="Contraseña">
				</div>
				<div class="col s10 offset-s1 text-left">
					<input type="checkbox" class="filled-in" id="recuerdame" name="recuerdame" />
					<label for="recuerdame">Recuérdame</label>
				</div>
				<button class="boton-verde margin-out" type="submit" ng-click="login.iniciarSesion(login.usuario, loginForm.$valid)" >ACCEDER</button>
				<p class="pointer" ui-sref="cambiarContrasena">¿Has olvidado tu contraseña?</p>
				<p class="pointer" ui-sref="recordarUsuario">¿Has olvidado tu usuario?</p>
			</div>

		</div>

	</div>

</section>