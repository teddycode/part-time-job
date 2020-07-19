/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50547
 Source Host           : localhost:3306
 Source Schema         : part-time-job

 Target Server Type    : MySQL
 Target Server Version : 50547
 File Encoding         : 65001

 Date: 29/04/2020 15:32:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jb
-- ----------------------------
DROP TABLE IF EXISTS `jb`;
CREATE TABLE `jb`  (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jpid` int(11) NULL DEFAULT NULL,
  `jval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jjg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `juserid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`jid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of jb
-- ----------------------------
INSERT INTO `jb` VALUES (1, 1, '假的', 'qqq', NULL);
INSERT INTO `jb` VALUES (2, 2, '123', NULL, 1);

-- ----------------------------
-- Table structure for myjob
-- ----------------------------
DROP TABLE IF EXISTS `myjob`;
CREATE TABLE `myjob`  (
  `mid` int(255) NOT NULL AUTO_INCREMENT,
  `muserid` int(11) NULL DEFAULT NULL,
  `mpid` int(255) NULL DEFAULT NULL,
  `mstau` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mfuserid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mjuserid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of myjob
-- ----------------------------
INSERT INTO `myjob` VALUES (2, 1, 2, '已结算', '123123', '123');
INSERT INTO `myjob` VALUES (3, 2, 2, '已结算', NULL, NULL);
INSERT INTO `myjob` VALUES (11, 1, 3, '已报名', NULL, NULL);

-- ----------------------------
-- Table structure for myy
-- ----------------------------
DROP TABLE IF EXISTS `myy`;
CREATE TABLE `myy`  (
  `yyid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NULL DEFAULT NULL,
  `mval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mjg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yyuserid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`yyid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of myy
-- ----------------------------
INSERT INTO `myy` VALUES (2, NULL, '123123', NULL, 1);
INSERT INTO `myy` VALUES (3, 2, '123123', NULL, 1);
INSERT INTO `myy` VALUES (4, 2, '123', NULL, 1);

-- ----------------------------
-- Table structure for part_time_job
-- ----------------------------
DROP TABLE IF EXISTS `part_time_job`;
CREATE TABLE `part_time_job`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `psage` int(255) NULL DEFAULT NULL,
  `peage` int(255) NULL DEFAULT NULL,
  `psex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preputation` int(255) NULL DEFAULT NULL,
  `pmoney` int(255) NULL DEFAULT NULL,
  `pstau` int(255) NULL DEFAULT NULL,
  `pcount` int(255) NULL DEFAULT NULL,
  `puserid` int(11) NULL DEFAULT NULL,
  `ptype` int(255) NULL DEFAULT NULL,
  `puserreputation` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of part_time_job
-- ----------------------------
INSERT INTO `part_time_job` VALUES (1, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (2, '寻找泰坦尼克号', '大胆子', 55, 14, '男女不限', 60, 900000, 1, 600, 1, 2, 100);
INSERT INTO `part_time_job` VALUES (3, '饭店兼职服务生一名1', '需要一天端茶倒水', 18, 25, '男女不限', 80, 100, 1, 0, 1, 1, 150);
INSERT INTO `part_time_job` VALUES (4, '饭店兼职服务生一名', '需要一天端茶倒水', 18, 25, '男', 80, 100, 1, 1, 1, 2, 120);
INSERT INTO `part_time_job` VALUES (5, NULL, NULL, NULL, NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `part_time_job` VALUES (6, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (7, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (8, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (9, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (10, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (11, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (12, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (13, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (14, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (15, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (16, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (17, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (18, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (19, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (20, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (21, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (22, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (23, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (24, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (25, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (26, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (27, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (28, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (29, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (30, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (31, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (32, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (33, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (34, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (35, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (36, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (37, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (38, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (39, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (40, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (41, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (42, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (43, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (44, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);
INSERT INTO `part_time_job` VALUES (45, '修火车', '需要三个人', 18, 25, '男', 50, 5000, 0, 1, 2, 1, 100);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '安保');
INSERT INTO `type` VALUES (2, '餐饮');
INSERT INTO `type` VALUES (3, '火工');
INSERT INTO `type` VALUES (4, '搬运工');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userrole` int(255) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reputation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  `stau` int(255) UNSIGNED NULL DEFAULT 0,
  `money` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123', 1, '女', '150', 18, '15555556666', 1, 0, 125256790);
INSERT INTO `user` VALUES (2, 'lisi', '123', 1, '男', '100', 18, NULL, 1, 0, 900000);
INSERT INTO `user` VALUES (3, 'admin', '123', 0, '男', '100', 18, NULL, 1, 0, 0);
INSERT INTO `user` VALUES (4, 'zhangsan1', '123', 0, '男', '100', 123, '23', 1, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
