/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MariaDB
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : test_coding

 Target Server Type    : MariaDB
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 02/07/2020 14:41:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 2, 'Food Menu', 'fa-cutlery', 'list/menu', '*', '2020-07-02 03:47:19', '2020-07-02 07:02:53');
INSERT INTO `admin_menu` VALUES (9, 0, 3, 'Order', 'fa-first-order', 'order', '*', '2020-07-02 04:24:06', '2020-07-02 04:24:56');
INSERT INTO `admin_menu` VALUES (10, 0, 4, 'Log History', 'fa-history', 'auth/logs', '*', '2020-07-02 06:45:10', '2020-07-02 06:45:16');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 238 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 03:36:12', '2020-07-02 03:36:12');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:36:23', '2020-07-02 03:36:23');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:36:32', '2020-07-02 03:36:32');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Food Menu\",\"icon\":\"fa-align-justify\",\"uri\":\"list\\/menu\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 03:47:19', '2020-07-02 03:47:19');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:19', '2020-07-02 03:47:19');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:26', '2020-07-02 03:47:26');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:35', '2020-07-02 03:47:35');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 03:47:38', '2020-07-02 03:47:38');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:38', '2020-07-02 03:47:38');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:39', '2020-07-02 03:47:39');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-07-02 03:47:44', '2020-07-02 03:47:44');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:47:45', '2020-07-02 03:47:45');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:47:49', '2020-07-02 03:47:49');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:47:51', '2020-07-02 03:47:51');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:48:05', '2020-07-02 03:48:05');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '[]', '2020-07-02 03:49:39', '2020-07-02 03:49:39');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '[]', '2020-07-02 03:49:40', '2020-07-02 03:49:40');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '[]', '2020-07-02 03:49:41', '2020-07-02 03:49:41');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '[]', '2020-07-02 03:50:07', '2020-07-02 03:50:07');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:50:15', '2020-07-02 03:50:15');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:50:21', '2020-07-02 03:50:21');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/list/menu', 'POST', '127.0.0.1', '{\"name\":\"Nasi Goreng\",\"st_ready\":\"on\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/list\\/menu\"}', '2020-07-02 03:52:15', '2020-07-02 03:52:15');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:52:16', '2020-07-02 03:52:16');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:52:52', '2020-07-02 03:52:52');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 03:52:54', '2020-07-02 03:52:54');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:55:16', '2020-07-02 03:55:16');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:58:43', '2020-07-02 03:58:43');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:58:48', '2020-07-02 03:58:48');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 03:59:43', '2020-07-02 03:59:43');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:00:27', '2020-07-02 04:00:27');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:01:20', '2020-07-02 04:01:20');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:01:47', '2020-07-02 04:01:47');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:02:29', '2020-07-02 04:02:29');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-07-02 04:03:55', '2020-07-02 04:03:55');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:04:02', '2020-07-02 04:04:02');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:04:05', '2020-07-02 04:04:05');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:04:10', '2020-07-02 04:04:10');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:04:33', '2020-07-02 04:04:33');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:04:54', '2020-07-02 04:04:54');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 04:05:24', '2020-07-02 04:05:24');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 04:05:39', '2020-07-02 04:05:39');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 04:05:55', '2020-07-02 04:05:55');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:06:00', '2020-07-02 04:06:00');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:23:05', '2020-07-02 04:23:05');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:23:10', '2020-07-02 04:23:10');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Order\",\"icon\":\"fa-first-order\",\"uri\":\"order\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 04:24:05', '2020-07-02 04:24:05');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:24:06', '2020-07-02 04:24:06');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-07-02 04:24:56', '2020-07-02 04:24:56');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:24:57', '2020-07-02 04:24:57');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-07-02 04:24:57', '2020-07-02 04:24:57');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:24:58', '2020-07-02 04:24:58');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:25:03', '2020-07-02 04:25:03');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:25:07', '2020-07-02 04:25:07');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:25:12', '2020-07-02 04:25:12');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 04:25:55', '2020-07-02 04:25:55');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:26:00', '2020-07-02 04:26:00');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:30:21', '2020-07-02 04:30:21');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:30:45', '2020-07-02 04:30:45');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:30:54', '2020-07-02 04:30:54');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:31:23', '2020-07-02 04:31:23');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:31:26', '2020-07-02 04:31:26');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:32:03', '2020-07-02 04:32:03');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:35:06', '2020-07-02 04:35:06');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:36:10', '2020-07-02 04:36:10');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:43:25', '2020-07-02 04:43:25');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:49:40', '2020-07-02 04:49:40');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/list/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:49:45', '2020-07-02 04:49:45');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/list/menu', 'POST', '127.0.0.1', '{\"name\":\"Mie Goreng\",\"st_ready\":\"on\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/list\\/menu\"}', '2020-07-02 04:50:01', '2020-07-02 04:50:01');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 04:50:02', '2020-07-02 04:50:02');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 04:50:12', '2020-07-02 04:50:12');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:50:20', '2020-07-02 04:50:20');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:50:28', '2020-07-02 04:50:28');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/order', 'POST', '127.0.0.1', '{\"nomor_pesanan\":\"ABC02072020-001\",\"nomor_meja\":\"2\",\"id_list_menu\":[\"1\",\"2\",null],\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 04:50:39', '2020-07-02 04:50:39');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-02 04:50:39', '2020-07-02 04:50:39');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/order', 'POST', '127.0.0.1', '{\"nomor_pesanan\":\"ABC02072020-001\",\"nomor_meja\":\"2\",\"id_list_menu\":[\"1\",\"2\",null],\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 04:52:37', '2020-07-02 04:52:37');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 04:52:38', '2020-07-02 04:52:38');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:11:31', '2020-07-02 05:11:31');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:11:41', '2020-07-02 05:11:41');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:11:47', '2020-07-02 05:11:47');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:14:32', '2020-07-02 05:14:32');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:53:01', '2020-07-02 05:53:01');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:53:26', '2020-07-02 05:53:26');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:53:41', '2020-07-02 05:53:41');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:54:24', '2020-07-02 05:54:24');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:54:44', '2020-07-02 05:54:44');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:55:18', '2020-07-02 05:55:18');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:55:59', '2020-07-02 05:55:59');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:56:44', '2020-07-02 05:56:44');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:57:28', '2020-07-02 05:57:28');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:58:20', '2020-07-02 05:58:20');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 05:58:31', '2020-07-02 05:58:31');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:58:53', '2020-07-02 05:58:53');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:59:19', '2020-07-02 05:59:19');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/order/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:59:35', '2020-07-02 05:59:35');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:59:41', '2020-07-02 05:59:41');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/order/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 05:59:46', '2020-07-02 05:59:46');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/order/1', 'GET', '127.0.0.1', '[]', '2020-07-02 05:59:46', '2020-07-02 05:59:46');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/order/1', 'GET', '127.0.0.1', '[]', '2020-07-02 06:00:29', '2020-07-02 06:00:29');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/order/1', 'GET', '127.0.0.1', '[]', '2020-07-02 06:03:41', '2020-07-02 06:03:41');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/order/1', 'GET', '127.0.0.1', '[]', '2020-07-02 06:06:00', '2020-07-02 06:06:00');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:06:07', '2020-07-02 06:06:07');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:08:41', '2020-07-02 06:08:41');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:09:03', '2020-07-02 06:09:03');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:10:00', '2020-07-02 06:10:00');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:10:16', '2020-07-02 06:10:16');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:10:51', '2020-07-02 06:10:51');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:11:05', '2020-07-02 06:11:05');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:12:45', '2020-07-02 06:12:45');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:13:45', '2020-07-02 06:13:45');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:15:07', '2020-07-02 06:15:07');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:15:23', '2020-07-02 06:15:23');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:15:34', '2020-07-02 06:15:34');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:18:02', '2020-07-02 06:18:02');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:18:27', '2020-07-02 06:18:27');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:18:38', '2020-07-02 06:18:38');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:19:35', '2020-07-02 06:19:35');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:19:37', '2020-07-02 06:19:37');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:20:24', '2020-07-02 06:20:24');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:21:08', '2020-07-02 06:21:08');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:21:51', '2020-07-02 06:21:51');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:22:11', '2020-07-02 06:22:11');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:22:28', '2020-07-02 06:22:28');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:22:40', '2020-07-02 06:22:40');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:24:20', '2020-07-02 06:24:20');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:24:25', '2020-07-02 06:24:25');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:24:32', '2020-07-02 06:24:32');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:24:52', '2020-07-02 06:24:52');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:26:45', '2020-07-02 06:26:45');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:27:56', '2020-07-02 06:27:56');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:28:00', '2020-07-02 06:28:00');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:28:01', '2020-07-02 06:28:01');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:28:05', '2020-07-02 06:28:05');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:28:16', '2020-07-02 06:28:16');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:35:26', '2020-07-02 06:35:26');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:35:46', '2020-07-02 06:35:46');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:35:48', '2020-07-02 06:35:48');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:35:58', '2020-07-02 06:35:58');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:39:29', '2020-07-02 06:39:29');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:39:40', '2020-07-02 06:39:40');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"kasir\",\"name\":\"Kasir\",\"password\":\"kasir\",\"password_confirmation\":\"kasir\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-07-02 06:40:20', '2020-07-02 06:40:20');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-07-02 06:40:20', '2020-07-02 06:40:20');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"pelayan\",\"name\":\"Pelayan\",\"password\":\"pelayan\",\"password_confirmation\":\"pelayan\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:40:41', '2020-07-02 06:40:41');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-07-02 06:40:42', '2020-07-02 06:40:42');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:41:14', '2020-07-02 06:41:14');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/menu/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:41:19', '2020-07-02 06:41:19');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:41:19', '2020-07-02 06:41:19');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/menu/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:41:29', '2020-07-02 06:41:29');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:41:30', '2020-07-02 06:41:30');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/auth/menu/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:41:34', '2020-07-02 06:41:34');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:41:35', '2020-07-02 06:41:35');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/auth/menu/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:41:45', '2020-07-02 06:41:45');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:41:45', '2020-07-02 06:41:45');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/auth/menu/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:42:00', '2020-07-02 06:42:00');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:42:01', '2020-07-02 06:42:01');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:42:08', '2020-07-02 06:42:08');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:42:11', '2020-07-02 06:42:11');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 06:42:13', '2020-07-02 06:42:13');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 06:42:18', '2020-07-02 06:42:18');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 06:42:38', '2020-07-02 06:42:38');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 06:43:31', '2020-07-02 06:43:31');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 06:44:38', '2020-07-02 06:44:38');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Log History\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\"}', '2020-07-02 06:45:10', '2020-07-02 06:45:10');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 06:45:11', '2020-07-02 06:45:11');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YTnm8puHRa7V8vB3Al23aT7tDLSg4y26CIA83qBh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]\"}', '2020-07-02 06:45:16', '2020-07-02 06:45:16');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:45:17', '2020-07-02 06:45:17');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 06:45:20', '2020-07-02 06:45:20');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:47:40', '2020-07-02 06:47:40');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 06:47:56', '2020-07-02 06:47:56');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:48:02', '2020-07-02 06:48:02');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:48:06', '2020-07-02 06:48:06');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:48:08', '2020-07-02 06:48:08');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:49:12', '2020-07-02 06:49:12');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/order/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:49:18', '2020-07-02 06:49:18');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:49:19', '2020-07-02 06:49:19');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/order/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:49:29', '2020-07-02 06:49:29');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:49:35', '2020-07-02 06:49:35');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:53:13', '2020-07-02 06:53:13');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:53:46', '2020-07-02 06:53:46');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 06:59:08', '2020-07-02 06:59:08');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-02 06:59:19', '2020-07-02 06:59:19');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:00:43', '2020-07-02 07:00:43');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"nomor_pesanan\":\"ABVV\"}', '2020-07-02 07:00:50', '2020-07-02 07:00:50');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"nomor_pesanan\":\"ABC\"}', '2020-07-02 07:00:55', '2020-07-02 07:00:55');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:00:56', '2020-07-02 07:00:56');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:01:59', '2020-07-02 07:01:59');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 07:02:37', '2020-07-02 07:02:37');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:02:43', '2020-07-02 07:02:43');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Food Menu\",\"icon\":\"fa-cutlery\",\"uri\":\"list\\/menu\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UoTG3a2YWnFUyKTo0qdsQ7VD3REEbKSMPcW7Mnel\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-07-02 07:02:53', '2020-07-02 07:02:53');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 07:02:54', '2020-07-02 07:02:54');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 07:02:59', '2020-07-02 07:02:59');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:03:01', '2020-07-02 07:03:01');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:06', '2020-07-02 07:08:06');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/list/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:16', '2020-07-02 07:08:16');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:21', '2020-07-02 07:08:21');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:27', '2020-07-02 07:08:27');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:32', '2020-07-02 07:08:32');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/list/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:08:48', '2020-07-02 07:08:48');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:10:41', '2020-07-02 07:10:41');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:10:45', '2020-07-02 07:10:45');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:10:55', '2020-07-02 07:10:55');
INSERT INTO `admin_operation_log` VALUES (201, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 07:11:01', '2020-07-02 07:11:01');
INSERT INTO `admin_operation_log` VALUES (202, 2, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:11:05', '2020-07-02 07:11:05');
INSERT INTO `admin_operation_log` VALUES (203, 2, 'admin/list/menu', 'GET', '127.0.0.1', '[]', '2020-07-02 07:12:00', '2020-07-02 07:12:00');
INSERT INTO `admin_operation_log` VALUES (204, 2, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:12:11', '2020-07-02 07:12:11');
INSERT INTO `admin_operation_log` VALUES (205, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:12:16', '2020-07-02 07:12:16');
INSERT INTO `admin_operation_log` VALUES (206, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 07:12:22', '2020-07-02 07:12:22');
INSERT INTO `admin_operation_log` VALUES (207, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 07:12:28', '2020-07-02 07:12:28');
INSERT INTO `admin_operation_log` VALUES (208, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:12:37', '2020-07-02 07:12:37');
INSERT INTO `admin_operation_log` VALUES (209, 3, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:13:43', '2020-07-02 07:13:43');
INSERT INTO `admin_operation_log` VALUES (210, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:13:47', '2020-07-02 07:13:47');
INSERT INTO `admin_operation_log` VALUES (211, 3, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:13:52', '2020-07-02 07:13:52');
INSERT INTO `admin_operation_log` VALUES (212, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:14:52', '2020-07-02 07:14:52');
INSERT INTO `admin_operation_log` VALUES (213, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:15:07', '2020-07-02 07:15:07');
INSERT INTO `admin_operation_log` VALUES (214, 3, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:20:55', '2020-07-02 07:20:55');
INSERT INTO `admin_operation_log` VALUES (215, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:21:00', '2020-07-02 07:21:00');
INSERT INTO `admin_operation_log` VALUES (216, 3, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:21:04', '2020-07-02 07:21:04');
INSERT INTO `admin_operation_log` VALUES (217, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:21:09', '2020-07-02 07:21:09');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-02 07:21:35', '2020-07-02 07:21:35');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:27:24', '2020-07-02 07:27:24');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/list/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:27:28', '2020-07-02 07:27:28');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:27:32', '2020-07-02 07:27:32');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:27:36', '2020-07-02 07:27:36');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 07:29:07', '2020-07-02 07:29:07');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 07:29:39', '2020-07-02 07:29:39');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 07:30:02', '2020-07-02 07:30:02');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:30:12', '2020-07-02 07:30:12');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/list/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:30:16', '2020-07-02 07:30:16');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:31:44', '2020-07-02 07:31:44');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:31:48', '2020-07-02 07:31:48');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/list/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-07-02 07:31:52', '2020-07-02 07:31:52');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:32:11', '2020-07-02 07:32:11');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/list/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:32:58', '2020-07-02 07:32:58');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/list/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:33:42', '2020-07-02 07:33:42');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/list/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:33:51', '2020-07-02 07:33:51');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:34:00', '2020-07-02 07:34:00');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:36:08', '2020-07-02 07:36:08');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/list/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-02 07:36:12', '2020-07-02 07:36:12');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (1, 3, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-07-02 03:33:20', '2020-07-02 03:33:20');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
INSERT INTO `admin_user_permissions` VALUES (2, 1, NULL, NULL);
INSERT INTO `admin_user_permissions` VALUES (3, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `role` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$Zzsdj3uq5G4JCW2DC8.a3Oo1SLGdESCxBwbGrNI6dvXQtZRsl96YG', 'Administrator', NULL, '0Ot9yk3NLrIHXPenhzTjmOock6ZGwvKP2RlPuUUHjpYX0e4JjKJZagSKdNxW', '2020-07-02 03:33:19', '2020-07-02 03:33:19', 0);
INSERT INTO `admin_users` VALUES (2, 'kasir', '$2y$10$6OxGZCU7PfGRWS5jh7u2E.MDGOr6cz/pzztZbTo7c6S8aB44acP3O', 'Kasir', NULL, '5W7wLInwZekwOdDmTsZD9PeKfrpmjufpxdjUrQVFLDMYXaudVB4AgXfgsvfT', '2020-07-02 06:40:20', '2020-07-02 06:40:20', 1);
INSERT INTO `admin_users` VALUES (3, 'pelayan', '$2y$10$OJ3vzL.tYwforuQlOO4Y/u4vwV9a1i9NEQHXbwiNYJy9ou2aP8vkW', 'Pelayan', NULL, 'rT1RQLDPhESCQKV7W7M5RBoyLcWpmSDR7gTho6gQLl3rEb3HCwyn11SD7JWL', '2020-07-02 06:40:42', '2020-07-02 06:40:42', 2);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for list_menu
-- ----------------------------
DROP TABLE IF EXISTS `list_menu`;
CREATE TABLE `list_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_ready` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_menu
-- ----------------------------
INSERT INTO `list_menu` VALUES (1, 'Nasi Goreng', 'images/Nasi_goreng.jpg', 1, '2020-07-02 03:52:16', '2020-07-02 03:52:16');
INSERT INTO `list_menu` VALUES (2, 'Mie Goreng', 'images/MieGoreng.jpg', 1, '2020-07-02 04:50:02', '2020-07-02 04:50:02');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_07_02_033929_create_table_list_menu', 2);
INSERT INTO `migrations` VALUES (5, '2020_07_02_041728_create_table_order', 3);

-- ----------------------------
-- Table structure for table_order
-- ----------------------------
DROP TABLE IF EXISTS `table_order`;
CREATE TABLE `table_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor_pesanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_meja` int(11) NOT NULL,
  `st_order` tinyint(1) NULL DEFAULT 0,
  `id_list_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_order
-- ----------------------------
INSERT INTO `table_order` VALUES (1, 'ABC02072020-001', 2, 0, '[\"1\",\"2\"]', '2020-07-02 04:52:38', '2020-07-02 06:35:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
