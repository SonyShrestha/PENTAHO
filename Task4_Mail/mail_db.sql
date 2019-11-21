/*
 Navicat MySQL Data Transfer

 Source Server         : con2
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : mail_db

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 05/11/2019 20:20:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mail_tb
-- ----------------------------
DROP TABLE IF EXISTS `mail_tb`;
CREATE TABLE `mail_tb`  (
  `student_id` int(11) NULL DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_tb
-- ----------------------------
INSERT INTO `mail_tb` VALUES (150031122, 'Sony', 'Shrestha');
INSERT INTO `mail_tb` VALUES (150031123, 'Savya', 'Nidhi');
INSERT INTO `mail_tb` VALUES (150031126, 'Bishwas', 'Mandal');
INSERT INTO `mail_tb` VALUES (150031127, 'Akhilesh', 'Kumar');
INSERT INTO `mail_tb` VALUES (150031128, 'Utkarsha', 'Shukla');

SET FOREIGN_KEY_CHECKS = 1;
