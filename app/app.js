angular.module("mascotas", ["ngMessages", "ui.router", "ngAnimate", "ngMaterial", "ui.materialize","uiSwitch"])

.config(["$stateProvider", "$locationProvider", function ($stateProvider, $locationProvider) {

    $locationProvider.html5Mode(true);
    $locationProvider.hashPrefix('!');

    $stateProvider

    .state({
        name: 'landing',
        url: '/',
        templateUrl: 'app/views/landing.tpl',
        controller: 'landingController as landing'
    })

    .state({
        name: 'admin',
        url: '/admin',
        templateUrl: 'app/views/admin.tpl',
        controller: 'adminController as admin'
    })

    .state({
        name: 'registroUsuario',
        url: '/registro',
        templateUrl: 'app/views/registroUsuario.tpl',
        controller: 'registroController as registro'
    })

    ////////////////////////////////////
    /////Mascotas Perdidas e hijos//////
    ////////////////////////////////////

    .state({
        name: 'mascotasPerdidas',
        url: '/mascotas-perdidas',
        templateUrl: 'app/views/mascotasPerdidas.tpl',
        controller: 'mascotasPerdidasController as mascotasPerdidas'

    })

    .state({

        name: 'mascotasPerdidas.individual',
        url: '/:id',
        templateUrl: 'app/views/mascotasPerdidas.individual.tpl',
        controller: 'mascotasPerdidasIndividualController as mascotasPerdidasIndividual'

    })



    ////////////////////////////
    //////Perfil e hijos////////
    ////////////////////////////

    .state({
        name: 'perfil',
        url: '/perfil',
        abstract: false,
        templateUrl: 'app/views/perfil.tpl',
        controller: 'perfilController as perfil'

    })

    .state({
        name: 'perfil.mascotaPerdida',
        url: '/mascota-perdida',
        templateUrl: 'app/views/perfil.mascotaPerdida.tpl',
        controller: 'mascotaPerdidaController as mascotaPerdida'
    })

    .state({
        name: 'perfil.activarAlerta',
        url: '/activar-alerta',
        templateUrl: 'app/views/perfil.activarAlerta.tpl',
        controller: 'activarAlertaController as activarAlerta'
    })

    .state({
        name: 'perfil.misMascotas',
        url: '/mis-mascotas',
        templateUrl: 'app/views/perfil.misMascotas.tpl',
        controller: 'misMascotasController as misMascotas'

    })

    .state({
        name: 'perfil.misMascotasIndividual',
        url: '/mis-mascotas/:id',
        templateUrl: 'app/views/perfil.misMascotas.individual.tpl',
        controller: 'misMascotasIndividualController as misMascotasIndividual'

    })

    ////////////////////////////
    ////////// Login ///////////
    ////////////////////////////

    .state({
        name: 'login',
        url: '/login',
        templateUrl: 'app/views/login.tpl',
        controller: 'loginController as login'
    })

    ////////////////////////////
    /// Recordar Usuario ///////
    ////////////////////////////   

    .state({
        name: 'recordarUsuario',
        url: '/recordar-usuario',
        templateUrl: 'app/views/recordarUsuario.tpl',
        controller: 'recordarUsuarioController as recordarUsuario'
    })

    ////////////////////////////
    /// Cambiar contraseña ///////
    ////////////////////////////   

    .state({
        name: 'cambiarContrasena',
        url: '/cambiar-contrasena',
        templateUrl: 'app/views/cambiarContrasena.tpl',
        controller: 'cambiarContrasenaController as cambiarContrasena'
    })

    ////////////////////////////
    ////////// Placa ///////////
    ////////////////////////////

    .state({
        name: 'placa',
        url: '/{idPlaca: [0-9a-zA-Z]{4,6}}',
        templateUrl: 'app/views/placa.tpl',
        controller: 'placaController as placa'
    });



    //$locationProvider.html5Mode(true);


}])
