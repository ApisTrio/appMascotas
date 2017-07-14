
<section  ng-switch="eliminarCuentaPublico.pasos" ng-init="eliminarCuentaPublico.pasos = 1" class="padding-top-30">
    <div ng-switch-default>
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>Estamos dando de baja tu cuenta</h5>
            </div>
        </div>
        
        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
               Por favor, espera unos momentos, el proceso se esta realizando.  
            </div>
        </div>
                
    </div>
    <div ng-switch-when="2">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/forms/Confirm2x.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>Tu cuenta ha sido eliminada con exito</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
               Hemos dado de baja tu cuenta con exito, si esto ha sido una equivocación ponte en contacto con nosotros, <a href="mailto:qr@dinbeat.com">qr@dinbeat.com</a>. 
            </div>
        </div>    
    </div>
    
    <div ng-switch-when="3">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/icons/alerta.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>¡Ups! Han pasado más de 24 horas desde que solicitaste dar de baja tu cuenta.</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
               Por razones de seguridad es necesario que confirmes la baja de tu cuenta en las primeras 24 horas de haber realizado la solicitud. Puedes volver a solicitarlo.
            </div>
        </div>
    </div>
    
    <div ng-switch-when="4">
        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <img src="assets/images/icons/alerta.png">
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 center-align">
                <h5>Un error ha ocurrido.</h5>
            </div>
        </div>

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 center-align white-space-normal">
              Un error inesperado ha ocurrido. Es posible que tu solicitud sea inválida.
            </div>
        </div>
    </div>

</section>