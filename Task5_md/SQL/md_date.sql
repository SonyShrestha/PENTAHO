/*
 Navicat MySQL Data Transfer

 Source Server         : c1
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : sakila

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 06/11/2019 21:25:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for md_date
-- ----------------------------
DROP TABLE IF EXISTS `md_date`;
CREATE TABLE `md_date`  (
  `ID` int(11) NULL DEFAULT NULL,
  `CODE` int(11) NULL DEFAULT NULL,
  `DESCRIPTION` date NULL DEFAULT NULL,
  `CREATED_DATE` date NULL DEFAULT NULL,
  `CREATED_BY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_date
-- ----------------------------
INSERT INTO `md_date` VALUES (1, 1, '2006-02-14', '2019-11-06', 'Sony');
INSERT INTO `md_date` VALUES (2, 2, '2006-02-15', '2019-11-06', 'Sony');
INSERT INTO `md_date` VALUES (3, 3, '2006-02-16', '2019-11-06', 'Sony');
INSERT INTO `md_date` VALUES (4, 4, '2006-02-17', '2019-11-06', 'Sony');
INSERT INTO `md_date` VALUES (5, 5, '2006-02-20', '2019-11-06', 'Sony');
INSERT INTO `md_date` VALUES (6, 6, '2006-02-21', '2019-11-06', 'Sony');

SET FOREIGN_KEY_CHECKS = 1;
