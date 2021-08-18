<?php
/* Smarty version 3.1.36, created on 2021-06-02 00:29:26
  from 'C:\wamp64\www\sis_contratista\privada\contratista\templates\contratista.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_60b6d0e669f158_85079203',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '91e3847f693ab878ae34fd76f9e1b6df00b8f13a' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_contratista\\privada\\contratista\\templates\\contratista.tpl',
      1 => 1620775617,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b6d0e669f158_85079203 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css" >   
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
                    <?php $_smarty_tpl->_assignInScope('b', "0");?>
                    <?php $_smarty_tpl->_assignInScope('total', ((string)($_smarty_tpl->tpl_vars['pagina']->value-1)));?>
                    <?php $_smarty_tpl->_assignInScope('a', ((string)($_smarty_tpl->tpl_vars['numreg']->value*$_smarty_tpl->tpl_vars['total']->value)));?>
                    <?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1+$_smarty_tpl->tpl_vars['a']->value)));?>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['contratista']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
                    <tr>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
                         <td><?php echo $_smarty_tpl->tpl_vars['r']->value['ci'];?>
</td>
                         <td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['ap'];?>
</td>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['am'];?>
</td>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['fec_nac'];?>
</td>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['direccion'];?>
</td>
                         <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['telefono'];?>
</td>
                         <td align="center">
                              <form name="formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
" method="post" action="contratista_modificar.php">
                                   <input type="hidden" name="id_contratista" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
">
                                   <a href="javascript:document.formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
.submit();" title=" Modificar contratista Sistema">
                                   Modificar>>>                                        
                                   </a>
                              </form>
                         </td>
                         <td align="center">
                              <form name="formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
" method="post" action="contratista_eliminar.php">
                                   <input type="hidden" name="id_contratista" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
">
                                   <a href="javascript:document.formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_contratista'];?>
.submit();" title="Eliminar contratista Sistema" onclick="javascript: return(confirm('Desea realmente Eliminar al contratista <?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['ap'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['am'];?>
'));location.href='contratista_eliminar.php'">
                                   Eliminar>>
                                   </a>
                              </form>
                         </td>
                         <?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
                         <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tr>
               </table>

               <!--PAGINACION---------------------->
               <table>
                    <tr align="center">
                         <td>
                              <?php if (!empty($_smarty_tpl->tpl_vars['urlback']->value)) {?>
                              <a onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['urlback']->value;?>
'" style="font-family: Verdana; font-size: 9px; cursor:pointer"; >&laquo;
                                   Anterior</a>
                              <?php }?>
                              <?php if (!empty($_smarty_tpl->tpl_vars['paginas']->value)) {?>
                                   <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['paginas']->value, 'pag');
$_smarty_tpl->tpl_vars['pag']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['pag']->value) {
$_smarty_tpl->tpl_vars['pag']->do_else = false;
?>
                                        <?php if ($_smarty_tpl->tpl_vars['pag']->value['npag'] == $_smarty_tpl->tpl_vars['pagina']->value) {?>
                                             <?php if ($_smarty_tpl->tpl_vars['pagina']->value != '1') {?>|<?php }?><b style="color:#FB992F;font-size: 12px;"><?php echo $_smarty_tpl->tpl_vars['pag']->value['npag'];?>
</b>
                                        <?php } else { ?>
                                        | <a onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['pag']->value['pagV'];?>
'"style="cursor:pointer;"><?php echo $_smarty_tpl->tpl_vars['pag']->value['npag'];?>
</a>
                                        <?php }?>
                                   <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                              <?php }?>
                              <?php if ($_smarty_tpl->tpl_vars['numpaginas']->value > $_smarty_tpl->tpl_vars['numbotones']->value && !empty($_smarty_tpl->tpl_vars['urlnext']->value) && $_smarty_tpl->tpl_vars['pagina']->value < $_smarty_tpl->tpl_vars['numpaginas']->value) {?>
                                   | <a onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['urlnext']->value;?>
'" style="font-family: Verdana;font-size: 9px; cursor:pointer">
                                        Siguiente&raquo;</a>
                              <?php }?>
                         </td>
                    </tr>
               </table>
          </center>
     </body>
</html><?php }
}
