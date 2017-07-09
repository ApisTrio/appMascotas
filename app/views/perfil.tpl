<section>

    <div class="row contenedor-perfil" ng-init="perfil.menuColapsado = true" ng-class="{'contenedor-perfil-colapsado': perfil.menuColapsado}">

        <div class="col negrita menu-perfil margin-out" id="menu-perfil" ng-class="{'s2': perfil.menuColapsado,'s8' : !perfil.menuColapsado,'m1': perfil.menuColapsado, 'm4': !perfil.menuColapsado, 'l1': perfil.menuColapsado, 'l2': !perfil.menuColapsado}">
        

            <div class="colapso-menu" ng-click="perfil.colapsar(perfil.menuColapsado)">
                <img src="assets/images/menu_iconos/collapse.png" ng-if="!perfil.menuColapsado">
                <img src="assets/images/menu_iconos/expand.png" ng-if="perfil.menuColapsado">
            </div>
            
            <div>

                <div ui-sref="perfil.miPerfil"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-mouseover="iconoMiPerfil = iconosMiPerfil[1]" ng-mouseleave="iconoMiPerfil = cambiarIcono(seleccionado, 1, iconosMiPerfil)" ng-src="{{ iconoMiPerfil }}">
                    </div>
                    <div class="opcion-menu" ng-class="{'selected-menu-item' : seleccionado == 1}">
                        Mi perfil
                    </div>
                </div>
                <div ui-sref="perfil.misMascotas"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-mouseover="iconoMisMascotas = iconosMisMascotas[1]" ng-mouseleave="iconoMisMascotas = cambiarIcono(seleccionado, 2, iconosMisMascotas)" ng-src="{{ iconoMisMascotas }}">
                    </div>
                    <div class="opcion-menu" ng-class="{'selected-menu-item' : seleccionado == 2}" class="margin-out">
                        Mis mascotas
                    </div>
                </div>
                <div ui-sref="perfil.activarAlerta"  ui-sref-opts="{reload: true}">
                    <div class="icono-menu">
                        <img ng-mouseover="iconoActivarAlerta = iconosActivarAlerta[1]" ng-mouseleave="iconoActivarAlerta = cambiarIcono(seleccionado, 3, iconosActivarAlerta)"  ng-src="{{ iconoActivarAlerta }}">
                    </div>
                    <div class="opcion-menu" ng-class="{'selected-menu-item' : seleccionado == 3}">
                        Activar alerta de mascota perdida
                    </div>
                </div>
                <div ui-sref="perfil.desactivarAlerta"  ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-mouseover="iconoDesactivarAlerta  = iconosDesactivarAlerta[1]" ng-mouseleave="iconoDesactivarAlerta = cambiarIcono(seleccionado, 4, iconosDesactivarAlerta)" ng-src="{{ iconoDesactivarAlerta }}">
                    </div>
                    <div class="opcion-menu" ng-class="{'selected-menu-item' : seleccionado == 4}">
                        Desactivar alerta de mascota perdida
                    </div>
                </div>
                <div ng-click="perfil.salir()" ui-sref-opts="{reload: true}" class="margin-out">
                    <div class="icono-menu">
                        <img ng-mouseover="iconoSalir  = iconosSalir[1]" ng-mouseleave="iconoSalir  = iconosSalir[0]" ng-src="{{ iconoSalir }}">
                    </div>
                    <div class="opcion-menu">
                        Cerrar Sesión
                    </div>
                </div>

            </div>
        </div><!--
        --><div  class="col s10 contenedor-perfil-interno fondo-blanco" id="contenedor-perfil-interno" ng-class="{'m11': perfil.menuColapsado, 'm8': !perfil.menuColapsado, 'l11': perfil.menuColapsado, 'l10': !perfil.menuColapsado}" style="min-height: calc(100% - 313px); min-height: -webkit-calc(100% - 313px);">
            <div id="hiddeninmobile" ui-view>


            </div>
            
        </div>
    
    </div>

</section>
