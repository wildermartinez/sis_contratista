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
            <td align="center" width="80%"><h1>CONTRATISTA</h1></td> 
          </tr>
         </table>

         <br>
          <center>
            <table border="1" cellspacing="0">
               <tr>
                  <th>NRO</th> <th>NOMBRE</th><th>AP</th> <th>AM</th><th>CI</th><th>DIRECCION</th><th>TELEFONO</th><th>OCUPACION</th>
               </tr>
                {assign var="b" value="1"}
                {foreach item=r from=$personal_ocupacion1}
               <tr>
                  <td align="center">{$b}</td>
                  <td>{$r.nombre}</td>
                  <td>{$r.ap}</td>
                  <td>{$r.am}</td>
                  <td>{$r.ci}</td>
                  <td>{$r.direccion}</td>
                  <td>{$r.telefono}</td>
                  <td>{$if $r.ocupacion=='PI'}PINTOR
                  {else}{$if $r.ocupacion=='CO'}CONTRATISTA
                  {else}{$if $r.ocupacion=='AL'}ALBAÑIL
                  {else}{$if $r.ocupacion=='CO'}AYUDANTE
                  {else}{$if $r.ocupacion=='LI'}LIMPIEZA
                {/if}</td>
                {assign var="b" value="`$b+1`"}
                {/foreach}
               </tr>
            </table>
            <br><br>
            <b>Fecha:</b>{$fecha}
          </center>
     </body>
</html>