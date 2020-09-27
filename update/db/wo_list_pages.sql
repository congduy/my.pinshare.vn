/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : heri

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-27 07:01:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wo_list_pages
-- ----------------------------
DROP TABLE IF EXISTS `wo_list_pages`;
CREATE TABLE `wo_list_pages` (
  `list_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`list_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wo_lists
-- ----------------------------
DROP TABLE IF EXISTS `wo_lists`;
CREATE TABLE `wo_lists` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `list_title` varchar(255) DEFAULT NULL,
  `list_description` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT 'upload/photos/d-cover.jpg',
  `created_at` int(11) DEFAULT NULL,
  `active` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


ALTER TABLE `wo_pages` ADD `lat` DECIMAL(10,8);
ALTER TABLE `wo_pages` ADD `lng` DECIMAL(11,8);

ALTER TABLE `wo_posts` ADD `lat` DECIMAL(10,8);
ALTER TABLE `wo_posts` ADD `lng` DECIMAL(11,8);

/*2019-12-15*/
ALTER TABLE `wo_posts` ADD `check_in_name` varchar(255) DEFAULT NULL;