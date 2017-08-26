CREATE DATABASE cliente;

USE cliente;

CREATE TABLE `cliente` (
  `Id_Cliente` varchar(12) NOT NULL,
  `Nombre` varchar(10) NOT NULL,
  `Apellido1` varchar(10) NOT NULL,
  `Apellido2` varchar(10) NOT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Saldo_Puntos` int(11) NOT NULL,
  `Estado` char(1) NOT NULL,
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `Nombre`, `Apellido1`, `Apellido2`, `Telefono`, `Fecha_Nacimiento`, `Fecha_Ingreso`, `Saldo_Puntos`, `Estado`) VALUES
('1651651651', 'Rodolfo','Brenes', 'Vega', 12344515, '2001-08-10', '2017-08-14', 10, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `Monto` float NOT NULL,
  `Num_Factura` int(11) NOT NULL,
  `Moneda` char(1) NOT NULL,
  `Cod_Sku` varchar(9) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha_Compra` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`Monto`, `Num_Factura`, `Moneda`, `Cod_Sku`, `Cantidad`, `Fecha_Compra`) VALUES
(100000, 1, 'C', 'GBG654', 7, '2017-08-14 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`Num_Factura`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `Num_Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
