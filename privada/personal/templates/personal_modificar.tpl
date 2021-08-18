<!DOCTYPE html>
<html>
     <head>
          <link rel="stylesheet" href="../{$direc_css}" type="text/css">
          <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
          <script type="text/javascript" src="js/validar_persona.js"></script>
     </head>
     <body>
          <div class="formu_ingreso_datos">
               <form action="personal_modificar1.php" method="post" name="formu">
               <h2>MODIFICAR PERSONAl</h2>
                    {foreach item=r from=$personal}
                    
                    <p>
                    <input type="text" name="nombre" size="15" placeholder="Nombre"  onkeyup="this.value=this.value.toUpperCase()" value="{$r.nombre}">(*)
                    </p>
                    <p>
                    <input type="text" name="ap" size="15" placeholder="Apellido Paterno" onkeyup="this.value=this.value.toUpperCase()" value="{$r.ap}">(*)
                    </p>
                    <p>
                    <input type="text" name="am" size="15" placeholder="Apellido Materno" onkeyup="this.value=this.value.toUpperCase()" value="{$r.am}">(*)
                    </p>
                    <p>
                    <input type="text" name="ci" size="15" placeholder="Carnet de Indentidad" value="{$r.ci}">(*)
                    </p>
                    <p>
                    <input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.direccion}">
                    </p>
                    <p>
                    <input type="text" name="telefono" size="15" placeholder="Telefono" value="{$r.telefono}">
                    </p>
                    <p>
                    <input type="text" name="ocupacion" size="15" placeholder="ocupacion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.ocupacion}">
                    </p>
                    <p>
                    <input type="text" name="fec_nac" size="15" placeholder="fecha de nacimiento" onkeyup="this.value=this.value.toUpperCase()" value="{$r.fec_nac}">
                    </p>
                    
                    
				<p>
                         <input type="hidden" name="accion" value="">
                         <input type="hidden" name="id_personal" value="{$r.id_personal}">
                         <input type="button" value="Aceptar"  onclick="validar();" class="boton2">
                         <input type="button" value="Cancelar" onclick="javascript:location.href='personas.php';" class="boton2">          
                    </p>
                    {/foreach}
                    <p><b>(*) Campos Obligatorios</b> </p>
               </form>
          </div>
     </body>
</html>
