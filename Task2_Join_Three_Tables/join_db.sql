/*
 Navicat MySQL Data Transfer

 Source Server         : c1
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : join_db

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 05/11/2019 20:34:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor`  (
  `actor_id` int(11) NULL DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO `actor` VALUES (1, 'Sony', 'Shrestha');
INSERT INTO `actor` VALUES (2, 'Pragya', 'Shrestha');
INSERT INTO `actor` VALUES (3, 'Prasanna', 'Shrestha');
INSERT INTO `actor` VALUES (4, 'Prava', 'Panthi');
INSERT INTO `actor` VALUES (5, 'Akhilesh', 'Kumar');
INSERT INTO `actor` VALUES (6, 'Ritu', 'Mallik');
INSERT INTO `actor` VALUES (7, 'Nishu', 'Karna');

-- ----------------------------
-- Table structure for actor_film
-- ----------------------------
DROP TABLE IF EXISTS `actor_film`;
CREATE TABLE `actor_film`  (
  `actor_id` int(11) NULL DEFAULT NULL,
  `film_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor_film
-- ----------------------------
INSERT INTO `actor_film` VALUES (1, 1, '2010-01-01');
INSERT INTO `actor_film` VALUES (1, 2, '2010-01-01');
INSERT INTO `actor_film` VALUES (2, 3, '2010-01-02');
INSERT INTO `actor_film` VALUES (3, 4, '2010-01-03');
INSERT INTO `actor_film` VALUES (3, 5, '2010-01-03');
INSERT INTO `actor_film` VALUES (3, 6, '2010-01-04');
INSERT INTO `actor_film` VALUES (4, 7, '2010-01-05');
INSERT INTO `actor_film` VALUES (4, 8, '2010-01-05');
INSERT INTO `actor_film` VALUES (5, 9, '2010-01-06');
INSERT INTO `actor_film` VALUES (6, 10, '2010-01-06');
INSERT INTO `actor_film` VALUES (7, 11, '2010-01-06');
INSERT INTO `actor_film` VALUES (7, 12, '2010-01-07');
INSERT INTO `actor_film` VALUES (7, 13, '2010-01-07');
INSERT INTO `actor_film` VALUES (7, 14, '2010-01-07');
INSERT INTO `actor_film` VALUES (7, 15, '2010-01-08');

-- ----------------------------
-- Table structure for film_category
-- ----------------------------
DROP TABLE IF EXISTS `film_category`;
CREATE TABLE `film_category`  (
  `film_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_category
-- ----------------------------
INSERT INTO `film_category` VALUES (13, 5);
INSERT INTO `film_category` VALUES (2, 1);
INSERT INTO `film_category` VALUES (3, 1);
INSERT INTO `film_category` VALUES (4, 1);
INSERT INTO `film_category` VALUES (5, 2);
INSERT INTO `film_category` VALUES (6, 2);
INSERT INTO `film_category` VALUES (7, 3);
INSERT INTO `film_category` VALUES (8, 3);
INSERT INTO `film_category` VALUES (9, 4);
INSERT INTO `film_category` VALUES (10, 4);
INSERT INTO `film_category` VALUES (11, 4);
INSERT INTO `film_category` VALUES (12, 4);
INSERT INTO `film_category` VALUES (1, 1);
INSERT INTO `film_category` VALUES (14, 5);
INSERT INTO `film_category` VALUES (15, 5);

SET FOREIGN_KEY_CHECKS = 1;
