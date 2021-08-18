<?php
session_start();
	require_once("../../smarty/libs/Smarty.class.php");
    require_once("../../conexion.php");
    require_once("../libreria_menu.php");
    $smarty = new Smarty;

    //$db->debug=true

    /*$sql = $db->Prepare("SELECT *
    					 FROM herramientas her, obras ob
    					 WHERE her.id_obra = ob.id_obra
    					 AND her.estado <> 0
    					 AND ob.estado <> 0
    					 ORDER BY her.id_herramienta DESC 
    					");*/
    $sql = $db->Prepare("SELECT *
                         FROM herramientas her
                         INNER JOIN obras ob ON  her.id_obra = ob.id_obra
                         AND her.estado <> '0'
                         AND ob.estado <> '0'
                         ORDER BY her.id_herramienta DESC 
                        ");



    $rs = $db->GetAll($sql);
    
    $smarty->assign("herramientas", $rs); 
    $smarty->assign("direc_css", $direc_css);
    $smarty->display("herramientas.tpl");
?>