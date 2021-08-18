<?php
session_start();
	require_once("../../smarty/libs/Smarty.class.php");
    require_once("../../conexion.php");
    require_once("../libreria_menu.php");
    $smarty = new Smarty;

    //$db->debug=true

    /*$sql = $db->Prepare("SELECT *
    					 FROM personal per, obras ob
    					 WHERE per.id_obra = ob.id_obra
    					 AND per.estado <> 0
    					 AND ob.estado <> 0
    					 ORDER BY per.id_personal DESC 
    					");*/
    $sql = $db->Prepare("SELECT *
                         FROM personal per
                         INNER JOIN obras ob ON per.id_obra = ob.id_obra
                         AND per.estado <> '0'
                         AND ob.estado <> '0'
                         ORDER BY per.id_personal DESC 
                        ");

    $rs = $db->GetAll($sql);
    
    $smarty->assign("personal", $rs); 
    $smarty->assign("direc_css", $direc_css);
    $smarty->display("personal.tpl");
?>