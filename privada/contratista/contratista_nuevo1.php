<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__ci = $_POST["ci"];
$__nombre = $_POST["nombre"];
$__ap = $_POST["ap"];
$__am = $_POST["am"];
$__fec_nac = $_POST["fec_nac"];
$__direccion = $_POST["direccion"];
$__telefono = $_POST["telefono"];


$smarty = new Smarty;

	$reg = array();
	$reg["id_contratista"] = 1;
	$reg["ci"] = $__ci;
	$reg["nombre"] = $__nombre;
	$reg["ap"] = $__ap;
	$reg["am"] = $__am;
	$reg["fec_nac"] = $__fec_nac;
	$reg["direccion"] = $__direccion;
	$reg["telefono"] = $__telefono;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("contratista",$reg, "INSERT");

if ($rs1){
	header("Location: contratista.php");
	exit();
} else{
	$smarty->assign("mensaje","ERROR: Los datos no se insertaron !!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->display("contratista_nuevo1.tpl");
}
?>