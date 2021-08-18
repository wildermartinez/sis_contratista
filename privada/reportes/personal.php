<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");
    
//$db->debug=true;
     $smarty = new Smarty;
     $sql = $db->Prepare("   SELECT *
                              FROM personal
                              WHERE id_personal=1
                              AND estado <> '0'
                              ORDER BY id_personal DESC
                         ");            

     $rs =$db->GetAll($sql);

     $smarty->assign("personal", $rs);
     $smarty->assign("direc_css", $direc_css);
     $smarty->display("personal.tpl");
 ?>