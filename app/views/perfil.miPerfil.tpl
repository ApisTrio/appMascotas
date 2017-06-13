<!---- INFORMACION BASICA ---->
<section class="padding-top-30">
    <div class="row no-margin-bottom">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2">Mi Perfil</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1">
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info c2">Información Básica</div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Nombre</div>
            <div class="contenido-info">{{miPerfil.datos.dueno.nombre}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Apellido</div>
            <div class="contenido-info">{{miPerfil.datos.dueno.apellido}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">E-mail</div>
            <div class="contenido-info">{{miPerfil.datos.usuario.emailU}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Nombre de usuario</div>
            <div class="contenido-info">{{miPerfil.datos.usuario.usuario}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Fecha de nacimiento</div>
            <div class="contenido-info">{{miPerfil.datos.dueno.nacimiento}}</div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Sexo</div>
            <div class="contenido-info" ng-if="miPerfil.datos.usuario.sexo">{{miPerfil.datos.usuario.sexo}}</div>
            <div class="contenido-info" ng-if="!miPerfil.datos.usuario.sexo">...</div>
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1">
            <div class="divider"></div>
        </div>
    </div>

</section>
<!---- INFORMACION DE CONTACTO---->
<section>
    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info c2">Información de Contacto</div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Teléfono de contacto</div>
            <div class="contenido-info">{{miPerfil.datos.dueno.telefono}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">E-mail</div>
            <div class="contenido-info">{{miPerfil.datos.dueno.email}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Dirección</div>
            <div class="contenido-info" ng-if="miPerfil.datos.dueno.direccion">{{miPerfil.datos.dueno.direccion}}, {{miPerfil.datos.dueno.codigo_postal}}, {{miPerfil.datos.dueno.ciudad}}, {{miPerfil.datos.dueno.provincia}}, {{miPerfil.datos.dueno.pais}}</div>
            <div class="contenido-info" ng-if="!miPerfil.datos.dueno.direccion"> {{miPerfil.datos.dueno.codigo_postal}}, {{miPerfil.datos.dueno.ciudad}}, {{miPerfil.datos.dueno.provincia}}, {{miPerfil.datos.dueno.pais}}</div>
            
        </div>
    </div>

    <div class="row">
        <div class="col s10 offset-s1">
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 center-align">
            <button class="boton-verde-negativo">EDITAR</button>
        </div>
    </div>
</section>
<section>
    <div class="row">
        <div class="col s12 offset-s1">
            <div ui-sref="perfil.eliminarCuenta">Eliminar cuenta</div>
        </div>
    </div>

</section>
