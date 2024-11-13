-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2024 a las 23:13:28
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
-- Base de datos: `doe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `especialidad` varchar(12) NOT NULL,
  `anio` int(1) NOT NULL,
  `materia` varchar(50) NOT NULL,
  `nombre_archivo` varchar(60) NOT NULL,
  `usuario_profesor` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `peso_mb` int(4) NOT NULL,
  `cod_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `especialidad`, `anio`, `materia`, `nombre_archivo`, `usuario_profesor`, `tipo`, `peso_mb`, `cod_profesor`) VALUES
(1, 'Ciclo basico', 1, 'Historia', 'Mio Cid.docx', 'Lucia Fernandez', 'Documento de texto', 0, 2),
(2, 'Ciclo basico', 1, 'Matematica', 'Mio Cid.docx', 'Lucia Fernandez', 'Documento de texto', 0, 2),
(3, 'Automotores', 4, 'Mecanica', 'MER-DER repositorio.png', 'Lucia Fernandez', 'Imagen', 0, 2),
(4, 'Ciclo basico', 1, 'Matematica', 'Mio Cid.docx', 'Fabian Rodriguez', 'Documento de texto', 0, 1),
(5, 'Computacion', 6, 'Aleman', 'Equipo 1 Propuesta 3 Tracking Comercial-1-1.pdf', 'dsads', 'PDF', 32, 1),
(6, 'Computacion', 5, 'Proyecto inf II', 'Equipo 1 Propuesta 3 Tracking Comercial-1-1.pdf', 'Jose', 'PDF', 32, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `edad_e_ingreso`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `edad_e_ingreso` (
`cod_profesor` int(11)
,`nombre` varchar(30)
,`apellido` varchar(40)
,`email` varchar(50)
,`edad` bigint(21)
,`anios_trabajados` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `cod_materia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `anio` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`cod_materia`, `nombre`, `anio`) VALUES
(1, 'Matematicas', 4),
(2, 'Educación física', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `cod_profesor` int(11) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `sueldo` float DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(100) GENERATED ALWAYS AS (concat(`nombre`,' ',`apellido`)) VIRTUAL,
  `clave` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`cod_profesor`, `DNI`, `nombre`, `apellido`, `telefono`, `direccion`, `sueldo`, `fecha_nacimiento`, `fecha_ingreso`, `email`, `clave`) VALUES
(1, '123123123', 'Fabian', 'Rodriguez', 1512341234, 'Av. Falsa 123', 12345.5, '2000-09-20', '2021-04-12', 'fabian.rodriguez@bue.edu.ar', 'sjzy0Pt0sP+gz0xw5uBJJg=='),
(2, '234234234', 'Lucia', 'Fernandez', 1512341234, 'Av. Falsa 123', 12345.5, '2000-09-20', '2021-04-12', 'lucia.fernandez@bue.edu.ar', 'W6zZ8lYTZZsvvS86WIIuXA==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materia`
--

CREATE TABLE `profesor_materia` (
  `cod_profesor` int(11) NOT NULL,
  `cod_materia` int(11) NOT NULL,
  `dia` varchar(10) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura para la vista `edad_e_ingreso`
--
DROP TABLE IF EXISTS `edad_e_ingreso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `edad_e_ingreso`  AS SELECT `profesor`.`cod_profesor` AS `cod_profesor`, `profesor`.`nombre` AS `nombre`, `profesor`.`apellido` AS `apellido`, `profesor`.`email` AS `email`, timestampdiff(YEAR,`profesor`.`fecha_nacimiento`,curdate()) AS `edad`, timestampdiff(YEAR,`profesor`.`fecha_ingreso`,curdate()) AS `anios_trabajados` FROM `profesor` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_profesor` (`cod_profesor`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`cod_materia`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`cod_profesor`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD PRIMARY KEY (`cod_profesor`,`cod_materia`),
  ADD KEY `cod_materia` (`cod_materia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `cod_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `cod_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`cod_profesor`) REFERENCES `profesor` (`cod_profesor`);

--
-- Filtros para la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD CONSTRAINT `profesor_materia_ibfk_1` FOREIGN KEY (`cod_profesor`) REFERENCES `profesor` (`cod_profesor`),
  ADD CONSTRAINT `profesor_materia_ibfk_2` FOREIGN KEY (`cod_materia`) REFERENCES `materia` (`cod_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
