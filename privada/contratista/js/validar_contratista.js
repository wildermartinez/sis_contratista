"use strict"

function validar(){
    var ci      = document.formu.ci.value;
    var nombre  = document.formu.nombre.value;
    var ap      = document.formu.ap.value;
    var am      = document.formu.am.value;
    var fec_nac      = document.formu.fec_nac.value;
    var direccion   = document.formu.direccion.value;
    var telefono    = document.formu.telefono.value;
    var logo_contratista = document.formu.logo_contratista.value;
    
    if (ci == ""){
          alert("Por favor ingrese el numero de ci");
          document.formu.ci.focus();
          return;
         }

        if ((!v1.test(nombre)) || (nombre == "")) {
            alert("Los nombre son incorrectos o el campo esta vacio");
            document.formu.nombre.focus();
            return;
        }
        if ((ap == "") && (am == "")) {
           alert("Por favor introduzca un Apellido");
           document.formu.ap.focus();
           return;
        }
        if (fec_nac == "") {
        alert("el campo de fecha de nacimiento esta vacio");
        return;
         }
         if ((!v2.test(telefono)) || (telefono == "")) {
            alert("el telefono es incorrecto o el campo esta vacio");
            document.formu.telefono.focus();
            return;
        }


         document.formu.submit();
}
