<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     
     $genero =$_REQUEST["genero"];

     $smarty = new Smarty;
     //$db->debug=true;
     if($genero == "T"){
     $sql = $db->Prepare("   SELECT *
                              FROM personas
                              WHERE estado <> '1'
                         ");
     $rs=$db->GetAll($sql);
}else{

     $sql1 = $db->Prepare("   SELECT *
                              FROM personas
                              WHERE genero = ?
                              AND estado <> '1'
                         ");
     $rs=$db->GetAll($sql, array($genero));
}

    $sql1 = $db->Prepare("   SELECT *
                              FROM contratista
                              WHERE id_contratista = 1
                              AND estado <> '1'
                         ");

    $rs1 =$db->GetAll($sql1);
     $nombre=$rs1[0]["nombre"];
     $logo_contratista=$rs1[0]["logo_contratista"];
     $smarty->assign("logo_contratista", $logo_contratista)
   $fecha= date("Y-m-d H:i:s");
   $smarty->assign("personas_genero1", $rs);
    $smarty->assign("fecha", $fecha);
    $smarty->assign("direc_css", $direc_css);
    $smarty->display("rpt_personas_genero1.tpl");
?>