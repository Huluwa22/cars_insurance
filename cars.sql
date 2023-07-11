/*
 Navicat Premium Data Transfer

 Source Server         : luyifan
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : cars

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 11/07/2023 10:28:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car_insurance
-- ----------------------------
DROP TABLE IF EXISTS `car_insurance`;
CREATE TABLE `car_insurance`  (
  `insurance_id` int NOT NULL AUTO_INCREMENT,
  `car_id` int NULL DEFAULT NULL,
  `new_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `force_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `three_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `loss_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `thief_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `born_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `glass_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `res_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `scratch_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `real_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`insurance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_insurance
-- ----------------------------
INSERT INTO `car_insurance` VALUES (16, 6, '11', '950', '877', '1960', '0', '0', '607', '0', '570', '2023-07-07 15:11:13', '3638.400');
INSERT INTO `car_insurance` VALUES (17, 7, '12', '950', '877', '1960', '0', '0', '877', '294', '570', '2023-07-08 14:05:36', '6055.200');
INSERT INTO `car_insurance` VALUES (18, 10, '6', '950', '607', '0', '0', '0', '607', '0', '400', '2023-07-10 15:07:03', '2847.600');

-- ----------------------------
-- Table structure for cars_category
-- ----------------------------
DROP TABLE IF EXISTS `cars_category`;
CREATE TABLE `cars_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `order_num` int NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cars_category
-- ----------------------------
INSERT INTO `cars_category` VALUES (4, '小型车', 1);
INSERT INTO `cars_category` VALUES (5, '中型车', 2);
INSERT INTO `cars_category` VALUES (6, '大型车', 3);
INSERT INTO `cars_category` VALUES (7, '微型車', NULL);

-- ----------------------------
-- Table structure for cars_info
-- ----------------------------
DROP TABLE IF EXISTS `cars_info`;
CREATE TABLE `cars_info`  (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `car_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchase_price` decimal(10, 2) NULL DEFAULT NULL,
  `discount_factor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `init_register_date` datetime(0) NULL DEFAULT NULL,
  `insurance_start_date` datetime(0) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`car_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cars_info
-- ----------------------------
INSERT INTO `cars_info` VALUES (6, 4, '雪佛兰', 12.00, '0.6', '2021-12-21 00:00:00', '2022-01-23 00:00:00', 'http://localhost:8089/images/3e45158f-dfd6-420a-9024-deb5333e0358.jpg');
INSERT INTO `cars_info` VALUES (7, 4, '宝马', 13.00, '0.9', '2012-12-12 00:00:00', '2012-12-02 00:00:00', 'http://localhost:8089/images/27c4c637-987a-403a-9709-3525d7f56ad3.jpg');
INSERT INTO `cars_info` VALUES (8, 4, '大众', 12.00, '0.8', '2023-07-10 00:00:00', '2023-07-03 00:00:00', 'http://localhost:8089/images/aafe7e62-9ec4-4509-a8a3-81ab08bdbdb9.png');
INSERT INTO `cars_info` VALUES (9, 5, '马自达', 60.00, '0.9', '2023-07-09 00:00:00', '2023-07-20 00:00:00', 'http://localhost:8089/images/c314d104-67e0-4632-8406-d956ce4fd2da.jpg');
INSERT INTO `cars_info` VALUES (10, 7, '大衆', 6.00, '0.9', '2023-07-05 00:00:00', '2023-07-18 00:00:00', 'http://localhost:8089/images/8155d726-f034-4825-94ec-f5cd9b94e50d.jpg');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '通知id',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (4, '车险需知', '交强险\n\n全称是:“机动车交通事故责任强制保险”，凡是购买机动车，必须购买此保险。\n\n第三者责任险\n\n指被保险人或其允许的驾驶人员在使用保险车辆过程中发生意外事故，致使第三者遭受人身伤亡或财产直接损毁，依法应当由被保险人承担的经济责任，保险公司负责赔偿。', '2023-07-08 00:00:00');
INSERT INTO `notice` VALUES (5, '车险需知', '车辆损失险\n\n车辆损失险是车辆保险中用途最广泛的险种，它负责赔偿由于自然灾害和意外事故造成的自己车辆的损失。\n\n.机动车盗抢险\n\n被保险机动车由于被盗窃、抢劫、抢夺，经出险当地县级以上公安刑侦部门立案证明，满60天未查明下落的全车损失。', '2023-07-08 00:00:00');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` int NULL DEFAULT NULL COMMENT '父级菜单id',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限字段',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由name',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由path',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组件路径',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型(0 目录 1菜单，2按钮)',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图标',
  `parent_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上级菜单名称',
  `order_num` int NULL DEFAULT NULL COMMENT '序号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'sys:system', 'system', '/system', '', '0', 'Setting', '顶级菜单', 1, '2022-07-12 21:12:35', NULL);
INSERT INTO `sys_menu` VALUES (2, 1, '用户管理', 'sys:user', 'userList', '/userList', '/system/user/UserList', '1', 'UserFilled', '系统管理', 2, '2022-07-12 21:14:14', NULL);
INSERT INTO `sys_menu` VALUES (5, 2, '新增', 'sys:user:add', '', '', '', '2', '', '用户管理', 5, '2022-07-12 21:59:25', NULL);
INSERT INTO `sys_menu` VALUES (6, 2, '编辑', 'sys:user:edit', '', '', '', '2', '', '用户管理', 7, '2022-07-27 16:06:56', NULL);
INSERT INTO `sys_menu` VALUES (7, 1, '角色管理', 'sys:role', 'roleList', '/roleList', '/system/role/RoleList', '1', 'Wallet', '系统管理', 3, '2022-07-27 22:04:07', NULL);
INSERT INTO `sys_menu` VALUES (8, 7, '新增', 'sys:role:add', '', '', '', '2', '', '角色管理', 4, '2022-07-27 22:04:28', NULL);
INSERT INTO `sys_menu` VALUES (9, 7, '编辑', 'sys:role:edit', '', '', '', '2', '', '角色管理', 5, '2022-07-27 22:04:47', NULL);
INSERT INTO `sys_menu` VALUES (10, 7, '删除', 'sys:role:delete', '', '', '', '2', '', '角色管理', 6, '2022-07-27 22:05:06', NULL);
INSERT INTO `sys_menu` VALUES (11, 1, '菜单管理', 'sys:menu', 'menuList', '/menuList', '/system/menu/MenuList', '1', 'Menu', '系统管理', 8, '2022-07-27 22:05:55', NULL);
INSERT INTO `sys_menu` VALUES (12, 11, '新增', 'sys:menu:add', '', '', '', '2', '', '菜单管理', 9, '2022-07-27 22:06:15', NULL);
INSERT INTO `sys_menu` VALUES (13, 11, '编辑', 'sys:menu:edit', '', '', '', '2', '', '菜单管理', 10, '2022-07-27 22:06:36', NULL);
INSERT INTO `sys_menu` VALUES (14, 11, '删除', 'sys:menu:delete', '', '', '', '2', '', '菜单管理', 11, '2022-07-27 22:06:52', NULL);
INSERT INTO `sys_menu` VALUES (28, 0, '公告管理', 'sys:noticeRoot', 'noticeRoot', '/noticeRoot', '', '0', 'Wallet', '顶级菜单', 24, '2022-07-27 22:16:49', NULL);
INSERT INTO `sys_menu` VALUES (29, 28, '公告列表', 'sys:notice', 'notice', '/notice', '/notice/index', '1', 'UserFilled', '公告管理', 25, '2022-07-27 22:17:36', NULL);
INSERT INTO `sys_menu` VALUES (44, 0, '车辆管理', 'sys:carsRoot', 'carsRoot', '/cars', '', '0', 'Setting', '顶级菜单', 12, '2023-07-05 21:49:57', '2023-07-05 21:53:25');
INSERT INTO `sys_menu` VALUES (45, 44, '车辆类型', 'sys:carsType', 'carsType', '/carsType', '/goods/GoodsType', '1', 'Wallet', '车辆管理', 13, '2023-07-05 21:52:19', NULL);
INSERT INTO `sys_menu` VALUES (46, 44, '车辆信息', 'sys:carsInfo', 'carInfo', '/carsInfo', '/goods/GoodsList', '1', 'UserFilled', '车辆管理', 13, '2023-07-05 22:21:37', NULL);
INSERT INTO `sys_menu` VALUES (47, 0, '保险管理', 'sys:insurance', 'insurance', '/insurance', '', '0', 'Setting', '顶级菜单', 15, '2023-07-06 10:36:23', NULL);
INSERT INTO `sys_menu` VALUES (48, 47, '车险计算', 'sys:insuranceCal', 'insuranceCal', '/insuranceCal', '/insurance/insuranceCal', '1', 'Wallet', '保险管理', 16, '2023-07-06 10:38:58', '2023-07-06 10:46:32');
INSERT INTO `sys_menu` VALUES (49, 47, '保单明细', 'sys:insuranceDetail', 'insuranceDetail', '/insuranceDetail', '/insurance/insuranceDetail', '1', 'Lock', '保险管理', 17, '2023-07-06 15:40:49', NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (7, '用户', '用户', '2022-06-08 11:36:35', '2023-07-06 17:25:41');
INSERT INTO `sys_role` VALUES (8, '管理员', '管理员', '2022-07-12 10:13:38', NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_menu_id` int NOT NULL AUTO_INCREMENT COMMENT '角色菜单id',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` int NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (14, 8, 3);
INSERT INTO `sys_role_menu` VALUES (15, 8, 4);
INSERT INTO `sys_role_menu` VALUES (115, 7, 44);
INSERT INTO `sys_role_menu` VALUES (116, 7, 45);
INSERT INTO `sys_role_menu` VALUES (117, 7, 46);
INSERT INTO `sys_role_menu` VALUES (118, 7, 47);
INSERT INTO `sys_role_menu` VALUES (119, 7, 48);
INSERT INTO `sys_role_menu` VALUES (120, 7, 49);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录账户',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `is_admin` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否是超级管理员 1：是 0：否',
  `is_account_non_expired` tinyint NULL DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)',
  `is_account_non_locked` tinyint NULL DEFAULT NULL COMMENT '帐户是否被锁定(1 未锁定，0已锁定)',
  `is_credentials_non_expired` tinyint NULL DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)',
  `is_enabled` tinyint NULL DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '昵称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'zs001', '123', '16465465456', '46456', '1', NULL, 1, 1, 1, 0, '张三', NULL, NULL);
INSERT INTO `sys_user` VALUES (2, 'luyifan', '000000', '13615255675', '2667400744@qq.com', '0', NULL, 1, 1, 1, 1, '陆一凡', NULL, NULL);
INSERT INTO `sys_user` VALUES (7, '99999', '9999', '9999', '999', '0', NULL, 1, 1, 1, 1, '99990000', '2022-07-12 15:49:49', NULL);
INSERT INTO `sys_user` VALUES (9, 'admin', '123456', '145645646465', '16546665', '0', '1', 1, 1, 1, 1, 'admin', NULL, NULL);
INSERT INTO `sys_user` VALUES (12, 'fool', '123456', '111111', '', '0', NULL, 1, 1, 1, 1, 'fool', '2023-07-10 13:29:49', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_role_id` int NOT NULL AUTO_INCREMENT COMMENT '用户角色id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (26, 7, 7);
INSERT INTO `sys_user_role` VALUES (36, 2, 7);
INSERT INTO `sys_user_role` VALUES (39, 1, 7);
INSERT INTO `sys_user_role` VALUES (41, 12, 7);

SET FOREIGN_KEY_CHECKS = 1;
