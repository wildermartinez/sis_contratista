<?php
     session_start();

     require_once("../../smarty/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");

     $__id_contratista = $_REQUEST["id_contratista"];

     $smarty = new Smarty;

     $sql = $db->Prepare("    SELECT *
                              FROM contratista
                              WHERE id_contratista = ?
     ");

     $rs = $db->GetAll($sql, array($__id_contratista));
     $smarty->assign("contratista", $rs);

     $smarty->assign("direc_css", $direc_css);
     $smarty->display("contratista_modificar.tpl");
?>
