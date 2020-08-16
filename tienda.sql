-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2020 a las 13:02:38
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `usr` varchar(15) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`usr`, `password`, `nombre`, `apellido`) VALUES
('lunas', '$2y$10$gsNiA0zs24qH8vWeg7b.kOuHj8I61bWjUTELl2Y3aU1hOS0nEYmmy', 'Manuel', 'Lazaro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `categoria` int(5) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `stock` int(7) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`codigo`, `nombre`, `precio`, `categoria`, `descripcion`, `stock`, `imagen`) VALUES
(10, 'Asus VG248QE 24 LED 3D 144Hz', 280, 1, 'Pantall Asus de 24" LED\r\n			\r\n			\r\n			\r\n			\r\n			\r\n', 4902, 'Asus VG248QE.jpg'),
(11, 'Asus VC239H-W 23" LED', 155, 4, '', 3980, 'Asus VC239H.jpg'),
(12, 'Corsair Vengeance LPX DDR4 3000 PC-24000 16GB 2x8GB CL15', 136, 1, '					', 2482, 'Corsair Vengeance LPX DDR4.jpg'),
(13, 'Geil EVO X DDR4 2400 PC4-24000 16GB 2x8GB CL16 LED RGB', 109, 9, '					', 462, 'Geil EVO X DDR4.jpg'),
(16, 'WD NAS Red 3TB SATA3', 109, 2, '					', 6425, 'WD NAS Red 3TB SATA3.jpg'),
(17, 'Seagate Expansion 2TB USB 3.0 Negro', 75, 2, '					', 992, 'SeagateExpansion2TB.jpg'),
(18, 'Nikon D3300 + AF-S VR DX 18-105 mm', 570, 8, 'La cÃ¡mara de fotos Nikon D3300 capta la autÃ©ntica atmÃ³sfera, la esencia de cada momento importante de tu vida.', 4998, 'Nikon D3300 + AF-S VR DX 18-105 mm.jpg'),
(19, 'Canon EOS 1300D 18MP + 18-55 IS II', 380, 8, 'Las cÃ¡maras de fotos tipo rÃ©flex como la Canon EOS1300D os elevarÃ¡ a ti y a tus creaciones hasta el culmen del arte. ', 600, 'Canon EOS 1300D 18MP + 18-55 IS II.jpg'),
(20, 'Sony PS4 PlayStation 4 Slim 1TB + Horizon Zero Dawn', 350, 5, 'Te presentamos la Playstation 4 Slim con 1TB de almacenamiento y el juego Horizon Zero Dawn.', 500, 'Sony PS4 PlayStation 4 Slim 1TB.jpg'),
(21, 'Sony PS4 PlayStation 4 Slim 500GB + Overwatch Origins', 290, 5, 'Disfruta de una PS4 mÃ¡s estilizada y compacta con la misma potencia de juego.', 900, 'Sony PS4 PlayStation 4 Slim 500GB.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `cod_carrito` int(11) NOT NULL,
  `usr_cliente` varchar(255) DEFAULT NULL,
  `codigo_articulo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Dispositivos'),
(2, 'Discos duros'),
(3, 'Memoria RAM'),
(4, 'Pantallas'),
(5, 'Consolas'),
(8, 'Camaras'),
(9, 'Componentes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `usr` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`usr`, `password`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
('blackmamba', '$2y$10$87DY3me0oca7wjaZuwOScOVJGQU32b/l8OmTmRyPbXIr9v/smZJaW', 'Antonio', 'Rodriguez', 941568753, 'La ria N8 4F'),
('madness8627', '$2y$10$J18TYs7c7P3VI0F1eU5P..MbFEOeSN8OfFgTOBDs/ckGUmx.zoonO', 'Ruben', 'Orio', 681300371, 'La Planilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `codigo` int(11) NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `articulo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`codigo`, `usuario`, `articulo`, `cantidad`, `fecha`) VALUES
(45, 'blackmamba', 'Geil EVO X DDR4 2400 PC4-24000 16GB 2x8GB CL16 LED RGB', 3, '2017-03-15'),
(46, 'madness8627', 'Asus VG248QE 24 LED 3D 144Hz', 10, '2017-03-16'),
(47, 'madness8627', 'Nikon D3300 + AF-S VR DX 18-105 mm', 2, '2017-03-16'),
(48, 'madness8627', 'Geil EVO X DDR4 2400 PC4-24000 16GB 2x8GB CL16 LED RGB', 5, '2017-03-16'),
(49, 'madness8627', 'Asus VC239H-W 23" LED', 8, '2017-03-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usr`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`cod_carrito`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`usr`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `cod_carrito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
