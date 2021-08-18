DELIMITER //
	CREATE FUNCTION contar_registros()
	RETURNS INT
	BEGIN
		DECLARE resultado INT;
		SELECT COUNT(id_persona) INTO resultado
		FROM personas
		WHERE estado= 1;

		RETURN resultado;
	END //
DELIMITER ;

--LLAMADA A LA FUNCION
SELECT contar_registros()

------------------------------------------------------------------------
DELIMITER //
	CREATE FUNCTION contar_registros_contratista()
	RETURNS INT
	BEGIN
		DECLARE resultado INT;
		SELECT COUNT(id_contratista) INTO resultado
		FROM contratista
		WHERE estado= 1;

		RETURN resultado;
	END //
DELIMITER ;

--LLAMADA A LA FUNCION
SELECT contar_registros_contratista()
