  -- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
  --
  -- Host: localhost    Database: mym
  -- ------------------------------------------------------
  -- Server version	5.5.5-10.4.27-MariaDB

  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!50503 SET NAMES utf8mb4 */;
  /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
  /*!40103 SET TIME_ZONE='+00:00' */;
  /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
  /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
  /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
  /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

  --
  -- Table structure for table `categoria`
  --

  DROP TABLE IF EXISTS `categoria`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `categoria` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(100) NOT NULL,
    `nombre_corto` varchar(10) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `categoria`
  --

  LOCK TABLES `categoria` WRITE;
  /*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
  INSERT INTO `categoria` VALUES (6,'Leche descremada','Leche'),(8,'Yogurt',' Yogurt');
  /*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `cliente`
  --

  DROP TABLE IF EXISTS `cliente`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `cliente` (
    `idcliente` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(100) NOT NULL,
    `telefono` varchar(15) NOT NULL,
    `direccion` varchar(200) NOT NULL,
    PRIMARY KEY (`idcliente`)
  ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `cliente`
  --

  LOCK TABLES `cliente` WRITE;
  /*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
  INSERT INTO `cliente` VALUES (1,'Santiago','2722368','Restrepo'),(2,'monica','3242853105','calle13#218');
  /*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `configuracion`
  --

  DROP TABLE IF EXISTS `configuracion`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `configuracion` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(100) NOT NULL,
    `telefono` varchar(15) NOT NULL,
    `email` varchar(100) NOT NULL,
    `direccion` text NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `configuracion`
  --

  LOCK TABLES `configuracion` WRITE;
  /*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
  INSERT INTO `configuracion` VALUES (1,'Lácteos La Pepita','2722368','lacteoslapepita@gamil.com',' Cra. 19 #18sur-51');
  /*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `detalle_permisos`
  --

  DROP TABLE IF EXISTS `detalle_permisos`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `detalle_permisos` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_permiso` int(11) NOT NULL,
    `id_usuario` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `id_permiso` (`id_permiso`),
    KEY `id_usuario` (`id_usuario`),
    CONSTRAINT `detalle_permisos_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `detalle_permisos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `detalle_permisos`
  --

  LOCK TABLES `detalle_permisos` WRITE;
  /*!40000 ALTER TABLE `detalle_permisos` DISABLE KEYS */;
  INSERT INTO `detalle_permisos` VALUES (28,1,12),(29,2,12),(30,3,12),(31,4,12),(32,5,12),(33,6,12),(34,7,12),(35,8,12),(36,9,12),(37,3,13),(38,6,13),(39,9,13),(40,1,14),(41,2,14),(42,3,14),(43,4,14),(44,5,14),(45,6,14),(46,7,14),(47,8,14),(48,9,14),(49,1,16),(50,2,16),(51,3,16),(52,4,16),(53,5,16),(54,6,16),(55,7,16),(56,8,16),(57,9,16),(58,1,18),(59,2,18),(60,3,18),(61,4,18),(62,5,18),(63,6,18),(64,7,18),(65,8,18),(66,9,18),(67,3,17),(68,5,17),(69,6,17);
  /*!40000 ALTER TABLE `detalle_permisos` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `detalle_temp`
  --

  DROP TABLE IF EXISTS `detalle_temp`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `detalle_temp` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_usuario` int(11) NOT NULL,
    `id_producto` int(11) NOT NULL,
    `cantidad` int(11) NOT NULL,
    `descuento` decimal(10,2) NOT NULL DEFAULT 0.00,
    `precio_venta` decimal(10,2) NOT NULL,
    `total` decimal(10,2) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `id_usuario` (`id_usuario`),
    KEY `id_producto` (`id_producto`),
    CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `detalle_temp_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `detalle_temp`
  --

  LOCK TABLES `detalle_temp` WRITE;
  /*!40000 ALTER TABLE `detalle_temp` DISABLE KEYS */;
  /*!40000 ALTER TABLE `detalle_temp` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `detalle_venta`
  --

  DROP TABLE IF EXISTS `detalle_venta`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `detalle_venta` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_producto` int(11) NOT NULL,
    `id_venta` int(11) NOT NULL,
    `cantidad` int(11) NOT NULL,
    `descuento` decimal(10,2) NOT NULL DEFAULT 0.00,
    `precio` decimal(10,2) NOT NULL,
    `total` decimal(10,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (`id`),
    KEY `id_producto` (`id_producto`),
    KEY `id_venta` (`id_venta`),
    CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `detalle_venta`
  --

  LOCK TABLES `detalle_venta` WRITE;
  /*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
  INSERT INTO `detalle_venta` VALUES (8,10,8,10,0.00,2000.00,20000.00),(9,10,9,10,0.00,2000.00,20000.00);
  /*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `permisos`
  --

  DROP TABLE IF EXISTS `permisos`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `permisos` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(30) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `permisos`
  --

  LOCK TABLES `permisos` WRITE;
  /*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
  INSERT INTO `permisos` VALUES (1,'configuración'),(2,'usuarios'),(3,'clientes'),(4,'productos'),(5,'ventas'),(6,'nueva_venta'),(7,'tipos'),(8,'categoria'),(9,'proveedores');
  /*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `producto`
  --

  DROP TABLE IF EXISTS `producto`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `producto` (
    `codproducto` int(11) NOT NULL AUTO_INCREMENT,
    `codigo` varchar(20) NOT NULL,
    `descripcion` varchar(200) NOT NULL,
    `precio` decimal(10,2) NOT NULL,
    `existencia` int(11) NOT NULL,
    `id_lab` int(11) NOT NULL,
    `id_presentacion` int(11) NOT NULL,
    `id_tipo` int(11) NOT NULL,
    `vencimiento` varchar(20) NOT NULL,
    PRIMARY KEY (`codproducto`)
  ) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `producto`
  --

  LOCK TABLES `producto` WRITE;
  /*!40000 ALTER TABLE `producto` DISABLE KEYS */;
  INSERT INTO `producto` VALUES (10,'12345','Yogurt',2000.00,5,7,8,8,'2023-11-05'),(11,'1234','Leche',4000.00,11,7,6,8,'2023-04-08'),(12,'666','al',6999.00,2,7,6,7,''),(13,'333','ydgsj',67677.00,3,7,6,7,''),(14,'6000','',6000.00,3,7,6,7,''),(15,'55','',9999.00,4,7,6,7,''),(16,'76237','',77.00,2,7,6,7,'2023-03-23'),(17,'555','',7676.00,2,7,6,7,''),(18,'326','jfb',7777.00,2,7,6,7,'2023-03-24');
  /*!40000 ALTER TABLE `producto` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `proveedores`
  --

  DROP TABLE IF EXISTS `proveedores`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `proveedores` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `proveedor` varchar(100) NOT NULL,
    `direccion` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `proveedores`
  --

  LOCK TABLES `proveedores` WRITE;
  /*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
  INSERT INTO `proveedores` VALUES (7,'juan','Cra. 19 #18sur-51'),(8,'alpina','calle13 # 2 14');
  /*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `tipos`
  --

  DROP TABLE IF EXISTS `tipos`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `tipos` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `tipo` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `tipos`
  --

  LOCK TABLES `tipos` WRITE;
  /*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
  INSERT INTO `tipos` VALUES (7,'Algarra'),(8,'Alqueria');
  /*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `usuario`
  --

  DROP TABLE IF EXISTS `usuario`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `usuario` (
    `idusuario` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(100) NOT NULL,
    `correo` varchar(100) NOT NULL,
    `usuario` varchar(20) NOT NULL,
    `clave` varchar(50) NOT NULL,
    PRIMARY KEY (`idusuario`)
  ) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `usuario`
  --

  LOCK TABLES `usuario` WRITE;
  /*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
  INSERT INTO `usuario` VALUES (12,'mari','maribel@gmail.com','mari','827ccb0eea8a706c4c34a16891f84e7b'),(13,'Ricardo Arjona','arjona@gmail.com','empleado','827ccb0eea8a706c4c34a16891f84e7b'),(14,'pablito','correo@gmail.com','admin','827ccb0eea8a706c4c34a16891f84e7b'),(16,'monica','monica120317@gmail.com','monica','827ccb0eea8a706c4c34a16891f84e7b'),(17,'David Lozano','andres@gmail.com','Empleado','e10adc3949ba59abbe56e057f20f883e'),(18,'Cristian Garzon','Cristian@gmail.com','Administrador','827ccb0eea8a706c4c34a16891f84e7b');
  /*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Table structure for table `ventas`
  --

  DROP TABLE IF EXISTS `ventas`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
  CREATE TABLE `ventas` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_cliente` int(11) NOT NULL,
    `total` decimal(10,2) NOT NULL,
    `id_usuario` int(11) NOT NULL,
    `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`),
    KEY `id_usuario` (`id_usuario`),
    KEY `id_cliente` (`id_cliente`),
    CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

  --
  -- Dumping data for table `ventas`
  --

  LOCK TABLES `ventas` WRITE;
  /*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
  INSERT INTO `ventas` VALUES (8,1,20000.00,12,'2023-03-24 18:06:38'),(9,2,20000.00,17,'2023-03-24 18:18:53');
  /*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
  UNLOCK TABLES;

  --
  -- Dumping routines for database 'mym'
  --
  /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

  /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
  /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
  /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
  /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

  -- Dump completed on 2023-03-26 14:05:05
