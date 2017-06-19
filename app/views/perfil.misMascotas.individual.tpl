<section class="color-blanco header-mascota">
    <div class="row">
        <div class="col s12 center-align">
            <h4 class="negrita no-margin-bottom">{{misMascotasIndividual.datos.basico.nombre}}</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s12 center-align"> {{misMascotasIndividual.datos.basico.raza}}, {{misMascotasIndividual.datos.basico.edad}}</div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m4 center-align">
            <div class="center-align  contenedor-foto-mascota">
                <div class="circle foto-mascota" style="background-image:url({{misMascotasIndividual.apiDir.dominio}}{{misMascotasIndividual.apiDir.path}}{{misMascotasIndividual.apiDir.imagenes.mascotas}}{{misMascotasIndividual.datos.basico.foto}});" ng-if="misMascotasIndividual.datos.basico.foto">
                </div>
                <div class="circle foto-mascota" style="background-image:url(assets/images/icons/foto_perfil.png); border: 1px solid black" ng-if="!misMascotasIndividual.datos.basico.foto">
                </div>
                <img class="editar-foto-mascota" src="assets/images/icons/editar_foto_hover.png">
                <img class="exclamacion-perdida" src="assets/images/icons/alerta_activada_mascota_perdida.png" ng-show="(misMascotasIndividual.datos.basico.perdida && !misMascotasIndividual.datos.basico.encontrado)">
            </div>
        </div>
    </div>


    <div class="row c2">

        <div class="col s12 m12 l6 offset-l3 center-align">
            <div class="placas-mascota">
                <div class="placa-individual" ng-repeat-start="placa in misMascotasIndividual.datos.placas | limitTo:3">
                    <img ng-src="assets/images/placas/{{placa.forma}}/{{placa.modelo}}"> {{placa.codigo}}
                </div>
                <div class="divisor-placas" ng-show="!$last" ng-repeat-end></div>
            </div>
        </div>
        <div class="col s12 m12 l3 center-align">
            <div class="agregar-placa-perfil" ui-sref="perfil.misMascotasPlaca">
                <img src="assets/images/forms/agregar_placa.png"> Agregar placa
            </div>
        </div>
    </div>
    <div class="row  no-margin-bottom c2 negrita" ng-if="(misMascotasIndividual.datos.basico.perdida && !misMascotasIndividual.datos.basico.encontrado)">
        <div class="col s12 center-align">
            <div class="desactivar-alarma-perfil" ui-sref="perfil.desactivarAlerta">
                <img src="assets/images/icons/alerta.png"> Desactivar alerta de mascota perdida
            </div>
        </div>
    </div>
</section>

<!---- INFORMACION BASICA ---->
<section class="informacion-mascota" ng-switch="misMascotasIndividual.editar.basico">

    <div class="row">
        <div class="col s10 m8 offset-m1">
            <h4 class="titulo2 negrita interlineado20 c2">Información básica</h4>
        </div>
        <div class="col s2 m2 offset-m1">
            <img class="editar-perfil" src="assets/images/icons/editar.png" ng-click="misMascotasIndividual.editar.basico = true" ng-show="!misMascotasIndividual.editar.basico">
        </div>
    </div>

    <!--NORMAL-->
    <div ng-switch-default>
        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Nombre completo</div>
                <div class="contenido-info">{{misMascotasIndividual.datos.basico.nombre}}</div>
                <div class="divider responsive"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="titulo-info">Fecha de nacimiento</div>
                <div class="contenido-info">{{misMascotasIndividual.datos.basico.fecha_nacimiento}}</div>
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Género</div>
                <div class="contenido-info">{{misMascotasIndividual.datos.basico.genero}}</div>
                <div class="divider responsive"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="titulo-info">Raza</div>
                <div class="contenido-info">{{misMascotasIndividual.datos.basico.raza}}</div>
                <div class="divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4 offset-m1">
                <div class="titulo-info">Número de chip</div>
                <div class="contenido-info" ng-if="misMascotasIndividual.datos.basico.chip">{{misMascotasIndividual.datos.basico.chip}}</div>
                <div class="contenido-info" ng-if="!misMascotasIndividual.datos.basico.chip">...</div>
                <div class="divider responsive"></div>
            </div>
            <div class="col s12 m4 offset-m2">
                <div class="titulo-info">Peso</div>
                <div class="contenido-info" ng-if="misMascotasIndividual.datos.basico.peso">{{misMascotasIndividual.datos.basico.peso}}</div>
                <div class="contenido-info" ng-if="!misMascotasIndividual.datos.basico.peso">...</div>
                <div class="divider"></div>
            </div>
        </div>

        <div class="row no-margin-bottom">
            <div class="col s12 m10 offset-m1">
                <div class="titulo-info">Comentarios</div>
                <div class="contenido-info" ng-if="misMascotasIndividual.datos.basico.comentarios">{{misMascotasIndividual.datos.basico.comentarios}}</div>
                <div class="contenido-info" ng-if="!misMascotasIndividual.datos.basico.comentarios">...</div>
                <div class="divider"></div>
            </div>
        </div>
    </div>

    <!--EDITAR-->
    <div ng-switch-when="true">
        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Nombre completo *</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.nombre" placeholder="Nombre completo" type="text">
                    </div>
                </div>
            </div>

            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Fecha de nacimiento *</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.fecha_nacimiento" placeholder="Nombre completo" type="text">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Género *</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.genero" placeholder="Género" type="text">
                    </div>
                </div>
            </div>

            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Raza *</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.raza" placeholder="Raza" type="text">
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Número de chip</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.chip" placeholder="Género" type="text">
                    </div>
                </div>
            </div>

            <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Peso</div>
                    <div class="input-formulario">
                        <input ng-model="misMascotasIndividual.datos.basico.peso" placeholder="Peso" type="text">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m10 offset-m1">
                <div class="margin-bottom-30">
                    <div class="campo-formulario">Comentarios</div>
                    <div class="input-formulario">
                        <textarea ng-model="misMascotasIndividual.datos.basico.comentarios" placeholder="Comentarios" rows="3"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>

        </div>
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m4 offset-m4 botones-formulario">
                <button class="boton-neutro" ng-click="misMascotasIndividual.editar.basico = false">Cancelar</button>
                <button class="boton-verde">GUARDAR</button>
            </div>
        </div>


    </div>
</section>
<!---- INFORMACION MEDICA ---->
<section class="informacion-mascota">
    <div class="row">
        <div class="col s10 m8 offset-m1">
            <h4 class="titulo2 negrita interlineado20 c2">Información médica</h4>
        </div>
    </div>

    <div class="row">
        <div class="col s10 m8 offset-m1">
            <div class="titulo-info c2">Vacunas</div>
        </div>
        <div class="col s2 m2 offset-m1">
            <img class="editar-perfil" src="assets/images/icons/editar.png" ng-click="misMascotasIndividual.editar.vacunas = true" ng-show="!misMascotasIndividual.editar.vacunas">
        </div>
    </div>


    <div ng-switch="misMascotasIndividual.editar.vacunas">
        <!--VACUNAS NORMAL -->
        <div ng-switch-default>
            <div class="row">
                <div class="col s12 m10 offset-m1 l4 offset-l1">
                    <div class="titulo-info">Fecha de la última vacuna</div>
                    <div class="row fechas-vacunas" ng-repeat="vacuna in misMascotasIndividual.datos.vacunas">
                        <div class="col s6">{{vacuna.vacuna}}</div>
                        <div class="col s6">{{vacuna.fecha}}</div>
                    </div>
                    <div class="row fechas-vacunas" ng-if="!misMascotasIndividual.datos.vacunas.length">
                        <div class="col s12">...</div>
                    </div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m10 offset-m1 l4 offset-l2">
                    <div class="titulo-info">Recordatorio</div>
                    <div class="row fechas-vacunas" ng-repeat="vacuna in misMascotasIndividual.datos.vacunas">
                        <div class="col s6">{{vacuna.vacuna}}</div>
                        <div class="col s6" ng-if="vacuna.fecha_recordatorio">{{vacuna.fecha_recordatorio}}</div>
                        <div class="col s6" ng-if="!vacuna.fecha_recordatorio">...</div>
                    </div>
                    <div class="row fechas-vacunas" ng-if="!misMascotasIndividual.datos.vacunas.length">
                        <div class="col s12">...</div>
                    </div>
                    <div class="divider"></div>
                </div>
            </div>
        </div>
        <!--VACUNAS EDITAR-->
        <div ng-switch-when="true" ng-form="vacunasForm">
            <div class="row">
                <div class="col s11 offset-s1 m3 offset-m1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Fecha de la última vacuna</div>
                        <div class="input-formulario" ng-repeat="vacuna in misMascotasIndividual.datos.vacunas">
                            <input type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m3">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario escondido">x</div>
                        <div class="input-formulario" ng-repeat="vacuna in misMascotasIndividual.datos.vacunas">
                            <input type="text">
                            <img class="eliminar-vacuna-boton" src="assets/images/icons/eliminar.png">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m3">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Recordatorio</div>
                        <div class="input-formulario" ng-repeat="vacuna in misMascotasIndividual.datos.vacunas">
                            <input type="text">
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col s12 m10 offset-m1">
                    <div class="agregar-placa-perfil">
                        <img src="assets/images/forms/agregar_placa.png" ng-click="misMascotasIndividual.datos.vacunas.push({})"> Agregar Vacuna
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col s10 offset-s1 m4 offset-m4 botones-formulario">
                    <button class="boton-neutro" ng-click="misMascotasIndividual.editar.basico = false">Cancelar</button>
                    <button class="boton-verde">GUARDAR</button>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col s10 m8 offset-m1">
            <div class="titulo-info c2">Información médica adicional</div>
        </div>
        <div class="col s2 m2 offset-m1">
            <img class="editar-perfil" src="assets/images/icons/editar.png" ng-click="misMascotasIndividual.editar.medico = true" ng-show="!misMascotasIndividual.editar.medico">
        </div>
    </div>
    <div ng-switch="misMascotasIndividual.editar.medico">
        <!--MEDICO NORMAL -->
        <div ng-switch-default>
            <div class="row">
                <div class="col s12 m10 offset-m1 l4 offset-l1">
                    <div class="titulo-info">Fecha de la última desparasitación interna</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_i">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_i}}</div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_i">...</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m10 offset-m1 l4 offset-l2">
                    <div class="titulo-info">Fecha de la última desparasitación externa</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_e">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_e}}</div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_e">...</div>
                    <div class="divider"></div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Centro Veterinario</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].centro">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].centro}}</div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].centro">...</div>
                    <div class="divider responsive"></div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Veterinario</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].veterinario">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].veterinario}}</div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].veterinario">...</div>
                    <div class="divider"></div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m4 offset-m1">
                    <div class="titulo-info">Dirección</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].direccion_veterinario">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].direccion_veterinario}}</div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].direccion_veterinario">...</div>
                </div>
                <div class="col s12 m4 offset-m2">
                    <div class="titulo-info">Teléfono</div>
                    <div class="contenido-info" ng-if="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].telefono_veterinario"><a ng-href="tel:{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].telefono_veterinario}}">{{misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].telefono_veterinario}}</a></div>
                    <div class="contenido-info" ng-if="!misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].telefono_veterinario">...</div>
                </div>
            </div>
            <div class="row no-margin-bottom">
                <div class="col s12 m10 offset-m1">
                    <div class="divider"></div>
                </div>
            </div>
        </div>
        <!-- MEDICO EDITAR -->
        <div ng-switch-when="true">
            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Fecha de la última desparasitación interna</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_i" placeholder="Desparasitación Interna" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Fecha de la última desparasitación externa</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].desparasitacion_e" placeholder="Desparasitación Externa" type="text">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Centro Veterinario</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].centro" placeholder="Centro Veterinario" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Veterinario</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].veterinario" placeholder="Veterinario" type="text">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Dirección</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].direccion_veterinario" placeholder="Dirección" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Teléfono</div>
                        <div class="input-formulario">
                            <input ng-model="misMascotasIndividual.datos.medicos[misMascotasIndividual.datos.medicos.length - 1].telefono_veterinario" placeholder="Teléfono" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s10 offset-s1">
                    <div class="divider"></div>
                </div>

            </div>
            <div class="row">
                <div class="col s10 offset-s1 m10 offset-m1">
                    * Dato requerido
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1 m4 offset-m4 botones-formulario">
                    <button class="boton-neutro" ng-click="misMascotasIndividual.editar.medico = false">Cancelar</button>
                    <button class="boton-verde">GUARDAR</button>
                </div>
            </div>
        </div>
    </div>

</section>

<!---- INFORMACION DE MIS DUEÑOS ---->
<section class="informacion-mascota" ng-switch="misMascotasIndividual.editar.dueno">
    <div class="row">
        <div class="col s10 m8 offset-m1">
            <h4 class="titulo2 negrita interlineado20 c2">Información de mi(s) dueño(s)</h4>
        </div>
        <div class="col s2 m2 offset-m1">
            <img class="editar-perfil" src="assets/images/icons/editar.png" ng-click="misMascotasIndividual.editar.dueno = true" ng-show="!misMascotasIndividual.editar.dueno">
        </div>
    </div>
    <div class="col s10 m8 offset-m1">
        <div class="titulo-info c2">Dueño principal</div>
    </div>
    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info">Nombre completo</div>
            <div class="contenido-info">{{misMascotasIndividual.datos.duenos[0].nombre}} {{misMascotasIndividual.datos.duenos[0].apellido}}</div>
            <div class="divider responsive"></div>
        </div>
        <div class="col s12 m4 offset-m2">
            <div class="titulo-info">Fecha de nacimiento</div>
            <div class="contenido-info">{{misMascotasIndividual.datos.duenos[0].nacimiento}}</div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info">Teléfonos de contacto</div>
            <div class="contenido-info"><a ng-href="tel:{{misMascotasIndividual.datos.duenos[0].telefono}}">{{misMascotasIndividual.datos.duenos[0].telefono}}</a></div>
            <div class="divider responsive"></div>
        </div>
        <div class="col s12 m4 offset-m2">
            <div class="titulo-info">E-mail</div>
            <div class="contenido-info"><a ng-href="mailto:{{misMascotasIndividual.datos.duenos[0].email}}">{{misMascotasIndividual.datos.duenos[0].email}}</a></div>
            <div class="divider"></div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m4 offset-m1">
            <div class="titulo-info">Dirección</div>
            <div class="contenido-info" ng-if="misMascotasIndividual.datos.duenos.direccion">{{misMascotasIndividual.datos.duenos[0].direccion}},{{misMascotasIndividual.datos.duenos[0].codigo_postal}}, {{misMascotasIndividual.datos.duenos[0].ciudad}}, {{misMascotasIndividual.datos.duenos[0].provincia}}, {{misMascotasIndividual.datos.duenos[0].pais}} </div>
            <div class="contenido-info" ng-if="!misMascotasIndividual.datos.duenos[0].direccion">{{misMascotasIndividual.datos.duenos[0].codigo_postal}}, {{misMascotasIndividual.datos.duenos[0].ciudad}}, {{misMascotasIndividual.datos.duenos[0].provincia}}, {{misMascotasIndividual.datos.duenos[0].pais}} </div>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m10 offset-m1">
            <div class="divider"></div>
        </div>
    </div>

    <!-- DUEÑOS NORMAL-->
    <div ng-switch-default>
        <div class="col s10 m8 offset-m1" ng-show="misMascotasIndividual.datos.duenos.length > 1">
            <div class="titulo-info c2">Mis otros dueños</div>
        </div>
        <div class="row" ng-repeat-start="dueno in misMascotasIndividual.datos.duenos | limitTo: misMascotasIndividual.datos.duenos.length - 1 : 1">
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
    </div>
    <div ng-switch-when="true">
        <div class="col s10 m8 offset-m1" >
            <div class="titulo-info c2">Mis otros dueños</div>
        </div>
        <div ng-repeat="dueno in misMascotasIndividual.datos.duenos | limitTo: misMascotasIndividual.datos.duenos.length - 1 : 1">
            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Nombre</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.nombre" placeholder="Nombre" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Apellido</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.apellido" placeholder="Apellido" type="text">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Fecha de nacimiento</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.nacimiento" placeholder="Fecha de nacimiento" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Teléfonos de contacto</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.telefono" placeholder="Teléfonos de contacto" type="text">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Dirección</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.direccion" placeholder="Dirección" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">País</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.pais" placeholder="País" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Provincia</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.provincia" placeholder="Provincia" type="text">
                        </div>
                    </div>
                </div>

                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l2">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Ciudad</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.ciudad" placeholder="Ciudad" type="text">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s11 offset-s1 m5 offset-m1 l4 offset-l1">
                    <div class="margin-bottom-30">
                        <div class="campo-formulario">Código Postal</div>
                        <div class="input-formulario">
                            <input ng-model="dueno.codigo_postal" placeholder="Provincia" type="text">
                        </div>
                    </div>
                </div>
                <div class="col s11 offset-s1 m4 offset-m2">
                    <div class="margin-bottom-30">
                        <button class="boton-neutro" ng-click="misMascotasIndividual.datos.duenos.splice($index, 1)">Eliminar este contacto</button>
                    </div>
                </div>
                
            </div>
            <div class="row">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>

        </div>
        </div>
        <div class="row">
            <div class="col s12 m10 offset-m1">
                <div class="agregar-placa-perfil">
                    <img src="assets/images/forms/agregar_placa.png" ng-click="misMascotasIndividual.datos.duenos.push({})"> Agregar Dueño
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col s10 offset-s1">
                <div class="divider"></div>
            </div>

        </div>
        <div class="row">
            <div class="col s10 offset-s1 m10 offset-m1">
                * Dato requerido
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m4 offset-m4 botones-formulario">
                <button class="boton-neutro" ng-click="misMascotasIndividual.editar.medico = false">Cancelar</button>
                <button class="boton-verde">GUARDAR</button>
            </div>
        </div>

    </div>

</section>

<section>
    <div class="row">
        <div class="col s10 offset-s1">
            <div ui-sref="perfil.misMascotasEliminar({idPlaca: misMascotasIndividual.datos.basico.codigo})" class="eliminar-pequeno">Dar de baja a {{misMascotasIndividual.datos.basico.nombre}}</div>
        </div>
    </div>

</section>
