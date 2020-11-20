# Host: localhost  (Version 5.5.5-10.1.34-MariaDB)
# Date: 2020-11-20 08:08:20
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "listadeseos"
#

DROP TABLE IF EXISTS `listadeseos`;
CREATE TABLE `listadeseos` (
  `IdLista` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` mediumint(3) NOT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `nombreUsuario` varchar(255) NOT NULL DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  `precioBase` int(3) DEFAULT NULL,
  PRIMARY KEY (`IdLista`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Data for table "listadeseos"
#

INSERT INTO `listadeseos` VALUES (13,2020,1,'2020-11-16 00:00:00',NULL,'aldo','bicicletas nuevas',800),(14,2020,1,'2020-11-16 00:00:00',NULL,'aldo','bicicletas nuevas',800),(15,2020,1,'2020-11-16 00:00:00',NULL,'aldo','bicicletas nuevas',800),(16,123,1,'2020-11-16 00:00:00',NULL,'aldo','jardineria',100),(17,2020,1,'2020-11-16 00:00:00',NULL,'pablo','bicicletas nuevas',800),(31,2020,1,'2020-11-16 00:00:00',NULL,'pablo','bicicletas nuevas',800);

#
# Structure for table "megusta"
#

DROP TABLE IF EXISTS `megusta`;
CREATE TABLE `megusta` (
  `IdMegusta` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `IdProducto` mediumint(9) NOT NULL DEFAULT '0',
  `precioBase` int(6) DEFAULT NULL,
  PRIMARY KEY (`IdMegusta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

#
# Data for table "megusta"
#

INSERT INTO `megusta` VALUES (14,'lo recomindo mucho la guitarra es de buen marca','guitarra electronica',29,1000),(15,'muy bueno siga adelante','Ropa chilena',28,120),(16,'muy buen producto y  la atencion es excelente','Ropa chilena',28,120),(17,'el producto me llego en buen estado y el dueño es muy amable','bicicletas nuevas',30,800);

#
# Structure for table "nomegusta"
#

DROP TABLE IF EXISTS `nomegusta`;
CREATE TABLE `nomegusta` (
  `IdNomegusta` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `IdProducto` mediumint(7) NOT NULL DEFAULT '0',
  `precioBase` int(7) DEFAULT NULL,
  PRIMARY KEY (`IdNomegusta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

#
# Data for table "nomegusta"
#

INSERT INTO `nomegusta` VALUES (4,'mal atencion','muebles  usados',39,550),(5,'mal atencion por parte del  dueño del producto','Ropa chilena',28,120),(6,'el producto estuvo mal  y el la atencio pesimo','Ropa chilena',28,120);

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
  `categoria` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0=otros/1=electrodomesticos/2=hogar/3=moda/4=jardin',
  `estado` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `ruta` varchar(255) NOT NULL DEFAULT '',
  `IdUsuario` int(11) DEFAULT NULL,
  `inicio` time NOT NULL DEFAULT '00:00:00',
  `fin` time NOT NULL DEFAULT '00:00:00',
  `nombrevendedor` varchar(255) DEFAULT NULL,
  `telefonoVendedor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES (27,'123','jardineria','realiza todr',100,1,1,'2020-11-16 00:00:00','2020-11-19 00:00:00','123.png',20,'08:00:00','15:00:00','aldo','73899736'),(28,'159','Ropa chilena','prendas chilenas  para niños y niñas',120,2,1,'2020-11-16 00:00:00',NULL,'159.png',20,'10:00:00','18:00:00','andrea','72440664'),(29,'222','guitarra electronica','guitarra electronica semi nueva marca tolls',1000,3,1,'2020-11-16 00:00:00',NULL,'222.png',20,'10:00:00','16:00:00','andrea','71887545'),(30,'2020','bicicletas nuevas','vendo bicletas para niños y adultos ',800,4,1,'2020-11-16 00:00:00',NULL,'2020.png',NULL,'08:00:00','18:00:00','pablo','64598578'),(31,'2019','juguetes navideños','juguetes navideños nuevos para toda edad para niños y niñas  a mejor precio',100,5,1,'2020-11-16 00:00:00',NULL,'2019.png',NULL,'10:00:00','19:00:00','pablo','66554477'),(32,'3645','electricista','necesito un electricista para arreglo de luz de un salon y cuartos  con experiencia',120,6,1,'2020-11-16 00:00:00',NULL,'3645.png',NULL,'11:00:00','15:00:00','pablo','62484848'),(33,'3895','libros de deporte','libros de deporte historia de wisterman, como ser director tecnico ',350,7,1,'2020-11-16 00:00:00',NULL,'3895.png',NULL,'08:30:00','16:00:00','pablo','78984515'),(34,'7897','juegos infantiles','juegos infantiles para niños para tu salon saltarin, resbalin, carrusel',2000,9,1,'2020-11-16 00:00:00',NULL,'7897.png',NULL,'10:20:00','19:30:00','felipe','66425784'),(35,'5555','zampoñas','zampoña siku,Antara o puso, Rondador, Quena de la linea bol.ja a un buen precio',15,8,1,'2020-11-16 00:00:00',NULL,'5555.png',NULL,'09:00:00','16:00:00','felipe','71102012'),(36,'0401','contador','ofrezco mi servicio como contador  tengo experiencia trabajando en la area 8años',100,10,1,'2020-11-16 00:00:00',NULL,'0401.png',NULL,'07:00:00','20:00:00','patricia','71121020'),(37,'9898','Mecanico','necessito un mecanico con exprencia para trabajo en taller con buen sueldo',2000,11,1,'2020-11-16 00:00:00',NULL,'9898.png',NULL,'11:30:00','15:30:00','patricia','73661020'),(38,'1995','Muebles nuevos','muebles nuevos como comedor, ropero, peinadora,cama,etc aun buen precio de productor al consumidor',1800,12,1,'2020-11-16 00:00:00',NULL,'1995.png',NULL,'08:00:00','16:00:00','miguel angel','68974521'),(39,'647','muebles  usados','muebles usados a aun precio accesible para adornar tu casa',550,12,1,'2020-11-19 00:00:00',NULL,'647.png',NULL,'09:00:00','15:30:00','aldo','73428518'),(40,'6501','celular','celular nuevos marca samsumg',1000,3,1,'2020-11-20 00:00:00',NULL,'6501.png',NULL,'10:50:00','14:00:00','aldo','75111235');

#
# Structure for table "registroproducto"
#

DROP TABLE IF EXISTS `registroproducto`;
CREATE TABLE `registroproducto` (
  `IdRegProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `idUsuario` int(2) DEFAULT NULL,
  `idProducto` int(2) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdRegProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

#
# Data for table "registroproducto"
#

INSERT INTO `registroproducto` VALUES (66,'realiza todo tipo de trbajotanto exterior y interior',19,123,'2020-11-16 00:00:00',NULL,b'1'),(67,'prendas chilenas  para niños y niñas',30,159,'2020-11-16 00:00:00',NULL,b'1'),(68,'guitarra electronica semi nueva marca tolls',30,222,'2020-11-16 00:00:00',NULL,b'1'),(69,'vendo bicletas para niños y adultos ',29,2020,'2020-11-16 00:00:00',NULL,b'1'),(70,'juguetes navideños nuevos para toda edad para niños y niñas ',29,2019,'2020-11-16 00:00:00',NULL,b'1'),(71,'necesito un electricista para arreglo de luz de un salon y c',29,3645,'2020-11-16 00:00:00',NULL,b'1'),(72,'libros de deporte historia de wisterman, como ser director t',29,3895,'2020-11-16 00:00:00',NULL,b'1'),(73,'juegos infantiles para niños para tu salon saltarin, resbali',26,7897,'2020-11-16 00:00:00',NULL,b'1'),(74,'zampoña siku,Antara o puso, Rondador, Quena de la linea bol.',26,5555,'2020-11-16 00:00:00',NULL,b'1'),(75,'ofrezco mi servicio como contador  tengo experiencia trabaja',32,401,'2020-11-16 00:00:00',NULL,b'1'),(76,'necessito un mecanico con exprencia para trabajo en taller c',32,9898,'2020-11-16 00:00:00',NULL,b'1'),(77,'muebles nuevos como comedor, ropero, peinadora,cama,etc aun ',33,1995,'2020-11-16 00:00:00',NULL,b'1'),(78,'muebles usados a aun precio accesible para adornar tu casa',19,647,'2020-11-19 00:00:00',NULL,b'1'),(79,'celular nuevos marca samsumg',19,6501,'2020-11-20 00:00:00',NULL,b'1');

#
# Structure for table "usuario"
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '0',
  `primerApellido` varchar(50) NOT NULL DEFAULT '',
  `segundoApellido` varchar(50) NOT NULL DEFAULT '',
  `rol` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=admin/1=usuario',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  `reportado` bit(1) DEFAULT b'0' COMMENT '0=valido/1reportado',
  `telefono` int(11) DEFAULT '73899736',
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES (18,'aldo','anahi@gmail.com','2147483647','lima','alcala',b'1','2020-10-07 00:00:00',NULL,b'1',b'0',73899736),(19,'aldo','s','202cb962ac59075b964b07152d234b70','s','s',b'1','2020-10-07 00:00:00',NULL,b'1',b'0',123),(26,'felipe','felipe@gmail.com','7e04da88cbb8cc933c7b89fbfe121cca','rodriguez','',b'1','2020-10-30 00:00:00','2020-10-30 00:00:00',b'1',b'1',73899736),(27,'juan','castro@gmail.com','848ffd503f98d2368d47abceb4821465','castro','',b'1','2020-10-30 00:00:00',NULL,b'1',b'0',73899736),(28,'jimena','jime@gmail.com','8607d17b90e02ae2039051011bc3b7b7','valverde','',b'1','2020-10-30 00:00:00',NULL,b'1',b'0',73899736),(29,'pablo','pablo@gmail.com','7e4b64eb65e34fdfad79e623c44abd94','ramirez','',b'0','2020-10-30 00:00:00',NULL,b'1',b'0',73899736),(30,'andrea','andreaj@gmail.com','1c42f9c1ca2f65441465b43cd9339d6c','saldias','',b'1','2020-10-31 00:00:00',NULL,b'1',b'0',73899736),(31,'gato','anahi@gmail.com','70b783251225354e883a5bef3c011843','javier','',b'1','2020-10-31 00:00:00',NULL,b'1',b'1',73899736),(32,'patricia','patymaya@gmail.com','823fec7a2632ea7b498c1d0d11c11377','marca','javier',b'1','2020-11-16 00:00:00',NULL,b'1',b'0',73899),(33,'miguel ','mikipo@gamil.com','7c68bd2c43594f0391a5695ab7d85063','javier','rodriguez',b'1','2020-11-16 00:00:00','2020-11-16 00:00:00',b'1',b'0',73899736),(34,'joselin','jose90@gmail.com','263051d6e5004677725107ac08795505','marca','',b'1','2020-11-20 00:00:00',NULL,b'1',b'0',74578988);

#
# Structure for table "usuariosreportados"
#

DROP TABLE IF EXISTS `usuariosreportados`;
CREATE TABLE `usuariosreportados` (
  `IdUsuarioReportado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreR` varchar(255) DEFAULT NULL,
  `nombreRD` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `tiporepor` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdUsuarioReportado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

#
# Data for table "usuariosreportados"
#

INSERT INTO `usuariosreportados` VALUES (6,'aldo','pablo','el producto esta en mal estado  ',1,'2020-11-19 00:00:00',NULL,'Producto'),(8,'joselin','felipe','tarda mucho en entregar el producto',1,'2020-11-20 00:00:00',NULL,'Usuario');
