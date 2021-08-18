<!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >   
          <meta http-equiv="Content-type" content="text/html; charset=utf-8">  
     </head>
     <body>
          <div class="titulo listado">
               <h1>
                    herramientas
               </h1>
          </div>
          <div class="titulo_nuevo">
               <form name="formNuevo" method="post" action="herramientas_nuevo.php">
                    <a href="javascript:document.formNuevo.submit();">
                         Nuevo>>>
                    </a>                    
               </form>
          </div>
          <center>
               <table class="listado">
                    <tr>
                         <th>NRO</th><th>NOMBRE</th><th>CANTIDAD</th>
                         <th><img src="../../img/modificar.png"></th><th><img src="../../img/eliminar.jpg"> </th>
                    </tr>
                    {assign var="b" value="1"}
                    {foreach item=r from=$herramientas}
                    <tr>
                         <td align="center">{$b}</td>
                         <td>{$r.nombre}</td>
                         
                         <td>{$r.cantidad}</td>          
                         <td align="center">
                              <form name="formModif{$r.id_herramienta}" method="post" action="herramienta_modificar.php">
                                   <input type="hidden" name="id_herramienta" value="{$r.id_herramienta}">
                                   <input type="hidden" name="id_obra" value="{$r.id_obra}">
                                   <a href="javascript:document.formModif{$r.id_herramienta}.submit();" title=" Modificar Herramientas">
                                   Modificar>>>                                        
                                   </a>
                              </form>
                         </td>
                         <td align="center">
                              <form name="formElimi{$r.id_herramienta}" method="post" action="herramienta_eliminar.php">
                                   <input type="hidden" name="id_herramienta" value="{$r.id_herramienta}">
                                   <a href="javascript:document.formElimi{$r.id_herramienta}.submit();" title="Eliminar herramientas" onclick='
                                   javascript:return(confirm("Desea realmente eliminar a la herramienta:::{$r.usuario}?"));'>
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