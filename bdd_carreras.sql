
INSERT IGNORE INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `dni`, `fecha_nacimiento`, `id_carrera`) VALUES
	(1, 'Lucas', 'Martínez', '40111222', '2000-05-10', 1),
	(2, 'Sofía', 'Fernández', '40222333', '2001-08-15', 2),
	(3, 'Mateo', 'García', '40333444', '1999-12-20', 3);

INSERT IGNORE INTO `carreras` (`id_carrera`, `nombre`, `duracion_anios`) VALUES
	(1, 'Ingeniería en Sistemas', 5),
	(2, 'Administración de Empresas', 4),
	(3, 'Contador Público', 5);

INSERT IGNORE INTO `materias` (`id_materia`, `nombre`, `id_carrera`, `id_profesor`) VALUES
	(1, 'Programación I', 1, 1),
	(2, 'Álgebra', 1, 2),
	(3, 'Sistemas Contables', 3, 3),
	(4, 'Administración General', 2, 3);

INSERT IGNORE INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `especialidad`) VALUES
	(1, 'Juan', 'Pérez', 'Programación'),
	(2, 'María', 'Gómez', 'Matemática'),
	(3, 'Carlos', 'López', 'Contabilidad');


