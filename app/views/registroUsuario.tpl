<section>
    <div class="row">
        <div class="col s12 center-align">
            <h5 class="center-align">Registro</h5>
        </div>
    </div>
    <div class="row">
        <div class="col s12 center-align">
            <cdx-pasos data-paso="cdx.pasos"></cdx-pasos>
        </div>
    </div>
</section>
<section ng-init="cdx.pasos = 1" ng-switch="cdx.pasos">
    <div ng-switch-when="1">
        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentra a tu mascota.
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Nombre *</div>
                <div class="input-formulario"><input placeholder="Nombre" type="text"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Apellidos *</div>
                <div class="input-formulario"><input placeholder="Apellidos" type="text"></div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario"><input placeholder="E-mail" type="email"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Nombre de usuario *</div>
                <div class="input-formulario"><input placeholder="Nombre de usuario" type="text"></div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Contraseña *</div>
                <div class="input-formulario"><input placeholder="Contraseña" type="password"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Verificar contraseña *</div>
                <div class="input-formulario"><input placeholder="Verificar contraseña" type="password"></div>
            </div>
        </div>



        <div class="row">
            <div class="col s12 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1 condiciones-formulario">
                <input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
                <label for="filled-in-box">He leido y acepto los <a href="/terminos-condiciones-dinbeat-qr">términos y condiciones</a>, así como las <a href="/politica-privacidad-dinbeat-qr">politicas de privacidad</a> de la empresa.</label>
            </div>
        </div>

    </div>
    <!--PASO #2-->
    <div ng-switch-when="2">
        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Introduce los datos de tu mascota.
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Nombre de tu mascota *</div>
                <div class="input-formulario"><input placeholder="Nombre de tu mascota " type="text"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Foto *</div>
                <div class="input-formulario text-center"><button class="boton-verde-negativo">CARGAR FOTO</button> O <button class="boton-verde-negativo">HACER FOTO</button></div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Género *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.genero" placeholder="Género" class="md-no-underline">
                        <md-option value="Masculino">Masculino</md-option>
                        <md-option value="Femenino">Femenino</md-option>
                    </md-select>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Fecha *</div>
                <div class="input-formulario"><input placeholder="Fecha" type="text"></div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Especie *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.especie" placeholder="Especie" class="md-no-underline">
                        <md-option value="Perro">Perro</md-option>
                        <md-option value="Gato">Gato</md-option>
                        <md-option value="Conejo">Conejo</md-option>
                        <md-option value="Hurón">Hurón</md-option>
                    </md-select>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Raza *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.raza" placeholder="Raza" class="md-no-underline">
                        <md-option value="algo">Yorkshire Terrier</md-option>
                        <md-option value="algo2">San Bernardo</md-option>
                    </md-select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Número de chip *</div>
                <div class="input-formulario"><input placeholder="Número de chip" type="text"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Peso *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.raza" placeholder="Peso" class="md-no-underline">
                        <md-option value="algo">2-5 Kg</md-option>
                        <md-option value="algo2">5-8 Kg</md-option>
                    </md-select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Comentarios *</div>
                <div class="input-formulario"><textarea placeholder="Número de chip" rows="3"></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m10 offset-m1">
                    * Dato requerido
                </div>
            </div>
        </div>
    </div>

    <!--PASO #3 -->
    <div ng-switch-when="3">

        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Introduce los datos de tu placa. Si no tienes una placa puedes comprarla en nuestra <a href="">tienda</a>.
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Introduce el número de tu placa *</div>
                <div class="input-formulario"><input placeholder="Introduce el número de tu placa" type="text"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m2 offset-m1">
                <div class="campo-formulario">Selecciona un modelo *</div>
            </div>
            <div class="col s12 m2">
                <div class="campo-formulario">Placa #1 Placa #2</div>
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


    <!--PASO #4 -->
    <div ng-switch-when="4">
        <div class="row">
            <div class="col s12 m10 offset-m1 negrita">
                Tu información de contacto será mostrada públicamente, para que puedan contactar contigo si encuentran a tu mascota.
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Nombre Completo *</div>
                <div class="input-formulario">
                    <input placeholder="Nombre Completo" type="text">
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Fecha de Nacimiento *</div>
                <div class="input-formulario">
                    <input placeholder="Fecha de Nacimiento" type="text">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Télefonos de contacto *</div>
                <div class="input-formulario">
                    <input placeholder="Télefonos de contacto" type="tel">
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">E-mail *</div>
                <div class="input-formulario">
                    <input placeholder="E-mail" type="email">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Dirección *</div>
                <div class="input-formulario">
                    <input placeholder="Dirección" type="text">
                </div>
            </div>

            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Sexo *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.sexo" placeholder="Sexo" class="md-no-underline">
                        <md-option value="Masculino">Masculino</md-option>
                        <md-option value="Femenino">Masculino</md-option>
                    </md-select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">País *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.pais" placeholder="País" class="md-no-underline">
                        <md-option value="España">España</md-option>
                    </md-select>
                </div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="campo-formulario">Provincia *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.raza" placeholder="Provincia" class="md-no-underline">
                        <md-option value="XXX">XXX</md-option>
                    </md-select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="campo-formulario">Ciudad *</div>
                <div class="input-formulario">
                    <md-select ng-model="cdx.pais" placeholder="Ciudad" class="md-no-underline">
                        <md-option value="Alguna">Alguna</md-option>
                    </md-select>
                </div>
            </div>
            <div class="col s12 m3 offset-m2">
                <div class="campo-formulario">Código postal *</div>
                <div class="input-formulario">
                    <input placeholder="Código postal" type="text">
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

    <!--PASO #5 -->
    <div ng-switch-when="5">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                Imagen
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

</section>
<section>
    <div class="row">
        <div class="col s4 offset-s4 botones-formulario" ng-show="cdx.pasos < 5">
            <button class="boton-neutro" ui-sref="landing">Cancelar</button>
            <button class="boton-verde" ng-click="cdx.pasos = cdx.pasos + 1;">SIGUIENTE</button>
        </div>
        <div class="col s12 m4 offset-m4 botones-formulario" ng-show="cdx.pasos == 5">
            <button class="boton-verde">INICIAR SESIÓN</button>
        </div>
        
    </div>
</section>