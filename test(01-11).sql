# Host: localhost  (Version 5.5.5-10.1.34-MariaDB)
# Date: 2020-10-31 19:15:18
# Generator: MySQL-Front 6.1  (Build 1.26)


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
# Structure for table "listadeseos"
#

DROP TABLE IF EXISTS `listadeseos`;
CREATE TABLE `listadeseos` (
  `IdLista` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` mediumint(3) NOT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=anulado / 1=valido',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `IdUsuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdLista`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Data for table "listadeseos"
#

INSERT INTO `listadeseos` VALUES (1,124,1,NULL,NULL,''),(2,124,1,NULL,NULL,NULL),(3,124,1,NULL,NULL,NULL),(6,100,1,'2020-10-09 00:00:00',NULL,'19'),(7,100,1,'2020-10-09 00:00:00',NULL,NULL),(8,100,1,'2020-10-09 00:00:00',NULL,NULL),(9,100,1,'2020-10-09 00:00:00',NULL,NULL),(10,100,1,'2020-10-09 00:00:00',NULL,NULL),(11,124,1,'2020-10-09 00:00:00',NULL,NULL),(12,124,1,'2020-10-09 00:00:00',NULL,NULL),(13,124,1,'2020-10-09 00:00:00',NULL,NULL),(14,124,1,'2020-10-09 00:00:00',NULL,NULL),(15,124,1,'2020-10-09 00:00:00',NULL,NULL),(16,124,1,'2020-10-09 00:00:00',NULL,NULL),(17,124,1,'2020-10-09 00:00:00',NULL,NULL),(18,124,1,'2020-10-09 00:00:00',NULL,NULL),(19,124,1,'2020-10-09 00:00:00',NULL,NULL),(20,124,1,'2020-10-09 00:00:00',NULL,NULL),(21,124,1,'2020-10-09 00:00:00',NULL,NULL),(22,124,1,'2020-10-09 00:00:00',NULL,NULL),(23,124,1,'2020-10-09 00:00:00',NULL,NULL),(24,124,1,'2020-10-09 00:00:00',NULL,NULL),(42,100,1,'2020-10-09 00:00:00',NULL,NULL),(43,100,1,'2020-10-09 00:00:00',NULL,NULL),(44,100,1,'2020-10-09 00:00:00',NULL,NULL),(45,11,1,'2020-10-09 00:00:00',NULL,NULL),(46,254,1,'2020-10-09 00:00:00',NULL,NULL),(47,254,1,'2020-10-09 00:00:00',NULL,NULL),(48,100,1,'2020-10-09 00:00:00',NULL,NULL),(49,100,1,'2020-10-09 00:00:00',NULL,NULL),(50,100,1,'2020-10-09 00:00:00',NULL,NULL),(51,100,1,'2020-10-09 00:00:00',NULL,NULL),(52,100,1,'2020-10-09 00:00:00',NULL,NULL),(53,1,1,'2020-10-24 00:00:00',NULL,NULL),(54,159,1,'2020-10-09 00:00:00',NULL,NULL),(55,1128,1,'2020-10-29 00:00:00',NULL,NULL),(56,1128,1,'2020-10-29 00:00:00',NULL,NULL);

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
  `ruta` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES (3,'11','guitarra electronica','guitarra electronica semi nueva marca tolls',125,100,NULL,3,1,'2020-10-09 00:00:00',NULL,'11.png'),(5,'254','guitarra electronica','guitarra electronica semi nueva marca tolls',800,1,NULL,4,1,'2020-10-09 00:00:00',NULL,'254.png'),(6,'888','juguetes navideños','juguetes navideños nuevos para toda edad para niños y niñas ',80,123,NULL,5,1,'2020-10-09 00:00:00',NULL,'888.png'),(7,'56','juegos infantiles','juegos infantiles para niños para tu salon',1300,18,NULL,6,1,'2020-10-09 00:00:00',NULL,'56.png'),(8,'159','amplificacion completa','amplificaion completa marca  desv  incluye 5 parlatantes',5000,12,NULL,7,1,'2020-10-09 00:00:00',NULL,'159.png'),(9,'147','quenas ','quenas nuevas hecha en peru marca closs',18,100,NULL,8,1,'2020-10-09 00:00:00',NULL,'147.png'),(10,'2018','plomeria','reparaciones  de plomero ',125,1,NULL,9,1,'2020-10-09 00:00:00',NULL,'2018.png'),(11,'123456','lomas','todo tipo de zampoñas  ',12,2,NULL,10,1,'2020-10-24 00:00:00',NULL,'?PNG\r\n\n\\0\\0\\0\rIHDR\\0\\0V\\0\\0\\0\\0\\0\\0?><?\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??\t{ܸ?-?x?ӽ???}????ߞ?{J?38??Z\\0H?jp?qzk? ? \\0?J̢???4????LV880????\r?`%?????X?f?42?G???<?1?LO?????_\rÏ???????????????ǋ??-?38=??38:~|?<?\r_??o?ɪX?jD='),(12,'1','lomas','todo tipo de zampoñas  ',16,2,NULL,11,1,'2020-10-24 00:00:00',NULL,'?PNG\r\n\n\\0\\0\\0\rIHDR\\0\\0?\\0\\0H\\0\\0\\0M=??\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0\\0\tpHYs\\0\\0?\\0\\0??o?d\\0\\0??IDATx^???=IU.|TrQ@FfP$??4?\\\\?\\\'???sP`??D?I?UD???9????????XST??O?????z?g=?wwuwuuu?[k?Z?u?????????????????????^?800000000?'),(13,'854','lomas','todo tipo de zampoñas  ',123,5,NULL,12,1,'2020-10-26 00:00:00',NULL,'854.png'),(14,'2645','jardineria','se realiza  trabjos en jardineria ',1500,12,NULL,1,1,'2020-10-27 00:00:00',NULL,'2645.png'),(15,'1128','pantalones','pantalones nuevos para varon  para toda edad',1258,100,NULL,2,1,'2020-10-29 00:00:00',NULL,'1128.png'),(17,'99','jugueteria',' llego juguetes para navidad   a buen precio',100,1,NULL,5,1,'0000-00-00 00:00:00',NULL,'99.png'),(18,'1111','adsa','asd',123,1,NULL,1,1,'0000-00-00 00:00:00',NULL,'1111.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

#
# Data for table "registroproducto"
#

INSERT INTO `registroproducto` VALUES (18,'todo tipo de muebles para decorar tu casa','2020-10-08',NULL,1995,NULL,NULL,b'1'),(19,'gitarras nuevos de marca boliviana','2020-10-08',NULL,1993,NULL,NULL,b'1'),(20,'charnago nuevos  ','2020-10-08',NULL,2018,NULL,NULL,b'1'),(21,'charnago nuevos  ','2020-10-08',NULL,2018,NULL,NULL,b'1'),(28,'mmm','2020-10-08',NULL,265,NULL,NULL,b'1'),(29,'aaaa','2020-10-08',NULL,123456,NULL,NULL,b'1'),(30,'necesito abogado para tramites de casa','2020-10-08',NULL,264,NULL,NULL,b'1'),(31,'necesito un electricista para arreglo de luz de un salon','2020-10-08',NULL,2020,NULL,NULL,b'1'),(32,'roap niños  y niñas para  eda de 5 a 12 años','2020-10-08',NULL,123,NULL,NULL,b'1'),(33,'zampoñas nuevas hecho en bolivia','2020-10-09',NULL,124,NULL,NULL,b'1'),(34,'tenis puma nuevos para varones tallas 20,26,27,28','2020-10-09',NULL,100,NULL,NULL,b'1'),(35,'ropas nuevas bestidos,pantalones,camisas, chompas para todo ','2020-10-09',NULL,11,NULL,NULL,b'1'),(36,'realizo todo tipo en jardineria','2020-10-09',NULL,15,NULL,NULL,b'1'),(37,'guitarra electronica semi nueva marca tolls','2020-10-09',NULL,254,NULL,NULL,b'1'),(38,'juguetes navideños nuevos para toda edad para niños y niñas ','2020-10-09',NULL,888,NULL,NULL,b'1'),(39,'juegos infantiles para niños para tu salon','2020-10-09',NULL,56,NULL,NULL,b'1'),(40,'amplificaion completa marca  desv  incluye 5 parlatantes','2020-10-09',NULL,159,NULL,NULL,b'1'),(41,'quenas nuevas hecha en peru marca closs','2020-10-09',NULL,147,NULL,NULL,b'1'),(44,'reparaciones  de plomero ','2020-10-09',NULL,2018,NULL,NULL,b'1'),(45,'todo tipo de zampoñas  ','2020-10-24',NULL,123456,NULL,NULL,b'1'),(46,'todo tipo de zampoñas  ','2020-10-24',NULL,1,NULL,NULL,b'1'),(47,'todo tipo de zampoñas  ','2020-10-26',NULL,854,NULL,NULL,b'1'),(48,'secretaria para empresa de chocolate','2020-10-27',NULL,2645,NULL,NULL,b'1'),(49,'muebles usados en buen estado ','2020-10-29',20,1128,NULL,NULL,b'1'),(50,NULL,NULL,78945656,NULL,NULL,NULL,b'1'),(51,'guitarra electronica semi nueva marca tolls',NULL,NULL,1234568,NULL,NULL,b'1'),(57,' llego juguetes para navidad   a buen precio','0000-00-00',NULL,99,NULL,NULL,b'1'),(61,'asd','0000-00-00',19,1111,NULL,NULL,b'1');

#
# Structure for table "usuario"
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '0',
  `telefono` int(2) NOT NULL DEFAULT '0',
  `primerApellido` varchar(50) NOT NULL DEFAULT '',
  `segundoApellido` varchar(50) NOT NULL DEFAULT '',
  `rol` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=admin/1=usuario',
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT '0=anulado/1=activo',
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES (1,'miguel','cat@gmail.com','miguel',73899736,'javier ecos','rodriguez',b'1',NULL,NULL,b'1'),(3,'javi','paty@gmail','a14f8a540e78dae706d255750010a0f8',72440664,'chavez','porco',b'1',NULL,NULL,b'1'),(4,'lomas','','0',73892154,'perez','calla',b'1',NULL,NULL,b'1'),(5,'MIKI','anahi@gmail.com','0',75654898,'perez','calla',b'1',NULL,NULL,b'1'),(6,'victor','sad','0',74444405,'dortez','arnez',b'1',NULL,NULL,b'1'),(7,'toto','a@miduisrisus.com','0',64859874,'javier','ecos',b'1',NULL,NULL,b'1'),(8,'Junior','junior@gmail.com','b03e3fd2b3d22ff6df2796c412b09311',78945621,'javier','ecos',b'1',NULL,'2020-10-30 00:00:00',b'1'),(9,'Anahi','anahi@gmail.com','0',78965412,'Javier','Ecos',b'1',NULL,NULL,b'1'),(10,'Teresa','chuca@gmial.com','7789',78942561,'maldonado','chhuca',b'1',NULL,NULL,b'1'),(11,'aldo','lima@gmail.com','789',62486584,'lima','alcala',b'1',NULL,NULL,b'1'),(12,'lunes','lunes','400000',68887898,'lunes','lunes',b'1','2020-10-05 00:00:00',NULL,b'1'),(13,'luis','a','502',78451296,'a','b',b'1','2020-10-05 00:00:00',NULL,b'1'),(14,'hoy','m','0',71859625,'a','n',b'1','2020-10-05 00:00:00',NULL,b'1'),(15,'hoy','m','0',78459687,'a','n',b'1','2020-10-05 00:00:00',NULL,b'1'),(16,'cocha','c','50000000',66884455,'c','c',b'1','2020-10-05 00:00:00',NULL,b'1'),(17,'a','d','0',78211599,'b','c',b'1','2020-10-05 00:00:00',NULL,b'1'),(18,'aldo','anahi@gmail.com','2147483647',72356489,'lima','alcala',b'1','2020-10-07 00:00:00',NULL,b'1'),(19,'aldo','s','202cb962ac59075b964b07152d234b70',73899736,'s','s',b'1','2020-10-07 00:00:00',NULL,b'1'),(20,'sara','sara@gmaiñ.com','202',73899736,'flores','paraa',b'1','2020-10-07 00:00:00',NULL,b'1'),(21,'MIguel','javier@gmail.com','9',72440664,'Javier','Rodriguez',b'1','2020-10-09 00:00:00',NULL,b'1'),(22,'juan ','anahi@gmail.com','0',78945611,'peres','lima',b'1','2020-10-09 00:00:00',NULL,b'1'),(23,'gabriel','ramirez@gmail.com','0',78945656,'ramirez','',b'1','2020-10-30 00:00:00',NULL,b'1'),(26,'felipe','felipe@gmail.com','7e04da88cbb8cc933c7b89fbfe121cca',66897841,'rodriguez','',b'1','2020-10-30 00:00:00','2020-10-30 00:00:00',b'1'),(27,'juan','castro@gmail.com','848ffd503f98d2368d47abceb4821465',78988477,'castro','',b'1','2020-10-30 00:00:00',NULL,b'1'),(28,'jimena','jime@gmail.com','8607d17b90e02ae2039051011bc3b7b7',78889945,'valverde','',b'1','2020-10-30 00:00:00',NULL,b'1'),(29,'pablo','pablo@gmail.com','7e4b64eb65e34fdfad79e623c44abd94',79256487,'ramirez','',b'1','2020-10-30 00:00:00',NULL,b'1'),(30,'andrea','andreaj@gmail.com','1c42f9c1ca2f65441465b43cd9339d6c',73896541,'saldias','',b'1','2020-10-31 00:00:00',NULL,b'1'),(31,'gato','anahi@gmail.com','70b783251225354e883a5bef3c011843',73899736,'javier','',b'1','2020-10-31 00:00:00',NULL,b'1');
