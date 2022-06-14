/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : covid

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 14/06/2022 15:19:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emp_health
-- ----------------------------
DROP TABLE IF EXISTS `emp_health`;
CREATE TABLE `emp_health`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `phonenum` bigint(20) DEFAULT NULL,
  `temp` float(4, 1) DEFAULT NULL,
  `risk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `health` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `depart` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `de`(`depart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_health
-- ----------------------------
INSERT INTO `emp_health` VALUES (2, '刘先生', 1, 15143355464, 36.5, '否', '正常', '', '2021-03-31 14:03:52', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (3, '吴雷师', 0, 15151549751, 37.0, '否', '正常', '无', '2021-03-13 20:16:30', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (4, '刘腾键', 1, 13415135795, 36.5, '否', '正常', '', '2021-03-13 19:54:40', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (5, '刘腾键', 1, 13415135795, 36.5, '否', '感冒', '', '2021-03-13 19:54:40', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (6, '刘胜虎', 1, 123414234123, 39.0, '否', '低烧', '', '2021-04-05 22:41:39', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (7, '王继红', 0, 13513534534, 38.0, '否', '与新冠肺炎有关的其他症状，如流涕，咽痛，肌痛，腹泻等', '', '2021-04-06 13:39:38', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (8, '刘小姐', 1, 231123123, 23.0, '是', '呼吸困难', '', '2021-04-06 15:34:42', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (9, '111', 1, 111111111, 11.0, '111', '正常', '11', '2021-04-10 16:03:01', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (10, '刘渲', 1, 13514124567, 37.0, '否', '正常', '', '2021-04-15 14:29:15', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (11, '王佳', 0, 13512314534, 37.5, '否', '正常', '', '2021-04-15 14:42:55', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (12, '刘腾键', 1, 13512365456, 36.5, '否', '正常', '', '2021-04-15 14:46:49', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_health` VALUES (13, '123', 1, 18234567891, 36.0, '否', '正常', '', '2022-06-14 11:14:56', '新乡市红旗区河南科技学院数据3班');

-- ----------------------------
-- Table structure for emp_iden
-- ----------------------------
DROP TABLE IF EXISTS `emp_iden`;
CREATE TABLE `emp_iden`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `idcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idate` date DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phonenum` bigint(100) DEFAULT NULL,
  `register` datetime(0) DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `depart` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `emp_iden_ibfk_1`(`depart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_iden
-- ----------------------------
INSERT INTO `emp_iden` VALUES (1, '李先生', 1, '440524196002152100', '2021-12-31', '广州市第一附属医院', 13457896457, '2020-11-14 15:31:44', '治愈', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (2, '蔡二思', 1, '440634199004050300', '2021-12-24', '深圳市福田区第一医院', NULL, '2021-03-03 11:33:31', '治愈', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (3, '王金枝', 0, NULL, '2022-01-12', '深圳市福田区第一医院', 123123123123, NULL, '治愈', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (4, '季王红', 0, '440578199505150500', '2022-02-15', '佛山市三水人民医院', 13411234457, NULL, '治愈', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (5, '李王思', 1, '440578199902150340', '2022-03-23', '佛山市三水人民医院', 13453456785, '2021-04-06 16:05:11', '疑似', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (6, '王二会', 1, '440582198005040800', '2022-03-03', '深圳市中心医院', 13457891231, '2020-04-09 16:22:26', '疑似', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (7, '于雪师', 1, '440578198905213551', '2020-12-12', '深圳市中心医院', 1581456785, '2021-04-06 16:05:11', '死亡', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (10, '阿斯顿', 0, NULL, '2021-12-01', '汕头市李嘉诚医院', 13531342457, '2021-04-02 14:49:15', '治愈', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (11, '士大夫', 0, '34124', '2021-12-14', '广州市暨南大学第一附属医院', 13411213257, '2021-04-02 14:49:32', '死亡', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (12, '吴开师', 1, '440578199807050321', '2021-12-12', '佛山市三水人民医院', 13412823457, '2021-04-06 16:05:11', '疑似', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_iden` VALUES (13, '张三', 1, NULL, '2022-06-12', '无名', 121, '2022-06-13 15:25:52', NULL, '新乡市红旗区河南科技学院数据3班');

-- ----------------------------
-- Table structure for emp_is
-- ----------------------------
DROP TABLE IF EXISTS `emp_is`;
CREATE TABLE `emp_is`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` int(3) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `temp` float(10, 2) DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `begin` datetime(0) DEFAULT NULL,
  `end` datetime(0) DEFAULT NULL,
  `leaved` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `arrived` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `depart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_is
-- ----------------------------
INSERT INTO `emp_is` VALUES (1, '黎香湖', 1, 12341231231, 35.00, '酒店隔离', '广州市广州南站如家酒店', '2021-12-06 00:00:00', '2021-12-20 00:00:00', '广东汕头', '广东东莞', NULL, '新乡市红旗区河南科技学院');
INSERT INTO `emp_is` VALUES (2, '王老二', 1, 13545479653, 38.50, '酒店集中隔离', '广州市火车站快捷酒店', '2021-12-14 00:00:00', '2021-12-28 00:00:00', '广东汕头', '广东东莞', '', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_is` VALUES (3, '蔡司', 1, 13452342356, 36.60, '酒店集中隔离', '深圳市宝安区平和小区', '2021-12-23 00:00:00', '2022-01-06 00:00:00', '重庆市', '湖南长沙', '', '新乡市红旗区河南科技学院数据3班');
INSERT INTO `emp_is` VALUES (5, '蔡司', 1, 13452342356, 35.60, '居家隔离', '深圳市宝安区平和小区', '2021-12-09 00:00:00', '2021-12-23 00:00:00', '重庆市', '湖南长沙', '', '新乡市红旗区河南科技学院数据3班');

-- ----------------------------
-- Table structure for material_manage
-- ----------------------------
DROP TABLE IF EXISTS `material_manage`;
CREATE TABLE `material_manage`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isImp` int(11) DEFAULT NULL,
  `charge` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cnum` bigint(20) DEFAULT NULL,
  `updateTime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material_manage
-- ----------------------------
INSERT INTO `material_manage` VALUES (113, 'KN94口罩', 150, '个', 1, '孙迪', 13415135777, '2021-03-31 13:54:36');
INSERT INTO `material_manage` VALUES (114, 'N95口罩', 220, '个', 1, '孙迪', 13415135777, '2021-04-06 16:14:45');
INSERT INTO `material_manage` VALUES (123, '防护服', 30, '个', 1, '王旭', 15148796568, '2021-04-22 14:21:56');
INSERT INTO `material_manage` VALUES (125, '酒精消毒棉片', 200, '盒', 1, '李建', 13431357964, '2021-03-31 13:54:06');
INSERT INTO `material_manage` VALUES (126, '抽纸纸巾', 20, '箱', 0, '李玉', 13534654675, '2021-04-22 19:29:30');
INSERT INTO `material_manage` VALUES (133, '防护眼罩', 30, '个', 1, '杨迪', 123123123123, '2021-04-23 17:00:52');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES (2, '123', '202cb962ac59075b964b07152d234b70');

SET FOREIGN_KEY_CHECKS = 1;
