<?php
     session_start();

     require_once("../../smarty/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");

     $__id_personal = $_REQUEST["id_personal"];

     $smarty = new Smarty;

     $sql = $db->Prepare("    SELECT *
                              FROM personal
                              WHERE id_personal = ?
     ");

     $rs = $db->GetAll($sql, array($__id_personal));
     $smarty->assign("personal", $rs);

     $smarty->assign("direc_css", $direc_css);
     $smarty->display("personal_modificar.tpl");
?>
