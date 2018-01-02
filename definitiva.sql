-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2017 a las 14:59:18
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `james_auth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `cuentaId` int(11) NOT NULL,
  `nombreCuenta` varchar(255) NOT NULL,
  `tipo_cuenta_idTipoCuenta` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombreEmpresa` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombreEmpresa`, `createdAt`, `updatedAt`) VALUES
(1, 'TVN', '2017-12-19 16:05:26', '2017-12-19 16:05:26'),
(3, 'Claro', '2017-12-19 16:04:50', '2017-12-19 16:04:50'),
(4, 'Entel', '2017-12-19 16:04:57', '2017-12-19 16:04:57'),
(5, 'Movistar', '2017-12-19 16:05:08', '2017-12-19 16:05:08'),
(6, 'Wom', '2017-12-19 16:05:20', '2017-12-19 16:05:20'),
(7, 'CHV', '2017-12-19 16:05:30', '2017-12-19 16:05:30'),
(8, 'BrechaDigital', '2017-12-20 15:11:13', '2017-12-20 15:11:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general_kpis`
--

CREATE TABLE `general_kpis` (
  `id` int(11) NOT NULL,
  `fans` int(11) DEFAULT NULL,
  `alcance` int(11) DEFAULT NULL,
  `impresiones` int(11) DEFAULT NULL,
  `interacciones` int(11) DEFAULT NULL,
  `publicaciones` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `contribuidores` int(11) DEFAULT NULL,
  `twettGenerados` int(11) DEFAULT NULL,
  `retweets` int(11) DEFAULT NULL,
  `respuestas` int(11) DEFAULT NULL,
  `menciones` int(11) DEFAULT NULL,
  `visitas` int(11) DEFAULT NULL,
  `rebote` int(11) DEFAULT NULL,
  `permanencia` int(11) DEFAULT NULL,
  `nombreTipoMedio` varchar(255) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `general_kpis`
--

INSERT INTO `general_kpis` (`id`, `fans`, `alcance`, `impresiones`, `interacciones`, `publicaciones`, `followers`, `reach`, `impressions`, `contribuidores`, `twettGenerados`, `retweets`, `respuestas`, `menciones`, `visitas`, `rebote`, `permanencia`, `nombreTipoMedio`, `fechaInicio`, `fechaFinal`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8888, 888, NULL, '', '2017-12-01', '2017-12-02', '2017-12-11 18:36:07', '2017-12-11 18:36:07'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78287, 572, 752872, '', '2017-12-01', '2017-12-02', '2017-12-11 18:37:24', '2017-12-11 18:37:24'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78278, NULL, NULL, '', '2017-12-09', '2017-12-10', '2017-12-11 18:39:23', '2017-12-11 18:39:23'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', '2017-12-08', '2017-12-02', '2017-12-11 18:40:09', '2017-12-11 18:40:09'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7828278, NULL, NULL, '', '2017-12-02', '2017-12-10', '2017-12-11 18:41:25', '2017-12-11 18:41:25'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 102828, NULL, NULL, 'web', '2017-12-02', '2017-12-03', '2017-12-11 18:43:36', '2017-12-11 18:43:36'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '', '2017-12-03', '2017-12-09', '2017-12-11 18:44:25', '2017-12-11 18:44:25'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 287, 872, 82, 'web', '2017-12-05', '2017-12-07', '2017-12-11 18:45:11', '2017-12-11 18:45:11'),
(9, 771, 717, 1717, 71, 717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 287, 872, 82, 'facebook', '2017-12-01', '2017-12-02', '2017-12-11 18:45:42', '2017-12-11 18:45:42'),
(10, 33783, 78783, 87378, 783783, 837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'facebook', '2017-12-01', '2017-12-02', '2017-12-18 14:11:56', '2017-12-18 14:11:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfils`
--

CREATE TABLE `perfils` (
  `perfilId` int(11) NOT NULL,
  `nombrePerfil` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfils`
--

INSERT INTO `perfils` (`perfilId`, `nombrePerfil`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2017-12-27 00:00:00', '2017-12-27 00:00:00'),
(2, 'cm-admin', '2017-12-27 00:00:00', '2017-12-27 00:00:00'),
(3, 'cm', '2017-12-27 00:00:00', '2017-12-27 00:00:00'),
(4, 'cliente', '2017-12-27 00:00:00', '2017-12-27 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombreUsuario` varchar(255) NOT NULL,
  `apellidoUsuario` varchar(255) NOT NULL,
  `emailUsuario` varchar(255) NOT NULL,
  `avatarUsuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telefonoMovil` int(11) DEFAULT NULL,
  `telefonoFijo` int(11) DEFAULT NULL,
  `perfilId` int(11) DEFAULT '2',
  `cuentaId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombreUsuario`, `apellidoUsuario`, `emailUsuario`, `avatarUsuario`, `password`, `telefonoMovil`, `telefonoFijo`, `perfilId`, `cuentaId`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'istrador', 'admin.inistrador@yopmail.com', 'yo', '$2a$10$gJP6tCqhiCe2mptMkiK5a.CpYZQChPixJAqP1NacX.zppB9MVkYfq', 56465456, 2147483647, 4, NULL, '2017-12-07 16:01:22', '2017-12-07 16:01:22'),
(3, 'Pepe', 'uuiipop', 'ryu@gg.cl', NULL, '$2a$10$gJP6tCqhiCe2mptMkiK5a.CpYZQChPixJAqP1NacX.zppB9MVkYfq', 745278, 278278, 2, NULL, '2017-12-07 16:08:42', '2017-12-21 20:49:08'),
(4, 'jañaña', 'ñaña', 'jañaña.ñaña@yopmail.com', NULL, '$2a$10$rJ9q7uDCPfyg1VJERqo6peTaNBc5X2qQk3i3J1sgJNBKZWKoqoRsG', NULL, NULL, 2, NULL, '2017-12-12 16:30:26', '2017-12-21 20:52:17'),
(5, 'sa', 'sa', 'sa@as.cl', '', '$2a$10$bAJa9Zx10R9rB6wgSY4a0.3eHmnxb9dTTbCl/ZJL4Ht.Y/SfBcS26', 4545454, 545455545, 2, NULL, '2017-12-15 16:42:49', '2017-12-15 16:42:49'),
(6, 'sdfgh', 'dfgh', 'ddfg@jj.cl', NULL, '$2a$10$vUY3pHyUA5sxh/VioFJk6u8FDSJVhU./g99mNmjxtrpovNUxf32ue', 2147483647, 2147483647, 2, NULL, '2017-12-18 14:42:25', '2017-12-18 14:42:25'),
(8, 'sdfghdfghj', 'dfghfghjkl', '12ddfg@jj.cl', NULL, '$2a$10$z7Y7.FDhxJZXY5otxFbYs.AvlU7ok3SLec0ZsH7e26CNkTW80ti0K', 2147483647, 2147483647, 2, NULL, '2017-12-18 14:44:38', '2017-12-18 14:44:38'),
(9, 'aaaaa', 'aaaaa', 'aaa.aa@aa.aa', NULL, '$2a$10$CR6PwfZi2xLCs6KOVSdF2.Qr3sc47mhb4qRYy990EiJwWbxs/P15q', 123446, 1245566554, 2, NULL, '2017-12-18 14:54:59', '2017-12-18 14:54:59'),
(10, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaa', 'a@b.cl', NULL, '$2a$10$Q1rpXMiLfxR/iS0IMoiw1.wd/.pa6vwh3rM1N14uOyvhCkUsQacX.', 727827, 827828, 2, NULL, '2017-12-19 15:14:37', '2017-12-19 15:14:37'),
(11, 'ronnel', 'moises', 'ronnel.moises@empresa.cl', NULL, '$2a$10$Gga6l1vq3dh.24BK1EutSes9LE.uW3DqrTnxwrdN9u1Gq7t0Zzn6K', 2147483647, 2147483647, 2, NULL, '2017-12-20 13:35:55', '2017-12-20 13:35:55'),
(12, 'ronnel2', 'apellido2', 'ronnel@empresa.cl', NULL, '$2a$10$oesaD/FT7HHxOBq2lfX6e.AMER0rPdgy1ritk/HrPojZzQPpoCjHe', 123123123, 123123123, 2, NULL, '2017-12-20 13:39:04', '2017-12-20 13:39:04'),
(14, 'ronnel22', 'moises', 'ronnel22@empresa.cl', NULL, '$2a$10$D2LZ.8J2zzc8kvrpT.Cyb.CMG9ihc4IwxcNDmxkzvdiVvD8V50p6y', 12312321, 123123, 2, NULL, '2017-12-20 13:40:30', '2017-12-20 13:40:30'),
(15, 'asfasssdassdsss', 'asdasdasssdssss', 'asdassdssasdsss', 'asdsssasssd@gmsssil.com', '$2a$10$mxlDazoKfEv.FobNP/PoyO1fGXUwMgJQi7OtM2uXID8ZUUTm5Ab1S', 123123123, 12341234, 2, NULL, '2017-12-20 13:49:08', '2017-12-20 13:49:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usr_clientes`
--

CREATE TABLE `usr_clientes` (
  `id` int(11) NOT NULL,
  `nombreCliente` varchar(255) NOT NULL,
  `apellidoPCliente` varchar(255) NOT NULL,
  `apellidoMCliente` varchar(255) NOT NULL,
  `emailCliente` varchar(255) NOT NULL,
  `telefonoFijoCliente` int(11) DEFAULT NULL,
  `telefonoMovilCliente` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `cuentaId` int(11) DEFAULT NULL,
  `empresaId` int(11) DEFAULT NULL,
  `perfilId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usr_clientes`
--

INSERT INTO `usr_clientes` (`id`, `nombreCliente`, `apellidoPCliente`, `apellidoMCliente`, `emailCliente`, `telefonoFijoCliente`, `telefonoMovilCliente`, `password`, `cuentaId`, `empresaId`, `perfilId`, `createdAt`, `updatedAt`) VALUES
(1, 'italo', 'ita', 'lo', 'asldkajsd@gmail.com', 123123, 123123, '$2a$10$xycCyklDs87jVFpyIDAW/OKUIV8dlFWLO/9ifXwb0d7O0NyNpo4kq', NULL, 8, NULL, '2017-12-27 21:06:41', '2017-12-27 21:06:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`cuentaId`),
  ADD UNIQUE KEY `tipo_cuenta_idTipoCuenta` (`tipo_cuenta_idTipoCuenta`),
  ADD UNIQUE KEY `cuenta_tipo_cuenta_idTipoCuenta_unique` (`tipo_cuenta_idTipoCuenta`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombreEmpresa` (`nombreEmpresa`),
  ADD UNIQUE KEY `empresas_nombreEmpresa_unique` (`nombreEmpresa`);

--
-- Indices de la tabla `general_kpis`
--
ALTER TABLE `general_kpis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfils`
--
ALTER TABLE `perfils`
  ADD PRIMARY KEY (`perfilId`),
  ADD UNIQUE KEY `nombrePerfil` (`nombrePerfil`),
  ADD UNIQUE KEY `perfils_nombrePerfil_unique` (`nombrePerfil`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombreUsuario` (`nombreUsuario`),
  ADD UNIQUE KEY `emailUsuario` (`emailUsuario`),
  ADD UNIQUE KEY `users_nombreUsuario_unique` (`nombreUsuario`),
  ADD UNIQUE KEY `users_emailUsuario_unique` (`emailUsuario`),
  ADD KEY `cuentaId` (`cuentaId`),
  ADD KEY `perfilId` (`perfilId`);

--
-- Indices de la tabla `usr_clientes`
--
ALTER TABLE `usr_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombreCliente` (`nombreCliente`),
  ADD UNIQUE KEY `emailCliente` (`emailCliente`),
  ADD UNIQUE KEY `usr_clientes_nombreCliente_unique` (`nombreCliente`),
  ADD UNIQUE KEY `usr_clientes_emailCliente_unique` (`emailCliente`),
  ADD KEY `cuentaId` (`cuentaId`),
  ADD KEY `empresaId` (`empresaId`),
  ADD KEY `perfilId` (`perfilId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `cuentaId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `general_kpis`
--
ALTER TABLE `general_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `perfils`
--
ALTER TABLE `perfils`
  MODIFY `perfilId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usr_clientes`
--
ALTER TABLE `usr_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`cuentaId`) REFERENCES `users` (`cuentaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`perfilId`) REFERENCES `perfils` (`perfilId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usr_clientes`
--
ALTER TABLE `usr_clientes`
  ADD CONSTRAINT `usr_clientes_ibfk_2` FOREIGN KEY (`empresaId`) REFERENCES `empresas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
