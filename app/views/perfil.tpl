<section>

    <div class="row contenedor-perfil" ng-init="perfil.menuColapsado = true" ng-class="{'contenedor-perfil-colapsado': perfil.menuColapsado}">

        <div class="col negrita menu-perfil margin-out" id="menu-perfil" ng-class="{'s2': perfil.menuColapsado,'s11' : !perfil.menuColapsado,'m1': perfil.menuColapsado, 'm4': !perfil.menuColapsado, 'l1': perfil.menuColapsado, 'l2': !perfil.menuColapsado}">
        

            <div class="colapso-menu" ng-click="perfil.colapsar(perfil.menuColapsado)">
                <img src="assets/images/menu_iconos/collapse.png" ng-if="!perfil.menuColapsado">
                <img src="assets/images/menu_iconos/expand.png" ng-if="perfil.menuColapsado">
            </div>
            
            <div>

                <div ui-sref="perfil.miPerfil"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img src="assets/images/menu_iconos/profile.png">
                    </div>
                    <div class="opcion-menu">
                        Mi perfil
                    </div>
                </div>
                <div ui-sref="perfil.misMascotas"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img src="assets/images/menu_iconos/huella.png">
                    </div>
                    <div class="opcion-menu" class="margin-out">Mis mascotas</div>
                </div>
                <div ui-sref="perfil.activarAlerta"  ui-sref-opts="{reload: true}">
                    <div class="icono-menu">
                        <img src="assets/images/menu_iconos/important_message.png">
                    </div>
                    <div class="opcion-menu">
                        Activar alerta de mascota perdida
                    </div>
                </div>
                <div ui-sref="perfil.desactivarAlerta"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img src="assets/images/menu_iconos/desactivar_inactivo.png">
                    </div>
                    <div class="opcion-menu">
                        Desactivar alerta de mascota perdida
                    </div>
                </div>

            </div>
        </div>
        <div  class="col s11 contenedor-perfil-interno fondo-blanco" id="contenedor-perfil-interno" ng-class="{'m11': perfil.menuColapsado, 'm8': !perfil.menuColapsado, 'l11': perfil.menuColapsado, 'l10': !perfil.menuColapsado}">
            <div ui-view>


            </div>
            
        </div>
    
    </div>

</section>
