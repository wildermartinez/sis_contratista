"use strict"
function validar(){
    

var nombre = document.form.nombre.value;
var ap = document.form.ap.value
var am = document.form.am.value;;
var ci = document.form.ci.value;
var direccion = document.form.direccion.value;
var telefono = document.form.telefono.value;
var ocupacion = document.form.ocupacion.value;
var fecha_nac = document.form.fecha_nac.value;

   
    
    if((!v1.test(nombre)) || (nombre == "")){
    alert("los nombre son incorrectos o el campo esta vacio");
    document.form.nombre.focus();
    return;
    }

    
    if((!v1.test(ap)) || (ap == "")){
    alert("el ap es incorrecto o el campo esta vacio");
    document.form.ap.focus();
    return;
    }
    if((!v1.test(am)) || (am == "")){
    alert("el am es incorrecto o el campo esta vacio");
    document.form.am.focus();
    return;
    }

    if ((!v2.test(ci)) || (ci== "")) {
        alert("el ci es incorrecto o el campo esta  vacio");
        document.form.ci.focus();
        return;
    }
    if(direccion == ""){
        alert("el campo de la direccion esta vacia");
        document.form.direccion.focus();
        return;
    }

    if ((!v2.test(telefono)) || (telefono== "")) {
        alert("el telefono es incorrecto o el campo esta  vacio");
        document.form.telefono.focus();
        return;
    }

    if(ocupacion == ""){
        alert("ocupacion esta vacio");
        document.form.ocupacion.focus();
        return;
    }
    if(fecha_nac == ""){
        alert("El campo de fecha nacimiento esta vacio");
        document.form.fecha_nac.focus();
        return;
    }



document.form.submit();

}