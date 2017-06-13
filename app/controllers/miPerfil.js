angular.module("mascotas")

.controller("miPerfilController", ["usuariosService",function (usuariosService) {
    
    var cdx = this;
    
    cdx.datos = usuariosService.autorizado();
    
    console.log(cdx.datos)
    
}])
