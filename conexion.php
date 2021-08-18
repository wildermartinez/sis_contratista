<?php
require_once("adodb/adodb.inc.php");

$direc_css="../css/colores.css";

$conServidor="localhost";//
$conUsuario="root";//Usuario de ingreso
$conClave="";//clave de ingreso
$conBasededatos="bd_contratista";//nombre de la base de datos

$db=ADONewConnection("mysqli");
//$db->debug = true;  
$conex=$db->Connect($conServidor,$conUsuario,$conClave,$conBasededatos);
$db->Execute("SET NAMES 'utf8'");
?>
