/*
 Navicat Premium Data Transfer

 Source Server         : 小落
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 1.116.189.219:3306
 Source Schema         : covid

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 20/06/2022 20:37:06
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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_health
-- ----------------------------
INSERT INTO `emp_health` VALUES (1, 'Violet North', 1, 13842562340, 37.1, '是', '乏力', '', '2022-06-17 15:15:33', '美国某乡村');
INSERT INTO `emp_health` VALUES (2, 'Wordsworth Young', 1, 18848265378, 37.5, '是', '呼吸困难', '', '2022-06-17 15:16:19', '美国某乡村');
INSERT INTO `emp_health` VALUES (3, 'さかたしょうこ', 1, 13342814430, 35.0, '否', '与新冠肺炎有关的其他症状，如流涕，咽痛，肌痛，腹泻等', '', '2022-06-17 15:17:51', '日本某乡村');
INSERT INTO `emp_health` VALUES (4, 'こうらさちこ', 1, 13417071744, 36.1, '是', '呼吸困难', '', '2022-06-17 15:19:16', '日本某乡村');
INSERT INTO `emp_health` VALUES (5, '서칠현', 1, 13178457186, 38.1, '是', '与新冠肺炎有关的其他症状，如流涕，咽痛，肌痛，腹泻等', '', '2022-06-17 15:20:22', '韩国某乡村');
INSERT INTO `emp_health` VALUES (6, '刘兴修', 1, 15987046410, 36.5, '否', '正常', '', '2022-06-17 15:21:12', '中国某乡村');
INSERT INTO `emp_health` VALUES (8, '李平', 0, 18705027971, 37.4, '是', '乏力', '', '2022-06-17 15:23:18', '中国某乡村');
INSERT INTO `emp_health` VALUES (9, '李洋', 1, 13843595252, 37.2, '否', '咳嗽', '', '2022-06-13 00:00:00', '中国某乡村');
INSERT INTO `emp_health` VALUES (10, '黄大', 1, 13234546422, 36.0, '否', '与新冠肺炎有关的其他症状，如流涕，咽痛，肌痛，腹泻等', '无', '2022-06-17 00:00:00', '天下');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_iden
-- ----------------------------
INSERT INTO `emp_iden` VALUES (2, '韩一龙', 1, '411222200101293900', '2022-05-15', '新百医院', 15513928374, '2022-06-17 16:14:53', '疑似', '新乡红旗区河南科技学院');
INSERT INTO `emp_iden` VALUES (3, '罗某人', 1, '411524200108190000', '2022-06-12', '新乡医学院', 18073579794, '2022-06-17 16:30:11', '治愈', '新乡红旗区河南科技学院');
INSERT INTO `emp_iden` VALUES (4, '侯某人', 0, '411524200109210000', '2022-06-13', '新乡医学院', 18073562211, '2022-06-17 16:31:37', '疑似', '新乡红旗区大数据大厦');
INSERT INTO `emp_iden` VALUES (5, '黄某人', 1, '411524200109118818', '2022-05-17', '市中心医院', 18032100218, '2022-06-17 16:33:07', '死亡', '光山某乡');
INSERT INTO `emp_iden` VALUES (6, '李雪羽', 0, '410102200103070492', '2022-04-04', '当下乱世医院', 15717502462, '2022-06-17 16:34:59', '确诊', '未名小区');
INSERT INTO `emp_iden` VALUES (7, '吴宇', 1, '410102200103075816', '2022-03-14', '救死扶伤医院', 15717502461, '2022-06-17 16:36:14', '确诊', '未名小区');
INSERT INTO `emp_iden` VALUES (8, '张简若秋', 0, '410102200103074979', '2022-02-21', '股份有限医院', 15717502499, '2022-06-17 16:38:16', '确诊', '无名小区');
INSERT INTO `emp_iden` VALUES (9, '侯若桐', 0, '165544564564898', '2022-05-31', '三附院', 15637920887, '2022-06-17 21:50:06', '疑似', '柳青路');
INSERT INTO `emp_iden` VALUES (10, '黄怀龙', 1, '412325197802102340', '2022-05-09', '三附院', 13723451432, '2022-06-17 21:50:49', '治愈', '无');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_is
-- ----------------------------
INSERT INTO `emp_is` VALUES (1, '张德', 1, 15683748367, 36.60, '居家隔离', '上阳路盛阳酒店', '2022-06-15 00:00:00', '2022-06-29 00:00:00', '北京', '郑州', '', '新乡');
INSERT INTO `emp_is` VALUES (2, '张三', 1, 13734343213, 37.00, '自费', '无', '2022-06-16 00:00:00', '2022-06-30 00:00:00', '无', '无', '无', '无');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material_manage
-- ----------------------------
INSERT INTO `material_manage` VALUES (1, '口罩', 10000, '个', 1, '罗某人', 18073579791, '2022-06-17 21:49:56');
INSERT INTO `material_manage` VALUES (2, '隔离衣', 2000, '件', 1, '李明', 13839097893, '2022-06-17 16:10:54');
INSERT INTO `material_manage` VALUES (3, '防护面罩', 320, '箱', 1, '张丽', 15319380498, '2022-06-17 16:16:05');
INSERT INTO `material_manage` VALUES (4, '疫苗', 3000, '盒', 1, '李一清', 18819387476, '2022-06-17 16:05:38');
INSERT INTO `material_manage` VALUES (5, '消毒液', 4000, '箱', 1, '王洋', 18938748943, '2022-06-17 16:17:42');
INSERT INTO `material_manage` VALUES (6, '医用防护服', 2500, '件', 1, '方晴', 13398579380, '2022-06-17 16:08:16');
INSERT INTO `material_manage` VALUES (7, '医用酒精', 5000, '瓶', 1, '张思涵', 15683873933, '2022-06-17 16:08:59');
INSERT INTO `material_manage` VALUES (8, '医用手套', 3000, '袋', 1, '冯好书', 18738748466, '2022-06-17 16:10:02');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES (2, 'hhh', '4297f44b13955235245b2497399d7a93');
INSERT INTO `user` VALUES (3, 'liuliu', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES (4, 'kong1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES (5, 'kong1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES (6, 'luoqianyi', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
