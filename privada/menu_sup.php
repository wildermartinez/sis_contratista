<?php
session_start();

require_once("../smarty/libs/Smarty.class.php");
require_once("../conexion.php");

$smarty = new Smarty;

if (isset($_SESSION["sesion_id_usuario"])) {
	$sesion = array ("id_usuario" => $_SESSION["sesion_id_usuario"],
					 "usuario" => $_SESSION["sesion_usuario"],
					 "id_rol" => $_SESSION["sesion_id_rol"],
					 "rol" => $_SESSION["sesion_rol"],
					);
	$login = "NO";
} else {
	$sesion = array ("id_usuario" => "----",
					 "usuario" => "----",
					 "id_rol" => "----",
					 "rol" => "----",
					);
	$login = "SI";
}
/*para volver autogestionarle el nombre de la agencia y el logo*/
	$sql1  =  $db->Prepare("SELECT *
							FROM contratista
							WHERE id_contratista=1
							AND estado <>'x'
							");
	$rs1=$db->Getall($sql1);
	$nombre=$rs1[0]["nombre"];
	$logo_contratista=$rs1[0]["logo_contratista"];
	$smarty->assign("nombre", $nombre);
	$smarty->assign("logo_contratista",$logo_contratista);



$smarty->assign("sesion",$sesion);
$smarty->assign("login",$login);
$smarty->assign("direc_css",$direc_css);
$smarty->display("menu_sup.tpl");
?>