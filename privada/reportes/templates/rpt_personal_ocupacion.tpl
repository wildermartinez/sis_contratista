<!DOCTYPE html>
<html lang="esp">
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >
          {literal}
          <script type="text/javascript">
            function validar(){
                ocupacion = document.formu.ocupacion.value;
                if(document.formu.ocupacion.value == ""){
                    alert("por favor seleccione ocupacion");
                    document.formu.ocupacion.focus();
                    return;
                }
              ventanaCalendario= window.open("rpt_personal_ocupacion1.php?ocupacion=" +ocupacion , "calendario","width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
            }
          </script>
         {/literal}
     </head>
     <body>
    <center>
       <div class="formu_ingreso_datos">
        <h2> RPT DE PERSONAl POR OCUPACION </h2>
        <form method="post" name="formu">
            <p>
                <b>*Seleccione ocupacion</b>
                <select name="genero">
                    <option value="">--Seleccione--</option>
                    <option value="TO">Todos</option>
                    <option value="pintor">pintor</option>
                    <option value="contratista">contratista</option>
                    <option value="albañil">albañil</option>
                    <option value="ayudante">ayudante</option>
                    <option value="limpieza">limpieza</option>

                </select>
            </p>
            <p>
                <center>
                <input type="hidden" name="accion" value="">
                <input type="button" value="Aceptar" onclick="validar();" class="boton2">
                </center>
            </p>
        </form>
       </div>
    </center>           
     </body>
</html>