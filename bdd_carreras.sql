
-- Volcando estructura de base de datos para carrera
CREATE DATABASE IF NOT EXISTS `carrera` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carrera`;

-- Volcando estructura para tabla carrera.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_carrera` int DEFAULT NULL,
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `dni` (`dni`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla carrera.alumnos: ~3 rows (aproximadamente)
INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `dni`, `fecha_nacimiento`, `id_carrera`) VALUES
	(1, 'Lucas', 'Martínez', '40111222', '2000-05-10', 1),
	(2, 'Sofía', 'Fernández', '40222333', '2001-08-15', 2),
	(3, 'Mateo', 'García', '40333444', '1999-12-20', 3);

-- Volcando estructura para tabla carrera.carreras
CREATE TABLE IF NOT EXISTS `carreras` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `duracion_anios` int DEFAULT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla carrera.carreras: ~3 rows (aproximadamente)
INSERT INTO `carreras` (`id_carrera`, `nombre`, `duracion_anios`) VALUES
	(1, 'Ingeniería en Sistemas', 5),
	(2, 'Administración de Empresas', 4),
	(3, 'Contador Público', 5);

-- Volcando estructura para tabla carrera.materias
CREATE TABLE IF NOT EXISTS `materias` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_carrera` int DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`),
  CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla carrera.materias: ~4 rows (aproximadamente)
INSERT INTO `materias` (`id_materia`, `nombre`, `id_carrera`, `id_profesor`) VALUES
	(1, 'Programación I', 1, 1),
	(2, 'Álgebra', 1, 2),
	(3, 'Sistemas Contables', 3, 3),
	(4, 'Administración General', 2, 3);

-- Volcando estructura para tabla carrera.profesores
CREATE TABLE IF NOT EXISTS `profesores` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_profesor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla carrera.profesores: ~3 rows (aproximadamente)
INSERT INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `especialidad`) VALUES
	(1, 'Juan', 'Pérez', 'Programación'),
	(2, 'María', 'Gómez', 'Matemática'),
	(3, 'Carlos', 'López', 'Contabilidad');


