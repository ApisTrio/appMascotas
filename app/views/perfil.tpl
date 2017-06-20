<section>

    <div class="row contenedor-perfil" ng-init="perfil.menuColapsado = false" ng-class="{'contenedor-perfil-colapsado': perfil.menuColapsado}">

        <div class="col negrita menu-perfil margin-out" id="menu-perfil" ng-class="{'s1': perfil.menuColapsado,'s11' : !perfil.menuColapsado,'m1': perfil.menuColapsado, 'm4': !perfil.menuColapsado, 'l1': perfil.menuColapsado, 'l3': !perfil.menuColapsado}">
        
            <div class="colapso-menu" ng-click="perfil.colapsar(perfil.menuColapsado)">
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

        <div class="col s11 contenedor-perfil-interno fondo-blanco" id="contenedor-perfil-interno" ng-class="{'m11': perfil.menuColapsado, 'm8': !perfil.menuColapsado, 'l11': perfil.menuColapsado, 'l9': !perfil.menuColapsado}" ui-view>


        </div>

    </div>

</section>
