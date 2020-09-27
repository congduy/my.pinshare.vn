/*
Navicat MySQL Data Transfer

Source Server         : MYSQL_LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : nhavadat_social

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-17 16:03:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administratives
-- ----------------------------
DROP TABLE IF EXISTS `wo_administratives`;
CREATE TABLE `wo_administratives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `is_visible` int(11) DEFAULT NULL,
  `is_state` tinyint(1) DEFAULT NULL,
  `code` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(8,2) NOT NULL,
  `lng` decimal(8,2) NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15244 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
