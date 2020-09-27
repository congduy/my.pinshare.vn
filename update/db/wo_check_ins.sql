/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : heri

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-15 09:53:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wo_check_ins
-- ----------------------------
DROP TABLE IF EXISTS `wo_check_ins`;
CREATE TABLE `wo_check_ins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` enum('waiting','approve','reject') DEFAULT 'waiting',
  `category_id` int(11) DEFAULT NULL,
  `description` text,
  `time` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `text` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
