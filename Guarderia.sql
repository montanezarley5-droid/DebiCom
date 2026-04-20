create database Guarderia;
use Guarderia;

create TABLE EstadoAsistencia(
	id_estado_asistencia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	estado VARCHAR(45) NOT NULL,
	excusa VARCHAR(45) NULL
);

create TABLE Acudiente(
	id_acudiente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(45) NULL,
	apellidos VARCHAR(45) NULL,
	documento VARCHAR(45) NULL,
	telefono VARCHAR(45) NULL
);

create TABLE Ambiente(
	id_ambiente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	numero_ambiente VARCHAR(45) NOT NULL
);

create TABLE Actividades(
	id_actividades INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	descripcion VARCHAR(45) NOT NULL,
	fecha_actividad DATE NOT NULL
);

create TABLE docentes(
	id_docentes INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(45) NOT NULL,
	apellidos VARCHAR(45) NOT NULL
);

create TABLE Grupos(
	id_grupo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	cupos INT NOT NULL,
	nombre_grupo VARCHAR(45) NOT NULL,
	id_docente INT,
	id_ambiente INT,
	CONSTRAINT FK_docente_grupo
		FOREIGN KEY (id_docente) REFERENCES docentes(id_docentes),
	CONSTRAINT FK_ambiente_grupo
		FOREIGN KEY (id_ambiente) REFERENCES Ambiente(id_ambiente)
);

create TABLE Ninos(
	id_ninos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombres VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	codigo_unico VARCHAR(45) NOT NULL,
	numero_documento VARCHAR(45),
	id_grupo INT,
	CONSTRAINT FK_grupo_Ninos
		FOREIGN KEY(id_grupo) REFERENCES Grupos(id_grupo)
	
);

create TABLE RegistroMedico(
	id_registro_medico INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	observaciones VARCHAR(45) NOT NULL,
	Alergias VARCHAR(45) NOT NULL,
	contacto_emergencia VARCHAR(45) NOT NULL,
	id_ninos INT,
	CONSTRAINT FK_ninos_Registro
		FOREIGN KEY(id_ninos) REFERENCES Ninos(id_ninos)
);

create TABLE Asistencia(
	id_asistencia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	fecha DATE NOT NULL,
	id_ninos INT NULL,
	id_estado_asistencia INT,
	CONSTRAINT FK_ninos_Asistencia
		FOREIGN KEY(id_ninos) REFERENCES Ninos(id_ninos),
	CONSTRAINT FK_estado_asistencia
		FOREIGN KEY(id_estado_asistencia) REFERENCES EstadoAsistencia(id_estado_asistencia)
);

create TABLE GrupoYActividad(
	id_grupo INT NULL,
	id_actividades INT NULL,
	CONSTRAINT FK_grupo_actividad
		FOREIGN KEY(id_grupo) REFERENCES Grupos(id_grupo),
	CONSTRAINT FK_actividades_grupo
		FOREIGN KEY(id_actividades) REFERENCES Actividades(id_actividades)
);

create TABLE NinosYAcudientes(
	id_ninos INT NULL,
	id_acudientes INT NULL,
	CONSTRAINT FK_ninos_acudiente
		FOREIGN KEY(id_ninos) REFERENCES Ninos(id_ninos),
	CONSTRAINT FK_acudientes_ninos
		FOREIGN KEY(id_acudientes) REFERENCES Acudiente(id_acudiente)
);

show tables;
describe EstadoAsistencia;
select * from EstadoAsistencia;
insert into EstadoAsistencia(id_estado_asistencia , estado)
values (1 , 'Asistio') , (2, 'No Asistio') , (3, 'Excusa');

describe Acudiente;
select * from Acudiente;
insert into Acudiente(id_acudiente,nombre,apellidos,documento,telefono)
values(1, 'juan', 'Acosta', '1012456789', '3125214526'),
(2, 'Pablo', 'Ramirez', '1016456780', '3105645987'),
(3, 'Angelica', 'Rojas', '1013425889', '3052005124'),
(4, 'Camila', 'Pinzon', '20520156', '3015269857'),
(5, 'Sofia', 'Ocampo', '1003521648', '3163695821'),
(6, 'Karla', 'Guerrero', '30256897', '3201320256'),
(7, 'Cristian', 'Olaya', '1016256896', '3218569824'),
(8, 'Manuel', 'Tovar', '80297156', '3112185138'),
(9, 'Chucho', 'Ospina', '1030697792', '3125569857'),
(10, 'Mencho', 'Perez', '1004435959', '3105721333');

describe Ambiente;
select * from Ambiente;
insert into Ambiente( id_Ambiente , numero_Ambiente)
values (1, 'A1_201'), 
(2, 'A1_202'),
(3, 'A1_203'),
(4, 'A1_204'),
(5, 'A1_205'),
(6, 'B1_206'),
(7, 'B1_207'),
(8, 'B1_208'),
(9, 'B1_209'),
(10, 'B1_301');

describe Actividades;
select * from Actividades;
insert into Actividades(id_Actividades, descripcion, fecha_Actividad)
values(1, 'Recreativas', '01-05-2026'), 
(2, 'Culturales', '20-06-2026'),
(3, 'salidas_pedagogicas', '15-10-2026'),
(4, 'pintura con hielo', '12-09-2026'),
(5, 'mesas sensoriales', '12-05-2026'),
(6, 'manualidades con material reciclado', '07-06-2026'),
(7, 'canciones', '01-04-2026'),
(8, ' cuentos motores', '12-11-2026'),
(9, 'juegos de trasvase (arena/agua)', '02-08-2026'),
(10, ' plastilina casera y circuitos', '18-02-2026');

describe docentes;
select * from docentes;
insert into docentes(id_docentes, nombre, apellidos)
values(1, 'jaimito', 'perez'), 
(2, 'carolina', 'Cifuentes'),
(3, 'Matha', 'Casas'),
(4, 'Pablo', 'Jimenez'),
(5, 'Paula', 'Zambrano'),
(6, 'Nicol', 'Perez'),
(7, 'sofia', 'Cifuentes'),
(8, 'Sara', 'suarez'),
(9, 'Valentina', 'Pinzon'),
(10, 'Carlos', 'Castro');

describe Grupos;
select * from Grupos;
insert into Grupos(id_grupo,cupos,nombre_grupo,id_docente,id_ambiente)
values(3, 'grupo_sayayin', 1 , 1), 
(3, 'grupo_Software', 2 , 2),
(3, 'grupo_Modas', 3 , 3),
(3, 'grupo_los alfas', 4 , 4),
(3, 'grupo_gorila', 5 , 5),
(3, 'grupo_salchicha', 6 , 6),
(3, 'grupo_cohete', 7 , 7),
(3, 'grupo_dinamita', 8 , 8),
(3, 'grupo_los crack', 9 , 9),
(3, 'grupo_telecomunicaciones', 10 , 10);

describe Ninos;
select * from Ninos;
insert into Ninos(id_ninos,nombres,apellidos,codigo_unico,numero_documento,id_grupo)
values(1, 'pedro', 'cifuentes', 'A1_011', '1005441144',1),
(2, 'camilo', 'Paez', 'A1_021', '2512441512', 1),
(3, 'sofia', 'Rojas', 'A1_031', '1003536547', 1),
(4, 'Camila', 'Pinzon', 'A1_041', '1003269257', 1),
(5, 'Sofia', 'Montañez', 'A1_051', '1003521548', 1),
(6, 'Karla', 'Guerrero', 'B1_061', '1016568972', 2),
(7, 'paola', 'Olaya', 'B1_071', '1016256896', 2),
(8, 'Martha', 'Ospina', 'B1_081', '1003297156', 2),
(9, 'Michaell', 'Tovar', 'B1_091', '1030658792', 2),
(10, 'valentina', 'suarez', 'B1_101', '1015258974', 2);

describe RegistroMedico;
select * from RegistroMedico;
insert into RegistroMedico(id_registro_medico,observaciones,Alergias,contacto_emergencia,id_ninos)
values(1, 'sin observaciones' , 'sin alergias', 60152454, 1),
(2, 'sin observaciones' , 'sin alergias', 60152454, 2),
(3, 'sin observaciones' , 'sin alergias', 60152454, 3),
(4, 'sin observaciones' , 'sin alergias', 60152454, 4),
(5, 'sin observaciones' , 'sin alergias', 60152454, 5),
(6, 'sin observaciones' , 'sin alergias', 60152454, 6),
(7, 'sin observaciones' , 'sin alergias', 60152454, 7),
(8, 'sin observaciones' , 'sin alergias', 60152454, 8),
(9, 'sin observaciones' , 'sin alergias', 60152454, 9),
(10, 'sin observaciones' , 'sin alergias', 60152454, 10);

describe Asistencia;
select * from Asistencia;
insert into Asistencia(id_asistencia,fecha,id_ninos,id_estado_asistencia)








