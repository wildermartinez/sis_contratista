<?php
     session_start();
     require_once("../../smarty/libs/Smarty.class.php");
     require_once("../../conexion.php");
     require_once("../../resaltarBusqueda.inc.php");

     $ap = strip_tags(stripslashes($_POST["ap"]));
     $am = strip_tags(stripslashes($_POST["am"]));
     $nombre = strip_tags(stripslashes($_POST["nombre"]));
     $ci = strip_tags(stripslashes($_POST["ci"]));
     //$db->debug=true;
     if($ap or $am or $nombre or $ci){
          $sql3 = $db->Prepare("SELECT *
                              FROM personas
                              WHERE ap LIKE ?
                              AND am LIKE ?
                              AND nombre LIKE ?
                              AND ci LIKE ?
                              AND estado <> '0'
                             ");
          $rs3 = $db->GetAll($sql3, array($ap."%", $am."%",$nombre."%",$ci."%"));
          if ($rs3) {
               echo"<center>
               <table class='listado'>
               <tr>
                    <th>C.I.</th><th>PATERNO</th><th>MATERNO</th><th>NOMBRES</th><th>SELECCIONE</th>
               </tr>";
               foreach ($rs3 as $k => $fila){
                    $str = $fila["ci"];
                    $str1 = $fila["ap"];
                    $str2 = $fila["am"];
                    $str3 = $fila["nombre"];
                    echo"<tr>
                         <td aling='center'>".resaltar($ci, $str)."</td>
                         <td>".resaltar($ap, $str1)."</td>
                         <td>".resaltar($am, $str2)."</td>
                         <td>".resaltar($nombre, $str3)."</td>
                         <td aling='center'>
                         <input type='radio' name='seleccione' value='".$fila['id_persona']."' onclick='mostrar(".$fila["id_persona"].")'>
                         </td>
                         </tr>"; 
               }
               echo "</table>
          </center>";
          }else{
               echo"<center><b> la persona no existe!!</b></center><br>";
          }
     }
 ?>