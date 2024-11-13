-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2024 a las 23:13:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `preceptoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `lugarNacimiento` varchar(70) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `codPostal` int(11) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`DNI`, `CUIL`, `nombre`, `apellido`, `edad`, `genero`, `fechaNacimiento`, `lugarNacimiento`, `nacionalidad`, `telefono`, `domicilio`, `barrio`, `localidad`, `codPostal`, `mail`) VALUES
(123, 123, 'dsad', 'dsads', 12, 'masculino', '2024-11-02', 'dsadsa', 'dsadsa', 123, 'dsdsa', 'dsada', 'dsads', 123, 'dsadsads@gmail.com'),
(321321, 2321, 'dsajdl', 'jdksajdlks', 20, 'masculino', '2024-11-23', 'dsald', 'djlksajdlk', 32312, 'dklajdl', 'jdlksajd', 'jdslajd', 132, 'ndkjsahd@gmail.com'),
(381273, 21321, 'dsajd', 'jdlksajdlkas', 13, 'masculino', '2024-11-29', 'dksaljdsa', 'kdjsaldj', 21321, 'sjakdjsal', 'lkdsajdlka', 'jdslkajdksl', 123, 'dlakjs@gmail.com'),
(10101010, 20101010101, 'Valentina', 'Lópee', 14, 'Femenino', '2007-02-12', 'Buenos Aires', 'Argentino', 233431232, 'Av. San Martín 10', 'Centro', 'Buenos Aires', 1001, 'valentina.lopez@nashee.com'),
(20202020, 20202020202, 'Matías', 'García', 17, 'Masculino', '2006-05-20', 'CABA', 'Argentino', 2233445566, 'Calle 10 22', 'Norte', 'CABA', 1402, 'matias.garcia@example.com'),
(30303030, 20303030303, 'Sofia', 'Martínez', 16, 'Femenino', '2007-08-15', 'La Plata', 'Argentino', 3344556677, 'Calle 5 33', 'Oeste', 'La Plata', 1902, 'sofia.martinez@example.com'),
(40404040, 20404040404, 'Diego', 'Rodríguez', 17, 'Masculino', '2006-09-28', 'Rosario', 'Argentino', 4455667788, 'Calle 7 44', 'Sur', 'Rosario', 2003, 'diego.rodriguez@example.com'),
(50505050, 20505050505, 'Lara', 'Fernández', 15, 'Femenino', '2008-01-10', 'Mendoza', 'Argentino', 5566778899, 'Calle 3 55', 'Este', 'Mendoza', 5502, 'lara.fernandez@example.com'),
(238913082, 29830218309218, 'dsadsads', 'dsadsadsdsdsa', 12, 'masculino', '2024-11-12', 'sadsadaji', 'jdksajdokasj', 1321312, 'jdsoajdai', 'dksjdkaj', 'djsakjdas', 123, 'dpsajpdsaj@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnoscursos`
--

CREATE TABLE `alumnoscursos` (
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnoscursos`
--

INSERT INTO `alumnoscursos` (`idAlumno`, `idCurso`, `anio`) VALUES
(10101010, 1, 1),
(20202020, 2, 1),
(30303030, 3, 2),
(40404040, 4, 2),
(50505050, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosmaterias`
--

CREATE TABLE `alumnosmaterias` (
  `idAlumno` bigint(20) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `idMateria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnosmaterias`
--

INSERT INTO `alumnosmaterias` (`idAlumno`, `estado`, `idMateria`) VALUES
(10101010, 'Aprobado', 1),
(20202020, 'Reprobado', 2),
(30303030, 'Aprobado', 1),
(40404040, 'Regular', 3),
(50505050, 'Aprobado', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosregulares`
--

CREATE TABLE `alumnosregulares` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnosregulares`
--

INSERT INTO `alumnosregulares` (`DNI`, `CUIL`, `nombre`, `apellido`, `edad`, `genero`, `telefono`, `nacionalidad`, `domicilio`, `mail`) VALUES
(10101010, 20101010101, 'Valentina', 'López', 16, 'Femenino', 1122334455, 'Argentino', 'Av. San Martín 11', 'valentina.lopez@example.com'),
(20202020, 20202020202, 'Matías', 'García', 17, 'Masculino', 2233445566, 'Argentino', 'Calle 10 22', 'matias.garcia@example.com'),
(30303030, 20303030303, 'Sofia', 'Martínez', 16, 'Femenino', 3344556677, 'Argentino', 'Calle 5 33', 'sofia.martinez@example.com'),
(40404040, 20404040404, 'Diego', 'Rodríguez', 17, 'Masculino', 4455667788, 'Argentino', 'Calle 7 44', 'diego.rodriguez@example.com'),
(50505050, 20505050505, 'Lara', 'Fernández', 15, 'Femenino', 5566778899, 'Argentino', 'Calle 3 55', 'lara.fernandez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosresponsables`
--

CREATE TABLE `alumnosresponsables` (
  `idAlumno` bigint(20) NOT NULL,
  `idResponsable` bigint(20) NOT NULL,
  `parentesco` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnosresponsables`
--

INSERT INTO `alumnosresponsables` (`idAlumno`, `idResponsable`, `parentesco`) VALUES
(10101010, 11111112, 'Madre'),
(20202020, 22222223, 'Padre'),
(30303030, 33333334, 'Madre'),
(40404040, 44444445, 'Padre'),
(50505050, 55555556, 'Madre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `division` int(11) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `idPreceptor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idCurso`, `anio`, `division`, `especialidad`, `idPreceptor`) VALUES
(1, 1, 1, 'Computacion', 12345678),
(2, 1, 2, 'Automotores', 87654321),
(3, 2, 1, 'Automotores', 23456789),
(4, 2, 2, 'Computacion', 34567890),
(5, 3, 1, 'Computacion', 45678901);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosmaterias`
--

CREATE TABLE `cursosmaterias` (
  `idCurso` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresados`
--

CREATE TABLE `egresados` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `idInforme` int(11) NOT NULL,
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idPreceptor` bigint(20) DEFAULT NULL,
  `idProfesor` bigint(20) DEFAULT NULL,
  `informe` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`idInforme`, `idAlumno`, `idCurso`, `idPreceptor`, `idProfesor`, `informe`) VALUES
(1, 10101010, 1, 12345678, 11111111, 'Gran desempeño en clase.'),
(2, 20202020, 2, 87654321, 22222222, 'Necesita mejorar su actitud.'),
(3, 30303030, 3, 23456789, 33333333, 'Excelente en matemáticas.'),
(4, 40404040, 4, 34567890, 44444444, 'Debo mencionar problemas de conducta.'),
(5, 50505050, 5, 45678901, 55555555, 'Buen progreso en el último trimestre.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `idMateria` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `anio` int(11) NOT NULL,
  `area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idMateria`, `nombre`, `anio`, `area`) VALUES
(1, 'Matematicas', 1, 'Ciencias Exactas'),
(2, 'Historia', 1, 'Humanidades'),
(3, 'Lengua', 1, 'Ciencias Sociales'),
(4, 'Física', 2, 'Ciencias Exactas'),
(5, 'Química', 2, 'Ciencias Exactas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptores`
--

CREATE TABLE `preceptores` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `codPostal` int(11) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preceptores`
--

INSERT INTO `preceptores` (`DNI`, `CUIL`, `nombre`, `apellido`, `edad`, `fechaNacimiento`, `nacionalidad`, `telefono`, `domicilio`, `barrio`, `localidad`, `codPostal`, `mail`) VALUES
(12345678, 20312345678, 'Juan', 'Pérez', 35, '1988-05-15', 'Argentino', 1122334455, 'Av. Siempre Viva 123', 'Centro', 'Buenos Aires', 1000, 'juan.perez@example.com'),
(23456789, 20323456789, 'Carlos', 'Lopez', 29, '1994-01-30', 'Argentino', 3344556677, 'Calle 7 789', 'Oeste', 'La Plata', 1900, 'carlos.lopez@example.com'),
(34567890, 20334567890, 'Ana', 'Martinez', 38, '1985-11-05', 'Argentino', 4455667788, 'Av. Libertador 321', 'Sur', 'Rosario', 2000, 'ana.martinez@example.com'),
(45678901, 20345678901, 'Lucas', 'Rodriguez', 31, '1992-04-18', 'Argentino', 5566778899, 'Calle 10 654', 'Este', 'Mendoza', 5500, 'lucas.rodriguez@example.com'),
(87654321, 20387654321, 'María', 'Gómez', 42, '1981-09-22', 'Argentino', 2233445566, 'Calle Falsa 456', 'Norte', 'CABA', 1400, 'maria.gomez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `codPostal` int(11) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `antiguedad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`DNI`, `CUIL`, `nombre`, `apellido`, `edad`, `fechaNacimiento`, `nacionalidad`, `telefono`, `domicilio`, `barrio`, `localidad`, `codPostal`, `mail`, `antiguedad`) VALUES
(11111111, 20111111111, 'Pedro', 'Sánchez', 40, '1983-06-12', 'Argentino', 6677889900, 'Calle 1 1', 'Centro', 'Buenos Aires', 1001, 'pedro.sanchez@example.com', '10 años'),
(22222222, 20222222222, 'Lucía', 'Fernández', 36, '1987-07-23', 'Argentino', 7788990011, 'Calle 2 2', 'Norte', 'CABA', 1401, 'lucia.fernandez@example.com', '5 años'),
(33333333, 20333333333, 'Javier', 'González', 45, '1978-02-14', 'Argentino', 8899001122, 'Calle 3 3', 'Oeste', 'La Plata', 1901, 'javier.gonzalez@example.com', '15 años'),
(44444444, 20444444444, 'Sofía', 'Ramírez', 29, '1994-03-08', 'Argentino', 9900112233, 'Calle 4 4', 'Sur', 'Rosario', 2001, 'sofia.ramirez@example.com', '3 años'),
(55555555, 20555555555, 'Diego', 'Hernández', 38, '1985-10-19', 'Argentino', 1011121314, 'Calle 5 5', 'Este', 'Mendoza', 5501, 'diego.hernandez@example.com', '8 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesorescursos`
--

CREATE TABLE `profesorescursos` (
  `idProfesor` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesoresmaterias`
--

CREATE TABLE `profesoresmaterias` (
  `idProfesor` bigint(20) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrosacademicos`
--

CREATE TABLE `registrosacademicos` (
  `idRegistroAcademico` int(11) NOT NULL,
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `calificacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrosacademicos`
--

INSERT INTO `registrosacademicos` (`idRegistroAcademico`, `idAlumno`, `idCurso`, `idMateria`, `calificacion`) VALUES
(1, 10101010, 1, 1, '9'),
(2, 20202020, 2, 2, '4'),
(3, 30303030, 3, 3, '7'),
(4, 40404040, 4, 4, '6'),
(5, 50505050, 5, 5, '9'),
(6, 10101010, 1, 3, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrosasistencias`
--

CREATE TABLE `registrosasistencias` (
  `idRegistroAsistencia` int(11) NOT NULL,
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrosasistencias`
--

INSERT INTO `registrosasistencias` (`idRegistroAsistencia`, `idAlumno`, `idCurso`, `asistencia`, `fecha`) VALUES
(1, 10101010, 1, 1, '2023-09-01'),
(2, 20202020, 2, 0, '2023-09-01'),
(3, 30303030, 3, 1, '2023-09-01'),
(4, 40404040, 4, 1, '2023-09-01'),
(5, 50505050, 5, 0, '2023-09-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrosasistenciasmaterias`
--

CREATE TABLE `registrosasistenciasmaterias` (
  `idRegistroAsistenciaMateria` int(11) NOT NULL,
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `asistencia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrosconductas`
--

CREATE TABLE `registrosconductas` (
  `idRegistroConducta` int(11) NOT NULL,
  `idAlumno` bigint(20) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `conducta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrosconductas`
--

INSERT INTO `registrosconductas` (`idRegistroConducta`, `idAlumno`, `idCurso`, `conducta`) VALUES
(1, 10101010, 1, 'Excelente comportamiento'),
(2, 20202020, 2, 'Necesita mejorar'),
(3, 30303030, 3, 'Comportamiento adecuado'),
(4, 40404040, 4, 'Comportamiento inaceptable'),
(5, 50505050, 5, 'Muy buen comportamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE `responsables` (
  `DNI` bigint(20) NOT NULL,
  `CUIL` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `ocupacion` varchar(60) NOT NULL,
  `domicilio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `responsables`
--

INSERT INTO `responsables` (`DNI`, `CUIL`, `nombre`, `apellido`, `edad`, `telefono`, `mail`, `ocupacion`, `domicilio`) VALUES
(11111112, 20111111112, 'José', 'López', 40, 6677889900, 'jose.lopez@example.com', 'Ingeniero', 'Av. Siempre Viva 123'),
(22222223, 20222222223, 'Mariana', 'Fernández', 38, 7788990011, 'mariana.fernandez@example.com', 'Docente', 'Calle Falsa 456'),
(33333334, 20333333334, 'Esteban', 'García', 42, 8899001122, 'esteban.garcia@example.com', 'Médico', 'Calle 7 789'),
(44444445, 20444444445, 'Carla', 'Pérez', 36, 9900112233, 'carla.perez@example.com', 'Abogada', 'Av. Libertador 321'),
(55555556, 20555555556, 'Luisa', 'Ramírez', 45, 1011121314, 'luisa.ramirez@example.com', 'Arquitecta', 'Calle 10 654');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `contrasenia`) VALUES
(11, 'mariana_preceptor', 'mariana_etn35_18'),
(12, 'preceptores35', 'Preceptores_etn35_18'),
(13, 'profesores35', 'Profesores_etn35_18'),
(14, 'alumnos35', 'Alumnos_etn35_18'),
(15, 'admin_BD', 'adminBD_etn35_18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `alumnoscursos`
--
ALTER TABLE `alumnoscursos`
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `alumnosregulares`
--
ALTER TABLE `alumnosregulares`
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `alumnosresponsables`
--
ALTER TABLE `alumnosresponsables`
  ADD UNIQUE KEY `idAlumno` (`idAlumno`),
  ADD KEY `idResponsable` (`idResponsable`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `idCurso` (`idCurso`),
  ADD KEY `idPreceptor` (`idPreceptor`);

--
-- Indices de la tabla `cursosmaterias`
--
ALTER TABLE `cursosmaterias`
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `egresados`
--
ALTER TABLE `egresados`
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD UNIQUE KEY `idInforme` (`idInforme`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idPreceptor` (`idPreceptor`),
  ADD KEY `idProfesor` (`idProfesor`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idMateria`),
  ADD UNIQUE KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `preceptores`
--
ALTER TABLE `preceptores`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `profesorescursos`
--
ALTER TABLE `profesorescursos`
  ADD KEY `idProfesor` (`idProfesor`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `profesoresmaterias`
--
ALTER TABLE `profesoresmaterias`
  ADD KEY `idProfesor` (`idProfesor`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `registrosacademicos`
--
ALTER TABLE `registrosacademicos`
  ADD UNIQUE KEY `idRegistroAcademico` (`idRegistroAcademico`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `registrosasistencias`
--
ALTER TABLE `registrosasistencias`
  ADD UNIQUE KEY `idRegistroAsistencia` (`idRegistroAsistencia`),
  ADD UNIQUE KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `registrosasistenciasmaterias`
--
ALTER TABLE `registrosasistenciasmaterias`
  ADD UNIQUE KEY `idRegistroAsistenciaMateria` (`idRegistroAsistenciaMateria`),
  ADD UNIQUE KEY `idMateria` (`idMateria`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `registrosconductas`
--
ALTER TABLE `registrosconductas`
  ADD UNIQUE KEY `idRegistroConducta` (`idRegistroConducta`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CUIL` (`CUIL`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `idInforme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registrosacademicos`
--
ALTER TABLE `registrosacademicos`
  MODIFY `idRegistroAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registrosasistencias`
--
ALTER TABLE `registrosasistencias`
  MODIFY `idRegistroAsistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registrosasistenciasmaterias`
--
ALTER TABLE `registrosasistenciasmaterias`
  MODIFY `idRegistroAsistenciaMateria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrosconductas`
--
ALTER TABLE `registrosconductas`
  MODIFY `idRegistroConducta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnoscursos`
--
ALTER TABLE `alumnoscursos`
  ADD CONSTRAINT `alumnoscursos_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `alumnoscursos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Filtros para la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD CONSTRAINT `alumnosmaterias_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `alumnosmaterias_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `alumnosregulares`
--
ALTER TABLE `alumnosregulares`
  ADD CONSTRAINT `alumnosregulares_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `alumnos` (`DNI`);

--
-- Filtros para la tabla `alumnosresponsables`
--
ALTER TABLE `alumnosresponsables`
  ADD CONSTRAINT `alumnosresponsables_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `alumnosresponsables_ibfk_2` FOREIGN KEY (`idResponsable`) REFERENCES `responsables` (`DNI`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`idPreceptor`) REFERENCES `preceptores` (`DNI`);

--
-- Filtros para la tabla `cursosmaterias`
--
ALTER TABLE `cursosmaterias`
  ADD CONSTRAINT `cursosmaterias_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `cursosmaterias_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `egresados`
--
ALTER TABLE `egresados`
  ADD CONSTRAINT `egresados_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `alumnos` (`DNI`);

--
-- Filtros para la tabla `informes`
--
ALTER TABLE `informes`
  ADD CONSTRAINT `informes_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `informes_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `informes_ibfk_3` FOREIGN KEY (`idPreceptor`) REFERENCES `preceptores` (`DNI`),
  ADD CONSTRAINT `informes_ibfk_4` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`DNI`);

--
-- Filtros para la tabla `profesorescursos`
--
ALTER TABLE `profesorescursos`
  ADD CONSTRAINT `profesorescursos_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`DNI`),
  ADD CONSTRAINT `profesorescursos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Filtros para la tabla `profesoresmaterias`
--
ALTER TABLE `profesoresmaterias`
  ADD CONSTRAINT `profesoresmaterias_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`DNI`),
  ADD CONSTRAINT `profesoresmaterias_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `registrosacademicos`
--
ALTER TABLE `registrosacademicos`
  ADD CONSTRAINT `registrosacademicos_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `registrosacademicos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `registrosacademicos_ibfk_3` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `registrosasistencias`
--
ALTER TABLE `registrosasistencias`
  ADD CONSTRAINT `registrosasistencias_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `registrosasistencias_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Filtros para la tabla `registrosasistenciasmaterias`
--
ALTER TABLE `registrosasistenciasmaterias`
  ADD CONSTRAINT `registrosasistenciasmaterias_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `registrosasistenciasmaterias_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `registrosasistenciasmaterias_ibfk_3` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `registrosconductas`
--
ALTER TABLE `registrosconductas`
  ADD CONSTRAINT `registrosconductas_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`DNI`),
  ADD CONSTRAINT `registrosconductas_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
