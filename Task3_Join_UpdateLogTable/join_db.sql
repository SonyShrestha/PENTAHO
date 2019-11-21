/*
 Navicat MySQL Data Transfer

 Source Server         : con2
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : join_db

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 06/11/2019 10:07:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int(11) NOT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `phone` int(11) NULL DEFAULT NULL,
  INDEX `fk_address`(`city_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 'gatthaghar', 1, 6636106);
INSERT INTO `address` VALUES (2, 'bhaktapur', 8, 6638106);
INSERT INTO `address` VALUES (3, 'sunsari', 2, 6639106);
INSERT INTO `address` VALUES (4, 'bhairahawa', 3, 6633106);
INSERT INTO `address` VALUES (5, 'khotang', 3, 6631909);
INSERT INTO `address` VALUES (6, 'pokhara', 8, 6631908);
INSERT INTO `address` VALUES (7, 'butwal', 4, 6631985);
INSERT INTO `address` VALUES (8, 'baglung', 4, 6688909);
INSERT INTO `address` VALUES (9, 'nepalgunj', 5, 6634231);
INSERT INTO `address` VALUES (10, 'sunsari', 5, 6635909);
INSERT INTO `address` VALUES (11, 'bode', 2, 6632901);
INSERT INTO `address` VALUES (12, 'magargau', 7, 6632312);
INSERT INTO `address` VALUES (13, 'thimi', 8, 6623131);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 'bagmati', '2019-01-02 10:07:04');
INSERT INTO `city` VALUES (2, 'narayani', '2019-01-02 10:07:12');
INSERT INTO `city` VALUES (3, 'bheri', '2019-01-03 10:07:18');
INSERT INTO `city` VALUES (9, 'mechi', '2019-11-04 10:47:22');
INSERT INTO `city` VALUES (5, 'koshi', '2019-01-04 10:07:38');
INSERT INTO `city` VALUES (6, 'jhapa', '2019-01-05 10:34:11');
INSERT INTO `city` VALUES (4, 'rapti', '2019-01-04 10:52:17');

-- ----------------------------
-- Table structure for log_table
-- ----------------------------
DROP TABLE IF EXISTS `log_table`;
CREATE TABLE `log_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `active_flag` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_table
-- ----------------------------
INSERT INTO `log_table` VALUES (1, '2019-01-01', '2019-01-02', 1);

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `address_id` int(11) NULL DEFAULT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `phone` int(11) NULL DEFAULT NULL,
  `city_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
