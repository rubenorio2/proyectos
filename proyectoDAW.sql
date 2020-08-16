-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-06-2019 a las 13:28:12
-- Versión del servidor: 10.2.24-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre`) VALUES
(1, 'Placa Base'),
(5, 'Tarjeta grafica'),
(6, 'Procesadores'),
(7, 'Fuente Alimentacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosusuario`
--

CREATE TABLE `datosusuario` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `tlfno` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datosusuario`
--

INSERT INTO `datosusuario` (`idCliente`, `nombre`, `apellido`, `calle`, `cp`, `ciudad`, `tlfno`, `correo`, `idUsuario`) VALUES
(6, 'Ruben', 'Orio', 'San Millan', '26504', 'LogroÃ±o', '941135995', 'rubenorio2@hotmail.com', 6),
(7, 'Prueba', 'prueba', 'San Martin 55', '26504', 'LogroÃ±o', '941135995', 'prueba@gmail.com', 7),
(8, 'Jon Ander', 'Cerejido', 'C/ El sol, 33', '26511', 'El Villar de Arnedo', '689827888', 'jonan_95@outlook.es', 8),
(9, 'Mariano', 'Candela', 'C/Merino 84 3B', '26578', 'Zaragoza', '987456213', 'marianocandela@gmail.com', 9),
(10, 'Laura', 'Velazquez', 'C/ Mediavilla 4 1A', '26500', 'Calahorra', '941587984', 'laurita@hotmail.com', 10),
(11, 'Sergio', 'Perez', 'Avnd Numancia', '26500', 'Calahorra', '687945248', 'sergiop@gmail.com', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `idDetalle` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioud` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`idDetalle`, `idPedido`, `idProducto`, `cantidad`, `precioud`) VALUES
(30, 61, 22, 2, '175'),
(31, 61, 25, 1, '490'),
(32, 61, 29, 1, '96'),
(33, 62, 18, 1, '124'),
(34, 62, 19, 1, '760'),
(35, 63, 22, 1, '175'),
(36, 63, 26, 2, '140'),
(37, 63, 27, 2, '35'),
(38, 64, 28, 2, '55'),
(39, 64, 29, 3, '96'),
(40, 65, 21, 2, '285'),
(41, 65, 25, 1, '490'),
(42, 65, 26, 2, '140'),
(43, 65, 29, 2, '96'),
(44, 66, 18, 3, '124'),
(45, 66, 19, 2, '760'),
(46, 66, 25, 2, '490'),
(47, 66, 26, 3, '140'),
(48, 66, 29, 4, '96'),
(49, 67, 22, 1, '175'),
(50, 67, 23, 2, '60'),
(51, 67, 24, 2, '250'),
(52, 67, 25, 2, '490'),
(53, 68, 29, 2, '96');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `n_productos` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idUsuario`, `fecha`, `n_productos`, `total`) VALUES
(61, 9, '2019-05-29', 3, '936'),
(62, 9, '2019-06-02', 2, '884'),
(63, 9, '2019-06-03', 3, '525'),
(64, 10, '2019-06-06', 2, '398'),
(65, 10, '2019-06-07', 4, '1532'),
(66, 11, '2019-06-10', 5, '3676'),
(67, 11, '2019-06-13', 4, '1775'),
(68, 10, '2019-06-13', 1, '192');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `idCategoria`, `nombre`, `descripcion`, `imagen`, `precio`, `stock`) VALUES
(18, 5, 'MSI GeForce GTX 1050 GAMING X 2GB GDDR5', 'Perfecta. Solia tener una obsoleta GTX730, movÃ­a juegos como Battlefield 4 o Far Cry 4 sobre los 40fps. Al cambiar a esta me maravillÃ©, un gustazo jugar a mÃ¡s de 100fps fluidos y estables en la mayoria de juegos.', 'vga-msi-gtx-1050.jpg', '124', 496),
(19, 5, 'Tarjeta Gigabyte GeForce GTX 1080 Ti 11GB', 'Interfaz de memoria de 11 GB GDDR5X de 352 bits\r\nSistema de enfriamiento Windforce con 3 ventiladores\r\nRGB Fusion - 16.8M iluminaciÃ³n personalizable\r\nConstruido para overclocking Extremo 12 + 2 Fases de Potencia', 'Tarjeta_Gigabyte_GeForce_GTX _080_Ti_11GB.jpg', '760', 422),
(20, 5, 'Gigabyte Aorus GeForce RTX 2070 8G 8GB GDDR6', 'Desarrollado por GeForceÂ® RTX 2070\r\nIntegrado con la interfaz de memoria de 8GB GDDR6 de 256 bits\r\nSistema de enfriamiento por ventilador WINDFORCE Stack 3X 100mm\r\nRGB reinventada luz\r\n7 salidas de video\r\nPlaca posterior de metal', '2018101210070090-src.jpg', '730', 258),
(21, 1, 'Asus ROG Maximus X Hero', 'ntegrated Graphics Processor- IntelÂ® HD Graphics support  \r\n Multi-VGA output support : HDMI/DisplayPort \r\n - Supports DisplayPort 1.2 with max. resolution 4096 x 2304 @ 60Hz \r\n - Supports HDMI 1.4b with max. resolution 4096 x 2160 @ 24Hz', 'Asus ROG Maximus X Hero.jpg', '285', 78),
(22, 1, 'Asus TUF Z370-PRO Gaming', 'ASUS OptiMem: Circuito de memoria optimizado para preservar la integridad de la seÃ±al y potenciar el rango de overclocking.\r\nSonido DTS Custom: Permite localizar la acciÃ³n y el posicionamiento de los enemigos con auriculares estÃ©reo.', 'Asus TUF Z370-PRO Gaming.jpg', '175', 231),
(23, 1, 'Gigabyte GA-F2A88XM-DS2P', 'Procesadores de la serie A de AMD.\r\nArquitectura de memoria Dual Channel.\r\nEl puerto DVI-D no soporta conexiÃ³n D-Sub por adaptador.\r\n1 x slot PCI Express x16 a x16 (PCIEX16)', 'Gigabyte GA-F2A88XM-DS2P.jpg', '60', 118),
(24, 6, 'Intel Core i5-9600K 3.7Ghz', 'Number of Cores 6\r\nNumber of Threads 6\r\nBase Clock Speed 3.7 GHz\r\nMaximum Boost Speed 4.6 GHz\r\nL3 Cache 9 MB', 'Intel Core i5-9600K 3.7Ghz.jpg', '250', 66),
(25, 6, 'Intel Core i9-9900K 3.6Ghz', 'Number of Threads 16\r\nBase Clock Speed 3.6 GHz\r\nMaximum Boost Speed 5.0 GHz\r\nL3 Cache 16 MB', 'Intel Core i9-9900K 3.6Ghz.jpg', '490', 118),
(26, 6, 'Procesador AMD Ryzen 5 2600 3.4 Ghz', 'Familia de procesador: AMD Ryzen 5\r\nFrecuencia del procesador: 3,4 GHz\r\nNÃºmero de nÃºcleos de procesador: 6\r\nSocket de procesador: ZÃ³calo AM4\r\nComponente para: PC\r\nLitografÃ­a del procesador: 12 nm', 'Procesador AMD Ryzen 5 2600 3.4 Ghz.jpg', '140', 298),
(27, 7, 'Tempest Gaming GPSU 650W', 'otencia 650W\r\nTipo ATX 12V\r\nVentilador 12CM\r\nCables mallados ultraresistentes\r\nPFC\r\nDimensiones: 15x14x8.5cm', 'Tempest Gaming GPSU 650W.jpg', '35', 88),
(28, 7, 'Nox Urano VX 750W 80+ Bronze 140MM PWM', 'Alimentador de energÃ­a para tarjeta madre: 20+4 pin ATX\r\nConectores de poder (4 pin) periferales (Molex): 2\r\nNÃºmero de conectores de energÃ­a SATA: 6\r\nLongitud del cable de alimentaciÃ³n SATA: 600,750,900 mm', 'Nox Urano VX 750W 80+ Bronze 140MM PWM.jpg', '55', 98),
(29, 7, 'Corsair TX750M 750W 80 Plus Gold Semi Modular', 'Alimentador de energÃ­a para tarjeta madre: 20+4 pin ATX\r\nConectores de poder (4 pin) periferales (Molex): 7\r\nLongitud del cable de alimentaciÃ³n de la placa base: 61 cm\r\nNÃºmero de conectores de energÃ­a SATA: 8', 'Corsair TX750M 750W 80 Plus Gold Semi Modular.jpg', '96', 140);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `idTipo` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`idTipo`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usu` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `pwd` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usu`, `pwd`, `idTipo`) VALUES
(6, 'Madness8627', '$2y$10$7EWVg1HFnzyM1aXKTlP3VediqtcgFRpjUsMiGEaP7x4tr1aGWaSNa', 1),
(7, 'prueba', '$2y$10$yBRiKvd7/TANKyC7vPoPRerLwQ/75n3p.ESrLqmGFTxAFhbaL108C', 2),
(8, 'jander95', '$2y$10$EUOskB9lxPb1v27bLUvkSe6qb/ZbcA.qF2px.676zBo6VnJR97mAa', 1),
(9, 'mariano', '$2y$10$9mSeqMeN.M2wSNCPDQkuieT9RzifCfpY6gejpfG2qSMO9/0rJRte6', 2),
(10, 'laura', '$2y$10$dPDt6VRqi3RWqNs2prXAj.lbWjKnkW73AoKvukaoQM3qO8YKxS5PO', 2),
(11, 'chejo', '$2y$10$ExBb6nTP3f2P7/pGGj6Q.eKS6e7upenMMnxdDZo/2xUoEbXOBs8vq', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idUsuario`,`idProducto`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `idPedido` (`idPedido`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `tipoUsuario` (`idTipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `datosusuario`
--
ALTER TABLE `datosusuario`
  ADD CONSTRAINT `datosusuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `tipoUsuario` FOREIGN KEY (`idTipo`) REFERENCES `tipo_usuario` (`idTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
