# Host: localhost  (Version 5.5.5-10.1.34-MariaDB)
# Date: 2020-10-06 21:58:15
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "contacta"
#

DROP TABLE IF EXISTS `contacta`;
CREATE TABLE `contacta` (
  `IdContacto` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuContactante` int(3) DEFAULT NULL,
  `idUsuContactado` int(3) DEFAULT NULL,
  `fechacontacto` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdContacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "contacta"
#


#
# Structure for table "detalleventa"
#

DROP TABLE IF EXISTS `detalleventa`;
CREATE TABLE `detalleventa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `idVenta` int(5) DEFAULT NULL,
  `idProducto` int(5) DEFAULT NULL,
  `descuento` int(5) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "detalleventa"
#


#
# Structure for table "imagen"
#

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE `imagen` (
  `IdImagen` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idProducto` varchar(255) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdImagen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "imagen"
#


#
# Structure for table "lista"
#

DROP TABLE IF EXISTS `lista`;
CREATE TABLE `lista` (
  `IdLista` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` mediumint(3) NOT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdLista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Data for table "lista"
#


#
# Structure for table "lista_deseos"
#

DROP TABLE IF EXISTS `lista_deseos`;
CREATE TABLE `lista_deseos` (
  `IdListaDeseos` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` mediumint(8) NOT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdListaDeseos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Data for table "lista_deseos"
#


#
# Structure for table "producto"
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `precioBase` int(3) DEFAULT NULL,
  `stock` smallint(3) NOT NULL DEFAULT '1',
  `estadoProducto` varchar(20) DEFAULT NULL,
  `categoria` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0=otros/1=electrodomesticos/2=hogar/3=moda/4=jardin',
  `estado` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES (1,'25','tenis puma','tenis puma talla 35',400,20,'nuevos',6,1,NULL,NULL),(2,'35','televisores','televisores  samsumg ',1500,20,'excelente',6,1,NULL,NULL),(3,'45','trabajos en dimicilio','realizo todo tipo de trabajo en albañeria',10,0,'0',2,1,NULL,NULL),(4,'100','ropa','ropa chilena nuevos',10,127,'buenos',3,1,NULL,NULL),(5,'2022','juguetes para niños','juguetes para navidad',156,55,NULL,5,1,'2020-10-05 00:00:00',NULL),(6,'2022','juguetes para niños','juguetes para navidad',156,55,NULL,4,1,NULL,NULL),(7,'147','bicicletas nuevas','marca tolko',1258,150,NULL,12,1,NULL,NULL),(8,'789','contaduria','necestio contador con experencia',150,1,NULL,7,1,'2020-10-05 00:00:00',NULL),(9,'78912','contaduria','necestio contador con experencia',150,1,NULL,12,1,'2020-10-05 00:00:00',NULL),(10,'1','contaduria','necestio contador con experencia',150,1,NULL,12,1,'2020-10-05 00:00:00',NULL),(11,'2','contaduria','necestio contador con experencia',150,1,NULL,9,1,'2020-10-05 00:00:00',NULL),(12,'111111','a','a',1,1,NULL,1,1,'2020-10-05 00:00:00',NULL),(13,'68','casa ','casas nuevas',1200,1,NULL,1,1,'2020-10-05 00:00:00',NULL),(14,'88','jardin','arreglo jardines',156,1,NULL,10,1,'2020-10-05 00:00:00',NULL),(15,'8546','pelotas','nuevas',12,1,NULL,8,1,'2020-10-05 00:00:00',NULL),(16,'264','a','d',1,1,NULL,2,1,'2020-10-05 00:00:00',NULL),(17,'300','d','daniel',1,150,NULL,11,1,'2020-10-05 00:00:00',NULL);

#
# Structure for table "reclamo"
#

DROP TABLE IF EXISTS `reclamo`;
CREATE TABLE `reclamo` (
  `IdReclamo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaReclamo` date DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `idPersReclamante` int(2) DEFAULT NULL,
  `idPersReclamada` int(3) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdReclamo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "reclamo"
#


#
# Structure for table "registroproducto"
#

DROP TABLE IF EXISTS `registroproducto`;
CREATE TABLE `registroproducto` (
  `IdRegProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `idUsuario` int(2) DEFAULT NULL,
  `idProducto` int(2) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdRegProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

#
# Data for table "registroproducto"
#

INSERT INTO `registroproducto` VALUES (1,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,b'1'),(2,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,b'1'),(3,NULL,NULL,NULL,789,NULL,NULL,b'1'),(4,'necestio contador con experencia','0000-00-00',NULL,78912,NULL,NULL,b'1'),(5,'necestio contador con experencia','2020-10-05',NULL,1,NULL,NULL,b'1'),(6,'necestio contador con experencia','2020-10-05',NULL,2,NULL,NULL,b'1'),(7,'a','2020-10-05',NULL,111111,NULL,NULL,b'1'),(8,'casas nuevas','2020-10-05',NULL,68,NULL,NULL,b'1'),(9,NULL,NULL,NULL,NULL,NULL,NULL,b'1'),(10,NULL,NULL,1,NULL,NULL,NULL,b'1'),(11,'arreglo jardines','2020-10-05',NULL,88,NULL,NULL,b'1'),(12,'nuevas','2020-10-05',NULL,8546,NULL,NULL,b'1'),(13,'d','2020-10-05',NULL,264,NULL,NULL,b'1'),(14,'daniel','2020-10-05',NULL,300,NULL,NULL,b'1'),(15,NULL,NULL,12356489,NULL,NULL,NULL,b'1'),(16,NULL,NULL,123,NULL,NULL,NULL,b'1');

#
# Structure for table "usuario"
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `password` int(11) NOT NULL DEFAULT '0',
  `telefono` int(2) NOT NULL DEFAULT '0',
  `primerApellido` varchar(50) NOT NULL DEFAULT '',
  `segundoApellido` varchar(50) NOT NULL DEFAULT '',
  `rol` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=admin/1=usuario',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES (1,'miguel','cat@gmail.com',123,73899736,'javier ecos','rodriguez',b'1',NULL,NULL,b'1'),(3,'pluis','paty@gmail',147,159,'chavez','porco',b'1',NULL,NULL,b'1'),(4,'lomas','',0,0,'perez','calla',b'1',NULL,NULL,b'1'),(5,'MIKI','anahi@gmail.com',0,0,'perez','calla',b'1',NULL,NULL,b'1'),(6,'victor','sad',0,192332,'dortez','arnez',b'1',NULL,NULL,b'1'),(7,'toto','a@miduisrisus.com',0,100,'javier','ecos',b'1',NULL,NULL,b'1'),(8,'Junior','junior@gmail.com',0,78945621,'javier','ecos',b'1',NULL,NULL,b'1'),(9,'Anahi','anahi@gmail.com',0,78965412,'Javier','Ecos',b'1',NULL,NULL,b'1'),(10,'Teresa','chuca@gmial.com',7789,7894561,'maldonado','chhuca',b'1',NULL,NULL,b'1'),(11,'aldo','lima@gmail.com',789,12345678,'lima','alcala',b'1',NULL,NULL,b'1'),(12,'lunes','lunes',400000,1,'lunes','lunes',b'1','2020-10-05 00:00:00',NULL,b'1'),(13,'luis','a',502,1,'a','b',b'1','2020-10-05 00:00:00',NULL,b'1'),(14,'hoy','m',0,1,'a','n',b'1','2020-10-05 00:00:00',NULL,b'1'),(15,'hoy','m',0,1,'a','n',b'1','2020-10-05 00:00:00',NULL,b'1'),(16,'cocha','c',50000000,12,'c','c',b'1','2020-10-05 00:00:00',NULL,b'1'),(17,'a','d',0,1,'b','c',b'1','2020-10-05 00:00:00',NULL,b'1'),(18,'aldo','anahi@gmail.com',2147483647,12356489,'lima','alcala',b'1','2020-10-07 00:00:00',NULL,b'1'),(19,'aldo','s',0,123,'s','s',b'1','2020-10-07 00:00:00',NULL,b'1');

#
# Structure for table "venta"
#

DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuarioVendedor` int(3) DEFAULT NULL,
  `idCliente` int(5) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  `total` int(10) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "venta"
#

