<section>

    <div class="row contenedor-perfil">

        <div class="col s10 m2 negrita menu-perfil margin-out">
            <div class="colapso-menu">
                <img src="assets/images/menu_iconos/collapse.png">
            </div>

            <div ui-sref="landing" class="margin-out">
                <div class="icono-menu">
                    <img src="assets/images/menu_iconos/huella.png">
                </div>
                <div class="opcion-menu">
                    Inicio
                </div>
            </div>
            <div ui-sref="perfil.miPerfil" class="margin-out">
                <div class="icono-menu">
                    <img src="assets/images/menu_iconos/profile.png">
                </div>
                <div class="opcion-menu">
                    Mi perfil
                </div>
            </div>
            <div ui-sref="perfil.misMascotas" class="margin-out">
                <div class="icono-menu">
                    <img src="assets/images/menu_iconos/huella.png">
                </div>
                <div class="opcion-menu" class="margin-out">Mis mascotas</div>
            </div>
            <div ui-sref="perfil.activarAlerta">
                <div class="icono-menu">
                    <img src="assets/images/menu_iconos/important_message.png">
                </div>
                <div class="opcion-menu">
                    Activar alerta de mascota perdida
                </div>
            </div>
            
            <div ui-sref="perfil.desactivarAlerta" class="margin-out" ng-show="perfil.mascotasPerdidas">
                <div class="icono-menu">
                    <img src="assets/images/menu_iconos/important_message.png">
                </div>
                <div class="opcion-menu">
                    Desactivar alerta de mascota perdida
                </div>
            </div>
        </div>

        <div class="col s12 m10 contenedor-perfil-interno fondo-blanco" ui-view>


        </div>

    </div>

</section>
