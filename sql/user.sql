/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : mybatis_plus

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 08/03/2022 07:59:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `manager_id` bigint(20) NULL DEFAULT NULL COMMENT '直属上级id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `manager_fk`(`manager_id`) USING BTREE,
  CONSTRAINT `manager_fk` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '大BOSS', 40, 'boss@baomidou.com', NULL, '2021-03-22 09:48:00');
INSERT INTO `user` VALUES (2, '李经理', 40, 'boss@baomidou.com', 1, '2021-01-22 09:48:00');
INSERT INTO `user` VALUES (3, '黄主管', 40, 'boss@baomidou.com', 2, '2021-01-22 09:48:00');
INSERT INTO `user` VALUES (4, '吴组长', 40, 'boss@baomidou.com', 2, '2021-02-22 09:48:00');
INSERT INTO `user` VALUES (5, '小菜', 40, 'boss@baomidou.com', 2, '2021-02-22 09:48:00');

SET FOREIGN_KEY_CHECKS = 1;
