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









