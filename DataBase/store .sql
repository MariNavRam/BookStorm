-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-04-2021 a las 23:57:35
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Ally', '90eaf2df12360364d39ffddf69bb6819'),
(3, 'ProfeLuis', '9126eeb87ce90da035589c5d187326df'),
(4, 'Oswaldo', '633d2c523d43600cca8b0d1d8bb795b0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('0000', 'TODAS LAS CATEGORIAS', 'de todo'),
('00000', 'MAS VENDIDOS', 'mas comprados por el publico'),
('0001', 'TERROR', 'Libros con cierto suspenso'),
('0002', 'DRAMA', 'Libros con cierto cararacter de tragedia y comedia'),
('0003', 'ROMANCE', 'Libros con cierto caracter de amor'),
('0004', 'COMEDIA', 'libros de chistes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('213738386', 'arturo', 'arturo', 'buenrostro', '4983a0ab83ed86e0e7213c8783940193', 'universidad de guadalajara', '33123456', 'cliente@store.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '0123456789567891', 'Bancomer', 'Store', 'Bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(1, '00052', 1, '354.00'),
(2, '00063', 1, '329.00'),
(3, '00051', 1, '268.77'),
(3, '00012', 1, '324.00'),
(4, '00061', 1, '298.00'),
(5, '00005', 1, '271.15'),
(6, '00091', 1, '275.00'),
(7, '00092', 1, '252.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(2, '00002', 'EL CHICO DE AL LADO', '0003', '369.00', 5, 'Español', 'KATIE VAN ARK', 2, '00001235', '00002.jpg', 'admin', 'Activo'),
(3, '00004', '#MAS GORDO EL AMOR', '0003', '350.00', 0, 'Español', 'ANTONIO MALPICA', 10, '00001234', '00004.jpg', 'admin', 'Activo'),
(4, '00005', 'DESPUES DE TODO ESTAS TU', '0003', '319.00', 15, 'Español', 'MICHELLE LEVY', 0, '00001236', '00005.jpg', 'admin', 'Activo'),
(5, '00003', 'BOY MEETS BOY', '0003', '309.00', 0, 'Ingles', 'DAVID LEVITHAN', 20, '00001234', '00003.jpg', 'admin', 'Activo'),
(6, '00011', 'Game of Thrones. Edición Pop u', '0001', '1499.00', 0, 'Español', 'MATTHEW REINHART', 100, '00001234', '00011.jpg', 'admin', 'Activo'),
(7, '00012', 'EL ICKABOG', '0001', '324.00', 0, 'Español', 'J.K. ROWLING', 4, '00001236', '00012.jpg', 'admin', 'Activo'),
(8, '00013', 'EL GRAN LIBRO DE LOS MITOS', '0001', '799.00', 30, 'Español', 'SUSAETA EDICIONES', 20, '00001236', '00013.jpg', 'admin', 'Activo'),
(9, '00014', 'HISTORIAS DE TERROR TIK TAK DR', '0001', '499.00', 6, 'Español', 'VV.AA.', 100, '00001235', '00014.jpg', 'admin', 'Activo'),
(10, '00015', 'SANCTUM', '0001', '286.00', 8, 'Español', 'MADELEINE ROUX', 3, '00001234', '00015.jpg', 'admin', 'Activo'),
(11, '00021', 'FIESTA Y DRAMA', '0002', '249.00', 0, 'Español', 'VARIOS AUTORES', 1, '00001234', '00021.jpg', 'admin', 'Activo'),
(12, '00022', 'CENIZAS. DRAMA EN TRES ACTOS', '0002', '99.00', 0, 'Español', 'RAMÓN VALLE-INCLÁN', 20, '00001236', '00022.jpg', 'admin', 'Activo'),
(16, '00031', 'HUMOR EN EL AULA', '0004', '239.00', 0, 'Español', 'ANA MARIA FERNANDEZ', 23, '00001237', '00031.jpg', 'admin', 'Activo'),
(17, '00032', 'CUENTOS DE HUMOR NEGRO', '0004', '150.00', 5, 'Español', 'SAKI', 400, '00001234', '00032.jpg', 'admin', 'Activo'),
(18, '00033', 'BREVE HISTORIA DEL HUMOR INGLE', '0004', '379.00', 10, 'Ingles', 'CHARLY TAYLOR', 50, '00001237', '00033.jpg', 'admin', 'Activo'),
(19, '00034', 'DE BUEN HUMOR PRODUCIMOS MEJOR', '0004', '165.00', 0, 'Español', 'JORGE RIOS ABARCA', 10, '00001234', '00034.jpg', 'admin', 'Activo'),
(20, '00035', 'EL HUMOR Y SUS LIMITES', '0004', '419.00', 20, 'Español', 'JOSE MARIA PERCEVAL', 5, '00001237', '00035.jpg', 'admin', 'Desactivado'),
(23, '00051', 'EL AROMA DE LOS LIBROS', '0000', '289.00', 7, 'Español', 'DESY ICARDI', 0, '00001234', '00051.jpg', 'admin', 'Activo'),
(24, '00052', 'YOGA', '0000', '354.00', 0, 'Español', 'EMMANUEL CARRERE', 99, '00001234', '00052.jpg', 'admin', 'Activo'),
(25, '00053', 'EL ARTE PERDIDO DE LAS ESCRITU', '0000', '449.00', 0, 'Español', 'KAREN ARMSTRONG', 45, '00001234', '00053.jpg', 'admin', 'Activo'),
(26, '00054', 'EN EL JARDIN DE LAS BESTIAS', '0000', '269.00', 0, 'Español', 'ERIK LARSON', 36, '00001234', '00054.jpg', 'admin', 'Activo'),
(27, '00055', 'DELATORA', '0000', '349.00', 0, 'Español', 'JOYCE CAROL OATES', 10, '00001234', '00055.jpg', 'admin', 'Activo'),
(28, '00056', 'HAZ ESPACIO EN TU VIDA', '0000', '189.00', 0, 'Español', 'FUMIO SASAKI', 10, '00001236', '00056.jpg', 'admin', 'Activo'),
(29, '00057', 'EL FIN DEL ALZHEIMER', '0000', '399.00', 0, 'Español', 'DALE E. BREDESEN', 23, '00001234', '00057.jpg', 'admin', 'Activo'),
(30, '00058', 'COMODA EN MI PIEL', '0000', '199.00', 0, 'Español', 'RAQUEL BESSUDO', 13, '00001236', '00058.jpg', 'admin', 'Activo'),
(31, '00059', 'LA NOVELA DEL AGUA', '00000', '279.00', 10, 'Español', 'MAJA LUNDE', 22, '00001234', '00059.jpg', 'admin', 'Activo'),
(32, '00060', 'LA SEÑAL', '0000', '248.00', 0, 'Español', 'Bradley Jersak', 20, '00001234', '00060.jpg', 'admin', 'Activo'),
(33, '00061', 'EXTRATERRESTRE', '0000', '298.00', 0, 'Español', 'AVI LOEB', 19, '00001234', '00061.jpg', 'admin', 'Activo'),
(34, '00050', 'KLARA Y EL SOL', '0000', '395.00', 0, 'Español', 'KAZUO ISHIGURO', 21, '00001235', '00050.jpg', 'admin', 'Activo'),
(35, '00062', 'EL CAZADOR CELESTE', '0000', '495.00', 0, 'Español', 'ROBERTO CALASSO', 34, '00001236', '00062.jpg', 'admin', 'Activo'),
(36, '00063', 'SUSURRAN TU NOMBRE', '00000', '329.00', 0, '434', 'ALEX NORTH', 25, '00001236', '00063.jpg', 'admin', 'Activo'),
(37, '00064', 'POLITICAS DE LO SENSIBLE', '0000', '680.00', 10, 'Español', 'ALBERTO SANTAMARIA', 24, '00001237', '00064.jpg', 'admin', 'Activo'),
(38, '00065', 'EVA VICTORIOSA', '0000', '368.00', 0, 'Español', 'JEANNE LAPERCHE', 26, '00001236', '00065.jpg', 'admin', 'Activo'),
(39, '00066', 'LA GAVIOTA', '0000', '368.00', 0, 'Español', 'CECILIA BÖHL DE FABER', 21, '00001237', '00066.jpg', 'admin', 'Activo'),
(40, '00067', 'EL CAMINO AL EXTASIS', '00000', '395.00', 0, 'Español', 'ELMA ROURA', 1, '00001236', '00067.jpg', 'admin', 'Activo'),
(41, '00068', 'SE FUERON A LA IZQUIERDA', '0000', '299.00', 0, 'Español', 'MONICA HESSE', 12, '00001235', '00068.jpg', 'admin', 'Activo'),
(42, '00069', 'EL SECRETO DE LAS NUBES', '0000', '389.00', 0, 'Español', 'ALYSON RICHMAN', 10, '00001236', '00069.jpg', 'admin', 'Activo'),
(43, '00070', 'LAS VALKIRIAS', '0000', '269.00', 0, 'Español', 'PAULO COELHO', 20, '00001235', '00070.jpg', 'admin', 'Activo'),
(44, '00071', 'NUESTRA VERDAD', '0000', '398.00', 0, 'Español', 'Kamala Harris', 23, '00001236', '00071.jpg', 'admin', 'Activo'),
(45, '00072', 'SOY MAGIA, SOY VALIENTE', '0000', '249.00', 0, 'Español', 'ROXANA RAMOS', 23, '00001236', '00072.jpg', 'admin', 'Activo'),
(46, '00073', 'UN PERRO RABIOSO', '0000', '250.00', 0, 'Español', 'MAURICIO MONTIEL', 1, '00001235', '00073.jpg', 'admin', 'Activo'),
(47, '00074', 'COLOSIO', '0000', '249.00', 0, 'Español', 'RAYMUNDO RIVA', 5, '00001236', '00074.jpg', 'admin', 'Activo'),
(48, '00075', 'FANTASMAS DEL ORIENTE', '0000', '298.00', 0, 'Español', 'IMANOL CANEYADA', 26, '00001236', '00075.jpg', 'admin', 'Activo'),
(49, '00076', 'READY PLAYER TWO', '0000', '349.00', 0, 'Ingles', 'Ernest Cline', 20, '00001237', '00076.jpg', 'admin', 'Activo'),
(50, '00077', 'MATILDE', '0000', '349.00', 0, 'Español', 'CARLOS PASCUAL', 10, '00001236', '00077.jpg', 'admin', 'Activo'),
(51, '00078', 'EL MEXICO QUE SE AVECINA', '0000', '269.00', 0, 'Español', 'JULIO HERNANDEZ', 20, '00001237', '00078.jpg', 'admin', 'Activo'),
(52, '00079', 'CATEDRALES', '0000', '319.00', 0, 'Español', 'CLAUDIA PIÑEIRO', 23, '00001235', '00079.jpg', 'admin', 'Activo'),
(53, '00080', 'El triunfo de la estupidez', '0000', '398.00', 0, 'Español', 'Francois Marmion', 20, '00001236', '00080.jpg', 'admin', 'Activo'),
(54, '00081', 'ALGO POR LO QUE VIVIR', '0000', '419.00', 15, 'Español', 'RICHARD ROPER', 23, '00001236', '00081.jpg', 'admin', 'Activo'),
(55, '00082', 'NO SE MATA LA VERDAD', '0000', '262.00', 10, 'Español', 'TEMORIS GRECKO', 26, '00001236', '00082.jpg', 'admin', 'Activo'),
(56, '00083', 'PERMISO PARA SENTIR', '0000', '298.00', 0, 'Español', 'MARC BRACKETT', 26, '00001236', '00083.jpg', 'admin', 'Activo'),
(57, '00084', 'SU ULTIMO DIA', '0000', '398.00', 0, 'Español', 'SHARI LAPENA', 10, '00001237', '00084.jpg', 'admin', 'Activo'),
(58, '00085', 'CUANDO EMPIEZA TODO', '0000', '415.00', 0, 'Español', 'CHRISTIAN DONLAN', 23, '00001236', '00085.jpg', 'admin', 'Activo'),
(60, '00086', 'UNA CITA CONTIGO CADA DIA', '0003', '298.00', 0, 'Español', 'LAURA CHICA', 5, '00001236', '00086.jpg', 'admin', 'Activo'),
(61, '00087', 'PARADAIS', '0002', '239.00', 0, 'Español', 'FERNANDA MELCHOR', 10, '00001234', '00087.jpg', 'admin', 'Activo'),
(62, '00088', 'EL HUMOR Y SUS LIMITES', '0004', '419.00', 15, 'Español', 'JOSE PERCEVAL', 20, '00001236', '00088.jpg', 'admin', 'Activo'),
(65, '00091', 'NOCHES ROBADAS', '0002', '275.00', 0, 'Español', 'REBECCA MAIZEL', 25, '00001236', '00091.jpg', 'admin', 'Activo'),
(66, '00092', 'LA CHICA DE MEDIANOCHE', '0002', '280.00', 10, 'Español', 'MELISSA GREY', 19, '00001236', '00092.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL,
  `Pago` varchar(30) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Cuenta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`, `Pago`, `Estado`, `Cuenta`) VALUES
('00001234', 'Conecta', 'Cd de mexico', '543243242', 'https://alfalibros.com', '1111', 'No Pagado', '2345678901'),
('00001235', 'ALFAGUARA JUVENIL', 'Jalisco', '234345675', 'https://alfalibros.com', '7543', 'No Pagado', 'S/N'),
('00001236', 'laurasse', 'Jalisco', '334251324', 'https://laurase.com', '3333', 'No Pagado', 'S/N'),
('00001237', 'Pearson', 'Cd de mexico', '56789123', 'https://pearson.com', '2000', 'Pagado', 'S/N'),
('00001238', 'EDICIONES B', 'Cd de mexico', '345676432', 'https://edicionesB.com', '2345', 'Pagado', 'S/N'),
('00001239', 'ALONDRA', 'Jalisco', '344545455', 'https:/alondra.com', '0', 'No Pagado', 'S/N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(1, '04-04-2021', '213738386', '354.00', 'Entregado', '0002', 'Envio Por Currier', 'Sin archivo adjunto'),
(2, '04-04-2021', '213738386', '329.00', 'Entregado', '0004', 'Envio Por Currier', 'Sin archivo adjunto'),
(3, '05-04-2021', '213738386', '592.77', 'Entregado', '00005', 'Recoger Por Tienda', 'Sin archivo adjunto'),
(4, '05-04-2021', '213738386', '298.00', 'Pendiente', '00006', 'Envio Por Paqueteria', 'Sin archivo adjunto'),
(5, '09-04-2021', '213738386', '271.15', 'Enviado', '98765', 'Envio Por Currier', 'Sin archivo adjunto'),
(6, '11-04-2021', '213738386', '275.00', 'Pendiente', '876543213', 'Envio Por Paqueteria', 'Sin archivo adjunto'),
(7, '13-04-2021', '213738386', '252.00', 'Enviado', '21234324', 'Envio Por Paqueteria', 'Sin archivo adjunto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
