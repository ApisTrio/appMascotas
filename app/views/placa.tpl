<section ng-switch="placa.pasos" ng-init="placa.pasos = 1">
    <style type="text/css">
        md-dialog {
            min-height: 90%;
            width: 50%;
            border-radius: 0;
        }

        @media only screen and (max-width : 767px){
            md-dialog {
                min-height: 90%;
                width: 100%;
                border-radius: 0;
            }
        }
    </style>
    <div ng-switch-default>
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
                        <div class="circle foto-mascota" style="background-image:url({{placa.apiDir.dominio}}{{placa.apiDir.path}}{{placa.apiDir.imagenes.mascotas}}{{placa.datos.basico.foto}});" ng-if="placa.datos.basico.foto">
                        </div>
                        <div class="circle foto-mascota" style="background-image:url(assets/images/icons/foto_perfil.png); border: 1px solid black" ng-if="!placa.datos.basico.foto">
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
                <div class="col s12 m10 offset-m1">
                    <h4 class="titulo2 negrita interlineado20 c2">Información básica</h4>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Nombre completo</div>
                    <div class="contenido-info">{{placa.datos.basico.nombre}}</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Fecha de nacimiento</div>
                    <div class="contenido-info">{{placa.datos.basico.fecha_nacimiento}}</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Género</div>
                    <div class="contenido-info">{{placa.datos.basico.genero}}</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Raza</div>
                    <div class="contenido-info">{{placa.datos.basico.raza}}</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Número de chip</div>
                    <div class="contenido-info" ng-if="placa.datos.basico.chip">{{placa.datos.basico.chip}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.basico.chip">...</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Peso</div>
                    <div class="contenido-info" ng-if="placa.datos.basico.peso">{{placa.datos.basico.peso}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.basico.peso">...</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row no-margin-bottom">
                <div class="col s12 m10 offset-m1">
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
                <div class="col s12 m10 offset-m1">
                    <h4 class="titulo2 negrita interlineado20 c2">Información médica</h4>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Fecha de la última vacuna</div>
                    <div class="row fechas-vacunas" ng-repeat="vacuna in placa.datos.vacunas">
                        <div class="col s6">{{vacuna.vacuna}}</div>
                        <div class="col s6">{{vacuna.fecha}}</div>
                    </div>
                    <div class="row fechas-vacunas" ng-if="!placa.datos.vacunas.length">
                        <div class="col s12">...</div>
                    </div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
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
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Fecha de la última desparasitación interna</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.desparasitacion_i">{{placa.datos.medicos.desparasitacion_i}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.desparasitacion_i">...</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Fecha de la última desparasitación externa</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.desparasitacion_e">{{placa.datos.medicos.desparasitacion_e}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.desparasitacion_e">...</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Centro Veterinario</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.centro">{{placa.datos.medicos.centro}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.centro">...</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Veterinario</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.veterinario">{{placa.datos.medicos.veterinario}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.veterinario">...</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Dirección</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.direccion_veterinario">{{placa.datos.medicos.direccion_veterinario}}</div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.direccion_veterinario">...</div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Teléfono</div>
                    <div class="contenido-info" ng-if="placa.datos.medicos.telefono_veterinario"><a ng-href="tel:{{placa.datos.medicos.telefono_veterinario}}">{{placa.datos.medicos.telefono_veterinario}}</a></div>
                    <div class="contenido-info" ng-if="!placa.datos.medicos.telefono_veterinario">...</div>
                </div>
            </div>

            <div class="row no-margin-bottom">
                <div class="col s12 m10 offset-m1">
                    <div class="divider"></div>
                </div>
            </div>
        </section>

        <!---- INFORMACION DE MIS DUEÑOS ---->
        <section class="informacion-mascota">
            <div class="row">
                <div class="col s12 m10 offset-m1">
                    <h4 class="titulo2 negrita interlineado20 c2">Información de mi(s) dueño(s)</h4>
                </div>
            </div>

            <div class="row" ng-repeat-start="dueno in placa.datos.duenos">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Nombre completo</div>
                    <div class="contenido-info">{{dueno.nombre}} {{dueno.apellido}}</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Fecha de nacimiento</div>
                    <div class="contenido-info">{{dueno.nacimiento}}</div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Teléfonos de contacto</div>
                    <div class="contenido-info"><a ng-href="tel:{{dueno.telefono}}">{{dueno.telefono}}</a></div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">E-mail</div>
                    <div class="contenido-info"><a ng-href="mailto:{{dueno.email}}">{{dueno.email}}</a></div>
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Dirección</div>
                    <div class="contenido-info" ng-if="dueno.direccion">{{dueno.direccion}},{{dueno.codigo_postal}}, {{dueno.ciudad}}, {{dueno.provincia}}, {{dueno.pais}} </div>
                    <div class="contenido-info" ng-if="!dueno.direccion">{{dueno.codigo_postal}}, {{dueno.ciudad}}, {{dueno.provincia}}, {{dueno.pais}} </div>
                </div>
            </div>

            <div class="row" ng-repeat-end>
                <div class="col s12 m10 offset-m1">
                    <div class="divider"></div>
                </div>
            </div>

            <div class="row">
                <div class="col s12 center-align">
                    <button class="boton-verde" ng-click="placa.mostrarModal($event, placa.datos.basico.idMascota)">CONTACTAR CON EL DUEÑO</button>
                </div>
            </div>
        </section>

    </div>

    <div ng-switch-when="2" class="padding-top-30">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm.png">
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h4 class="titulo2 negrita c2" style="line-height: 28px">¡GRACIAS POR HABERTE PUEDO EN CONTACTO CON {{placa.datos.basico.nombre}} TU MENSAJE HA SIDO ENVIADO CON ÉXITO</h4>
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                Esperamos que {{placa.datos.duenos[0].nombre}} se ponga en contacto contigo inmediatamente. Si lo deseas tambien puedes contactarlo por teléfono.
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
                <a ng-href="tel:{{placa.datos.duenos[0].telefono}}"><button class="boton-verde">LLAMARLO</button></a>
            </div>
        </div>
    </div>

</section>
