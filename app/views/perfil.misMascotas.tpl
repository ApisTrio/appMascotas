<section class="padding-top-30">

    <div class="row">
        <div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1 cubo-mascota padding-top-30 margin-bottom-30" ui-sref="perfil.misMascotasIndividual({idPlaca: mascota.codigo})" ng-repeat="mascota in misMascotas.mascotas">
            <div class="row">
                <div class="col s12 center-align">
                    <div class="center-align contenedor-foto-mascota">
                        <div class="circle foto-mascota" style="background-image:url({{misMascotas.apiDir.dominio}}{{misMascotas.apiDir.path}}{{misMascotas.apiDir.imagenes.mascotas}}{{mascota.foto}}); background-position: 100% 100%; background-size: cover;" ng-if="mascota.foto">
                        </div>
                        <div class="circle foto-mascota" style="background-image:url(assets/images/icons/foto_perfil.png); border: 1px solid black;" ng-if="!mascota.foto">
                        </div>
                        <img class="exclamacion-perdida" src="assets/images/icons/alerta_activada_mascota_perdida.png" ng-show="(mascota.perdida && !mascota.encontrado)">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 center-align">
                    <h4 class="titulo2 negrita interlineado20 c2 no-margin">{{mascota.nombre}}</h4>
                </div>
            </div>
            <div class="row">
                <div class="col s12 center-align white-space-normal">
                    <div class="titulo-info  white-space-normal">{{mascota.raza}}, {{mascota.edad}}</div>
                </div>
            </div>

            <div class="row c2">
                <div class="col s12 center-align">
                    <div class="placas-mascota">
                        <div class="placa-individual" ng-repeat-start="placa in mascota.placas | limitTo:3">
                            <img ng-src="assets/images/placas/{{placa.forma}}/{{placa.modelo}}"> {{placa.codigo}}
                        </div>
                        <div class="divisor-placas" ng-show="!$last" ng-repeat-end></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1 cubo-mascota padding-top-30 margin-bottom-30" ui-sref="perfil.misMascotasNueva">
            <div class="row">
                <div class="col s12 center-align">
                    <div class="center-align">
                        <img class="circle" width="200" src="assets/images/icons/agregar_nueva_mascota.png">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 center-align">
                    <div class="titulo-info">Agregar nueva mascota
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
