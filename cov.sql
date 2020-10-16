/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : cov

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-07-30 20:16:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime DEFAULT NULL COMMENT '数据最后更新时间',
  `province` varchar(50) DEFAULT NULL COMMENT '省',
  `city` varchar(50) DEFAULT NULL COMMENT '市',
  `confirm` int(11) DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) DEFAULT NULL COMMENT '新增确诊',
  `heal` int(11) DEFAULT NULL COMMENT '累计治愈',
  `dead` int(11) DEFAULT NULL COMMENT '累计死亡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2251 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `ds` datetime NOT NULL COMMENT '日期',
  `confirm` int(11) DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) DEFAULT NULL COMMENT '当日新增确诊',
  `suspect` int(11) DEFAULT NULL COMMENT '剩余疑似',
  `suspect_add` int(11) DEFAULT NULL COMMENT '当日新增疑似',
  `heal` int(11) DEFAULT NULL COMMENT '累计治愈',
  `heal_add` int(11) DEFAULT NULL COMMENT '当日新增治愈',
  `dead` int(11) DEFAULT NULL COMMENT '累计死亡',
  `dead_add` int(11) DEFAULT NULL COMMENT '当日新增死亡',
  PRIMARY KEY (`ds`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hotsearch
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
