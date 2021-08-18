/*Creación de la BD*/
CREATE DATABASE bd_contratista;

/*Creación de las tablas necesarias*/

CREATE TABLE contratista(
id_contratista INT NOT NULL AUTO_INCREMENT,
ci int NOT NULL,
nombre VARCHAR(25)NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
fec_nac DATE NOT NULL,
direccion VARCHAR(25),
telefono int NOT NULL,
logo_contratista VARCHAR(25),

fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_contratista)
)ENGINE=INNODB;

INSERT INTO contratista VALUES(1,'8519803','Franz','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);
INSERT INTO contratista VALUES(2,'8519803','WILDER','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);
INSERT INTO contratista VALUES(3,'8519803','RENE','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);
INSERT INTO contratista VALUES(4,'8519803','juan','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);
INSERT INTO contratista VALUES(5,'8519803','julio','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);
INSERT INTO contratista VALUES(6,'8519803','cesar','garcia','hernandes','1990-01-23','av/circumbalacion','60262728','logo_contratista.jpg', now() ,now(), 1, 1);



CREATE TABLE propietarios(
id_propietario INT NOT NULL AUTO_INCREMENT,
ci int NOT NULL,
nombre VARCHAR(25)NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
direccion VARCHAR(25),
telef int NOT NULL,
fec_nac DATE NOT NULL,

fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_propietario)
)ENGINE=INNODB;



INSERT INTO propietarios VALUES(1,'8519803','RENE','GARCIA','HERNANDES','AV/CIRCUNVALACION','60262728','1990-01-23', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(2,'8519804','FRANZ','GONZALES','DIAS','CALLE SUIPACHA','62323442','1990-01-24', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(3,'8519805','FERNANDO','RODRIGUEZ','MORENO	','CALLE COLON','64384156','1990-01-25', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(4,'8519806','VICTOR','FERNANDES','MUÑOS','CALLE MEXICO','66444870','1990-01-26', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(5,'8519807','ALFREDO','LOPES','ALVARES','C/ AVAROA','68505584','1990-01-27', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(6,'8519808','LUCAS','PEREZ','ROMERO','C/DELFIN','70566298','1990-01-28', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(7,'8519809','EMILIO','GOMES','ALONSO','C/ AVAROA','72627012','1990-01-29', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(8,'8519810','ANTONIO','MARTIN','GUTIERREZ','C/ BARRIAL','74687726','1990-01-30', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(9,'8519811','DANIEL','RUIZ','NAVARRO','C/ LINO','76748440','1990-01-31', now() ,now(), 1, 1);
INSERT INTO propietarios VALUES(10,'8519812','FIDEL','JIMENES','TORRES','C/POSTUGAL','78809154','1990-02-01', now() ,now(), 1, 1);



CREATE TABLE proveedores(
id_proveedor INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(25)NOT NULL,
direccion VARCHAR(25)NOT NULL,
telefono int NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_proveedor)
)ENGINE=INNODB;




INSERT INTO proveedores VALUES(1,'SRL CARLOS','AV/CIRCUNVALACION','60262728', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(2,'BUSTILLOS','CALLE SUIPACHA','62323442', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(3,'SANCHES','CALLE COLON','64384156', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(4,'COMERCIAL TORRES','CALLE MEXICO','66444870', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(5,'CALAMINAS FLORES','C/ AVAROA','68505584', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(6,'AVAROA','C/DELFIN','70566298', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(7,'ALCON','C/ AVAROA','72627012', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(8,'BARROS','C/ BARRIAL','74687726', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(9,'MARTINEZ','C/ LINO','76748440', now() ,now(), 1, 1);
INSERT INTO proveedores VALUES(10,'ANTONIO','C/POSTUGAL','78809154', now() ,now(), 1, 1);




CREATE TABLE obras(
id_obra INT NOT NULL AUTO_INCREMENT,
id_contratista INT NOT NULL,
id_propietario INT NOT NULL,
nombre VARCHAR(25)NOT NULL,
cod VARCHAR(10)NOT NULL,
monto FLOAT NOT NULL,
f_inicio DATE NOT NULL,
f_fin DATE NOT NULL,
descripcion VARCHAR(150),
direccion VARCHAR(25),
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_obra),
FOREIGN KEY(id_contratista) REFERENCES contratista(id_contratista),
FOREIGN KEY(id_propietario) REFERENCES propietarios(id_propietario)
)ENGINE=INNODB;

INSERT INTO obras VALUES(1, 1, 1, 'CASA FAMILIAR','COD-1',10.000,'2019-01-12','2023-01-23','REMODELACION','AV/CIRCUNVALACION',now() ,now(), 1, 1);
INSERT INTO obras VALUES(2, 1, 2, 'OFICINA','COD-2',34.000,'2019-01-13','2023-01-24','REFACCION','CALLE SUIPACHA',now() ,now(), 1, 1);
INSERT INTO obras VALUES(3, 1, 3,'EDIFICIO','COD-3',10.000,'2019-01-14','2023-01-25','PINTURA','CALLE COLON',now() ,now(), 1, 1);
INSERT INTO obras VALUES(4, 1, 4,'ESTACIONAMIENTO','COD-4',10.000,'2019-01-15','2023-01-26','TODO DE 0','CALLE MEXICO', now() ,now(), 1, 1);
INSERT INTO obras VALUES(5, 1, 5,'RESIDENCIA','COD-5',10.000,'2019-01-16','2023-01-27','DE INICIO','C/ AVAROA', now() ,now(), 1, 1);
INSERT INTO obras VALUES(6, 1, 6,'COLEGIO','COD-6',10.000,'2019-01-17','2023-01-28','COMPLETO','C/DELFIN',now() ,now(), 1, 1);
INSERT INTO obras VALUES(7, 1, 7,'INSTITUTO','COD-7',10.000,'2019-01-18','2023-01-29','TECHADO','C/ AVAROA',now() ,now(), 1, 1);
INSERT INTO obras VALUES(8, 1, 8,'REMODELACION','COD-8',10.000,'2019-01-19','2023-01-30','SOLO PISO','C/ BARRIAL',now() ,now(), 1, 1);
INSERT INTO obras VALUES(9, 1, 9,'ALMACEN','COD-9',10.000,'2019-01-20','2023-01-31','GRADAS','C/ LINO',now() ,now(), 1, 1);
INSERT INTO obras VALUES(10, 1, 10,'UNIVERSIDAD','COD-10',10.000,'2019-01-21','2023-02-01','CASADE 2 PISOS','C/POSTUGAL',now() ,now(), 1, 1);



CREATE TABLE materiales(
id_material INT NOT NULL AUTO_INCREMENT,
id_obra INT NOT NULL,
nombre VARCHAR(25)NOT NULL,
precio FLOAT NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_material),
FOREIGN KEY(id_obra) REFERENCES obras(id_obra)
)ENGINE=INNODB;


INSERT INTO materiales VALUES(1,1, 'madera',122	,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(2,2, 'BARRA DE FIERRO',150,now() ,now(), 1, 1);	
INSERT INTO materiales VALUES(3,4, 'YESO',178,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(4,4, 'SEMENTO',206,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(5,5, 'LADRILLO',234,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(6,6, 'ARENA',262,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(7,7, 'GRAVILLA',290,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(8,8, 'PIEDRA',318,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(9,9, 'ALAMBRE',346,now() ,now(), 1, 1);
INSERT INTO materiales VALUES(10,10, 'CLAVO',374,now() ,now(), 1, 1);


CREATE TABLE materiales_proveedores(
id_material_proveedor INT NOT NULL AUTO_INCREMENT,
id_material INT NOT NULL,
id_proveedor INT NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_material_proveedor),
FOREIGN KEY(id_material) REFERENCES materiales(id_material),
FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;


INSERT INTO materiales_proveedores VALUES(1,1,1,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(2,2,2,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(3,3,3,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(4,4,4,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(5,5,5,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(6,6,6,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(7,7,7,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(8,8,8,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(9,9,9,now() ,now(), 1, 1);
INSERT INTO materiales_proveedores VALUES(10,10,10,now() ,now(), 1, 1);

CREATE TABLE herramientas(

id_herramienta INT NOT NULL AUTO_INCREMENT,
id_obra INT NOT NULL,
nombre VARCHAR(25)NOT NULL,
cantidad INT NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_herramienta),
FOREIGN KEY(id_obra) REFERENCES obras(id_obra)
)ENGINE=INNODB;


INSERT INTO herramientas VALUES(1,1, 'pala',2,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(2,2, 'pico',3,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(3,3, 'martillo',4,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(4,4, 'tenaza',6,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(5,5, 'frotacho',33,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(6,6, 'valdes',54,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(7,7, 'combo',35,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(8,8, 'plancha',33,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(9,9, 'bibradora',2,now() ,now(), 1, 1);
INSERT INTO herramientas VALUES(10,10, 'sierra',22,now() ,now(), 1, 1);


CREATE TABLE personal(
id_personal INT NOT NULL AUTO_INCREMENT,
id_obra INT NOT NULL,
nombre VARCHAR(25)NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
ci int NOT NULL,
direccion VARCHAR(25)NOT NULL,
telefono int NOT NULL,
ocupacion VARCHAR(25)NOT NULL,
fec_nac DATE NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_personal),
FOREIGN KEY(id_obra) REFERENCES obras(id_obra)
)ENGINE=INNODB;


INSERT INTO personal VALUES(1,1,'ALFREDO','HERNANDES','','8519803','AV/CIRCUNVALACION','60262728','PINTOR','1990-01-23',now() ,now(), 1, 1);
INSERT INTO personal VALUES(2,2,'LUCAS','DIAS','','8519804','CALLE SUIPACHA','62323442','CONTRATISTA','1990-01-24',now() ,now(), 1, 1);
INSERT INTO personal VALUES(3,3,'EMILIO','MORENO','RODRIGUEZ','8519805','CALLE COLON','64384156','ALBAÑIL','1990-01-25',now() ,now(), 1, 1);
INSERT INTO personal VALUES(4,4,'ANTONIO','MUÑOS','','8519806','CALLE MEXICO','66444870','CONTRAMAESTRO','1990-01-26',now() ,now(), 1, 1);
INSERT INTO personal VALUES(5,5,'DANIEL','ALVARES','LOPES','8519807','C/ AVAROA','68505584','AYUDANTE','1990-01-27',now() ,now(), 1, 1);
INSERT INTO personal VALUES(6,6,'FIDEL','ROMERO','PEREZ','8519808','C/DELFIN','0566298','LIMPIEZA','1990-01-28',now() ,now(), 1, 1);
INSERT INTO personal VALUES(7,7,'RENE','ALONSO','GOMES','8519809','C/ AVAROA','72627012','CONTRATISTA','1990-01-29',now() ,now(), 1, 1);
INSERT INTO personal VALUES(8,8,'FRANZ','GUTIERRES','MARTIN','8519810','C/ BARRIAL','74687726','ALBAÑIL','1990-01-30',now() ,now(), 1, 1);
INSERT INTO personal VALUES(9,9,'FERNANDO','NAVARRO','RUIZ','8519811','C/ LINO','76748440','AYUDANTE','1990-01-31',now() ,now(), 1, 1);
INSERT INTO personal VALUES(10,10,'VICTOR','TORRES','JIMENES','8519812','C/POSTUGAL','78809154','LIMPIEZA','1990-02-01',now() ,now(), 1, 1);



CREATE TABLE contrato_personal(
id_contrato_personal INT NOT NULL AUTO_INCREMENT,
id_personal INT NOT NULL,
monto FLOAT NOT NULL,
descripcion VARCHAR(150),
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_contrato_personal),
FOREIGN KEY(id_personal) REFERENCES personal(id_personal)
)ENGINE=INNODB;

INSERT INTO contrato_personal VALUES(1,1,3453, 'PINTOR','2019-01-12','2023-01-23',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(2,2,4534, 'CONTRATISTA','2019-01-13','2023-01-24',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(3,3,3453, 'MAESTRO','2019-01-14','2023-01-25',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(4,4,4353, 'CONTRAMAESTRO','2019-01-15','2023-01-26',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(5,5,3453, 'AYUDANTE','2019-01-16','2023-01-27',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(6,6,3333, 'LIMPIEZA','2019-01-17','2023-01-28',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(7,7,4354, 'PLOMERO','2019-01-18','2023-01-29',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(8,8,5345, 'GASISTA','2019-01-19','2023-01-30',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(9,9,4534, 'CARPINTERO','2019-01-20','2023-01-31',now() ,now(), 1, 1);
INSERT INTO contrato_personal VALUES(10,10,3453, 'VIDRIERIA','2019-01-21','2023-02-01',now() ,now(), 1, 1);


CREATE TABLE horarios(
id_horarios INT NOT NULL AUTO_INCREMENT,
id_personal INT NOT NULL,
h_entrada TIME(5) NOT NULL,
h_descanso TIME(5) NOT NULL,
h_salida TIME(5) NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_horarios),
FOREIGN KEY(id_personal) REFERENCES personal(id_personal)
)ENGINE=INNODB;


INSERT INTO horarios VALUES(1,1,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(2,2,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(3,3,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(4,4,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(5,5,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(6,6,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(7,7,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(8,8,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(9,9,now() ,now(),now() ,now() ,now(), 1, 1);
INSERT INTO horarios VALUES(10,10,now() ,now(),now() ,now() ,now(), 1, 1);

/*CREACION DE TABLAS DE SEGURIDAD*/


CREATE TABLE personas(
id_persona INT NOT NULL AUTO_INCREMENT,
id_contratista int NOT NULL,
ci VARCHAR(10) NOT NULL,
nombre VARCHAR(25)NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
genero VARCHAR(25),
telefono VARCHAR(10)NOT NULL,
direccion VARCHAR(25)NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_contratista) REFERENCES contratista(id_contratista)
)ENGINE=INNODB;

INSERT INTO personas VALUES(1,1,'34534534','WILDER','MARTINEZ','QUISPE','MASCULINO','53453453','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(2,1,'53453434','JUAN','CHAMBI','PERES','MASCULINO','5675675','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(3,1,'34535433','MARIA','SANCHES','JANCO','FEMENINO','3453453','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(4,1,'64646464','JOSE','CORDERO','MOLLO','MASCULINO','8676563','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(5,1,'67565645','RIDER','CARDOZO','TERAN','MASCULINO','5675653','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(6,1,'45465644','ALFREDO','MARTINEZ','LOPEZ','FEMENINO','6456456453','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(7,1,'45465644','CARLA','JAIRO','LOPEZ','FEMENINO','6456456453','AV/GRAN CHACO',now() ,now(), 1, 1);
INSERT INTO personas VALUES(8,1,'1789290','TANIA MARCELA','CARDOZO','LLANOS','FEMENINO','6456456453','AV/POTOSI',now() ,now(), 1, 1);
INSERT INTO personas VALUES(9,1,'3909291','JOSE LUIS','ARANDIA','JURADO','MASCULINO','6456456453','CALLLE COLON',now() ,now(), 1, 1);



CREATE TABLE roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR(25) NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;


INSERT INTO roles VALUES(1, 'administrador',now() ,now(), 1, 1);

INSERT INTO roles VALUES(2, 'USUARIO PRUEBA 1',now() ,now(), 1, 1);
INSERT INTO roles VALUES(3, 'USUARIO PRUEBA 2',now() ,now(), 1, 1);

INSERT INTO roles VALUES(4, 'USUARIO EXAMEN',now() ,now(), 1, 1);

CREATE TABLE usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona int not NULL,
usuario1 VARCHAR(30) NOT NULL,
clave VARCHAR(100) NOT NULL,

fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona) REFERENCES personas(id_persona)
)ENGINE=INNODB;


INSERT INTO usuarios VALUES(1,1, 'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);

INSERT INTO usuarios VALUES(2,1, 'tania','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);
INSERT INTO usuarios VALUES(3,1, 'jose_luis','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);

INSERT INTO usuarios VALUES(4,1, 'wilder','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);




CREATE TABLE registro_huellas(
	id_registro_huellas INT NOT NULL AUTO_INCREMENT,
	consulta VARCHAR(50) NOT NULL,
	fecha_inser TIMESTAMP NOT NULL,
	usuario INT NOT NULL,
	PRIMARY KEY(id_registro_huellas)
)ENGINE=INNODB; 




CREATE TABLE usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_rol INT NOT NULL,

fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY(id_rol) REFERENCES roles(id_rol)

)ENGINE=INNODB;

INSERT INTO usuarios_roles VALUES(1, 1, 1, now(), now(), 1, 1);
INSERT INTO usuarios_roles VALUES(2, 2, 2, now(), now(), 1, 1);
INSERT INTO usuarios_roles VALUES(3, 3, 3, now(), now(), 1, 1);

INSERT INTO usuarios_roles VALUES(4, 4, 4, now(), now(), 1, 1);


CREATE TABLE grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(30),

fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;

INSERT INTO grupos VALUES(1, 'HERRAMIENTAS',now() ,now(), 1, 1);
INSERT INTO grupos VALUES(2, 'SIS CONTRATISTA',now() ,now(), 1, 1);
INSERT INTO grupos VALUES(3, 'REPORTES',now() ,now(), 1, 1); 
INSERT INTO grupos VALUES(4, 'PARAMETROS',now() ,now(), 1, 1); 



CREATE TABLE opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT NOT NULL,
opcion VARCHAR(150),
contenido VARCHAR(150),
orden int(10),
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo) REFERENCES grupos(id_grupo)
)ENGINE=INNODB;


INSERT INTO opciones VALUES(1,1, 'Personas','../privada/personas/personas.php',10,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(2,1, 'usuarios','../privada/usuarios/usuarios.php',20,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(3,1, 'roles','../privada/roles/roles.php',30,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(4,1, 'usuarios_roles','../privada/usuarios_roles/usuarios_roles.php',40,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(5,1, 'grupos','../privada/grupos/grupos.php',50,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(6,1, 'opciones','../privada/opciones/opciones.php',60,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(7,1, 'accesos','../privada/accesos/accesos.php',70,now() ,now(), 1, 1);

INSERT INTO opciones VALUES(8,2, 'contratista','../privada/contratista/contratista.php',10,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(9,2, 'obras','../privada/obras/obras.php',20,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(10,2, 'propietarios','../privada/propietarios/propietarios.php',30,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(11,2, 'materiales','../privada/materiales/materiales.php',40,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(12,2, 'proveedores','../privada/proveedores/proveedores.php',50,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(13,2, 'herramientas','../privada/herramientas/herramientas.php',60,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(14,2, 'personal','../privada/personal/personal.php',70,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(15,2, 'contrato_personal','../privada/contrato_personal/contrato_personal.php',80,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(16,2, 'horarios','../privada/horarios/horarios.php',90,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(17,2, 'materiales_proveedores','../privada/materiales_proveedores/materiales_proveedores.php',100,now() ,now(), 1, 1);

INSERT INTO opciones VALUES(18,3, 'Rpt de Personas Usuarios','../privada/reportes/personas_usuarios.php',10,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(19,3, 'Rpt de Personas por Fechas','../privada/reportes/personas_fechas.php',20,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(20,3, 'Rpt de Contratista','../privada/reportes/contratista.php',30,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(21,3, 'Rpt de Personal por Fechas','../privada/reportes/personal_fechas.php',40,now() ,now(), 1, 1);

INSERT INTO opciones VALUES(22,1, '','',10,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(23,4, '','',20,now() ,now(), 1, 1);

INSERT INTO opciones VALUES(24,2, '','',10,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(25,3, '','',20,now() ,now(), 1, 1);


INSERT INTO opciones VALUES(26,3, 'Rpt de Contratista por Fechas','../privada/reportes/contratista_fechas.php',50,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(27,3, 'Rpt de Proveedores','../privada/reportes/proveedores.php',60,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(29,3, 'Rpt de personal','../privada/reportes/personal.php',70,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(30,3, 'Rpt de Proveedores por Fechas','../privada/reportes/proveedores_fechas.php',70,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(31,3, 'Rpt de Personas por genero','../privada/reportes/rpt_personas_genero.php',80,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(32,3, 'Rpt de Personal por ocupacion','../privada/reportes/rpt_personal_ocupacion.php',90,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(33,3, 'Ficha tecnica de Personas','../privada/reportes/fichas_tecnicas_personas.php',100,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(34,3, 'Ficha tecnica de propietarios','../privada/reportes/fichas_tecnicas_propietarios.php',110,now() ,now(), 1, 1);
INSERT INTO opciones VALUES(35,3, 'Ficha tecnica del personal ','../privada/reportes/fichas_tecnicas_personal.php',120,now() ,now(), 1, 1);





CREATE TABLE accesos(
id_acceso INT NOT NULL AUTO_INCREMENT,
id_opcion int NOT NULL,
id_rol int NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY(id_rol) REFERENCES roles(id_rol),
FOREIGN KEY(id_opcion) REFERENCES opciones(id_opcion)
)ENGINE=INNODB;

INSERT INTO accesos VALUES(1, 1, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(2, 2, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(3, 3, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(4, 4, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(5, 5, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(6, 6, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(7, 7, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(8, 8, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(9, 9, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(10, 10, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(11, 11, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(12, 12, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(13, 13, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(14, 14, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(15, 15, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(16, 16, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(17, 17, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(18, 18, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(19, 19, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(20, 20, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(21, 21, 1,now() ,now(), 1, 1);

INSERT INTO accesos VALUES(22, 22, 2,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(23, 23, 2,now() ,now(), 1, 1);

INSERT INTO accesos VALUES(24, 24, 3,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(25, 25, 3,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(26, 26, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(27, 27, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(29, 29, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(30, 30, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(31, 31, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(32, 32, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(33, 33, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(34, 34, 1,now() ,now(), 1, 1);
INSERT INTO accesos VALUES(35, 35, 1,now() ,now(), 1, 1);