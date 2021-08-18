<!DOCTYPE html>
<html>
     <head>
          <script type="text/javascript">
            var ventanaCalendario=false
              function imprimir(){
                  if (confirm('Desea Imprimir')) {
                  window.print();
                 }
              }
          </script>
         
     </head>
     <body style='cursor: pointer;cursor: hand' onClick='imprimir();'>
         <table width="100%" border="0">
          <tr>
            <td><img src="../../img/logos/{$logo_contratista}" width="70%"></td>
            <td align="center" width="80%">
                <h1>FICHA TECNICA DE propietarios </h1>
            </td> 
          </tr>
         </table>
         <br>
          <center>
            <table border="1" cellspacing="">
               <tr>
                   <td>
                       <table border="6">
                        {foreach item=r from=$propietario}
                        <tr>
                            <th align="right">CI</th><th>:</th>
                            <td><input type="text" name="ci" value="{$r.ci}" disabled=""> </td>
                        </tr>
                        <tr>
                            <th align="right">Nombres</th><th>:</th>
                            <td><input type="text" name="nombre" value="{$r.nombre}" disabled=""> </td>
                        </tr>
                        <tr>
                            <th align="right">Apellido Paterno</th><th>:</th>
                            <td><input type="text" name="ap" value="{$r.ap}" disabled=""> </td>
                        </tr>
                        <tr>
                            <th align="right">Apellido Materno</th><th>:</th>
                            <td><input type="text" name="am" value="{$r.am}" disabled=""> </td>
                        </tr>
                        <tr>
                            <th align="right">Direccion</th><th>:</th>
                            <td><input type="text" name="direccion" value="{$r.direccion}" disabled=""> </td>
                        </tr>
                        <tr>
                            <th align="right">Telefono</th><th>:</th>
                            <td><input type="text" name="telefono" value="{$r.telef}" disabled=""> </td>
                        </tr>
                        
                        {/foreach}
                       </table>
                   </td>
               </tr>
            </table>
          </center>
     </body>
</html>