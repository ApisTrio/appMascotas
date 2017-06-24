<section class="mascotas-perdidas color-blanco">
    <div class="row">
        <div class="col s12">
            <h4 class="center-align">Mascotas perdidas</h4>
        </div>
    </div>
    <div class="row margin-out">
        <div class="col s12 m6 l3 xl2 margin-in pointer" ng-repeat="perdida in mascotasPerdidas.perdidas | limitTo: 12" ng-class="{'offset-m1': $first || ($index == 6) }">
            <div class="center-align">
                <div class="circle foto-mascota" style="background-image:url(/apiMascotas/public/images/mascotas/{{perdida.foto}}); background-position: 100% 100%; background-size: cover;">
                </div>
                <div class="circle foto-mascota" style="background-image:url(assets/images/icons/foto_perfil.png); border:1px solid black" ng-if="!perdida.foto">
                </div>
            </div>
            <div class="center-align negrita">
                <div class="titulo2">{{perdida.nombre}}</div>
                <div class="texto-pequeno">{{mascotasPerdidas.formatear(perdida.edad)}}</div>
            </div>
        </div>
        <div class="col s12 margin-in" ng-if="!mascotasPerdidas.perdidas.length">
            <div class="center-align">
                <div class="titulo2">¡Excelente!</div>
                <div class="titulo2">Ninguna mascota se ha perdido.</div>
            </div>
        </div>
    </div>
</section>

<section class="mascotas-encontradas padding-top-30">
    <div class="row">
        <div class="col s12">
            <h4 class="center-align">Mascotas encontradas</h4>
        </div>
    </div>
    <div class="row margin-out">
        <div class="col s12 m6 l3 xl2 margin-in pointer" ng-repeat="encontrada in mascotasPerdidas.encontradas | limitTo: 12" ng-class="{'offset-m1': $first || ($index == 6) }">
            <div class="center-align">
                <div class="circle foto-mascota" style="background-image:url(/apiMascotas/public/images/mascotas/{{encontrada.foto}});  background-position: 100% 100%; background-size: cover; " ng-if="encontrada.foto">
                </div>
                <div class="circle foto-mascota" style="background-image:url(assets/images/icons/foto_perfil.png); border: 1px solid black" ng-if="!encontrada.foto">
                </div>
            </div>
            <div class="center-align negrita">
                <div class="titulo2">{{encontrada.nombre}}</div>
                <div class="texto-pequeno">{{mascotasPerdidas.formatear(encontrada.edad)}}</div>
            </div>
        </div>
        <div class="col s12 margin-in" ng-if="!mascotasPerdidas.encontradas.length">
            <div class="center-align">
                <div class="titulo2">¡Oh!, ¡Inesperado!</div>
                <div class="titulo2">Ninguna mascota ha sido encontrada.</div>
            </div>
        </div>
    </div>
</section>
