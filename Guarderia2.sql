-- 1.Mostrar niño y docente que le da clase --
SELECT nombre_nino AS Nombre_Niño,
nombre_docente AS Nombre_docente
FROM ninos
INNER JOIN Grupos ON fk_id_grupo = id_grupo
INNER JOIN docentes ON fk_id_docente = id_docentes;

-- 2.Mostrar niño, grupo y Actividad --
SELECT nombre_nino AS Nombre_Niño,
nombre_grupo AS Nombre_grupos,
descripcion_actividad AS Actividad_Asignada
FROM ninos
INNER JOIN Grupos ON id_ninos = id_grupo
INNER JOIN actividades ON id_grupo = id_actividades;

-- 3.Mostrar niño, acudiente y parentesco --
SELECT nombre_nino AS Nombre_Niño,
nombre_acudiente AS Nombre_Acudientes,
parentesco
FROM ninos
INNER JOIN acudiente ON id_acudiente = id_ninos;

-- 4.Mostrar asistencia con niño y acudiente --
SELECT fecha_asistencia AS fecha,
nombre_nino AS Nombre_Niño,
nombre_acudiente AS Nombre_Acudientes,
estado
FROM ninos
INNER JOIN asistencia ON id_ninos = fk_id_ninos
INNER JOIN estadoasistencia ON id_estado_asistencia = fk_id_estado_asistencia
INNER JOIN acudiente ON id_acudiente = id_ninos;

-- 5.Mostrar niño con el registro medico --
SELECT nombre_nino AS Nombre_Niño,
observaciones AS observaciones,
Alergias AS Alergias
FROM ninos
INNER JOIN registromedico  ON id_ninos = fk_id_ninos;

-- 6.Mostrar niño, grupo, docente y actividad --
SELECT nombre_nino AS Nombre_Niño,
nombre_grupo AS Nombre_Grupos,
nombre_docente AS Nombre_docentes,
descripcion_actividad AS Actividad_Asignada
FROM ninos
INNER JOIN grupos ON id_ninos = id_grupo
INNER JOIN docentes ON id_ninos = id_docentes
INNER JOIN actividades ON id_ninos = id_actividades;

-- 7.Mostrar niño, acudiente y Grupo --
SELECT nombre_nino AS Nombre_Niño,
nombre_acudiente AS Nombre_Acudientes,
nombre_grupo AS Nombre_Grupos
FROM ninos
INNER JOIN grupos ON id_ninos = id_grupo
INNER JOIN acudiente ON id_ninos = id_acudiente;

-- 8.Mostrar toda la asistencia completa,niño,docente,estado,fecha y el grupo --
SELECT fecha_asistencia AS Fecha,
nombre_nino AS Nombre_Niño,
nombre_docente AS Nombre_Docente,
estado AS estado,
nombre_grupo AS Nombre_Grupos
FROM ninos
INNER JOIN grupos ON id_grupo = fk_id_grupo 
INNER JOIN docentes ON id_docentes = fk_id_docente
INNER JOIN asistencia ON id_ninos = fk_id_ninos
INNER JOIN estadoasistencia ON id_estado_asistencia = fk_id_estado_asistencia;

-- 9.Mostrar docente, grupo y actividad especifica que dirige --
SELECT nombre_docente AS Nombre_Docente,
nombre_grupo AS Nombre_Grupos,
descripcion_actividad AS Actividad
FROM docentes
INNER JOIN grupos ON fk_id_docente = id_docentes
INNER JOIN grupoyactividad ON fk_id_grupo = id_grupo
INNER JOIN actividades ON id_actividades = fk_id_actividades;

-- 10.Mostrar niño, tipo de documento, numero de documento y acudiente --
SELECT nombre_nino AS Nombre_Niño,
tipo_documento AS tipo_documento,
documento_nino AS numero_documento,
nombre_acudiente AS Nombre_Acudientes
FROM ninos
INNER JOIN tipodocumento ON FK_id_tipo_documento = id_tipo_documento
INNER JOIN acudiente ON id_acudiente = id_ninos;




