<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../libreria_menu.php");
    
//$db->debug=true;
     $smarty = new Smarty;

    /* $sql = $db->Prepare("   SELECT *
                              FROM personas p, usuarios u
                              WHERE p.id_persona= u.id_persona
                              AND p.estado <> '0'
                              AND u.estado <> '0'
                              ORDER BY (u.id_persona) DESC
                         ");*/
     $sql = $db->Prepare("   SELECT *
                              FROM personas p
                              INNER JOIN usuarios u ON p.id_persona = u.id_persona
                              AND p.estado <> '0'
                              AND u.estado <> '0'
                              ORDER BY (u.id_persona) DESC
                         ");              

     $rs =$db->GetAll($sql);

     $smarty->assign("personas_usuarios", $rs);
     $smarty->assign("direc_css", $direc_css);
     $smarty->display("personas_usuarios.tpl");
 ?>