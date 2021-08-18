<!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >
          <script type="text/javascript">
            var ventanaCalendario=false
            function imprimir(){
              ventanaCalendario= window.open("personal1.php", "calendario","width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
            }
          </script>
         
     </head>
     <body>
         <table width="100%" border="0">
          <tr>
           <td align="center"><h1>PERSONAL</h1></td> 
          </tr>
         </table>
         <br>
          <center>
            <table class="listado">
               <tr>
                  <th>NRO</th> <th>NOMBRE</th><th>APELLIDO PATERNO</th><th>APELLIDO MATERNO</th><th>CI</th><th>DIRECCION</th><th>TELEFONO</th><th>OCUPACION</th><th>FECHA DE NACIMIENTO</th>
               </tr>
                {assign var="b" value="1"}
                {foreach item=r from=$personal}
               <tr>
                  <td align="center">{$b}</td>
                  <td>{$r.nombre}</td>
                  <td>{$r.ap}</td>
                  <td>{$r.am}</td>
                  <td>{$r.ci}</td>
                  <td>{$r.direccion}</td>
                  <td>{$r.telefono}</td>
                  <td>{$r.ocupacion}</td>
                  <td>{$r.fec_nac}</td>
                {assign var="b" value="`$b+1`"}
               </tr>
               {/foreach}
            </table>
            <br><br>
            <h2>
              <input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
            </h2>
          </center>
     </body>
</html>