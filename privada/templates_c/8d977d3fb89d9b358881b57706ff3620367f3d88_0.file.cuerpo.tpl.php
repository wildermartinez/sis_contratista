<?php
/* Smarty version 3.1.36, created on 2021-06-02 00:28:27
  from 'C:\wamp64\www\sis_contratista\privada\templates\cuerpo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_60b6d0abbacf93_00072086',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8d977d3fb89d9b358881b57706ff3620367f3d88' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_contratista\\privada\\templates\\cuerpo.tpl',
      1 => 1617141848,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b6d0abbacf93_00072086 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	<form action="claves/" method="post" target="cuerpo">
	<?php if ($_smarty_tpl->tpl_vars['nick']->value == '') {?>
	    <div class="formu_ingreso">
			<p> <h2>Ingresar al sistema</h2> </p>
			<p> <h2>Login:</h2> <input type="tex" name="nick" size="11" value="" class="limpiar"> </p>
			<p> <h2>Clave</h2> <input type="password" name="password" size="11" value=""></p>
			<input type="submit" name="accion" value="Ingresar" size="5" class="boton" >
		</div>
		<?php }?>
	</form>
</body>
</html><?php }
}
