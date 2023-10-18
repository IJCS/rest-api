-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2023 a las 13:36:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--
-- Creación: 18-10-2023 a las 11:26:01
-- Última actualización: 18-10-2023 a las 11:28:33
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `año-publicacion` date DEFAULT NULL,
  `ISBN` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `año-publicacion`, `ISBN`) VALUES
(1, 'Juego de Tronos', 'George R. R. Martin', 'Fantasía', '1996-01-01', '9789877251470'),
(2, 'Choque de Reyes', 'George R. R. Martin', 'Fantasía', '1998-01-01', '9789877251487'),
(3, 'Tormenta de Espadas', 'George R. R. Martin', 'Fantasía', '2000-01-01', '9789877251579'),
(4, 'Festín de Cuervos', 'George R. R. Martin', 'Fantasía', '2005-01-01', '9789877251586'),
(5, 'Danza de Dragones', 'George R. R. Martin', 'Fantasía', '2011-01-01', '9789506442545'),
(6, 'El nombre del viento', 'Patrick Rothfuss', 'Fantasía', '2009-01-01', '‎978840133720'),
(7, 'El temor de un hombre sabio', 'Patrick Rothfuss', 'Fantasía', '2011-01-01', '9788412083402'),
(8, 'El último deseo', 'Andrzej Sapkowski', 'Fantasía', '1992-01-01', '9783643293793'),
(9, 'La espada del destino', 'Andrzej Sapkowski', 'Fantasía', '1993-01-01', '9783489328429'),
(10, 'La sangre de los elfos', 'Andrzej Sapkowski', 'Fantasía', '1996-01-01', '9783912839198');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
