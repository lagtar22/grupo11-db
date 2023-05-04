-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2023 a las 20:34:46
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupo11_db`
--
CREATE DATABASE IF NOT EXISTS `grupo11_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grupo11_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `ct_Nombre` varchar(50) NOT NULL,
  `ct_Descripcion` varchar(200) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_modif` datetime DEFAULT NULL,
  `ct_Activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `categoria`
--

TRUNCATE TABLE `categoria`;
--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `ct_Nombre`, `ct_Descripcion`, `fecha_creacion`, `fecha_modif`, `ct_Activo`) VALUES
(1, 'Hombre', '', '2023-05-03 16:55:19', '2022-12-12 11:48:18', NULL),
(2, 'Mujer', '', '2023-05-03 16:55:19', '2022-12-11 12:07:47', NULL),
(3, 'Niños', '', '2023-05-03 23:42:16', '2023-05-03 21:42:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE `consulta` (
  `id_Consulta` int(11) NOT NULL,
  `con_Nombre` varchar(50) NOT NULL,
  `con_Apellido` varchar(50) NOT NULL,
  `con_Email` varchar(70) NOT NULL,
  `con_Asunto` varchar(150) NOT NULL,
  `con_Mensaje` varchar(300) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_modif` datetime DEFAULT current_timestamp(),
  `con_baja` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `consulta`
--

TRUNCATE TABLE `consulta`;
--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`id_Consulta`, `con_Nombre`, `con_Apellido`, `con_Email`, `con_Asunto`, `con_Mensaje`, `fecha_creacion`, `fecha_modif`, `con_baja`) VALUES
(4, 'Daniela Elizabeth', 'Mormina', 'chichipia25@gmail.com', 'zapatos', 'hay zapatos?', '2023-05-03 23:29:11', '2023-05-03 23:32:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto` (
  `id_Contacto` int(11) NOT NULL,
  `cont_Nombre` varchar(50) NOT NULL,
  `cont_Apellido` varchar(50) NOT NULL,
  `cont_Email` varchar(50) NOT NULL,
  `cont_Asunto` varchar(150) NOT NULL,
  `cont_Mensaje` varchar(300) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_modif` datetime DEFAULT current_timestamp(),
  `con_baja` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `contacto`
--

TRUNCATE TABLE `contacto`;
--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_Contacto`, `cont_Nombre`, `cont_Apellido`, `cont_Email`, `cont_Asunto`, `cont_Mensaje`, `fecha_creacion`, `fecha_modif`, `con_baja`) VALUES
(5, 'asdqwe', 'asdqwe', 'asd@gmail.com', 'zapatillas', 'hola zapatillas', '2023-05-03 23:21:41', '2023-05-03 23:26:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `marca_id` int(11) NOT NULL,
  `marca_nombre` varchar(50) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_modif` datetime DEFAULT NULL,
  `marca_Activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `marca`
--

TRUNCATE TABLE `marca`;
--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`marca_id`, `marca_nombre`, `fecha_creacion`, `fecha_modif`, `marca_Activo`) VALUES
(1, 'Adidas', '2023-05-03 23:54:01', '2023-05-03 21:54:01', NULL),
(2, 'Nike', '2023-05-03 16:57:52', '2022-12-11 12:20:20', NULL),
(3, 'Puma', '2023-05-03 16:57:52', '2022-12-11 22:41:29', NULL),
(4, 'Topper', '2023-05-03 16:57:52', '2022-12-11 12:32:35', NULL),
(5, 'Fila', '2023-05-03 23:53:30', '2023-05-03 21:53:30', NULL),
(6, 'Air Jordan', '2023-05-03 20:42:11', '2023-05-03 20:42:11', NULL),
(7, 'Converse', '2023-05-03 21:14:41', '2023-05-03 21:14:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `perfil_id` int(11) NOT NULL,
  `perfil_Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `perfil`
--

TRUNCATE TABLE `perfil`;
--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`perfil_id`, `perfil_Nombre`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `pd_id` int(11) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `pd_Nombre` varchar(50) NOT NULL,
  `pd_Descripcion` varchar(250) NOT NULL,
  `pd_PrecioVenta` decimal(10,2) NOT NULL,
  `pd_Cantidad` int(11) NOT NULL,
  `pd_Imagen` varchar(200) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_modif` datetime DEFAULT current_timestamp(),
  `pd_Activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=REDUNDANT;

--
-- Truncar tablas antes de insertar `productos`
--

TRUNCATE TABLE `productos`;
--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`pd_id`, `ct_id`, `marca_id`, `pd_Nombre`, `pd_Descripcion`, `pd_PrecioVenta`, `pd_Cantidad`, `pd_Imagen`, `fecha_creacion`, `fecha_modif`, `pd_Activo`) VALUES
(1, 1, 6, 'Air Jordan 1 Negro y Rojo', 'Zapatillas de cuero negro, rojo y blanco, especiales para basket', '8000.00', 3, '1683164641_0980f5ed45b072245db6.jpg', '2023-05-03 22:44:01', '2023-05-03 22:44:01', NULL),
(2, 1, 6, 'Air Jordan 1 Amarilla', 'Zapatillas de cuero amarillo, blanco y negro', '8500.00', 3, '1683220466_3896fe2a67bc204779dd.jpg', '2023-05-04 14:14:26', '2023-05-04 14:14:26', NULL),
(3, 1, 2, 'Countryside', 'Zapatillas perfectas para caminar campo traviesa', '7500.00', 5, '1683167602_0321e9d4f6a7fb2b7870.jpg', '2023-05-03 23:33:22', '2023-05-03 23:33:22', b'1'),
(4, 1, 6, 'Air Jordan 1 Morada', 'Zapatillas de cuero morado, negro y blanco', '8500.00', 5, '1683220515_06f43a1b2f8bacbe3e81.jpg', '2023-05-04 14:15:15', '2023-05-04 14:15:15', b'1'),
(5, 1, 3, 'RS-X', 'Perfectas para entrenar o correr', '6500.00', 3, '1683167722_4411240b3b0c197e325e.jpg', '2023-05-03 23:35:22', '2023-05-03 23:35:22', NULL),
(6, 2, 2, 'Airmax', 'Hermosas zapatillas para caminar o entrenar, de color azul, blanco y detalles en rosado', '7500.00', 3, '1683220625_1d4c82897d3c2959f2e8.jpg', '2023-05-04 14:17:05', '2023-05-04 14:17:05', NULL),
(7, 1, 1, 'Speedportal 4', 'Botines verdes perfectos para tiros libres', '9500.00', 0, '1683167969_d5d40ce52d30c17d09a8.jpg', '2023-05-03 23:39:29', '2023-05-03 23:39:29', NULL),
(8, 2, 2, 'Multiflow', 'Especiales para caminar o correr', '7000.00', 5, '1683220710_10d3cbda4bfc0427c71c.jpg', '2023-05-04 14:18:30', '2023-05-04 14:18:30', b'1'),
(9, 1, 6, 'Air Jordan Retro', 'Zapatillas de cuero amarillo con detalles en negro', '9500.00', 3, '1683220405_8862a3407cb07dff5635.jpg', '2023-05-04 14:13:25', '2023-05-04 14:13:25', NULL),
(10, 2, 3, 'RS-Z', 'Geniales para entrenar o caminar', '7500.00', 4, '1683220781_0f7a3da8eba3a12b927b.jpg', '2023-05-04 14:19:41', '2023-05-04 14:19:41', NULL),
(11, 3, 1, 'ManU Fever', 'Edición especial del Manchester United para niños', '5500.00', 2, '1683221577_82320958d7d9020712cd.jpg', '2023-05-04 14:32:57', '2023-05-04 14:32:57', NULL),
(12, 1, 7, 'Rival Mid Crudo', 'Especiales para Basquet', '15000.00', 3, '1683221740_c962d062320a3d06897c.jpg', '2023-05-04 14:35:40', '2023-05-04 14:35:40', NULL),
(13, 2, 1, 'Rundidas', 'Para caminar y correr por donde sea', '7800.00', 4, '1683221839_417b4f320fd007bec64c.jpg', '2023-05-04 14:37:19', '2023-05-04 14:37:19', NULL),
(14, 1, 7, 'Rival Mid Original', 'Especiales para Basquet', '14000.00', 3, '1683221938_343c1210127bd57a74e2.jpg', '2023-05-04 14:38:58', '2023-05-04 14:38:58', NULL),
(15, 2, 5, 'Recovery W', 'Geniales para voleibol o tenis', '8500.00', 4, '1683222038_e314435173fd425222f9.jpg', '2023-05-04 14:40:38', '2023-05-04 14:40:38', NULL),
(16, 3, 5, 'Recovery K', 'Geniales para voleibol o tenis', '7500.00', 3, '1683222080_df75fc05ca182eb527ea.jpg', '2023-05-04 14:41:20', '2023-05-04 14:41:20', NULL),
(17, 2, 4, 'Chance Running', 'Especiales para caminar o correr', '8500.00', 4, '1683222157_66d02bfb6740afbb5ec0.jpg', '2023-05-04 14:42:37', '2023-05-04 14:42:37', NULL),
(18, 3, 4, 'Fast Running', 'Especiales para caminar o correr', '7500.00', 4, '1683222195_79e72310f2f18352ad6d.jpg', '2023-05-04 14:43:15', '2023-05-04 14:43:15', NULL),
(19, 1, 7, 'Rival Mid Negra', 'Especiales para Basquet', '13500.00', 5, '1683222235_157093991e0f1d0238e6.jpg', '2023-05-04 14:43:55', '2023-05-04 14:43:55', b'1'),
(20, 1, 3, 'PU', 'Zapatillas deportivas urbanas', '8000.00', 3, '1683222411_e6cde1f9128ad69b9ed0.jpg', '2023-05-04 14:56:32', '2023-05-04 14:56:32', NULL),
(21, 2, 1, 'Performance', 'Especiales para caminar o correr', '7500.00', 5, '1683223339_290ff4d28672c149b7f8.jpg', '2023-05-04 15:02:19', '2023-05-04 15:02:19', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `us_Perfil_id` int(11) NOT NULL,
  `us_Name` varchar(50) NOT NULL,
  `us_Apellido` varchar(50) NOT NULL,
  `us_Email` varchar(80) NOT NULL,
  `us_User` varchar(50) NOT NULL,
  `us_Password` varchar(150) NOT NULL,
  `us_Direccion` varchar(100) NOT NULL,
  `us_Telefono` varchar(40) NOT NULL,
  `us_DNI` varchar(10) NOT NULL,
  `us_Ciudad` varchar(100) NOT NULL,
  `us_Provincia` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `us_Baja` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `us_Perfil_id`, `us_Name`, `us_Apellido`, `us_Email`, `us_User`, `us_Password`, `us_Direccion`, `us_Telefono`, `us_DNI`, `us_Ciudad`, `us_Provincia`, `created_at`, `updated_at`, `us_Baja`) VALUES
(1, 1, 'Augusto', 'Schaffer', 'lagtar22@gmail.com', 'lagtar22', '$2y$10$M70/aIxLdMZ/NnlY5JFopuh9Xd0ufC1Wfm69oecM6JdY085NAGaMW', 'Río Juramento 1233', '3772514098', '39864764', 'Corrientes', 'Corrientes', '2023-02-08 17:48:48', '2023-05-03 22:23:52', NULL),
(2, 2, 'Juan', 'Pérez', 'juanpe@gmail.com', 'juanpe', '$2y$10$Fnoqb9WkL9R0W6icsM0CxODmV4.8Ma0wASfkjhGfZsL7xxhhVWH06', 'Donde Sea 123', '1234567890', '36925814', 'Santo Tomé', 'Corrientes', '2023-02-22 18:10:29', '2023-05-03 17:35:49', NULL),
(3, 2, 'Josefa', 'Demonte', 'jodemo@hotmail.com', 'jodemo', '$2y$10$0pfO.2xjxdsFUWJrXUmMFedoqP2PqE/YAZ/NdVvjWOzb2CDpWavUm', 'Urquiza 159', '4567891233', '32165498', 'Santa Fé', 'Santa Fé', '2023-02-22 18:14:53', '2023-02-22 18:14:53', NULL),
(4, 2, 'Víctor Hugo', 'Morales', 'vihumo@yahoo.com', 'vihumo', '$2y$10$K1o0slFtd8bi/p/oAn7NA.w3bt3mRbwMlRhJye8zU0/DcKR5bIfXq', 'Alberdi 4833', '7894561236', '25836914', 'CABA', 'Capital Federal', '2023-02-22 18:16:50', '2023-05-03 22:05:07', b'1'),
(5, 2, 'Sergio', 'Pérez', 'checope@gmail.com', 'checoRB', '$2y$10$AKri8Ns7TPy48rvCntXWZ.XrTGQvJ1gX6iSsM.TVDxH8xCaO.Ebei', 'México 550', '1125369874', '26159487', 'Guadalajara', 'Jalisco', '2023-02-22 18:18:55', '2023-05-03 22:05:09', b'1'),
(6, 2, 'Neguinho', 'Da Beijaflor', 'neguinhoDBF@gmail.com', 'ndbf70', '$2y$10$BndAgtYimTomS9BqvioWTOpd4.RsaRUJkZm.Ukn.fAW00tdzZInoa', 'Reino Encantado 159', '3572416899', '14725836', 'Rio de Janeiro', 'Rio de Janeiro', '2023-02-22 18:24:05', '2023-05-03 22:05:10', b'1'),
(7, 2, 'Luis', 'Scola', 'luchoscola@hotmail.com', 'LScola4', '$2y$10$PcmjqLnCMVHLEqLSjxOuXOBBWg8kwr1It6SB7.REVRNNTRNmvdZwS', 'San Martín 456', '1472583693', '25147369', 'Floresta', 'Buenos Aires', '2023-02-22 18:28:36', '2023-05-03 22:05:12', b'1'),
(8, 2, 'Silvina', 'Correa', 'silco@gmail.com', 'silco', '$2y$10$JXtLa.9dOPC24p98baWLdedmEu0dwdqdmmR/MsgKP/13tHNB.NKDC', 'Portela 22', '7418529631', '35724168', 'Salta', 'Salta', '2023-02-22 18:30:06', '2023-05-03 18:03:34', NULL),
(9, 2, 'Daniela Elizabeth', 'Mormina', 'chichipia25@gmail.com', 'chichipia25', '$2y$10$Vh4lN69sh92WkNfLxEdzee5j.LQkPtzcvIIfN4be7MIEG976JFs5y', 'Río Juramento 123', '1234567890', '38258147', 'Resistencia', 'Chaco', '2023-02-08 18:13:04', '2023-02-21 12:54:43', NULL),
(10, 2, '1654654', '4564654', '56465465@g.com', 'dasd', '$2y$10$mluCa0B2p1wC7gb0yNSq9.fgmt6ubqScn.6EbguAK819zrOWgjeZK', '65+4654677', 'dasdasd777', 'dasdasd7', '6546546', '+644564', '2023-02-19 20:13:55', '2023-05-03 22:05:15', b'1'),
(11, 2, 'Santi', 'Ago', 'santi@gmail.com', 'santi.ago', '$2y$10$V2BFcGk.SsuoM.D1aXOmieCzyoUi058WH5EJhN.oZ14N1lvbujpJC', 'Acá en mi casa 812', '3698741254', '17896541', 'Corrientes', 'Corrientes', '2023-02-24 18:37:32', '2023-05-03 15:24:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_cabeceras`
--

DROP TABLE IF EXISTS `ventas_cabeceras`;
CREATE TABLE `ventas_cabeceras` (
  `id_VentaCabec` int(11) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `totalVenta` decimal(10,2) NOT NULL,
  `fecha_Guardado` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=REDUNDANT;

--
-- Truncar tablas antes de insertar `ventas_cabeceras`
--

TRUNCATE TABLE `ventas_cabeceras`;
--
-- Volcado de datos para la tabla `ventas_cabeceras`
--

INSERT INTO `ventas_cabeceras` (`id_VentaCabec`, `id_Cliente`, `totalVenta`, `fecha_Guardado`) VALUES
(1, 3, '38500.00', '2023-03-04'),
(2, 9, '24000.00', '2023-03-14'),
(3, 8, '16000.00', '2023-03-24'),
(4, 11, '27000.00', '2023-03-30'),
(5, 3, '34000.00', '2023-04-04'),
(6, 2, '23500.00', '2023-04-14'),
(7, 9, '23500.00', '2023-04-24'),
(8, 11, '15500.00', '2023-04-30'),
(9, 8, '31500.00', '2023-05-03'),
(10, 2, '22500.00', '2023-05-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalles`
--

DROP TABLE IF EXISTS `ventas_detalles`;
CREATE TABLE `ventas_detalles` (
  `id_VentaDetalle` int(11) NOT NULL,
  `id_VentaCabec` int(11) NOT NULL,
  `pd_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=REDUNDANT;

--
-- Truncar tablas antes de insertar `ventas_detalles`
--

TRUNCATE TABLE `ventas_detalles`;
--
-- Volcado de datos para la tabla `ventas_detalles`
--

INSERT INTO `ventas_detalles` (`id_VentaDetalle`, `id_VentaCabec`, `pd_id`, `cantidad`, `precio`) VALUES
(1, 1, 2, 1, '8500.00'),
(2, 1, 5, 1, '6500.00'),
(3, 1, 12, 1, '15000.00'),
(4, 1, 15, 1, '8500.00'),
(5, 2, 2, 1, '8500.00'),
(6, 2, 16, 1, '7500.00'),
(7, 2, 20, 1, '8000.00'),
(8, 3, 2, 1, '8500.00'),
(9, 3, 6, 1, '7500.00'),
(10, 4, 11, 1, '5500.00'),
(11, 4, 14, 1, '14000.00'),
(12, 4, 16, 1, '7500.00'),
(13, 5, 2, 1, '8500.00'),
(14, 5, 9, 1, '9500.00'),
(15, 5, 10, 1, '7500.00'),
(16, 5, 17, 1, '8500.00'),
(17, 6, 10, 1, '7500.00'),
(18, 6, 17, 1, '8500.00'),
(19, 6, 18, 1, '7500.00'),
(20, 7, 17, 1, '8500.00'),
(21, 7, 18, 2, '7500.00'),
(22, 8, 16, 1, '7500.00'),
(23, 8, 20, 1, '8000.00'),
(24, 9, 1, 1, '8000.00'),
(25, 9, 9, 1, '9500.00'),
(26, 9, 14, 1, '14000.00'),
(27, 10, 2, 1, '8500.00'),
(28, 10, 5, 1, '6500.00'),
(29, 10, 6, 1, '7500.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_Consulta`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_Contacto`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`marca_id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perfil_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `FK_producto_categoria` (`ct_id`),
  ADD KEY `FK_producto_marca` (`marca_id`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuario_perfil` (`us_Perfil_id`);

--
-- Indices de la tabla `ventas_cabeceras`
--
ALTER TABLE `ventas_cabeceras`
  ADD PRIMARY KEY (`id_VentaCabec`) USING BTREE,
  ADD KEY `FK_VentaCabec_Cliente` (`id_Cliente`) USING BTREE;

--
-- Indices de la tabla `ventas_detalles`
--
ALTER TABLE `ventas_detalles`
  ADD PRIMARY KEY (`id_VentaDetalle`),
  ADD KEY `FK_venta_detalle_producto` (`pd_id`) USING BTREE,
  ADD KEY `FK_venta_detalle_cabecera` (`id_VentaCabec`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_Consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_Contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perfil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas_cabeceras`
--
ALTER TABLE `ventas_cabeceras`
  MODIFY `id_VentaCabec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas_detalles`
--
ALTER TABLE `ventas_detalles`
  MODIFY `id_VentaDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_producto_categoria` FOREIGN KEY (`ct_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_producto_marca` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`marca_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_usuario_perfil` FOREIGN KEY (`us_Perfil_id`) REFERENCES `perfil` (`perfil_id`);

--
-- Filtros para la tabla `ventas_cabeceras`
--
ALTER TABLE `ventas_cabeceras`
  ADD CONSTRAINT `FK_venta_cabecera_usuario` FOREIGN KEY (`id_Cliente`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ventas_detalles`
--
ALTER TABLE `ventas_detalles`
  ADD CONSTRAINT `FK_venta_detalle_producto` FOREIGN KEY (`pd_id`) REFERENCES `productos` (`pd_id`),
  ADD CONSTRAINT `FK_venta_detalle_cabecera` FOREIGN KEY (`id_VentaCabec`) REFERENCES `ventas_cabeceras` (`id_VentaCabec`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
