/*
Navicat MariaDB Data Transfer

Source Server         : Local Host
Source Server Version : 100212
Source Host           : localhost:3306
Source Database       : agenda

Target Server Type    : MariaDB
Target Server Version : 100212
File Encoding         : 65001

Date: 2018-03-12 20:08:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eventos
-- ----------------------------
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `hora_finalizacion` time DEFAULT NULL,
  `dia_completo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eventos
-- ----------------------------
INSERT INTO `eventos` VALUES ('2', '1', 'Nuevo evento', '2018-03-09', '07:30:00', '2018-03-09', '08:00:00', '0');
INSERT INTO `eventos` VALUES ('3', '1', 'Nuevo evento 2', '2018-03-10', '07:30:00', '2018-03-10', '10:00:00', '0');
INSERT INTO `eventos` VALUES ('4', '1', 'Nuevo evento 3', '2018-03-09', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('5', '1', 'Nuevo evento 4', '2018-03-09', '10:00:00', '2018-03-09', '10:30:00', '0');
INSERT INTO `eventos` VALUES ('6', '1', 'Nuevo evento 5', '2018-03-11', '07:00:00', '2018-03-11', '11:30:00', '0');
INSERT INTO `eventos` VALUES ('7', '1', 'Nuevo evento 6', '2018-03-12', '07:00:00', '2018-03-12', '11:30:00', '0');
INSERT INTO `eventos` VALUES ('8', '1', 'Nuevo evento 7', '2018-03-13', '07:00:00', '2018-03-13', '11:30:00', '0');
INSERT INTO `eventos` VALUES ('9', '1', 'Nuevo evento 8', '2018-03-14', '05:00:00', '2018-03-14', '09:00:00', '0');
INSERT INTO `eventos` VALUES ('10', '1', 'Nuevo evento 9', '2018-03-16', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('11', '1', 'Nuevo evento 10', '2018-03-18', '10:00:00', '2018-03-18', '11:00:00', '0');
INSERT INTO `eventos` VALUES ('12', '1', 'Nuevo evento 11', '2018-03-19', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('13', '1', 'Nuevo evento 12', '2018-03-21', '12:00:00', '2018-03-21', '13:00:00', '0');
INSERT INTO `eventos` VALUES ('14', '1', 'Nuevo evento 13', '2018-03-22', '14:00:00', '2018-03-22', '15:00:00', '0');
INSERT INTO `eventos` VALUES ('15', '1', 'Nuevo evento 14', '2018-03-25', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('16', '1', 'Nuevo evento 15', '2018-03-26', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('17', '1', 'Nuevo evento 16', '2018-03-27', '08:00:00', '2018-03-27', '10:00:00', '0');
INSERT INTO `eventos` VALUES ('18', '1', 'Nuevo evento 17', '2018-03-27', '09:00:00', '2018-03-27', '11:00:00', '0');
INSERT INTO `eventos` VALUES ('19', '1', 'Nuevo evento 18', '2018-03-27', '10:00:00', '2018-03-27', '12:00:00', '0');
INSERT INTO `eventos` VALUES ('20', '1', 'Nuevo evento 19', '2018-03-27', '11:00:00', '2018-03-27', '12:00:00', '0');
INSERT INTO `eventos` VALUES ('21', '1', 'Nuevo evento 20', '2018-03-28', '12:00:00', '2018-03-28', '13:00:00', '0');
INSERT INTO `eventos` VALUES ('22', '1', 'Nuevo evento 21', '2018-03-28', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('23', '1', 'Nuevo evento 22', '2018-03-28', '00:00:00', null, null, '1');
INSERT INTO `eventos` VALUES ('24', '1', 'Nuevo evento 23', '2018-03-31', '00:00:00', null, null, '1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `nombres` varchar(255) NOT NULL DEFAULT '',
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'marcelo@correo.com', '$2y$10$bXt63qWtyuinARxGq9LyjOUejCCZCiDVGgzi2HteCi5zeoNLl1VvW', 'Marcelo Narvaez', '1978-11-05');
INSERT INTO `usuarios` VALUES ('5', 'alejandra@correo.com', '$2y$10$ET3MiUv.iIFPf4B55EjkG.mnjTWJ65ERttP2VDOxT2i15eKaBXoEO', 'Alejandra NarvÃ¡ez', '2008-12-23');
INSERT INTO `usuarios` VALUES ('6', 'santiago@correo.com', '$2y$10$IGuConOxOUIrgKccj0L3c.PbYlcpqKHGwN8/QAAg98BC9GTZjkEVC', 'Santiago NarvÃ¡ez', '2010-07-27');
