"use strict"
var v1 = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]*$/; //esto permite validar ñ Ñ y tb acentos

  var v2 =/^[0-9]*$/; //VALIDACION DE NUMEROS ENTEROS POSITIVOS

  var v22 =/^[0-9]+[\.]?[0-9]*$/; //VALIDACION DE NUMEROS POSITIVOS INCLUIDOS LOS DECIMALES
       
  var v3 =/\S+@\S+\.\S+/; //VALIDACION DE CORREOS  