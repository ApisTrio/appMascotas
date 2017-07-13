angular.module("mascotas")

.controller("mascotasPerdidasController", ["mascotasService", "formatearFactory", "apiConstant", function (mascotasService, formatearFactory, apiConstant) {

    var cdx = this;
    cdx.apiDir = apiConstant;
    cdx.perdidas = [];
    cdx.encontradas = [];
    cdx.salto = 0;
    cdx.saltoEncontrada = 0;

    cdx.listo = {

        perdidas: true,
        encontradas: true

    }

    mascotasService.perdidas(10, 0).then(function (res) {

        cdx.perdidas = res;

    })

    mascotasService.encontradas(10, 0).then(function (res) {

        cdx.encontradas = res;

    })


    cdx.avanzarPerdidas = function (accion) {
        
        

        if (cdx.listo.perdidas) {

            
            cdx.listo.perdidas = false;

            if (accion) {

                var salto = cdx.salto + 10;

            } else {

                var salto = cdx.salto - 10;

            }

            if (salto > -1) {

                mascotasService.perdidas(10, salto).then(function (res) {

                    if (res) {

                        if (accion) {

                            angular.forEach(res, function (valor, llave) {

                                cdx.perdidas.push(valor)

                            })

                            cdx.salto = cdx.salto + 10;

                        } else {                            
                            
                            cdx.perdidas.splice((cdx.perdidas.length - cdx.salto) * -1);

                            cdx.salto = cdx.salto - 10;

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

                var salto = cdx.saltoEncontrada + 10;

            } else {

                var salto = cdx.saltoEncontrada - 10;

            }

            if (salto > -1) {

                mascotasService.encontradas(10, salto).then(function (res) {

                    if (res) {

                        if (accion) {

                            angular.forEach(res, function (valor, llave) {

                                cdx.encontradas.push(valor)

                            })

                            cdx.saltoEncontrada = cdx.saltoEncontrada + 10;

                        } else {                            
                            
                            cdx.encontradas.splice((cdx.encontradas.length - cdx.saltoEncontrada) * -1);

                            cdx.saltoEncontrada = cdx.saltoEncontrada - 10;

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
