<?php
session_start();

require_once("../smarty/libs/Smarty.class.php");
require_once("../conexion.php");
require_once("libreria_menu.php");
$smarty = new Smarty;

//$db-> = true;

if (!isset($_SESSION["sesion_id_rol"])){
		$rs = "";
		$rs2 = "";
		$nick = "";
	}


$smarty->assign("nick",$nick);
$smarty->assign("direc_css",$direc_css);
$smarty->display("cuerpo.tpl");
?>