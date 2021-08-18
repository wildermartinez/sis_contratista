<?php
/* Smarty version 3.1.36, created on 2021-06-02 00:28:53
  from 'C:\wamp64\www\sis_contratista\privada\claves\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_60b6d0c5ac7138_99660953',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a4c9a9fe7f91250a71ec551ad5065643f180cb57' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_contratista\\privada\\claves\\templates\\index.tpl',
      1 => 1617230163,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b6d0c5ac7138_99660953 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<link rel="stylesheet" type="text/css" href="../../css/colores.css">

	<?php echo '<script'; ?>
 type="text/javascript">
		
		function refrescar() {
			var p = window.parent;
			p.location.href='../';
		}
	<?php echo '</script'; ?>
>

</head>
<body ONLOAD="self.setTimeout('refrescar()',1000);">
	<center>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage']->value;?>
</h1>
		<br>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage1']->value;?>
</h1>
	</center>
</body>
</html><?php }
}
