<section class="cambiar-contrasena">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col s12 m6 offset-m3 l6 offset-l3 xl8 offset-xl2 center-align">
				<img src="assets/images/icons/candado2x.png" width="120" class="margin-bottom-30">
				<p class="recordar-usuario-titulo">Cambiar Contraseña</p>
				<br>
				<div class="text-left">
                    <div class="row" ng-form="cambiarContrasenaConfirmar">


			            <!------ Contraseña ------>
			            <div class="col s12 m12 l6">
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
			            <div class="col s12 m12 l6">
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

		        </div>
		        <br>
		        <input class="boton-verde" value="CAMBIAR CONTRASEÑA">
			</div>

		</div>

	</div>

</section>