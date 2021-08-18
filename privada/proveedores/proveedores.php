<?php
session_start();
	require_once("../../smarty/libs/Smarty.class.php");
    require_once("../../conexion.php");
    require_once("../libreria_menu.php");
    $smarty = new Smarty;

    //$db->debug=true

    $sql = $db->Prepare("SELECT *
    					 FROM proveedores
    					 WHERE estado <> 1
    					AND id_proveedor<> 1
    					 ORDER BY id_proveedor DESC 
                         LIMIT ? OFFSET ?
                        
    					");
    $rs = $db->GetAll($sql);
    
    $smarty->assign("proveedores", $rs); 
    $smarty->assign("direc_css", $direc_css);
    $smarty->display("proveedores.tpl");
?>