angular.module("mascotas")

.controller("footerController", ["$scope", function ($scope) {

    var cdx = this;

    cdx.date = new Date();
    
    cdx.cookies = localStorage.getItem("cdxCookies");
    
    
    cdx.aceptarCookies = function(){
        
        
        localStorage.setItem("cdxCookies", "true");
        cdx.cookies = localStorage.getItem("cdxCookies");
        
    }
    
    
}])