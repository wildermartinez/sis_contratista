<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");
    
//$db->debug=true;
     $smarty = new Smarty;
     $sql = $db->Prepare("   SELECT *
                              FROM proveedores
                              WHERE id_proveedor=1
                              AND estado <> '0'
                              ORDER BY id_proveedor DESC
                         ");            

     $rs =$db->GetAll($sql);

     $smarty->assign("proveedores", $rs);
     $smarty->assign("direc_css", $direc_css);
     $smarty->display("proveedores.tpl");
 ?>