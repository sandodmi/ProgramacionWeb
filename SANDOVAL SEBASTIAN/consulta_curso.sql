-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2015 a las 16:11:07
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `consulta_curso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
`id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(45) NOT NULL,
  `codigo_curso` int(45) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nombre_curso`, `codigo_curso`, `id_profesor`) VALUES
(1, 'Programacion Web', 100, 1),
(2, 'Programación en Red', 101, 2),
(3, 'Postproduccion ', 102, 2),
(4, 'HCI', 103, 1),
(5, 'Competencias', 104, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
`id_estudiante` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombre`, `apellido`, `correo`) VALUES
(1, 'SEBASTIAN ', 'SANDOVAL', 'ssmdnb@gmail.com'),
(2, 'JUAN ', 'GOMEZ', 'jg@gksf.com'),
(3, 'LORENA', 'GARCIA', 'lg@fkkg.com'),
(4, 'MARCELA', 'PEÑA', 'mpe@hm.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_cursos`
--

CREATE TABLE IF NOT EXISTS `estudiante_cursos` (
`id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante_cursos`
--

INSERT INTO `estudiante_cursos` (`id`, `id_estudiante`, `id_curso`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(6, 2, 5),
(7, 2, 4),
(8, 4, 5),
(10, 2, 3),
(11, 3, 4),
(12, 4, 4),
(13, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id_nota` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_nota`, `nombre`, `porcentaje`, `id_curso`) VALUES
(1, 'Quiz Uno', 0.2, 1),
(2, 'Examen parcial uno', 0.4, 1),
(3, 'Final', 0.4, 1),
(4, 'Prueba corta', 0.8, 2),
(5, 'Exposicion', 0.2, 2),
(6, 'Quiz', 0.4, 3),
(7, 'Quiz 2', 0.2, 3),
(8, 'Parcial', 0.4, 3),
(9, 'Final', 0.6, 3),
(10, 'Quiz ', 0.1, 4),
(11, 'Examen sorpresa', 0.25, 4),
(12, 'Salida a tablero', 0.15, 4),
(13, 'Quiz', 0.1, 5),
(14, 'Examen parcial', 0.2, 5),
(15, 'Final', 0.3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estudiante`
--

CREATE TABLE IF NOT EXISTS `notas_estudiante` (
`id_nota_estudiante` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_nota` int(11) NOT NULL,
  `float` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_estudiante`
--

INSERT INTO `notas_estudiante` (`id_nota_estudiante`, `id_estudiante`, `id_curso`, `id_nota`, `float`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 1, 2, 5),
(3, 2, 1, 1, 2),
(4, 2, 1, 2, 1),
(5, 4, 1, 2, 5),
(6, 4, 1, 3, 4),
(7, 2, 2, 1, 3.5),
(8, 2, 2, 4, 4.5),
(9, 2, 2, 3, 1.8),
(11, 3, 4, 1, 2.8),
(12, 3, 4, 6, 4.2),
(13, 5, 4, 5, 4.8),
(14, 5, 4, 3, 4.5),
(16, 3, 3, 3, 3),
(17, 3, 3, 4, 5),
(18, 3, 3, 2, 2.8),
(19, 3, 3, 5, 0.1),
(20, 4, 5, 5, 4.2),
(21, 4, 5, 4, 3.5),
(22, 2, 4, 5, 3.9),
(23, 1, 4, 6, 3.8),
(24, 2, 4, 7, 3.1),
(25, 1, 4, 2, 4.2),
(26, 4, 4, 4, 4),
(27, 4, 4, 2, 5),
(28, 1, 5, 2, 2.6),
(29, 2, 5, 1, 2.8),
(30, 1, 5, 2, 3.9),
(31, 2, 5, 3, 3),
(32, 2, 3, 3, 4.5),
(33, 2, 3, 4, 4.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`id_profesor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellido`, `correo`) VALUES
(1, 'Hector', 'Mejia', ''),
(2, 'Juan ', 'Salamanca', ''),
(3, 'Daniel', 'Gomez', ''),
(4, 'Juana', 'Quintero', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
 ADD PRIMARY KEY (`id_curso`), ADD KEY `id_profesor_idx` (`id_profesor`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
 ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `estudiante_cursos`
--
ALTER TABLE `estudiante_cursos`
 ADD PRIMARY KEY (`id`), ADD KEY `id_cursos_idx` (`id_curso`), ADD KEY `id_estudiante_idx` (`id_estudiante`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`id_nota`), ADD KEY `id_curso_idx` (`id_curso`);

--
-- Indices de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
 ADD PRIMARY KEY (`id_nota_estudiante`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`id_profesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `estudiante_cursos`
--
ALTER TABLE `estudiante_cursos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
MODIFY `id_nota_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
ADD CONSTRAINT `id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante_cursos`
--
ALTER TABLE `estudiante_cursos`
ADD CONSTRAINT `id_cursos` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `id_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
ADD CONSTRAINT `id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
