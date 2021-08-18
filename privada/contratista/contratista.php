<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");
     require_once("../paginacion.inc.php");
//$db->debug=true;
     $smarty = new Smarty;

     contarRegistros($db, "contratista");

     paginacion("contratista.php?", $smarty);

     $sql3 = $db->Prepare("   SELECT *
                              FROM contratista
                              WHERE estado <> 0
                              AND id_contratista > 0
                              ORDER BY id_contratista DESC
                              LIMIT ? OFFSET ?
                         ");

     $smarty->assign("contratista", $db->GetAll($sql3, array($nElem, $regIni)));

 
     $smarty->assign("direc_css", $direc_css);
     $smarty->display("contratista.tpl");
 ?>