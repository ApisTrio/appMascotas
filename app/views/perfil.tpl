<section>

    <div class="row contenedor-perfil" ng-init="perfil.menuColapsado = true" ng-class="{'contenedor-perfil-colapsado': perfil.menuColapsado}">

        <div class="col negrita menu-perfil margin-out" id="menu-perfil" ng-class="{'s2': perfil.menuColapsado,'s6' : !perfil.menuColapsado,'m1': perfil.menuColapsado, 'm4': !perfil.menuColapsado, 'l1': perfil.menuColapsado, 'l2': !perfil.menuColapsado}">
        

            <div class="colapso-menu" ng-click="perfil.colapsar(perfil.menuColapsado)">
                <img src="assets/images/menu_iconos/collapse.png" ng-if="!perfil.menuColapsado">
                <img src="assets/images/menu_iconos/expand.png" ng-if="perfil.menuColapsado">
            </div>
            
            <div>

                <div ui-sref="perfil.miPerfil"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-init="perfil.iconoMiPerfil = perfil.cambiarIcono(seleccionado, 1, iconoMiPerfil)" ng-mouseover="perfil.iconoMiPerfil = iconoMiPerfil[1]" ng-mouseleave="perfil.iconoMiPerfil = perfil.cambiarIcono(seleccionado, 1, iconoMiPerfil)" ng-src="{{ perfil.iconoMiPerfil }}">
                    </div>
                    <div class="opcion-menu">
                        Mi perfil
                    </div>
                </div>
                <div ui-sref="perfil.misMascotas"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-init="perfil.iconoMisMascotas = perfil.cambiarIcono(seleccionado, 2, iconoMisMascotas)" ng-mouseover="perfil.iconoMisMascotas = iconoMisMascotas[1]" ng-mouseleave="perfil.iconoMisMascotas = perfil.cambiarIcono(seleccionado, 2, iconoMisMascotas)" ng-src="{{ perfil.iconoMisMascotas }}">
                    </div>
                    <div class="opcion-menu" class="margin-out">
                        Mis mascotas
                    </div>
                </div>
                <div ui-sref="perfil.activarAlerta"  ui-sref-opts="{reload: true}">
                    <div class="icono-menu">
                        <img ng-init="perfil.iconoActivarAlerta = perfil.cambiarIcono(seleccionado, 3, iconoActivarAlerta)" ng-mouseover="perfil.iconoActivarAlerta = iconoActivarAlerta[1]" ng-mouseleave="perfil.iconoActivarAlerta = perfil.cambiarIcono(seleccionado, 3, iconoActivarAlerta)"  ng-src="{{ perfil.iconoActivarAlerta }}">
                    </div>
                    <div class="opcion-menu">
                        Activar alerta de mascota perdida
                    </div>
                </div>
                <div ui-sref="perfil.desactivarAlerta"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-init="perfil.iconoDesactivarAlerta = perfil.cambiarIcono(seleccionado, 4, iconoDesactivarAlerta)" ng-mouseover="perfil.iconoDesactivarAlerta  = iconoDesactivarAlerta[1]" ng-mouseleave="perfil.iconoDesactivarAlerta = perfil.cambiarIcono(seleccionado, 4, iconoDesactivarAlerta)" ng-src="{{perfil.iconoDesactivarAlerta}}" style="width: 35px;margin-right: -10px;">
                    </div>
                    <div class="opcion-menu">
                        Desactivar alerta de mascota perdida
                    </div>
                </div>

            </div>
        </div><!--
        --><div  class="col s10 contenedor-perfil-interno fondo-blanco" id="contenedor-perfil-interno" ng-class="{'m11': perfil.menuColapsado, 'm8': !perfil.menuColapsado, 'l11': perfil.menuColapsado, 'l10': !perfil.menuColapsado}" style="min-height: calc(100% - 313px);">
            <div id="hiddeninmobile" ui-view>


            </div>
            
        </div>
    
    </div>

</section>
