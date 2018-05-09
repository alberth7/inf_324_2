-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2018 a las 18:14:46
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proceso_matriculacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `Cod_flujo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `Cod_proceso` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Cod_rol` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencia`
--

CREATE TABLE `secuencia` (
  `Cod_flujo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Cod_proceso` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo_proceso` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_rol` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_procnext` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Form` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencia_logica`
--

CREATE TABLE `secuencia_logica` (
  `Cod_flujo` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_proceso` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_inicio` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_fin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencia_q`
--

CREATE TABLE `secuencia_q` (
  `Cod_flujo` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_proceso` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_rol` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_procV` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_procF` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proceso`
--

CREATE TABLE `tipo_proceso` (
  `Cod_proceso` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ususario`
--

CREATE TABLE `ususario` (
  `Cod_usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_completo` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cod_rol` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `flujo`
--
ALTER TABLE `flujo`
  ADD PRIMARY KEY (`Cod_flujo`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`Cod_proceso`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Cod_rol`);

--
-- Indices de la tabla `secuencia`
--
ALTER TABLE `secuencia`
  ADD PRIMARY KEY (`Cod_flujo`);

--
-- Indices de la tabla `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  ADD PRIMARY KEY (`Cod_proceso`);

--
-- Indices de la tabla `ususario`
--
ALTER TABLE `ususario`
  ADD PRIMARY KEY (`Cod_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
