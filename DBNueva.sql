CREATE TABLE Usuario (
  idUsuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Usuario VARCHAR(20) NULL,
  Contraseña VARCHAR(20) NULL,
  Valor INTEGER UNSIGNED NULL,
  Estado BOOLEAN NULL,
  PRIMARY KEY(idUsuario)
);

CREATE TABLE Rol (
  idRol INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Descripcion VARCHAR(45) NULL,
  PRIMARY KEY(idRol)
);

CREATE TABLE Salida (
  idSalida INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Fecha DATETIME NULL,
  PRIMARY KEY(idSalida)
);

CREATE TABLE Material (
  idMaterial INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NULL,
  PesoDisponible VARCHAR(20) NULL,
  Precio INTEGER UNSIGNED NULL,
  PRIMARY KEY(idMaterial)
);

CREATE TABLE Categoria (
  idCategoria INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Material_idMaterial INTEGER UNSIGNED NOT NULL,
  Nombre VARCHAR(20) NULL,
  PRIMARY KEY(idCategoria),
  INDEX Categoria_FKIndex1(Material_idMaterial),
  FOREIGN KEY(Material_idMaterial)
    REFERENCES Material(idMaterial)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Persona (
  idPersona INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Usuario_idUsuario INTEGER UNSIGNED NOT NULL,
  Documento VARCHAR(20) NULL,
  Tipo_Documento VARCHAR(20) NULL,
  Num_Franquicia INTEGER UNSIGNED NULL,
  Telefono VARCHAR(20) NULL,
  Ocupacion VARCHAR(20) NULL,
  Nombre VARCHAR(20) NULL,
  Fecha_De_Nacimiento DATETIME NULL,
  Genero BOOLEAN NULL,
  Apellido_2 VARCHAR(20) NULL,
  Parentezco VARCHAR(20) NULL,
  Tipo_Vivienda VARCHAR(20) NULL,
  Correo VARCHAR(45) NULL,
  Apellido_1 VARCHAR(20) NULL,
  Nombre_2 VARCHAR(20) NULL,
  Direccion VARCHAR(45) NULL,
  Representante BOOLEAN NULL,
  PRIMARY KEY(idPersona),
  INDEX Persona_FKIndex1(Usuario_idUsuario),
  FOREIGN KEY(Usuario_idUsuario)
    REFERENCES Usuario(idUsuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Usuario_has_Rol (
  Usuario_idUsuario INTEGER UNSIGNED NOT NULL,
  Rol_idRol INTEGER UNSIGNED NOT NULL,
  Estado BOOLEAN NULL,
  PRIMARY KEY(Usuario_idUsuario, Rol_idRol),
  INDEX Usuario_has_Rol_FKIndex1(Usuario_idUsuario),
  INDEX Usuario_has_Rol_FKIndex2(Rol_idRol),
  FOREIGN KEY(Usuario_idUsuario)
    REFERENCES Usuario(idUsuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Rol_idRol)
    REFERENCES Rol(idRol)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Material_has_Salida (
  Material_idMaterial INTEGER UNSIGNED NOT NULL,
  Salida_idSalida INTEGER UNSIGNED NOT NULL,
  Precio INTEGER UNSIGNED NULL,
  Peso VARCHAR(20) NULL,
  Subtotal INTEGER UNSIGNED NULL,
  PRIMARY KEY(Material_idMaterial, Salida_idSalida),
  INDEX Material_has_Salida_FKIndex1(Material_idMaterial),
  INDEX Material_has_Salida_FKIndex2(Salida_idSalida),
  FOREIGN KEY(Material_idMaterial)
    REFERENCES Material(idMaterial)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Salida_idSalida)
    REFERENCES Salida(idSalida)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Entrada (
  idFactura INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Persona_idPersona INTEGER UNSIGNED NOT NULL,
  Saldo INTEGER UNSIGNED NULL,
  Puntos_Totales INTEGER UNSIGNED NULL,
  Mensaje VARCHAR(20) NULL,
  Id_Empleado INTEGER UNSIGNED NULL,
  Telefono VARCHAR(20) NULL,
  Consignado BOOLEAN NULL,
  Total INTEGER UNSIGNED NULL,
  IVA FLOAT NULL,
  Fecha_Hora DATETIME NULL,
  PRIMARY KEY(idFactura),
  INDEX Entrada_FKIndex1(Persona_idPersona),
  FOREIGN KEY(Persona_idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Entrada_has_Material (
  Entrada_idFactura INTEGER UNSIGNED NOT NULL,
  Material_idMaterial INTEGER UNSIGNED NOT NULL,
  Precio INTEGER UNSIGNED NULL,
  Peso VARCHAR(20) NULL,
  Subtotal INTEGER UNSIGNED NULL,
  PRIMARY KEY(Entrada_idFactura, Material_idMaterial),
  INDEX Entrada_has_Material_FKIndex1(Entrada_idFactura),
  INDEX Entrada_has_Material_FKIndex2(Material_idMaterial),
  FOREIGN KEY(Entrada_idFactura)
    REFERENCES Entrada(idFactura)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Material_idMaterial)
    REFERENCES Material(idMaterial)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);
