-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2018 a las 14:27:59
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `workflow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `codFlujo` varchar(11) NOT NULL,
  `descripcion` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `cod` varchar(11) NOT NULL,
  `descripcion` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `cod` varchar(11) NOT NULL,
  `descriptivo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencia`
--

CREATE TABLE `secuencia` (
  `codFlujo` varchar(11) NOT NULL,
  `codProceso` varchar(11) NOT NULL,
  `tipoProceso` varchar(11) NOT NULL,
  `codRol` varchar(11) NOT NULL,
  `codNext` varchar(11) NOT NULL,
  `form` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `secuencia`
--

INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES
('F1', 'P1', 'I', 'E', 'P2', 'bienvenido.php'),
('F1', 'P2', 'P', 'E', 'P3', 'llenado.php'),
('F1', 'P3', 'P', 'K', 'NULL', 'pregunta.php'),
('F1', 'P4', 'P', 'D', 'P5', 'emision.php'),
('F1', 'P5', 'F', 'D', 'NULL', 'fin.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencialog`
--

CREATE TABLE `secuencialog` (
  `codFlujo` varchar(11) NOT NULL,
  `codProceso` varchar(11) NOT NULL,
  `idUsuario` varchar(11) NOT NULL,
  `fechaInicio` varchar(11) NOT NULL,
  `fechaFin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuenciaq`
--

CREATE TABLE `secuenciaq` (
  `codFlujo` varchar(11) NOT NULL,
  `codProceso` varchar(11) NOT NULL,
  `codRol` varchar(11) NOT NULL,
  `codProcV` varchar(11) NOT NULL,
  `codProcF` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoprocesso`
--

CREATE TABLE `tipoprocesso` (
  `codProcesso` varchar(11) NOT NULL,
  `descripcion` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cod` varchar(11) NOT NULL,
  `nombreCompleto` varchar(11) NOT NULL,
  `idRol` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
