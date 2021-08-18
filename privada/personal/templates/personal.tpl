<!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >   
          <meta http-equiv="Content-type" content="text/html; charset=utf-8">  
     </head>
     <body>
          <div class="titulo listado">
               <h1>
                    personal
               </h1>
          </div>
          <div class="titulo_nuevo">
               <form name="formNuevo" method="post" action="personal_nuevo.php">
                    <a href="javascript:document.formNuevo.submit();">
                         Nuevo>>>
                    </a>                    
               </form>
          </div>
          <center>
               <table class="listado">
                    <tr>
                         <th>NRO</th><th>NOMBRE</th><th>AP</th><th>AM</th><th>CI</th><th>DIRECCION</th><th>TELEFONO</th><th>OCUPACION</th><th>FECHA DE NACIMIENTO</th>
                         <th><img src="../../img/modificar.png"></th><th><img src="../../img/eliminar.jpg"> </th>
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
                         <td align="center">
                              <form name="formModif{$r.id_personal}" method="post" action="personal_modificar.php">
                                   <input type="hidden" name="id_personal" value="{$r.id_personal}">
                                   <input type="hidden" name="id_obra" value="{$r.id_obra}">
                                   <a href="javascript:document.formModif{$r.id_personal}.submit();" title=" Modificar personal">
                                   Modificar>>>                                        
                                   </a>
                              </form>
                         </td>
                         <td align="center">
                              <form name="formElimi{$r.id_personal}" method="post" action="personal_eliminar.php">
                                   <input type="hidden" name="id_personal" value="{$r.id_personal}">
                                   <a href="javascript:document.formElimi{$r.id_personal}.submit();" title="Eliminar Personal Sistema" onclick="javascript: return(confirm('Desea realmente Eliminar al personal {$r.nombre} {$r.ap} {$r.am}')); location.href='personal_eliminar.php'">
                                   Eliminar>>
                                   </a>
                              </form>
                         </td>
                       
                         {assign var="b" value="`$b+1`"}
                         {/foreach}
                    </tr>
               </table>
          </center>
     </body>
</html>