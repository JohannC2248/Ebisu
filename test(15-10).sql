# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: test
# ------------------------------------------------------
# Server version 5.5.5-10.4.14-MariaDB

DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

#
# Source for table calificarpagina
#

DROP TABLE IF EXISTS `calificarpagina`;
CREATE TABLE `calificarpagina` (
  `IdCP` mediumint(9) NOT NULL AUTO_INCREMENT,
  `IdUsuarioCalificador` smallint(6) NOT NULL DEFAULT 0,
  `Calificacion` tinyint(3) NOT NULL DEFAULT 0,
  `FechaCalificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdCP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table calificarpagina
#

LOCK TABLES `calificarpagina` WRITE;
/*!40000 ALTER TABLE `calificarpagina` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificarpagina` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table calificarusuario
#

DROP TABLE IF EXISTS `calificarusuario`;
CREATE TABLE `calificarusuario` (
  `IdCu` mediumint(6) NOT NULL AUTO_INCREMENT,
  `IdUsuarioCalificado` smallint(6) NOT NULL DEFAULT 0,
  `IdUsuarioCalificador` smallint(6) NOT NULL DEFAULT 0,
  `Calificacion` tinyint(3) NOT NULL DEFAULT 0,
  `FechaCalificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdCu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table calificarusuario
#

LOCK TABLES `calificarusuario` WRITE;
/*!40000 ALTER TABLE `calificarusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificarusuario` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table contacta
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
# Dumping data for table contacta
#

LOCK TABLES `contacta` WRITE;
/*!40000 ALTER TABLE `contacta` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacta` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table detalleventa
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
# Dumping data for table detalleventa
#

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table lista
#

DROP TABLE IF EXISTS `lista`;
CREATE TABLE `lista` (
  `IdLista` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` mediumint(3) NOT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IdLista`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Dumping data for table lista
#

LOCK TABLES `lista` WRITE;
/*!40000 ALTER TABLE `lista` DISABLE KEYS */;
INSERT INTO `lista` VALUES (1,124,1,NULL,NULL);
INSERT INTO `lista` VALUES (2,124,1,NULL,NULL);
INSERT INTO `lista` VALUES (3,124,1,NULL,NULL);
INSERT INTO `lista` VALUES (6,100,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (7,100,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (8,100,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (9,100,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (10,100,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (11,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (12,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (13,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (14,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (15,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (16,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (17,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (18,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (19,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (20,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (21,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (22,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (23,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (24,124,1,'2020-10-09',NULL);
INSERT INTO `lista` VALUES (42,100,1,'2020-10-09',NULL);
/*!40000 ALTER TABLE `lista` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table producto
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `precioBase` int(3) DEFAULT NULL,
  `stock` smallint(3) NOT NULL DEFAULT 1,
  `estadoProducto` varchar(20) DEFAULT NULL,
  `categoria` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=otros/1=electrodomesticos/2=hogar/3=moda/4=jardin',
  `estado` tinyint(2) NOT NULL DEFAULT 1 COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `ruta` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table producto
#

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'124','zampoñas','zampoñas nuevas hecho en bolivia',156,11,NULL,8,1,'2020-10-09',NULL,'124.png');
INSERT INTO `producto` VALUES (2,'100','tenis puma','tenis puma nuevos para varones tallas 20,26,27,28',354,12,NULL,2,1,'2020-10-09',NULL,'100.png');
INSERT INTO `producto` VALUES (3,'11','ropa nuevas peruanas','ropas nuevas bestidos,pantalones,camisas, chompas para todo publico ',125,100,NULL,2,1,'2020-10-09',NULL,'11.png');
INSERT INTO `producto` VALUES (5,'254','guitarra electronica','guitarra electronica semi nueva marca tolls',800,1,NULL,3,1,'2020-10-09',NULL,'254.png');
INSERT INTO `producto` VALUES (6,'888','juguetes navideños','juguetes navideños nuevos para toda edad para niños y niñas ',80,123,NULL,4,1,'2020-10-09',NULL,'888.png');
INSERT INTO `producto` VALUES (7,'56','juegos infantiles','juegos infantiles para niños para tu salon',1300,18,NULL,7,1,'2020-10-09',NULL,'56.png');
INSERT INTO `producto` VALUES (8,'159','amplificacion completa','amplificaion completa marca  desv  incluye 5 parlatantes',5000,12,NULL,3,1,'2020-10-09',NULL,'159.png');
INSERT INTO `producto` VALUES (9,'147','quenas ','quenas nuevas hecha en peru marca closs',18,100,NULL,8,1,'2020-10-09',NULL,'147.png');
INSERT INTO `producto` VALUES (10,'2018','plomeria','reparaciones  de plomero ',125,1,NULL,10,1,'2020-10-09',NULL,'2018.png');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table reclamo
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
# Dumping data for table reclamo
#

LOCK TABLES `reclamo` WRITE;
/*!40000 ALTER TABLE `reclamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `reclamo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table registroproducto
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

#
# Dumping data for table registroproducto
#

LOCK TABLES `registroproducto` WRITE;
/*!40000 ALTER TABLE `registroproducto` DISABLE KEYS */;
INSERT INTO `registroproducto` VALUES (18,'todo tipo de muebles para decorar tu casa','2020-10-08',NULL,1995,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (19,'gitarras nuevos de marca boliviana','2020-10-08',NULL,1993,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (20,'charnago nuevos  ','2020-10-08',NULL,2018,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (21,'charnago nuevos  ','2020-10-08',NULL,2018,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (22,'ss','2020-10-08',NULL,123456,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (23,'mikimikimiki','2020-10-08',NULL,258,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (24,'b','2020-10-08',NULL,1,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (25,'todo tipo de zampoñas  ','2020-10-08',NULL,25,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (26,'todo tipo de zampoñas  ','2020-10-08',NULL,1,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (27,NULL,NULL,NULL,NULL,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (28,'mmm','2020-10-08',NULL,265,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (29,'aaaa','2020-10-08',NULL,123456,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (30,'necesito abogado para tramites de casa','2020-10-08',NULL,264,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (31,'necesito un electricista para arreglo de luz de un salon','2020-10-08',NULL,2020,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (32,'roap niños  y niñas para  eda de 5 a 12 años','2020-10-08',NULL,123,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (33,'zampoñas nuevas hecho en bolivia','2020-10-09',NULL,124,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (34,'tenis puma nuevos para varones tallas 20,26,27,28','2020-10-09',NULL,100,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (35,'ropas nuevas bestidos,pantalones,camisas, chompas para todo ','2020-10-09',NULL,11,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (36,'realizo todo tipo en jardineria','2020-10-09',NULL,15,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (37,'guitarra electronica semi nueva marca tolls','2020-10-09',NULL,254,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (38,'juguetes navideños nuevos para toda edad para niños y niñas ','2020-10-09',NULL,888,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (39,'juegos infantiles para niños para tu salon','2020-10-09',NULL,56,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (40,'amplificaion completa marca  desv  incluye 5 parlatantes','2020-10-09',NULL,159,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (41,'quenas nuevas hecha en peru marca closs','2020-10-09',NULL,147,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (42,NULL,NULL,72440664,NULL,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (43,NULL,NULL,7894561,NULL,NULL,NULL,b'1');
INSERT INTO `registroproducto` VALUES (44,'reparaciones  de plomero ','2020-10-09',NULL,2018,NULL,NULL,b'1');
/*!40000 ALTER TABLE `registroproducto` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuario
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `password` int(11) NOT NULL DEFAULT 0,
  `telefono` int(2) NOT NULL DEFAULT 0,
  `primerApellido` varchar(50) NOT NULL DEFAULT '',
  `segundoApellido` varchar(50) DEFAULT '',
  `rol` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=admin/1=usuario',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  `nombreUsuario` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

#
# Dumping data for table usuario
#

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'miguel','cat@gmail.com',123,73899736,'javier ecos','rodriguez',b'1',NULL,NULL,b'1','m');
INSERT INTO `usuario` VALUES (3,'pluis','paty@gmail',147,159,'chavez','porco',b'1',NULL,NULL,b'1','p');
INSERT INTO `usuario` VALUES (4,'lomas','',0,0,'perez','calla',b'1',NULL,NULL,b'1','l');
INSERT INTO `usuario` VALUES (5,'MIKI','anahi@gmail.com',0,0,'perez','calla',b'1',NULL,NULL,b'1','m');
INSERT INTO `usuario` VALUES (6,'victor','sad',0,192332,'dortez','arnez',b'1',NULL,NULL,b'1','v');
INSERT INTO `usuario` VALUES (7,'toto','a@miduisrisus.com',0,100,'javier','ecos',b'1',NULL,NULL,b'1','t');
INSERT INTO `usuario` VALUES (8,'Junior','junior@gmail.com',0,78945621,'javier','ecos',b'1',NULL,NULL,b'1','j');
INSERT INTO `usuario` VALUES (9,'Anahi','anahi@gmail.com',0,78965412,'Javier','Ecos',b'1',NULL,NULL,b'1','a');
INSERT INTO `usuario` VALUES (10,'Teresa','chuca@gmial.com',7789,7894561,'maldonado','chhuca',b'1',NULL,NULL,b'1','t');
INSERT INTO `usuario` VALUES (11,'aldo','lima@gmail.com',789,12345678,'lima','alcala',b'1',NULL,NULL,b'1','a');
INSERT INTO `usuario` VALUES (12,'lunes','lunes',400000,1,'lunes','lunes',b'1','2020-10-05',NULL,b'1','l');
INSERT INTO `usuario` VALUES (13,'luis','a',502,1,'a','b',b'1','2020-10-05',NULL,b'1','lu');
INSERT INTO `usuario` VALUES (14,'hoy','m',0,1,'a','n',b'1','2020-10-05',NULL,b'1','h');
INSERT INTO `usuario` VALUES (15,'hoy','m',0,1,'a','n',b'1','2020-10-05',NULL,b'1','ho');
INSERT INTO `usuario` VALUES (16,'cocha','c',50000000,12,'c','c',b'1','2020-10-05',NULL,b'1','co');
INSERT INTO `usuario` VALUES (17,'a','d',0,1,'b','c',b'1','2020-10-05',NULL,b'1','aa');
INSERT INTO `usuario` VALUES (18,'aldo','anahi@gmail.com',2147483647,12356489,'lima','alcala',b'1','2020-10-07',NULL,b'1','al');
INSERT INTO `usuario` VALUES (19,'aldo','s',0,123,'s','s',b'1','2020-10-07',NULL,b'1','ald');
INSERT INTO `usuario` VALUES (20,'sara','sara@gmaiñ.com',202,45789656,'flores','paraa',b'1','2020-10-07',NULL,b'1','sa');
INSERT INTO `usuario` VALUES (21,'MIguel','javier@gmail.com',9,72440664,'Javier','Rodriguez',b'1','2020-10-09',NULL,b'1','mi');
INSERT INTO `usuario` VALUES (22,'juan ','anahi@gmail.com',0,7894561,'peres','lima',b'1','2020-10-09',NULL,b'1','ju');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
