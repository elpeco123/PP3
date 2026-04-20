-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla carrera.alumnos: ~3 rows (aproximadamente)
INSERT IGNORE INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `dni`, `fecha_nacimiento`, `id_carrera`) VALUES
	(1, 'Lucas', 'Martínez', '40111222', '2000-05-10', 1),
	(2, 'Sofía', 'Fernández', '40222333', '2001-08-15', 2),
	(3, 'Mateo', 'García', '40333444', '1999-12-20', 3);

-- Volcando datos para la tabla carrera.carreras: ~3 rows (aproximadamente)
INSERT IGNORE INTO `carreras` (`id_carrera`, `nombre`, `duracion_anios`) VALUES
	(1, 'Ingeniería en Sistemas', 5),
	(2, 'Administración de Empresas', 4),
	(3, 'Contador Público', 5);

-- Volcando datos para la tabla carrera.materias: ~4 rows (aproximadamente)
INSERT IGNORE INTO `materias` (`id_materia`, `nombre`, `id_carrera`, `id_profesor`) VALUES
	(1, 'Programación I', 1, 1),
	(2, 'Álgebra', 1, 2),
	(3, 'Sistemas Contables', 3, 3),
	(4, 'Administración General', 2, 3);

-- Volcando datos para la tabla carrera.profesores: ~3 rows (aproximadamente)
INSERT IGNORE INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `especialidad`) VALUES
	(1, 'Juan', 'Pérez', 'Programación'),
	(2, 'María', 'Gómez', 'Matemática'),
	(3, 'Carlos', 'López', 'Contabilidad');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
