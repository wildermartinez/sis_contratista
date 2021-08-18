<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     
     $id_personal =$_REQUEST["id_personal"];
     $smarty = new Smarty;
//$db->debug=true;
     
     $sql = $db->Prepare("   SELECT *
                              FROM personal
                              WHERE id_personal = ?
                              AND estado <> '1'
                         
                         ");

     $rs=$db->GetAll($sql, array($id_personal));

     $sql1 = $db->Prepare("   SELECT *
                              FROM contratista
                              WHERE id_contratista =1
                              AND estado <> '0'
                         ");
     $rs1 =$db->GetAll($sql1);
     $nombre=$rs1[0]["nombre"];
     $logo_contratista=$rs1[0]["logo_contratista"];
     $smarty->assign("logo_contratista", $logo_contratista);

     $smarty->assign("personal", $rs); 
     $smarty->assign("direc_css", $direc_css);
     $smarty->display("fichas_tecnicas_personal1.tpl");
 ?>
 