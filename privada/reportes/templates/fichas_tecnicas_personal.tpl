<!DOCTYPE html>
<html lang="esp">
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >
          <meta charset="utf-8">
          <script type="text/javascript" src="../../ajax.js"></script>
          <script type="text/javascript">
            function buscar(){
              var d1, d2, d3, d4, contenedor, ajax, url, param;
              contenedor = document.getElementById('personal1');
              d1 = document.formu.ap.value;
              d2 = document.formu.am.value;
              d3 = document.formu.nombre.value;
              d4 = document.formu.ci.value;
              ajax =nuevoAjax();
              url = "ajax_buscar_personal.php"
              param = "ap="+d1+"&am="+d2+"&nombre="+d3+"&ci"+d4;
              //alert(param);
              ajax.open("POST", url, true);
              ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
              ajax.onreadystatechange = function(){
                if (ajax.readyState == 4) {
                  contenedor.innerHTML = ajax.responseText;
                }
              }
              ajax.send(param);
            }
          function mostrar(id_personal){
            var d1, ventanaCalendario;
            //alert(id_persona);
             ventanaCalendario= window.open("fichas_tecnicas_personal1.php?id_personal=" +d1+"calendario","width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
          }
          
          </script>
     </head>
     <body>
       <!---------BUSCADOR-------->
       <center>
         <h1>FICHAS TECNICAS DEl PERSONAl</h1>
         <form action="#" method="post" name=formu>
          <table border="1" class="listado">
            <tr>
              <th>
                <b>Paterno</b><br />
                <input type="tex" name="ap" value="" size="10" onkeyup="buscar()">
              </th>
              <th>
                <b>Materno</b><br />
                <input type="tex" name="am" value="" size="10" onkeyup="buscar()">
              </th>
              <th>
                <b>Nombres</b><br />
                <input type="tex" name="nombre" value="" size="10" onkeyup="buscar()">
              </th>
              <th>
                <b>C.I</b><br />
                <input type="tex" name="ci" value="" size="10" onkeyup="buscar()">
              </th>
            </tr>
          </table>
         </form>
       </center>
       <!----buscador---->
       <center>
         <div id="personal1">
         </div>
       </center>
     </body>
</html>