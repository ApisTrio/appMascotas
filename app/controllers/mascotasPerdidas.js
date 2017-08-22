angular.module("mascotas")

.controller("mascotasPerdidasController", ["mascotasService", "formatearFactory", "apiConstant", "isMobile", function (mascotasService, formatearFactory, apiConstant, isMobile) {

    var cdx = this;
    cdx.apiDir = apiConstant;
    cdx.perdidas = [];
    cdx.encontradas = [];
    cdx.salto = 0;
    cdx.saltoEncontrada = 0;
            
            if(isMobile.phone){
                
                cdx.num = 1;
                console.log(cdx.num)
                
            }
            
            else if(isMobile.tablet){
                
                cdx.num = 4;
                console.log(cdx.num)
            }
            
            else{
                
                cdx.num = 10;
                console.log(cdx.num)
                
            }
            
    cdx.listo = {

        perdidas: true,
        encontradas: true

    }

    mascotasService.perdidas(cdx.num, 0).then(function (res) {

        cdx.perdidas = res;

    })

    mascotasService.encontradas(cdx.num, 0).then(function (res) {

        cdx.encontradas = res;

    })


    cdx.avanzarPerdidas = function (accion) {
        
        

        if (cdx.listo.perdidas) {

            
            cdx.listo.perdidas = false;

            if (accion) {

                var salto = cdx.salto + cdx.num;

            } else {

                var salto = cdx.salto - cdx.num;

            }

            if (salto > -1) {

                mascotasService.perdidas(cdx.num, salto).then(function (res) {

                    if (res) {

                        if (accion) {

                            angular.forEach(res, function (valor, llave) {

                                cdx.perdidas.push(valor)

                            })

                            cdx.salto = cdx.salto + cdx.num;

                        } else {                            
                            
                            cdx.perdidas.splice((cdx.perdidas.length - cdx.salto) * -1);

                            cdx.salto = cdx.salto - cdx.num;

                        }

                    }

                    cdx.listo.perdidas = true;

                })
                
                .catch(function(res){
                    
                     cdx.listo.perdidas = true;

                    
                })

            } else {

                cdx.listo.perdidas = true;
            }


        }

    }
    
    
    
     cdx.avanzarEncontradas = function (accion) {
        
        

        if (cdx.listo.encontradas) {

            
            cdx.listo.encontradas = false;

            if (accion) {

                var salto = cdx.saltoEncontrada + cdx.num;

            } else {

                var salto = cdx.saltoEncontrada - cdx.num;

            }

            if (salto > -1) {

                mascotasService.encontradas(cdx.num, salto).then(function (res) {

                    if (res) {

                        if (accion) {

                            angular.forEach(res, function (valor, llave) {

                                cdx.encontradas.push(valor)

                            })

                            cdx.saltoEncontrada = cdx.saltoEncontrada + cdx.num;

                        } else {                            
                            
                            cdx.encontradas.splice((cdx.encontradas.length - cdx.saltoEncontrada) * -1);

                            cdx.saltoEncontrada = cdx.saltoEncontrada - cdx.num;

                        }

                    }

                    cdx.listo.encontradas = true;

                })
                
                .catch(function(res){
                    
                     cdx.listo.encontradas = true;

                    
                })

            } else {

                cdx.listo.encontradas = true;
            }


        }

    }
    
    


    cdx.formatear = function (texto) {

        return formatearFactory(texto);

    }

}])
