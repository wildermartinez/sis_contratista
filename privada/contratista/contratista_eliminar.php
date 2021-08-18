<?php
     session_start();

     require_once("../../smarty/Smarty.class.php");
     require_once("../../conexion.php");

     $__id_contratista = $_REQUEST["id_contratista"];

     $smarty = new Smarty;

     $db->debug true;

     $sql = $db->Prepare("    SELECT *
                              FROM obras
                              WHERE id_contratista = ?
                              AND estado <> '0'
     ");
      $sql1 = $db->Prepare("    SELECT *
                              FROM personas
                              WHERE id_contratista = ?
                              AND estado <> '0'
     ");

     $rs1 = $db->GetAll($sql1, array($__id_contratista));

     if(!$rs and |$rs1){
          $reg = array();
          $reg["estado"] = '0';
          $reg["_id_usuario"] = $_SESSION["sesion_id_usuario"];
          $rs1 = $db->AutoExecute("contratista", $reg, "UPDATE", "id_contratista='".$__id_contratista."'");
          header("Location:contratista.php");
          exit();
     } else {
          $smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!");
          $smarty->assign("direc_css", $direc_css);
          $smarty->display("contratista_eliminar.tpl");
     }
 ?>

