CREATE DATABASE  IF NOT EXISTS `taekwondo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taekwondo`;
-- Host: localhost    Database: taekwondo
-- ------------------------------------------------------
-- Server version	8.0.21
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tipo_evento`
--
DROP TABLE IF EXISTS `tipo_evento`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_evento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_evento` text DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY(`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evento`
--
DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(13),
  `descripcion` varchar(255),
  `id_tipo_evento` int,
  `fecha_inicio` date,
  `fecha_fin` date,
  `costo` float(6.2),
  `enlace_facebook` text,
  PRIMARY KEY(`id`),
  FOREIGN KEY(`id_tipo_evento`) REFERENCES `tipo_evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examen`
--
DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `tipo_examen` varchar(255),
  `fecha` date,
  `costo` float(6.2),
  `horario` time,
  `enlace_facebook` text,
  `solicitud_examen` text,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alumno`
--
DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `apellidos` text,
  `fecha_nacimiento` date,
  `fotografia` text,
  `actividad_marcial` text,
  `grado` text,
  `seguro_medico` text,
  `certificado_medico` text,
  `carta_responsiva` text,
  `password` text,
  `email` text,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evento_alumno`
--
DROP TABLE IF EXISTS `evento_alumno`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento_alumno` (
  `id_alumno` integer,
  `id_evento` integer,
  FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examen_alumno`
--
DROP TABLE IF EXISTS `ex_al`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ex_al` (
  `id_alumnoE` integer,
  `id_examenE` integer,
  FOREIGN KEY (`id_alumnoE`) REFERENCES `alumno` (`id`),
  FOREIGN KEY (`id_examenE`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `administrador`
--
DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client	  = @@character_set_client*/;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` text,
  `email` text,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `alumno` VALUES ('1', 'Quimberly', 'Perez', '1997-11-24', 'Foto', 'TAEKWONDO', '1', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('2', 'Bel??n', 'Martinez', '1997-11-24', 'Foto', 'TAEKWONDO', '2', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('3', 'Valeria', 'Solis', '1997-11-24', 'Foto', 'TAEKWONDO', '3', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('4', 'Lucero', 'Diaz', '1997-11-24', 'Foto', 'TAEKWONDO', '1', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('5', 'Nancy', 'Garc??a', '1997-11-24', 'Foto', 'TAEKWONDO', '2', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('6', 'Luc??a', 'Mendoza', '1997-11-24', 'Foto', 'KICK_BOXING', '3', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('7', 'Christian', 'Castillo', '1997-11-24', 'Foto', 'KICK_BOXING', '1', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('8', 'Fernanda', 'Valverde', '1997-11-24', 'Foto', 'KICK_BOXING', '2', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('9', 'Gabriela', 'Hernandez', '1997-11-24', 'Foto', 'KICK_BOXING', '3', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('10', 'Kevin', 'Contreras', '1997-11-24', 'Foto', 'KICK_BOXING', '1', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('11', 'Ricardo', 'Rios', '1997-11-24', 'Foto', 'ACONDICIONAMIENTO_FISICO', '2', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('12', 'Martin', 'Salgado', '1997-11-24', 'Foto', 'ACONDICIONAMIENTO_FISICO', '3', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('13', 'Alan', 'Gonzales', '1997-11-24', 'Foto', 'ACONDICIONAMIENTO_FISICO', '1', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('14', 'Marco', 'Guevara', '1997-11-24', 'Foto', 'ACONDICIONAMIENTO_FISICO', '2', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');
INSERT INTO `alumno` VALUES ('15', 'Brandon', 'Castro', '1997-11-24', 'Foto', 'ACONDICIONAMIENTO_FISICO', '3', 'seguro', 'certificado_medico', 'carta', '12345678', 'email@elmail.com');





INSERT INTO `tipo_evento` VALUES ('1', 'Alumnos de otras academias acuden a la nuestra para realizar enfrentamientos entre alumnos de mismos grados', 'Torneo');
INSERT INTO `tipo_evento` VALUES ('2', 'Alumnos destacados de nuestra academia acuden a otra academia para realizar enfrentamientos entre alumnos de mismos grados', 'Torneo foraneos');
INSERT INTO `tipo_evento` VALUES ('3', 'Evento para exhibir los avances de los alumnos de la academia.', 'Exhibici??n');
INSERT INTO `tipo_evento` VALUES ('4', 'Otro tipo de evento pero ya no se me ocurri?? otro', 'Otro');

INSERT INTO `evento` VALUES ('1', 'Torneo 1', 'descripci??n', '1' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('2', 'Torneo 2', 'descripci??n', '1' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('3', 'Torneo For1', 'descripci??n', '2' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('4', 'Torneo For2', 'descripci??n', '2' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('5', 'Exhibicion 1', 'descripci??n', '3' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('6', 'Exhibicion 2', 'descripci??n', '3' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('7', 'Otro 1', 'descripci??n', '4' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');
INSERT INTO `evento` VALUES ('8', 'Otro 2', 'descripci??n', '4' , '2020-12-12', '2020-12-13', '100', 'www.facebook.com');


INSERT INTO `examen` VALUES ('1', 'Grado 1', 'PROMOCION_GRADO', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('2', 'Grado 2', 'PROMOCION_GRADO', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('3', 'Cinta 1', 'CAMBIO_CINTA', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('4', 'Cinta 2', 'CAMBIO_CINTA', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('5', 'Tteorico 1', 'TEORICO', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('6', 'Teorico 2', 'TEORICO', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('7', 'Revision 1', 'REVISION', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );
INSERT INTO `examen` VALUES ('8', 'Revision 2', 'REVISION', '2020-12-12', '100','12:30', 'www.facebook.com', 'solicitud' );

INSERT INTO `evento_alumno` VALUES ('1', '1');
INSERT INTO `evento_alumno` VALUES ('2', '2');
INSERT INTO `evento_alumno` VALUES ('3', '3');
INSERT INTO `evento_alumno` VALUES ('4', '4');
INSERT INTO `evento_alumno` VALUES ('5', '5');
INSERT INTO `evento_alumno` VALUES ('6', '6');
INSERT INTO `evento_alumno` VALUES ('7', '7');
INSERT INTO `evento_alumno` VALUES ('8', '8');

INSERT INTO `ex_al` VALUES ('1', '1');
INSERT INTO `ex_al` VALUES ('2', '2');
INSERT INTO `ex_al` VALUES ('3', '3');
INSERT INTO `ex_al` VALUES ('4', '4');
INSERT INTO `ex_al` VALUES ('5', '5');
INSERT INTO `ex_al` VALUES ('6', '6');
INSERT INTO `ex_al` VALUES ('7', '7');
INSERT INTO `ex_al` VALUES ('8', '8');

INSERT INTO `administrador` VALUES (1,'$2a$10$IDieDdEQQaYhUwaZqRCD6eFT3EiTJnyyDjCINxd9UCobq0X8V4xBO','admin@mail.com');