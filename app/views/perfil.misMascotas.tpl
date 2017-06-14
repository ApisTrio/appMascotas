<section class="padding-top-30">

    <div class="row">
        <div class="col s12 m4 offset-m1 cubo-mascota padding-top-30 margin-bottom-30" ng-repeat="mascota in misMascotas.mascotas">
            <div class="row">
                <div class="col s12 center-align">
                    <div class="center-align">
                        <img class="circle" src="assets/images/tobi.png" ui-sref="perfil.misMascotasIndividual({idPlaca: mascota.codigo})">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 center-align">
                    <h4 class="titulo2 negrita interlineado20 c2 no-margin">{{mascota.nombre}}</h4>
                </div>
            </div>
            <div class="row">
                <div class="col s12 center-align">
                    <div class="titulo-info">{{mascota.raza}}, {{mascota.edad}}</div>
                </div>
            </div>
        </div>

        <div class="col s12 m4 offset-m1 cubo-mascota padding-top-30 margin-bottom-30" ui-sref="perfil.misMascotasNueva">
            <div class="row">
                <div class="col s12 center-align">
                    <div class="center-align">
                        <img class="circle" src="assets/images/icons/agregar_nueva_mascota.png">
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
