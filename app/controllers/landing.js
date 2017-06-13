angular.module("mascotas")

.controller("landingController", ["mascotasService",function (mascotasService) {
    
    var cdx = this;
    
    cdx.perdidas = [];
    
    mascotasService.perdidas().then(function(res){
        
        console.log(res);
        
    })
    

}])

