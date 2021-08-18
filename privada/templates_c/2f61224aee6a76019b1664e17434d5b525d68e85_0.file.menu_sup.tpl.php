<?php
/* Smarty version 3.1.36, created on 2021-06-02 00:28:27
  from 'C:\wamp64\www\sis_contratista\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_60b6d0abb69639_25831569',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2f61224aee6a76019b1664e17434d5b525d68e85' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_contratista\\privada\\templates\\menu_sup.tpl',
      1 => 1617667846,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b6d0abb69639_25831569 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	

	<div class="cabecera">
		<img src="../img/logos/<?php echo $_smarty_tpl->tpl_vars['logo_contratista']->value;?>
" width="10%">
		<div class="titulo">
			CONTRATISTA "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
"			
		</div>
		<div class="usuario">
			Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b>
			Rol: <b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b>
		</div>
	</div>
</body>
</html><?php }
}
