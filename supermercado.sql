-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2020 a las 13:14:01
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supermercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `usr` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`usr`, `password`, `nombre`, `apellido`, `telefono`, `correo`, `dni`) VALUES
('chalmers', '$2y$10$0.u0MBA1qJ0ZJ0RRa5tFuuOX3DBwoHRgATWjVPtUO6MNfMKnCnXe2', 'Chalmers', 'Ruiz', 941456823, 'superintendente@gmail.com', '17594573X'),
('skinner', '$2y$10$UM6xH2HcwiV9vFhtFx2rdO1x73/tHj9osvRrovYorKxqSq8z41RIO', 'Seymour', 'Skinner', 941568753, 'seymourskinner@gmail.com', '60959573M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajas`
--

CREATE TABLE `bajas` (
  `codigo` int(20) NOT NULL,
  `usr_cliente` varchar(255) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bajas`
--

INSERT INTO `bajas` (`codigo`, `usr_cliente`, `motivo`, `comentario`, `fecha`) VALUES
(1, 'madness8627', 'No es mi estilo', 'yty', '2017-04-06'),
(2, 'madness8627', 'No es mi estilo', 'naaa', '2017-04-07'),
(3, 'madness8627', 'Demasiados errores', 'por nada', '2017-04-07'),
(4, 'madness8627', 'Demasiados errores', 'por nada', '2017-04-07'),
(5, 'madness8627', 'No es mi estilo', 'k', '2017-04-07'),
(6, 'madness8627', 'No es mi estilo', '4', '2017-04-07'),
(7, 'ikora', 'Falta de mantinimento', 'La torre me necesita', '2017-04-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `codigo` int(20) NOT NULL,
  `usr_cliente` varchar(30) DEFAULT NULL,
  `codigo_producto` int(20) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `codigo` int(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `codigo_categoria_general` int(20) DEFAULT NULL,
  `creado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`codigo`, `nombre`, `codigo_categoria_general`, `creado`) VALUES
(1, 'Carniceria', 1, 'chalmers'),
(2, 'Cervezas', 4, 'chalmers'),
(3, 'Vinos', 4, 'chalmers'),
(4, 'Comida para gatos', 5, 'chalmers'),
(5, 'Comida para perros', 5, 'chalmers'),
(10, 'Pescados y mariscos', 1, 'chalmers'),
(11, 'Charcuteria', 1, 'chalmers'),
(12, 'Frutas', 1, 'chalmers'),
(13, 'Verduras', 1, 'chalmers'),
(14, 'Pizzas', 3, 'chalmers'),
(15, 'Helados', 3, 'chalmers'),
(16, 'Pescaderia', 3, 'chalmers'),
(17, 'Primeros', 2, 'skinner'),
(18, 'Segundos', 2, 'skinner'),
(19, 'Postres', 2, 'skinner'),
(20, 'Refrescos', 4, 'skinner');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_generales`
--

CREATE TABLE `categorias_generales` (
  `codigo` int(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `creado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias_generales`
--

INSERT INTO `categorias_generales` (`codigo`, `nombre`, `creado`) VALUES
(1, 'Frescos', 'chalmers'),
(2, 'Platos preparados', 'chalmers'),
(3, 'Congelados', 'chalmers'),
(4, 'Bebidas', 'skinner'),
(5, 'Mascotas', 'skinner');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `usr` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `dni` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`usr`, `password`, `nombre`, `apellido`, `direccion`, `telefono`, `correo`, `dni`) VALUES
('alumno', '$2y$10$VNYQFrMETS4/q590IJgWhegqOwZlbJmiKs8WubqHOv9Su3PuxOqOa', 'Ramon', 'Fernandez', 'Plaza de las palmas 78', 985354782, 'alumno@hotmail.com', '52839293J'),
('eltiolabara', '$2y$10$ilJVyONolfP2ypZoh29icOtTiOzGof5L9tMealhLBemB3fzVNzTjW', 'Jose', 'Mota', 'Avenida las palmas 45 2A', 682453248, 'josemota@gmail.com', '53739524R'),
('gonzalez', '$2y$10$5CiBx2iDZ0tIdnZ1B95xBOp5R4pCI18EHaIF3d.NfVv0oacMq.5H.', 'Spiri', 'Gonzalez', 'Calle pajarita 78 2A', 654287651, 'aquiahitomate@gmail.com', '99728505E'),
('madness8627', '$2y$10$3b3eMTse/QX8QXPoqgkJceXYAxmvE.0qr1WelwtCmkEWKvRihOheq', 'Ruben', 'Orio', 'C/Palomares 3 4B', 681300371, 'calahorra00@gmail.com', '18074565S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `n_detalle` int(20) NOT NULL,
  `cod_factura` int(20) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `cantidad` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`n_detalle`, `cod_factura`, `nombre_producto`, `cantidad`) VALUES
(1, 49, 'Mureda Vino Sauvignon', 2),
(1, 50, 'Lomo de Salmon Noruego Superior', 1),
(2, 49, 'Pizza Ristorante Prosciutto', 2),
(2, 50, 'Piccolinis de Jamon y Queso', 1),
(3, 49, 'Iberplat', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `codigo` int(11) NOT NULL,
  `usr_cliente` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`codigo`, `usr_cliente`, `fecha`) VALUES
(43, 'madness8627', '2017-04-11'),
(44, 'madness8627', '2017-04-11'),
(45, 'eltiolabara', '2017-04-11'),
(46, 'madness8627', '2017-04-12'),
(47, 'madness8627', '2017-04-25'),
(48, 'madness8627', '2017-04-25'),
(49, 'madness8627', '2017-05-10'),
(50, 'madness8627', '2019-05-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `categoria` int(20) DEFAULT NULL,
  `medida` varchar(5) NOT NULL,
  `peso` int(6) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `stock` int(7) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `creado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`, `categoria`, `medida`, `peso`, `descripcion`, `stock`, `imagen`, `creado`) VALUES
(11, 'Lomo de Salmon Noruego Superior', 8, 1, 'gr', 360, ' Cada bandeja contiene 1 lomo de salmon, de calidad superior de 350 gr aproximadamente.', 2794, 'lomo-de-salmon-noruego-superior-tudespensa.jpg', 'chalmers'),
(12, 'Lomos de Dorada', 4, 10, 'gr', 190, 'Las proporciones de nutrientes de la dorada pueden variar segÃºn el tamaÃ±o del pescado, y si es de acuicultura o salvaje, asÃ­ como por la forma de cocinar.', 3000, 'lomos-de-dorada-tudespensa.jpg', 'chalmers'),
(13, 'Buey de Mar Cocido', 9, 10, 'gr', 800, 'Es un producto cocido despues de su descongelacion. ', 1400, 'buey-de-mar-cocido-puerto-de-palos.jpg', 'chalmers'),
(14, 'Dorada Entera Limpia', 3, 10, 'gr', 300, 'Las proporciones de nutrientes de la dorada pueden variar segun el tamaÃ±o del pescado, y si es de acuicultura o salvaje, asi como por la forma de cocinarse.', 3600, 'dorada-entera-limpia-tudespensa.jpg', 'chalmers'),
(15, 'Medios Lomos de Merluza', 8, 10, 'gr', 350, 'Ha sido cortado a mano, con el objeto de evitar el deterioro de la textura de su carne.', 2500, 'medios-lomos-de-merluza-tudespensa.jpg', 'chalmers'),
(16, 'Anillas de Pota(Elaboradas)', 5, 10, 'gr', 500, 'Cada bandeja contiene varias anillas de pota, con un peso aproximado de 500 gr., y un sobre de tinta de calamar.', 2600, 'anillas-de-pota-tudespensa.jpg', 'chalmers'),
(17, 'Pulpo Cocido', 12, 10, 'gr', 600, 'Cada bandeja contiene 1 pulpo entero con un peso aproximado de 600 gr.', 3600, 'pulpo-cocido-tudespensa.jpg', 'chalmers'),
(18, 'Chipirones Rellenos', 6, 10, 'gr', 400, 'El relleno esta elaborado con la propia carne del chipirÃ³n.', 2600, 'chipirones-rellenos-tudespensa.jpg', 'chalmers'),
(19, 'Filetes de Ternera Asturiana para Plancha', 10, 1, 'gr', 500, 'Los animales de origen han sido sacrificados a una edad comprendida entre los 8 y 12 meses, siendo por tanto una carne mÃ¡s tierna y suave que la que se obtiene de un animal de edad superior', 3000, 'filetes-ternera-asturiana-para-plancha-iberplat.jpg', 'chalmers'),
(20, 'Hamburguesa de Ternera Ecologica', 8, 1, 'gr', 520, 'Carne ternera ecolÃ³gica (99%) y escamas de sal. ', 3100, 'hamburguesas-de-ternera-asturiana-iberplat.jpg', 'chalmers'),
(21, 'Pechugas de Pollo', 4, 1, 'gr', 600, '2 Pechugas de pollo por bandeja de pso aproximado 600gr.', 2800, 'pechuga-de-pollo-nutrave.jpg', 'chalmers'),
(22, 'Solomillo de Cerdo', 9, 1, 'uds', 2, 'Solomollos de Cerdo, 2 unidades por venta', 3000, 'solomillo-de-cerdo-2-unidades-hemosa.jpg', 'chalmers'),
(23, 'Chuletas de Cordero Lechar Premium', 12, 1, 'gr', 500, 'Ha sido cortado a mano, con el objeto de evitar el deterioro de la textura de su carne.', 4500, 'chuletas-de-cordero-lechal-premium-iberplat.jpg', 'chalmers'),
(24, 'Entrecot de Buey Premium', 13, 1, 'gr', 300, 'El producto se obtiene a partir del fileteado del lomo de la canal de buey (lomo alto y lomo bajo), sacrificado a una edad superior a los 48 meses', 3600, 'entrecot-de-buey-premium-iberplat.jpg', 'chalmers'),
(25, 'Solomillo de Cerdo Iberico', 10, 1, 'gr', 500, 'Las piezas se obtienen a partir del corte transversal de la musculatura correspondiente a la region lumbar situada posteriormente al lomo, y se encuentra limpia de grasa.', 3000, 'solomillo-iberico-jose-luis-vicente.jpg', 'chalmers'),
(26, 'Redondo de Ternera(Pieza)', 26, 1, 'kg', 2, 'Redondo de ternera fresca al vacio, pieza de 2 kg. aproximadamente. Solo contiene carne de ternera.', 4200, 'redondo-de-ternera-pieza-tudespensa.jpg', 'chalmers'),
(27, 'Mafresa', 9, 11, 'uds', 1, 'El Lomo Iberico de Cebo es un delicioso entrante para cualquier comida especial. Ademas viene ya cortado para que solamente tengas que servirlo y degustarlo.', 3400, 'lomo-iberico-de-cebo-mafresa.jpg', 'chalmers'),
(28, 'Casa Tarradellas', 2, 11, 'uds', 1, 'Paleta, panceta, jamon y magro de cerdo, sal, lactosa (de leche), especias, antioxidante (ascorbato sÃ³dico), potenciador del sabor (E-621), conservante (nitrato potastico).', 2000, 'espetec-casa-tarradellas-pieza-180-gr.jpg', 'chalmers'),
(29, 'Campodulce (Jamon serrano)', 6, 11, 'gr', 500, 'Campodulce trae finas lonchas de jamon serrano equivalentres a 500 gramos', 3000, 'jamon-serrano-bodega-campodulce.jpg', 'chalmers'),
(30, 'Navidul (Jamon Curado en Medias Lonchas)', 1, 11, 'gr', 100, 'Jamon de cerdo . Sal. Conservadores (E-250) (E-252', 5000, 'jamon-curado-en-medias-lonchas-navidul.jpg', 'chalmers'),
(31, 'Azuaga (Lomo Iberico de Bellota)', 6, 11, 'gr', 100, 'El Lomo IbÃ©rico de Bellota es un delicioso entrante para cualquier comida especial.', 3100, 'lomo-iberico-de-bellota-azuaga.jpg', 'chalmers'),
(32, 'Sanchez alcaraz (Paleta Iberica de Cebo)', 65, 11, 'kg', 4, 'Paleta de cerdo ibÃ©rico, sal, azÃºcar, conservantes (E-252, E-250), antioxidante (E-301).', 3500, 'sanchez-alcaraz-paleta-iberica-de-cebo-pieza-435-kg-hasta-485-kg.jpg', 'chalmers'),
(33, 'Iberplat', 375, 11, 'kg', 8, '- 30 Sobres de jamÃ³n envasados al vacÃ­o. - 2 Sobres de picadillo al vacÃ­o. - 4 Puntas de codillo al vacÃ­o.', 1197, 'jamon-iberico-bellota-huelva-preparado-iberplat.jpg', 'chalmers'),
(34, 'Villar (Lote Ibericos Lomo+chorizo+Salchichon)', 15, 11, 'gr', 825, 'El mejor Lote Ibericos Lomo +Chorizo +Salchichon de Villar lo puedes comprar aqui', 2600, 'lote-ibericos-lomo-chorizo-salchichon-villar.jpg', 'chalmers'),
(35, 'Kiwi ZESPRI', 2, 12, 'uds', 6, 'Su maduracion es lenta. A temperatura ambiente se mantienen en perfectas condiciones hasta 15 dÃ­as. ', 2400, 'kiwi-zespri-tudespensa.jpg', 'chalmers'),
(36, 'Uva Blanca (Sin Pepita)', 3, 12, 'gr', 500, 'Cada bandeja contiene uvas blancas sin pepitas con un peso total de 500 gr.', 3500, 'uva-blanca-sin-pepita-tudespensa.jpg', 'chalmers'),
(37, 'Fruta Variada de Temporada', 19, 12, 'uds', 1, 'En esta secciÃ³n encontraras Fruta Variada de Temporada y otras frutas de temporada. ', 2000, 'fruta-variada-de-temporada-reybanpack.jpg', 'chalmers'),
(38, 'Naranja de Mesa Extra', 3, 12, 'uds', 3, 'Compra Naranja de Mesa Extra por Internet y disfruta de todo su sabor y de sus propiedades gracias a su alto contenido en vitamina C.', 2600, 'a17363jpg.jpg', 'chalmers'),
(39, 'Maracuya', 6, 12, 'gr', 100, 'Su sabor es muy similar al del albaricoque, refrescante y agridulce. Aporta una gran cantidad de calorÃ­as por su alto contenido en hidratos de carbono, vitaminas A y C, fÃ³sforo, potasio y magnesio.', 3000, 'a17375jpg.jpg', 'chalmers'),
(40, 'Manzana Golden Extra', 2, 12, 'gr', 600, 'En nuestra seccion de manzanas podras comprar esta Manzana Golden Extra en Bandeja 600 gr y muchas otras variedades.', 2600, 'a17367jpg.jpg', 'chalmers'),
(41, 'Patata Traducional', 4, 13, 'kg', 5, 'Cada malla contiene 5 kilos de patatas nuevas de la variedad monalisa.', 4000, 'patata-tradicional-todo-uso-udapat.jpg', 'chalmers'),
(42, 'Esparrago Triguero', 3, 13, 'gr', 200, 'Disfruta de los conocidos beneficios y sabor del Esparrago Triguero y de todas las comodidades de nuestro servicio de reparto.', 2500, 'esparrago-triguero-tudespensa.jpg', 'chalmers'),
(43, 'Verenjenas', 2, 13, 'gr', 600, 'Cada bandeja contiene normalmente 2 berenjenas con un peso total minimo indicado.', 2600, 'berenjenas-tudespensa.jpg', 'chalmers'),
(44, 'Pimiento Rojo', 2, 13, 'uds', 2, 'Cada bandeja contiene 500 gr de pimientos rojos, 2 unidades.', 4000, 'pimiento-rojo-tudespensa.jpg', 'chalmers'),
(45, 'Lechuga Iceberg', 1, 13, 'gr', 400, 'Cada bolsa contiene una Lechuga Iceberg de 300 a 400 gr, aproximadamente.', 3600, 'lechuga-iceberg-tudespensa.jpg', 'chalmers'),
(46, 'Canonigos', 2, 13, 'gr', 100, 'Es una verdura, resistente la hojas  tienen que ser frescas, tiernas e intactas, de color verde uniforme y brillante.', 1400, 'canonigos-diquesi.jpg', 'chalmers'),
(47, 'LasaÃ±a de Verduras y queso de Cabra', 4, 17, 'gr', 250, 'La lasaÃ±a de verduras es un plato saludable a la vez que nutritivo.', 4996, 'lasana-de-verduras-y-queso-de-cabra-tudespensa.jpg', 'skinner'),
(48, 'Parrillada de Verduras', 4, 17, 'gr', 280, 'Berenjena, calabacÃ­n, champiÃ±on, pimiento rojo y verde, cebolla, calabaza, zanahoria, puerro, aceite vegeal de girasol y sal ', 4600, 'parrillada-de-verdurasjpg.jpg', 'skinner'),
(49, 'Risotto de Boletus', 3, 17, 'gr', 300, 'Arroz, agua, mixto de setas, nata liquida UHT, queso mascarpone, cebolla, puerro, aceite de oliva, queso rayado parmesano, aceite de trufa nera, mantequilla, caldo sabor pollo deshidratado y sal', 3500, 'risotto-de-boletusjpg.jpg', 'skinner'),
(50, 'Arroz  a la Parmesana', 3, 17, 'gr', 300, 'Arroz, cebolla, mantequilla, aceite de oliva, queso mascarpone, queso parmesano, queso mozzarella, nata, champiÃ±ones, zanahoria, pimiento rojo, sal y pimienta.', 3600, 'arroz-parmesanajpg.jpg', 'skinner'),
(51, 'Espirales Carbonara', 2, 17, 'gr', 300, ' Elaborado con la mejor pasta y jamon selecto, lo que aporta un sabor inigualable a nuestro plato.', 4200, 'espirales-carbonara-tudespensa.jpg', 'skinner'),
(52, 'Tagliatelle con Verduras', 2, 17, 'gr', 250, 'Los tagliatelle con verduras es un plato rico y original. En cada bocado se puede apreciar el sabor de las verduras. ', 3600, 'tagliatelle-con-verduras-tudespensa.jpg', 'skinner'),
(53, 'Verenjena rellena de carne', 4, 18, 'gr', 250, 'Las berenjenas rellenas de carne es un plato que combina todo el sabor de la carne.', 4997, 'berenjena-rellena-de-carne-tudespensa.jpg', 'skinner'),
(54, 'Merluza en Salasa Verde', 4, 18, 'gr', 250, 'Una de las recetas mÃ¡s tradicionales de merluza.', 3700, 'merluza-en-salsa-verde-tudespensa.jpg', 'skinner'),
(55, 'Croquetas Caseras', 3, 18, 'gr', 280, 'Crotetas caseras como si fueran echas por la abuela.', 5100, 'croquetas-caseras-casa-mas.jpg', 'skinner'),
(56, 'Secreto Iberico a la Mostaza', 5, 18, 'gr', 200, 'Secreto iberico a la mostaza, 200 gramos por bandeja', 3000, 'a17002jpg.jpg', 'skinner'),
(57, 'Jamoncitos de Pollo al Chilindron', 3, 18, 'gr', 250, 'Uno de las recetas de pollo mÃ¡s conocidas, con una salsa de un sabor exquisito. ', 2600, 'jamoncitos-de-pollo-al-chilindron-tudespensa.jpg', 'skinner'),
(58, 'Medallones de Solomillos de Cerdo', 5, 18, 'gr', 250, 'La carne de este plato destaca por su frescura y su sabor.', 3800, 'medallones-de-solomillo-de-cerdo-a-la-pi-tudespensa.jpg', 'skinner'),
(59, 'PiÃ±a Natural Pelada', 3, 19, 'uds', 1, 'PiÃ±a Natural Pelada Isla Bonita, tu fruta ya cortada a un precio muy economico.', 2400, 'pina-natural-pelada-isla-bonita.jpg', 'skinner'),
(60, 'Yogur de Melocoton y Maracuya', 1, 19, 'gr', 125, 'Yogur griego artesanal muy sabroso y denso. Formado con leche fresca fermentada lentamente y sin azÃºcares aÃ±adidos. ', 3594, 'yogur-de-melocoton-y-maracuya-pastoret.jpg', 'skinner'),
(61, 'Yogur de Fresa', 1, 19, 'gr', 125, 'Yogur muy sabroso, cremoso y denso con sabor a fresa. Yogur artesanal, creado con leche fermentada lentamente y nata que le da un sabor dulce muy especial.', 3197, 'yogur-de-fresa-pastoret.jpg', 'skinner'),
(62, 'Yogur Natural Azucarado', 1, 19, 'gr', 125, 'Yogur natural elaborado con leche fresca, muy cremoso y de textura suave con azÃºcar de caÃ±a aÃ±adido para aquellos que prefieren los sabores dulces.', 2600, 'yogur-natural-azucarado-pastoret.jpg', 'skinner'),
(63, 'Capricho de Yogur Naranja y Chocolate', 2, 19, 'gr', 150, 'Yogur griego artesanal que combina una delicada capa de mermelada con trozitos de naranja y una capa de chocolate negro.', 3000, 'capricho-de-yogur-naranja-y-chocolate-pastoret.jpg', 'skinner'),
(64, 'Capricho de Yogur Limon y hierbabuena', 2, 19, 'gr', 150, 'Yogur artesano elaborado con leche fresca y formado con una capa de limÃ³n y otra de hierbabuena. Yogur muy refrescante y digestivo.', 2800, 'capricho-de-yogur-limon-y-hierbabuena-pastoret.jpg', 'skinner'),
(65, 'Pizza Ristorante Prosciutto', 3, 14, 'gr', 330, 'PIzza Ristorante Prosciutto ideal para compartirla con los amigos.', 3896, 'pizza-ristorante-prosciutto-droetker.jpg', 'skinner'),
(66, 'Piccolinis de Jamon y Queso', 3, 14, 'gr', 270, 'PequeÃ±as pizzas con el buen sabor de la pizza de jamon y queso.', 2499, 'piccolinis-capricciosa-jamon-y-queso-buitoni--pack9x270-gr.jpg', 'skinner'),
(67, 'Pizza Spinaci', 3, 14, 'gr', 390, 'Pizza Spinaci el rico sabor del queso con las espinacas', 3396, 'pizza-spinaci-droetker.jpg', 'skinner'),
(68, 'PIzza Ristorante AtÃºn', 3, 14, 'gr', 355, 'Pizza Ristorante con atun y queso.', 2800, 'pizza-ristorante-atun-droetker.jpg', 'skinner'),
(69, 'Pizza Carbonara', 3, 14, 'gr', 340, 'Nueva Pizza Carbonara de Ristorante.', 3500, 'pizza-carbonara-droetker.jpg', 'skinner'),
(70, 'Pizza Jamon y Queso', 2, 14, 'gr', 340, 'PIzza finisima de Jamon y Queso echa en horno de piedra', 2900, 'pizza-jamon-y-queso-unide.jpg', 'skinner'),
(71, 'Maxibon Mini de Nata', 4, 15, 'gr', 325, 'Helados Maxibon mitad galleta mitan chocolate.', 2600, 'nestle-maxibon-mini-de-nata-caja-6-uds-325-gr.jpg', 'skinner'),
(72, 'Helado de Chocolate', 3, 15, 'uds', 1, 'Tarrina de helado de chocolate', 2700, 'helado-de-chocolate-carte-dor.jpg', 'skinner'),
(73, 'Helados Supermix 4 Sabores', 4, 15, 'gr', 525, 'Helados calipo de 4 sabores diferentes.', 2500, 'helados-supermix-4-sabores-calippo.jpg', 'skinner'),
(74, 'Helado Frigopie', 3, 15, 'gr', 240, 'Helado frigopie que te recordara cuando eras pequeÃ±o', 3800, 'helado-frigopie-frigo.jpg', 'skinner'),
(75, 'Cono Helado Clasico', 6, 15, 'uds', 12, '12 MIni Cornetos de nata y chocolate.', 3500, 'cono-helado-clasico-cornetto.jpg', 'skinner'),
(76, 'Helado MIni Ifinity Chocolate', 5, 15, 'gr', 300, 'Helado de chocolate Magnum', 2999, 'helado-mini-infinity-chocolate-magnum.jpg', 'skinner'),
(77, 'Centros de Salmon', 5, 16, 'gr', 300, 'Parte dentral de salmon', 2500, 'centros-de-salmon-pescanova.jpg', 'skinner'),
(78, 'Lomos de bacalao', 5, 16, 'gr', 300, 'Lonchas de bacalado con sal.', 4300, 'lomos-bacalao-pescanova-bolsa-300-gr.jpg', 'skinner'),
(79, 'Surfers Merluza', 3, 16, 'gr', 400, 'Trozos de merluza rebozadas para los mas pequeÃ±os.', 4599, 'surfers-merluza-pescanova-bolsa-400-gr.jpg', 'skinner'),
(80, 'Muslitos de Mar Sin PInza', 2, 16, 'gr', 2500, 'Muslos de Mar Sin Pinza de Pescanova para los mas pequeÃ±os.', 3500, 'muslitos-de-mar-sin-pinza-pescanova.jpg', 'skinner'),
(81, 'Rollito de Mar', 2, 16, 'gr', 450, 'Palitos de mar envasados al vacio.', 3800, 'rollito-de-mar-pescanova-bandeja-450-gr.jpg', 'skinner'),
(82, 'Estrella Galicia Cerveza especial', 4, 2, 'uds', 6, 'Cerveza estrella galicia pack de 6x33ctl', 3480, 'cerveza-especial-estrella-de-galicia.jpg', 'skinner'),
(83, 'Estrella Galicia Cerveza Reserva 1906', 5, 2, 'uds', 6, 'Cerveza Reserva 1906 pack de 6x33ctl', 2500, 'cerveza-reserva-1906-estrella-de-galicia.jpg', 'skinner'),
(84, 'Voll-Damm Cerveza Doble Malta', 8, 2, 'uds', 12, 'Cerveza Voll-Dall pack de 12x33ctl', 3000, 'cerveza-doble-malta-voll-damm.jpg', 'skinner'),
(85, 'Damm Cerveza Estrella', 3, 2, 'uds', 6, 'Cerveza Damm Paack de 6x33ctl.', 3490, 'cerveza-estrella-damm-botella-pack6x25-ctl.jpg', 'skinner'),
(86, 'San Miguel Cerveza', 3, 2, 'uds', 6, 'Cerveza San Miguiel Pack de 6x25ctl.', 4000, 'cerveza-san-miguel.jpg', 'skinner'),
(87, 'Cruzcampo Cerveza Crucial', 3, 2, 'uds', 6, 'Cerveza Cruzcampo Pack de 6x25ctl.', 2998, 'cerveza-cruzial-cruzcampo.jpg', 'skinner'),
(88, 'Modavin Vino Lambrusco Amabile', 3, 3, 'uds', 1, 'Compra Modavin, este lambrusco que tanto gusta a todo el mundo. ', 3000, 'vino-lambrusco-amabile-modavin.jpg', 'skinner'),
(89, 'Beronia Vino Tinto Crianza', 7, 3, 'uds', 1, 'En tudespensa.com dispones del Vino Tinto Crianza D.O. Rioja Beronia, envasado en botella de 75 ctls.', 3598, 'beronia-vino-tinto-crianza-do-rioja-botella-07-lt.jpg', 'skinner'),
(90, 'Mureda Vino Sauvignon', 4, 3, 'uds', 1, 'Vino Sauvignon Blanco 100% EcolÃ³gico Bt Cristal 75 ctl de Mureda', 4498, 'vino-sauvignon-blanco-100-ecologico-mureda.jpg', 'skinner'),
(91, 'Sanz Vino Blanco Clasico', 5, 3, 'uds', 1, 'Comprar vinos online, y sobre todo caldos tan buenos como este Vino Blanco ClÃ¡sico D.O. Rueda.', 3600, 'a03951-1jpg.jpg', 'skinner'),
(92, 'SeÃ±orio de los Llanos Vino Tinto', 2, 3, 'uds', 1, 'Vino Tinto ValdepeÃ±as Tempranillo Botella 75 ctl de SeÃ±orÃ­o de los Llanos', 3800, 'vino-tinto-valdepenas-tempranillo-senorio-de-los-llanos.jpg', 'skinner'),
(93, 'Estola Vino Crianza', 4, 3, 'uds', 1, 'Los vinos de Castilla La Mancha tienen un buen representante con este Vino Tinto Crianza D.O. La Mancha de Estola.', 2500, 'vino-tinto-crianza-do-la-mancha-estola-bt-cristal-75-ctl.jpg', 'skinner'),
(94, 'Coca Cola', 14, 20, 'uds', 24, 'Refresco de Cola Lata Pack24x33 ctl de Coca Cola', 3800, 'refresco-de-cola-coca-cola.jpg', 'skinner'),
(95, 'Aquarius Limon', 6, 20, 'uds', 9, 'Bebida IsotÃ³nica de LimÃ³n Lata Pack9x33 ctl de Aquarius Limon.', 2600, 'aquarius-bebida-isotonica-de-limon-lata-pack9x33-ctl.jpg', 'skinner'),
(96, 'Nestea', 5, 20, 'uds', 9, 'Refresco de TÃ© al LimÃ³n Lata Pack9x33 ctl de Nestea', 3000, 'nestea-refresco-de-te-al-limon-lata-pack9x33-ctl.jpg', 'skinner'),
(97, 'Bitter Kas', 4, 20, 'uds', 6, 'Bitter Bt Cristal Pack6x20 ctl de Kas.', 3800, 'bitter-kas.jpg', 'skinner'),
(98, 'Schweppes', 3, 20, 'uds', 4, 'Ginger Ale Bt Cristal Pack4x25 ctl de Schweppes', 3600, 'ginger-ale-schweppes.jpg', 'skinner'),
(99, 'Seagrams', 6, 20, 'uds', 4, 'Tonica Bt Cristal Pack4x20 ctl de Seagrams', 3495, 'tonica-seagrams.jpg', 'skinner'),
(100, 'Canibaq', 16, 5, 'kg', 20, 'Alimento para Perro Croquetas 20 kg de Canibaq', 3900, 'alimento-para-perro-croquetas-canibaq.jpg', 'skinner'),
(101, 'Friskies', 1, 5, 'gr', 175, 'Funtastix (Queso y Bacon) Sobre 175 gr de Friskies', 3538, 'funtastix-queso-y-bacon-friskies.jpg', 'skinner'),
(102, 'Ultima Snack Interdental', 2, 5, 'gr', 70, 'Snack Interdental+ Limpieza Profunda 70 gr TamaÃ±o PequeÃ±o de Ultima.', 3200, 'snack-interdental-limpieza-profunda-ultima.jpg', 'skinner'),
(103, 'Friskies Adulto Ave y Verduras', 6, 5, 'kg', 3, 'Adulto Ave y Verduras 3 kg de Friskies.', 3600, 'adulto-ave-y-verduras-friskies.jpg', 'skinner'),
(104, 'Purina One Alimento Gatos ESterilizados', 14, 4, 'kg', 3, 'Alimento Gatos Esterilizados Pollo y Tr. 3 kg de Purina One.', 3500, 'alimento-gatos-esterilizados-pollo-y-tri-purina-one.jpg', 'skinner'),
(105, 'Gourmet Gold Mousse para Gato', 7, 4, 'uds', 12, 'Mousse para Gato Pack12x85 gr de Gourmet Gold.', 2600, 'mousse-para-gato-gourmet-gold.jpg', 'skinner'),
(106, 'Ultima Alimento Gatos', 4, 4, 'gr', 800, 'Alimento Gatos Control Tracto Urinario 800 gr de Ultima.', 3500, 'alimento-gatos-control-tracto-urinario-ultima.jpg', 'skinner'),
(107, 'Gourmet Diamant Laminas en Gelatina Con Atun', 1, 4, 'gr', 85, 'Laminas en Gelatina con Atun y Gambas 85 gr de Gourmet Diamant.', 3400, 'laminas-en-gelatina-con-atun-y-gambas-gourmet-diamant.jpg', 'skinner');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usr`);

--
-- Indices de la tabla `bajas`
--
ALTER TABLE `bajas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `categorias_generales`
--
ALTER TABLE `categorias_generales`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`usr`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`n_detalle`,`cod_factura`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bajas`
--
ALTER TABLE `bajas`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `categorias_generales`
--
ALTER TABLE `categorias_generales`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
