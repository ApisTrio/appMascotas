<section class="color-blanco header-mascota">
    <div class="row">
        <div class="col s12 center-align">
            <h4 class="negrita no-margin-bottom">{{placa.datos.basico.nombre}}</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s12 center-align"> {{placa.datos.basico.raza}}, {{placa.formatear(placa.datos.basico.edad)}}</div>
    </div>

    <div class="row">
        <div class="col s12 center-align">
            <div class="center-align">
                <div class="circle foto-mascota" style="background-image:url(/apiMascotas/public/images/mascotas/{{placa.datos.basico.foto}});">
                </div>
            </div>
        </div>
    </div>

    <div class="row no-margin-bottom">
        <div class="col s12 m4 offset-m4 center-align c2" ng-if="placa.datos.basico.comentarios"> {{placa.datos.basico.comentarios}}</div>
        <div class="col s12 m4 offset-m4 center-align c2" ng-if="!placa.datos.basico.comentarios"> ... </div>
    </div>
</section>

<!---- INFORMACION BASICA ---->
<section class="informacion-mascota">
    <div class="row">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2">Información básica</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Nombre completo</div>
            <div class="contenido-info">{{placa.datos.basico.nombre}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Fecha de nacimiento</div>
            <div class="contenido-info">{{placa.datos.basico.fecha_nacimiento}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Género</div>
            <div class="contenido-info">{{placa.datos.basico.genero}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Raza</div>
            <div class="contenido-info">{{placa.datos.basico.raza}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Número de chip</div>
            <div class="contenido-info" ng-if="placa.datos.basico.chip">{{placa.datos.basico.chip}}</div>
            <div class="contenido-info" ng-if="!placa.datos.basico.chip">...</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Peso</div>
            <div class="contenido-info" ng-if="placa.datos.basico.peso">{{placa.datos.basico.peso}}</div>
            <div class="contenido-info" ng-if="!placa.datos.basico.peso">...</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row no-margin-bottom" >
        <div class="col s10 offset-s1">
            <div class="titulo-info">Comentarios</div>
            <div class="contenido-info" ng-if="placa.datos.basico.comentarios">{{placa.datos.basico.comentarios}}</div>
            <div class="contenido-info" ng-if="!placa.datos.basico.comentarios">...</div>
            <div class="divider"></div>
        </div>
    </div>
    
</section>
<!---- INFORMACION MEDICA ---->
<section class="informacion-mascota">
    <div class="row">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2">Información médica</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Fecha de la última vacuna</div>
            <div class="row fechas-vacunas" ng-repeat="vacuna in placa.datos.vacunas">
                <div class="col s6">{{vacuna.vacuna}}</div>
                <div class="col s6">{{vacuna.fecha}}</div>
            </div>
            <div class="row fechas-vacunas" ng-if="!placa.datos.vacunas.length">
                <div class="col s12">...</div>
            </div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Recordatorio</div>
            <div class="row fechas-vacunas" ng-repeat="vacuna in placa.datos.vacunas">
                <div class="col s6">{{vacuna.vacuna}}</div>
                <div class="col s6" ng-if="vacuna.fecha_recordatorio">{{vacuna.fecha_recordatorio}}</div>
                <div class="col s6" ng-if="!vacuna.fecha_recordatorio">...</div>
            </div>
            <div class="row fechas-vacunas" ng-if="!placa.datos.vacunas.length">
                <div class="col s12">...</div>
            </div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Fecha de la última desparasitación interna</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_i">{{placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_i}}</div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_i">...</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Fecha de la última desparasitación externa</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_e">{{placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_e}}</div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].desparasitacion_e">...</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Centro Veterinario</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].centro">{{placa.datos.medicos[placa.datos.medicos.length - 1].centro}}</div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].centro">...</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Veterinario</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].veterinario">{{placa.datos.medicos[placa.datos.medicos.length - 1].veterinario}}</div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].veterinario">...</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Dirección</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].direccion_veterinario">{{placa.datos.medicos[placa.datos.medicos.length - 1].direccion_veterinario}}</div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].direccion_veterinario">...</div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Teléfono</div>
            <div class="contenido-info" ng-if="placa.datos.medicos[placa.datos.medicos.length - 1].telefono_veterinario"><a ng-href="tel:{{placa.datos.medicos[placa.datos.medicos.length - 1].telefono_veterinario}}">{{placa.datos.medicos[placa.datos.medicos.length - 1].telefono_veterinario}}</a></div>
            <div class="contenido-info" ng-if="!placa.datos.medicos[placa.datos.medicos.length - 1].telefono_veterinario">...</div>
        </div>
    </div>

    <div class="row no-margin-bottom">
        <div class="col s10 offset-s1">
            <div class="divider"></div>
        </div>
    </div>
</section>

<!---- INFORMACION DE MIS DUEÑOS ---->
<section class="informacion-mascota">
    <div class="row">
        <div class="col s10 offset-s1">
            <h4 class="titulo2 negrita interlineado20 c2">Información de mi(s) dueño(s)</h4>
        </div>
    </div>

    <div class="row" ng-repeat-start="dueno in placa.datos.duenos">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Nombre completo</div>
            <div class="contenido-info">{{dueno.nombre}} {{dueno.apellido}}</div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">Fecha de nacimiento</div>
            <div class="contenido-info">{{dueno.nacimiento}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Teléfonos de contacto</div>
            <div class="contenido-info"><a ng-href="tel:{{dueno.telefono}}">{{dueno.telefono}}</a></div>
            <div class="divider"></div>
        </div>
        <div class="col s4 offset-s2">
            <div class="titulo-info">E-mail</div>
            <div class="contenido-info"><a ng-href="mailto:{{dueno.email}}">{{dueno.email}}</a></div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s4 offset-s1">
            <div class="titulo-info">Dirección</div>
            <div class="contenido-info" ng-if="dueno.direccion">{{dueno.direccion}},{{dueno.codigo_postal}}, {{dueno.ciudad}}, {{dueno.provincia}}, {{dueno.pais}} </div>
            <div class="contenido-info" ng-if="!dueno.direccion">{{dueno.codigo_postal}}, {{dueno.ciudad}}, {{dueno.provincia}}, {{dueno.pais}} </div>
        </div>
    </div>

    <div class="row" ng-repeat-end>
        <div class="col s10 offset-s1">
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 center-align">
            <button class="boton-verde">CONTACTAR CON EL DUEÑO</button>
        </div>
    </div>
</section>
