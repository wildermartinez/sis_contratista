<?php
     session_start();

     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");

     $__id_personal = $_REQUEST["id_personal"];

     $smarty = new Smarty;

     $sql = $db->Prepare("    SELECT *
                              FROM personal
                              WHERE id_personal = ?
                              AND estado <> '0'
     ");
     $rs = $db->GetAll($sql, array($__id_personal));

     if(!$rs){
          $reg = array();
          $reg["estado"] = '0';
          $reg["_id_usuario"] = $_SESSION["sesion_id_usuario"];
          $rs1 = $db->AutoExecute("personasl", $reg, "UPDATE", "id_personal='".$__id_personal."'");
          header("Location:personal.php");
          exit();
     } else {
          $smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!");
          $smarty->assign("direc_css", $direc_css);
          $smarty->display("personal_eliminar.tpl");
     }
 ?>
