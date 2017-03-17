--
-- Base de datos: `proyectofinal`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaPersona` ()  NO SQL
BEGIN

select Documento, Nombre, Nombre_2, Apellido_1, Apellido_2, Fecha_De_Nacimiento from persona 

;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(10) UNSIGNED NOT NULL,
  `Material_idMaterial` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `Material_idMaterial`, `Nombre`) VALUES
(1, 1, 'Carton_y_papel'),
(2, 2, 'Carton_y_papel'),
(3, 3, 'Carton_y_papel'),
(4, 4, 'Carton_y_papel'),
(5, 5, 'Carton_y_papel'),
(6, 6, 'Plastico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `idFactura` int(10) UNSIGNED NOT NULL,
  `Id_Empleado` int(10) UNSIGNED NOT NULL,
  `Persona_idPersona` int(10) UNSIGNED NOT NULL,
  `Fecha_Hora` date NOT NULL,
  `Mensaje` varchar(20) DEFAULT NULL,
  `Telefono` varchar(20) NOT NULL,
  `IVA` float NOT NULL,
  `Total` int(10) UNSIGNED NOT NULL,
  `Consignado` bit(1) NOT NULL,
  `Puntos_Totales` int(10) UNSIGNED NOT NULL,
  `Saldo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`idFactura`, `Id_Empleado`, `Persona_idPersona`, `Fecha_Hora`, `Mensaje`, `Telefono`, `IVA`, `Total`, `Consignado`, `Puntos_Totales`, `Saldo`) VALUES
(1, 1, 1, '2017-02-22', 'Gracias por todo', '32123123123', 1, 3000, b'1', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_has_material`
--

CREATE TABLE `entrada_has_material` (
  `Entrada_idFactura` int(10) UNSIGNED NOT NULL,
  `Material_idMaterial` int(10) UNSIGNED NOT NULL,
  `Precio` int(10) UNSIGNED NOT NULL,
  `Peso` varchar(20) NOT NULL,
  `Subtotal` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrada_has_material`
--

INSERT INTO `entrada_has_material` (`Entrada_idFactura`, `Material_idMaterial`, `Precio`, `Peso`, `Subtotal`) VALUES
(1, 1, 500, '12', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `idMaterial` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `PesoDisponible` varchar(20) NOT NULL,
  `Precio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`idMaterial`, `Nombre`, `PesoDisponible`, `Precio`) VALUES
(1, 'Archivo', '0', 300),
(2, 'Carton', '0', 400),
(3, 'Kraft', '0', 200),
(4, 'Periodicos', '0', 100),
(5, 'Plegadizas', '0', 200),
(6, 'Polietilentereftalat', '0', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_has_salida`
--

CREATE TABLE `material_has_salida` (
  `Material_idMaterial` int(10) UNSIGNED NOT NULL,
  `Salida_idSalida` int(10) UNSIGNED NOT NULL,
  `Precio` int(10) UNSIGNED NOT NULL,
  `Peso` varchar(20) NOT NULL,
  `Subtotal` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(10) UNSIGNED NOT NULL,
  `Usuario_idUsuario` int(10) UNSIGNED NOT NULL,
  `Documento` varchar(20) NOT NULL,
  `Tipo_Documento` varchar(20) NOT NULL,
  `Num_Franquicia` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Nombre_2` varchar(20) DEFAULT NULL,
  `Apellido_1` varchar(20) NOT NULL,
  `Apellido_2` varchar(20) NOT NULL,
  `Genero` bit(1) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Ocupacion` varchar(20) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Fecha_De_Nacimiento` date NOT NULL,
  `Tipo_Vivienda` varchar(20) NOT NULL,
  `Representante` bit(1) NOT NULL,
  `Parentezco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `Usuario_idUsuario`, `Documento`, `Tipo_Documento`, `Num_Franquicia`, `Nombre`, `Nombre_2`, `Apellido_1`, `Apellido_2`, `Genero`, `Telefono`, `Ocupacion`, `Direccion`, `Correo`, `Fecha_De_Nacimiento`, `Tipo_Vivienda`, `Representante`, `Parentezco`) VALUES
(1, 1, '12345678', 'C.C', 1, 'Jose', 'Daniel', 'Lopez', 'Cortecero', b'1', '3142357734', 'analista de negocios', 'Call 26 55c 33', '344@misena.edu.co', '1999-04-04', 'Apartamento', b'1', ''),
(2, 2, '99051707024', 'T.I', 2, 'Nicolas', '', 'Beltran', 'Chaparro', b'1', '3002589503', 'Estudiante', 'Cra 73 c bis #39 a 15 sur', 'nbeltran42@misena.edu.co', '1999-05-17', 'Apartamento', b'0', 'Hijo'),
(3, 2, '1488888', 'cc', 3, 'hola', 'como', 'estas', 'papu', b'1', '111111', 'Empleado', 'Cra', 'nnn@mamama', '2016-11-08', 'casa', b'0', 'Papa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(10) UNSIGNED NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Descripcion`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `idSalida` int(10) UNSIGNED NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL,
  `Valor` int(10) UNSIGNED NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Usuario`, `Contraseña`, `Valor`, `Estado`) VALUES
(1, 'juanito', '1234', 0, b'1'),
(2, 'Nico', 'Nico', 0, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_rol`
--

CREATE TABLE `usuario_has_rol` (
  `Usuario_idUsuario` int(10) UNSIGNED NOT NULL,
  `Rol_idRol` int(10) UNSIGNED NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_has_rol`
--

INSERT INTO `usuario_has_rol` (`Usuario_idUsuario`, `Rol_idRol`, `Estado`) VALUES
(1, 1, b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`),
  ADD KEY `Categoria_FKIndex1` (`Material_idMaterial`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `Entrada_FKIndex1` (`Persona_idPersona`);

--
-- Indices de la tabla `entrada_has_material`
--
ALTER TABLE `entrada_has_material`
  ADD PRIMARY KEY (`Entrada_idFactura`,`Material_idMaterial`),
  ADD KEY `Entrada_has_Material_FKIndex1` (`Entrada_idFactura`),
  ADD KEY `Entrada_has_Material_FKIndex2` (`Material_idMaterial`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indices de la tabla `material_has_salida`
--
ALTER TABLE `material_has_salida`
  ADD PRIMARY KEY (`Material_idMaterial`,`Salida_idSalida`),
  ADD KEY `Material_has_Salida_FKIndex1` (`Material_idMaterial`),
  ADD KEY `Material_has_Salida_FKIndex2` (`Salida_idSalida`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `Persona_FKIndex1` (`Usuario_idUsuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`idSalida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `usuario_has_rol`
--
ALTER TABLE `usuario_has_rol`
  ADD PRIMARY KEY (`Usuario_idUsuario`,`Rol_idRol`),
  ADD UNIQUE KEY `Usuario_idUsuario` (`Usuario_idUsuario`),
  ADD KEY `Usuario_has_Rol_FKIndex1` (`Usuario_idUsuario`),
  ADD KEY `Usuario_has_Rol_FKIndex2` (`Rol_idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `idFactura` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `idSalida` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `entrada_ibfk_1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrada_has_material`
--
ALTER TABLE `entrada_has_material`
  ADD CONSTRAINT `entrada_has_material_ibfk_1` FOREIGN KEY (`Entrada_idFactura`) REFERENCES `entrada` (`idFactura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `entrada_has_material_ibfk_2` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `material_has_salida`
--
ALTER TABLE `material_has_salida`
  ADD CONSTRAINT `material_has_salida_ibfk_1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `material_has_salida_ibfk_2` FOREIGN KEY (`Salida_idSalida`) REFERENCES `salida` (`idSalida`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_has_rol`
--
ALTER TABLE `usuario_has_rol`
  ADD CONSTRAINT `usuario_has_rol_ibfk_1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_has_rol_ibfk_2` FOREIGN KEY (`Rol_idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
