<!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css" >   
          <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>  
     </head>
     <body>
          <div class="titulo listado">
               <h1>
                    contratista
               </h1>
          </div>
          <div class="titulo_nuevo">
               <form name="formNuevo" method="post" action="contratista_nuevo.php">
                    <a href="javascript:document.formNuevo.submit();">
                         Nuevo>>>
                    </a>                    
               </form>
          </div>
          <center>
               <table class="listado">
                    <tr>
                         <th>NRO</th><th>CI</th><th>NOMBRE</th><th>AP</th><th>AM</th><th>FECHA DE NACIMIENTO</th><th>DIRECCION</th><th>TELEFONO</th>
                         <th><img src="../../img/modificar.png"></th><th><img src="../../img/eliminar.jpg"> </th>
                    </tr>
                    {assign var="b" value="0"}
                    {assign var="total" value="`$pagina-1`"}
                    {assign var="a" value="`$numreg*$total`"}
                    {assign var="b" value="`$b+1+$a`"}
                    {foreach item=r from=$contratista}
                    <tr>
                         <td align="center">{$b}</td>
                         <td>{$r.ci}</td>
                         <td>{$r.nombre}</td>
                         <td align="center">{$r.ap}</td>
                         <td align="center">{$r.am}</td>
                         <td align="center">{$r.fec_nac}</td>
                         <td align="center">{$r.direccion}</td>
                         <td align="center">{$r.telefono}</td>
                         <td align="center">
                              <form name="formModif{$r.id_contratista}" method="post" action="contratista_modificar.php">
                                   <input type="hidden" name="id_contratista" value="{$r.id_contratista}">
                                   <a href="javascript:document.formModif{$r.id_contratista}.submit();" title=" Modificar contratista Sistema">
                                   Modificar>>>                                        
                                   </a>
                              </form>
                         </td>
                         <td align="center">
                              <form name="formElimi{$r.id_contratista}" method="post" action="contratista_eliminar.php">
                                   <input type="hidden" name="id_contratista" value="{$r.id_contratista}">
                                   <a href="javascript:document.formElimi{$r.id_contratista}.submit();" title="Eliminar contratista Sistema" onclick="javascript: return(confirm('Desea realmente Eliminar al contratista {$r.nombre} {$r.ap} {$r.am}'));location.href='contratista_eliminar.php'">
                                   Eliminar>>
                                   </a>
                              </form>
                         </td>
                         {assign var="b" value="`$b+1`"}
                         {/foreach}
                    </tr>
               </table>

               <!--PAGINACION---------------------->
               <table>
                    <tr align="center">
                         <td>
                              {if !empty($urlback)}
                              <a onclick="location.href='{$urlback}'" style="font-family: Verdana; font-size: 9px; cursor:pointer"; >&laquo;
                                   Anterior</a>
                              {/if}
                              {if !empty($paginas)}
                                   {foreach from=$paginas item=pag}
                                        {if $pag.npag == $pagina}
                                             {if $pagina neq '1'}|{/if}<b style="color:#FB992F;font-size: 12px;">{$pag.npag}</b>
                                        {else}
                                        | <a onclick="location.href='{$pag.pagV}'"style="cursor:pointer;">{$pag.npag}</a>
                                        {/if}
                                   {/foreach}
                              {/if}
                              {if $numpaginas gt $numbotones and !empty($urlnext) and $pagina lt $numpaginas}
                                   | <a onclick="location.href='{$urlnext}'" style="font-family: Verdana;font-size: 9px; cursor:pointer">
                                        Siguiente&raquo;</a>
                              {/if}
                         </td>
                    </tr>
               </table>
          </center>
     </body>
</html>