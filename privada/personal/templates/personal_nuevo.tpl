<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
		<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
		<script type="text/javascript" src="js/validar_persona.js"></script>
	</head>
	<body>
		<div class="formu_ingreso_datos" >
			<form action="personal_nuevo1.php" method="post" name="formu">
				<h2>REGISTRAR PERSONAl </h2>
				
				<p>
					<input type="text" name="nombre" size="15" placeholder="Nombre" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="ap" size="15" placeholder="Apellido Paterno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="am" size="15" placeholder="Apellido Materno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="ci"  size="15" placeholder="Carnet de Identidad">(*)
				</p>
				<p>
					<input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="telefono" size="15" placeholder="telefono" >
				</p>
				<p>
					<input type="text" name="ocupacion" size="15" placeholder="ocupacion" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="fec_nac" size="15" placeholder="fec_nac" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='personal.php';" class="boton2">
				</p>
				<p><b>(*)Campos Obligatorios</b></p>
			</form>
		</div>
	</body>
</html>
