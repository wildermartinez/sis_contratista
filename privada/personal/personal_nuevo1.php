<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");


$__nombre = $_POST["nombre"];
$__ap = $_POST["ap"];
$__am = $_POST["am"];
$__ci = $_POST["ci"];
$__direccion = $_POST["direccion"];
$__telefono = $_POST["telefono"];
$__ocupacion = $_POST["ocupacion"];
$__fec_nac = $_POST["fec_nac"];

$smarty = new Smarty;

	$reg = array();
	$reg["id_obra"] = 1;
	$reg["nombre"] = $__nombre;
	$reg["ap"] = $__ap;
	$reg["am"] = $__am;
	$reg["ci"] = $__ci;
	$reg["direccion"] = $__direccion;
	$reg["telefono"] = $__telefono;
	$reg["ocupacion"] = $__ocupacion;
	$reg["fec_nac"] = $__fec_nac;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("personal",$reg, "INSERT");

if ($rs1){
	header("Location: personal.php");
	exit();
} else{
	$smarty->assign("mensaje","ERROR: Los datos no se insertaron !!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->display("personal_nuevo1.tpl");
}
?>