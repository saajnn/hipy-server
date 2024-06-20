/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 100318
 Source Host           : localhost:3306
 Source Schema         : hipy

 Target Server Type    : MySQL
 Target Server Version : 100318
 File Encoding         : 65001

 Date: 20/06/2024 11:26:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_config_settings
-- ----------------------------
DROP TABLE IF EXISTS `t_config_settings`;
CREATE TABLE `t_config_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '参数名称',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参数键名',
  `value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参数键值',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态 0: 正常  1:停用',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ix_t_config_settings_name`(`name`) USING BTREE,
  INDEX `ix_t_config_settings_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_config_settings
-- ----------------------------
INSERT INTO `t_config_settings` VALUES (1, '2022-11-13 02:47:53', 0, '2022-11-13 02:47:53', 0, 0, '用户初始角色', 'user_init_roles', 'general', '0', 0, 1);
INSERT INTO `t_config_settings` VALUES (2, '2023-12-04 22:13:09', 1, '2023-12-09 12:29:32', 1, 0, '数据库升级密码', 'database_update_auth', 'hjdhnx', '默认密码hjdhnx', 0, 2);
INSERT INTO `t_config_settings` VALUES (4, '2023-12-09 12:53:44', 0, '2024-01-02 22:14:43', 1, 0, '登录日志记录验证码错误', 'log_captcha_error', '0', '0/false不记录 1/true记录', 0, 4);
INSERT INTO `t_config_settings` VALUES (5, '2023-12-10 16:19:44', 1, '2023-12-10 16:20:17', 1, 1, '定时任务启动状态', 'sys_job_status', '0', '0 暂停 1 运行', 0, 12);
INSERT INTO `t_config_settings` VALUES (6, '2024-01-02 22:10:13', 1, '2024-01-02 22:14:30', 1, 0, '用户初始密码', 'default_password', '123456', '用户表导入的时候按这个密码创建用户记录', 0, 1);
INSERT INTO `t_config_settings` VALUES (3, '2023-12-04 23:04:31', 1, '2024-01-31 15:52:15', 1, 0, '登录需要验证码', 'login_with_captcha', 'no', 'yes 开启 no 关闭', 0, 3);

-- ----------------------------
-- Table structure for t_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_data`;
CREATE TABLE `t_dict_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `dict_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '字典类型',
  `dict_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典名称',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态 0: 正常  1:停用',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ix_t_dict_data_dict_type`(`dict_type`) USING BTREE,
  INDEX `ix_t_dict_data_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict_data
-- ----------------------------
INSERT INTO `t_dict_data` VALUES (1, '2022-11-13 02:49:40', 0, '2022-11-13 02:49:40', 0, 0, 'permission_user_sex', '用户性别', '(0: 未知; 1: 男; 2: 女)', 0, 1);
INSERT INTO `t_dict_data` VALUES (2, '2022-11-13 02:49:40', 0, '2022-11-13 02:49:40', 0, 0, 'com_default_status', '通用状态字典', '(0: 正常; 1: 停用)', 0, 2);
INSERT INTO `t_dict_data` VALUES (3, '2022-11-13 02:49:40', 0, '2023-12-02 15:40:02', 1, 0, 'permission_user_status', '用户状态', NULL, 0, 1);
INSERT INTO `t_dict_data` VALUES (4, '2023-12-04 19:53:00', 1, '2023-12-04 19:57:21', 1, 0, 'hiker_rule_data_type', '海阔视界规则数据类型', '[(\'home_rule_url\', \'首页云规则\'), (\'publish\', \'提交云仓库\'), (\'js_url\', \'网页插件\'),(\'html\',\'静态页面\'),(\'config\',\'主页配置\')]', 0, 3);
INSERT INTO `t_dict_data` VALUES (5, '2023-12-10 16:20:45', 1, '2023-12-10 16:20:45', 0, 0, 'sys_job_group', '定时任务分组', NULL, 0, 4);
INSERT INTO `t_dict_data` VALUES (6, '2023-12-10 16:21:01', 1, '2023-12-10 16:21:01', 0, 0, 'sys_job_status', '定时任务运行状态', NULL, 0, 5);
INSERT INTO `t_dict_data` VALUES (7, '2024-01-06 12:05:26', 1, '2024-01-06 12:05:26', 0, 0, 'sys_job_run_status', '定时任务调度状态', '1 正常 0 失败', 0, 7);
INSERT INTO `t_dict_data` VALUES (9, '2024-01-15 15:48:43', 1, '2024-01-15 15:48:43', 0, 0, 'vod_rule_group', 'hipy源分组', 'groups = {\n        \'hipy\': \'t4/spiders\',\n        \'drpy_js\': \'t4/files/drpy_js\',\n        \'json\': \'t4/files/json\',\n        \'m3u\': \'t4/files/m3u\',\n        \'txt\': \'t4/files/txt\',\n    }', 0, 8);
INSERT INTO `t_dict_data` VALUES (10, '2024-01-15 16:23:43', 1, '2024-01-15 16:23:43', 0, 0, 'vod_rule_status', '源状态', '1正常 0异常', 0, 9);
INSERT INTO `t_dict_data` VALUES (11, '2024-01-25 14:00:03', 1, '2024-01-25 14:00:03', 0, 0, 'vod_configs_value_type', 'hipy配置值类型', 'str:字符串，int:数字', 0, 11);

-- ----------------------------
-- Table structure for t_dict_details
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_details`;
CREATE TABLE `t_dict_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `dict_label` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '字典标签',
  `dict_disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `dict_value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '字典键值',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否默认值',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态 0: 正常  1:停用',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `dict_data_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dict_data_id`(`dict_data_id`) USING BTREE,
  INDEX `ix_t_dict_details_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict_details
-- ----------------------------
INSERT INTO `t_dict_details` VALUES (1, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '未知', 0, '0', NULL, 1, 0, 1, 1);
INSERT INTO `t_dict_details` VALUES (2, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '男', 0, '1', NULL, 0, 0, 2, 1);
INSERT INTO `t_dict_details` VALUES (3, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '女', 0, '2', NULL, 0, 0, 3, 1);
INSERT INTO `t_dict_details` VALUES (4, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '正常', 0, '0', NULL, 1, 0, 0, 2);
INSERT INTO `t_dict_details` VALUES (5, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '停用', 0, '1', NULL, 0, 0, 1, 2);
INSERT INTO `t_dict_details` VALUES (6, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '正常', 0, '0', NULL, 1, 0, 1, 3);
INSERT INTO `t_dict_details` VALUES (7, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '停用', 0, '1', NULL, 0, 0, 2, 3);
INSERT INTO `t_dict_details` VALUES (8, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '拉黑', 0, '2', NULL, 0, 0, 3, 3);
INSERT INTO `t_dict_details` VALUES (9, '2023-12-04 19:53:35', 1, '2023-12-04 19:53:35', 0, 0, '首页云规则', 0, 'home_rule_url', NULL, 1, 0, 1, 4);
INSERT INTO `t_dict_details` VALUES (10, '2023-12-04 19:53:56', 1, '2023-12-04 19:58:52', 1, 0, '提交云仓库', 1, 'publish', NULL, 0, 0, 2, 4);
INSERT INTO `t_dict_details` VALUES (11, '2023-12-04 19:54:20', 1, '2023-12-04 19:54:20', 0, 0, '网页插件', 0, 'js_url', NULL, 0, 0, 3, 4);
INSERT INTO `t_dict_details` VALUES (12, '2023-12-04 19:54:35', 1, '2023-12-04 19:54:35', 0, 0, '静态页面', 0, 'html', NULL, 0, 0, 4, 4);
INSERT INTO `t_dict_details` VALUES (13, '2023-12-04 19:54:53', 1, '2023-12-04 19:54:53', 0, 0, '主页配置', 0, 'config', NULL, 0, 0, 5, 4);
INSERT INTO `t_dict_details` VALUES (14, '2023-12-10 16:21:16', 1, '2023-12-10 16:21:29', 1, 0, '暂停', 0, '0', NULL, 1, 0, 1, 6);
INSERT INTO `t_dict_details` VALUES (15, '2023-12-10 16:21:22', 1, '2023-12-10 16:21:22', 0, 0, '启动', 0, '1', NULL, 0, 0, 2, 6);
INSERT INTO `t_dict_details` VALUES (16, '2023-12-10 16:22:10', 1, '2023-12-10 16:22:43', 1, 0, '单次', 0, 'setTimeout', NULL, 0, 0, 1, 5);
INSERT INTO `t_dict_details` VALUES (17, '2023-12-10 16:22:31', 1, '2023-12-10 16:22:58', 1, 0, '循环', 0, 'setInterval', NULL, 1, 0, 2, 5);
INSERT INTO `t_dict_details` VALUES (18, '2024-01-06 12:05:43', 1, '2024-01-06 12:05:43', 0, 0, '失败', 0, '0', NULL, 0, 0, 1, 7);
INSERT INTO `t_dict_details` VALUES (19, '2024-01-06 12:05:52', 1, '2024-01-06 12:05:52', 0, 0, '正常', 0, '1', NULL, 1, 0, 2, 7);
INSERT INTO `t_dict_details` VALUES (22, '2024-01-15 15:50:29', 1, '2024-01-15 15:50:29', 0, 0, 'drpy_js', 0, 't4/files/drpy_js', 'drpy的js源放这个分组', 0, 0, 2, 9);
INSERT INTO `t_dict_details` VALUES (21, '2024-01-15 15:49:54', 1, '2024-01-15 15:50:43', 1, 0, 'hipy', 0, 't4/spiders', 'hipy的py源放这个分组。可以放同名的json配置文件', 1, 0, 1, 9);
INSERT INTO `t_dict_details` VALUES (25, '2024-01-15 15:52:54', 1, '2024-01-15 15:52:54', 0, 0, 'txt', 0, 't4/files/txt', '一些静态文本文件', 0, 0, 5, 9);
INSERT INTO `t_dict_details` VALUES (26, '2024-01-15 16:23:54', 1, '2024-01-15 16:23:54', 0, 0, '正常', 0, '1', NULL, 0, 0, 1, 10);
INSERT INTO `t_dict_details` VALUES (28, '2024-01-25 12:15:39', 1, '2024-01-25 12:16:21', 1, 0, 'drpy_libs', 0, 't4/files/drpy_libs', 'drpy的依赖库放这个分组', 0, 0, 3, 9);
INSERT INTO `t_dict_details` VALUES (23, '2024-01-15 15:51:53', 1, '2024-01-25 12:16:26', 1, 0, 'json', 0, 't4/files/json', '无关大雅的json放这个位置', 0, 0, 4, 9);
INSERT INTO `t_dict_details` VALUES (24, '2024-01-15 15:52:19', 1, '2024-01-25 12:16:45', 1, 0, 'm3u', 0, 't4/files/m3u', '一些m3u直播类文件', 0, 0, 6, 9);
INSERT INTO `t_dict_details` VALUES (29, '2024-01-25 14:00:21', 1, '2024-01-25 14:00:26', 1, 0, '字符串', 0, 'str', NULL, 1, 0, 1, 11);
INSERT INTO `t_dict_details` VALUES (30, '2024-01-25 14:00:36', 1, '2024-01-25 14:00:36', 0, 0, '数字', 0, 'int', NULL, 0, 0, 2, 11);
INSERT INTO `t_dict_details` VALUES (32, '2024-01-31 15:36:10', 1, '2024-01-31 15:36:10', 0, 0, '链接', 0, 'url', NULL, 0, 0, 4, 11);
INSERT INTO `t_dict_details` VALUES (31, '2024-01-31 15:00:08', 1, '2024-01-31 15:45:49', 1, 0, '文件', 0, 'file', NULL, 0, 0, 3, 11);
INSERT INTO `t_dict_details` VALUES (33, '2024-02-02 17:33:55', 1, '2024-02-02 17:33:55', 0, 0, '数据集', 0, 'json', NULL, 0, 0, 5, 11);
INSERT INTO `t_dict_details` VALUES (27, '2024-01-15 16:24:01', 1, '2024-02-04 17:13:14', 1, 0, '禁用', 0, '0', NULL, 0, 0, 2, 10);
INSERT INTO `t_dict_details` VALUES (35, '2024-02-04 17:14:42', 1, '2024-02-05 09:55:00', 1, 0, 'js_parse_api', 0, 't4/files/js_parse_api', 'js实现的vip解析接口文件', 0, 0, 8, 9);
INSERT INTO `t_dict_details` VALUES (34, '2024-02-04 17:14:13', 1, '2024-02-05 09:55:21', 1, 0, 'jar', 0, 't4/files/jar', 'drpy2及tvbox配置需要的外挂jar', 0, 0, 7, 9);
INSERT INTO `t_dict_details` VALUES (36, '2024-03-08 15:50:48', 1, '2024-03-08 15:50:48', 0, 0, 'drpy3_libs', 0, 't4/files/drpy3_libs', 'drpy3的t4源需要的js依赖文件及模块,commonJS格式', 0, 0, 9, 9);
INSERT INTO `t_dict_details` VALUES (37, '2024-03-08 15:51:32', 1, '2024-03-08 15:51:32', 0, 0, 'drpy3_js', 0, 't4/files/drpy3_js', 'drpy3的t4源在运行过程中自动缓存线上文件到此目录', 0, 0, 10, 9);

-- ----------------------------
-- Table structure for t_hiker_developer
-- ----------------------------
DROP TABLE IF EXISTS `t_hiker_developer`;
CREATE TABLE `t_hiker_developer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '开发者账号',
  `qq` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'QQ号',
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '123456' COMMENT '开发者密码',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `is_manager` tinyint(1) NULL DEFAULT 0 COMMENT '是否超管',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `test` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '测试字段',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_hiker_developer_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hiker_developer
-- ----------------------------
INSERT INTO `t_hiker_developer` VALUES (1, '2023-12-02 18:00:37', 1, '2023-12-09 16:55:06', 1, 0, '道长', '434857005', '123456789', 0, 0, 1, NULL);

-- ----------------------------
-- Table structure for t_hiker_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_hiker_rule`;
CREATE TABLE `t_hiker_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规则名称',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '规则类型',
  `dev_id` int(11) NULL DEFAULT NULL COMMENT '开发者',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '规则Json',
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `state` int(11) NULL DEFAULT 0 COMMENT '状态',
  `auth` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '私有密码',
  `auth_date_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '私有密码过期时间',
  `time_over` tinyint(1) NULL DEFAULT 0 COMMENT '私有规则过期',
  `b64_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '64编码',
  `home_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规则主页链接',
  `pic_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网站图标链接',
  `is_json` tinyint(1) NULL DEFAULT 1 COMMENT '是否json值',
  `is_redirect` tinyint(1) NULL DEFAULT 0 COMMENT '是否为后端重定向',
  `is_tap` tinyint(1) NULL DEFAULT 0 COMMENT '是否为仓库跳转规则',
  `can_discuss` tinyint(1) NULL DEFAULT 1 COMMENT '是否可以互动',
  `is_json_list` tinyint(1) NULL DEFAULT 0 COMMENT '是否json列表',
  `data_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'home_rule_url' COMMENT '数据类型',
  `version` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '版本号',
  `author` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作者',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '说明',
  `good_num` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  `bad_num` int(11) NULL DEFAULT 0 COMMENT '踩数',
  `reply_num` int(11) NULL DEFAULT 0 COMMENT '回复数',
  `is_safe` tinyint(1) NULL DEFAULT 1 COMMENT '是否安全',
  `is_good` tinyint(1) NULL DEFAULT 0 COMMENT '是否优质',
  `is_white` tinyint(1) NULL DEFAULT 0 COMMENT '是否白名单',
  `not_safe_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险描述',
  `last_active` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '开发者上次提交时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  INDEX `dev_id`(`dev_id`) USING BTREE,
  INDEX `ix_t_hiker_rule_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hiker_rule
-- ----------------------------
INSERT INTO `t_hiker_rule` VALUES (1, '2023-12-04 20:00:34', 1, '2023-12-09 16:54:53', 1, 0, '道德经', 1, 1, '\"{\\\"name\\\":\\\"道德经\\\"}\"', 'hiker://empty#', 1, NULL, '2023-12-04 20:00:34', 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 'home_rule_url', '1', '道长', NULL, 1, 1, 1, 1, 1, 1, NULL, '2023-12-04 20:00:34');

-- ----------------------------
-- Table structure for t_hiker_rule_type
-- ----------------------------
DROP TABLE IF EXISTS `t_hiker_rule_type`;
CREATE TABLE `t_hiker_rule_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '分类名称',
  `count_num` int(11) NULL DEFAULT 0 COMMENT '数目',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_hiker_rule_type_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hiker_rule_type
-- ----------------------------
INSERT INTO `t_hiker_rule_type` VALUES (1, '2023-12-04 19:55:50', 1, '2023-12-09 16:55:14', 1, 0, '影视', 2, 1);
INSERT INTO `t_hiker_rule_type` VALUES (2, '2023-12-05 22:52:36', 1, '2023-12-09 16:55:12', 1, 0, '电影2', 3, 1);

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `job_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务代号',
  `job_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务组名',
  `func_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调用目标字符串',
  `func_args` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传入位置参数',
  `func_kwargs` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传入字典参数',
  `cron_model` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '执行模式',
  `coalesce` int(11) NULL DEFAULT 0 COMMENT '是否并发',
  `next_run` datetime(0) NULL DEFAULT NULL COMMENT '下次执行时间',
  `cron_expression` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `status` int(11) NULL DEFAULT 0 COMMENT '任务状态',
  `misfire_policy` int(11) NULL DEFAULT 0 COMMENT '执行策略',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_job_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES (1, '2023-12-10 21:31:19', 1, '2024-02-20 15:51:14', 1, 0, 'demo', '测试', 'setInterval', 'tasks.demo_task.demo', '[\'hello world\']', '{\'a\':\'1\',\'b\':\'2\'}', 'cron', 0, '2024-02-20 15:50:44', '30 20 * * * ?', 0, 1, 0);
INSERT INTO `t_job` VALUES (15, '2023-12-13 00:53:05', 1, '2024-02-20 15:51:14', 1, 0, 'kzz', '可转债打新查询', 'setInterval', 'tasks.kzz_spider.get_now_kzz', NULL, '{\'dayeExtra\':8}', 'cron', 0, '2024-02-20 15:50:44', '0 0 8 1/1 * ?', 0, 1, 0);
INSERT INTO `t_job` VALUES (14, '2023-12-13 00:26:59', 1, '2024-02-20 15:51:14', 1, 0, 'demo2', '测试2', 'setInterval', 'tasks.demo_task.demo', '[\'哈哈哈哈哈\']', '{\'key\':\'你好吗\'}', 'cron', 0, '2024-02-20 15:50:44', '30 10 * * * ?', 0, 1, 0);
INSERT INTO `t_job` VALUES (16, '2024-02-20 16:23:34', 1, '2024-06-20 11:19:15', 0, 0, 'tv_spider', 'tv源爬虫', 'setInterval', 'tasks.tv_spider.main', '[]', '{}', 'cron', 0, '2024-06-20 11:19:25', '0 0 0/4 * * ?', 1, 1, 1);

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `job_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务代号',
  `job_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务组名',
  `func_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调用目标字符串',
  `func_args` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传入位置参数',
  `func_kwargs` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传入字典参数',
  `run_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '正常日志信息',
  `run_except_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '异常日志信息',
  `run_status` int(11) NULL DEFAULT 0 COMMENT '执行状态',
  `run_time` datetime(0) NULL DEFAULT NULL COMMENT '执行时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_job_log_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_login_infor
-- ----------------------------
DROP TABLE IF EXISTS `t_login_infor`;
CREATE TABLE `t_login_infor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `user_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户名称',
  `ipaddr` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录地址',
  `login_location` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录地点',
  `browser` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '浏览器',
  `os` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作系统',
  `status` int(11) NULL DEFAULT 0 COMMENT '登录状态',
  `msg` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作信息',
  `login_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '登录日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_login_infor_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_infor
-- ----------------------------

-- ----------------------------
-- Table structure for t_menus
-- ----------------------------
DROP TABLE IF EXISTS `t_menus`;
CREATE TABLE `t_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '路由',
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '组件',
  `is_frame` tinyint(1) NULL DEFAULT 0 COMMENT '是否外链',
  `hidden` tinyint(1) NULL DEFAULT 0 COMMENT '是否隐藏',
  `status` int(11) NULL DEFAULT 0 COMMENT '菜单状态',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示排序',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '唯一标识用于页面缓存，否则keep-alive会出问题',
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '标题',
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '图标',
  `no_cache` tinyint(1) NULL DEFAULT 0 COMMENT '是否缓存',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级菜单',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_menus_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menus
-- ----------------------------
INSERT INTO `t_menus` VALUES (1, '2022-07-14 03:56:19', 0, '2022-07-19 15:40:51', 0, 0, 'role', '/permission/role/index', 0, 0, 0, 3, 'PermissionRole', '角色管理', 'peoples', 1, 7);
INSERT INTO `t_menus` VALUES (2, '2022-07-14 03:56:19', 0, '2022-07-20 10:25:17', 0, 0, '/system', '', 0, 0, 0, 2, '', '系统管理', 'system', 0, 0);
INSERT INTO `t_menus` VALUES (3, '2022-07-14 03:56:19', 0, '2022-07-19 16:03:40', 0, 0, 'menu', '/permission/menu/index', 0, 0, 0, 2, 'PermissionMenu', '菜单管理', 'tree-table', 0, 7);
INSERT INTO `t_menus` VALUES (4, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'dict', '/system/dict/index', 0, 0, 0, 4, 'SystemDictType', '字典管理', 'dict', 0, 2);
INSERT INTO `t_menus` VALUES (5, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'parameter', '/system/parameter/index', 0, 0, 0, 3, 'SystemParameter', '参数管理', 'tree', 0, 2);
INSERT INTO `t_menus` VALUES (6, '2022-07-14 03:56:19', 0, '2022-07-19 16:03:33', 0, 0, 'user', '/permission/user/index', 0, 0, 0, 1, 'PermissionUser', '用户管理', 'user', 0, 7);
INSERT INTO `t_menus` VALUES (7, '2022-07-14 03:56:19', 0, '2022-07-20 10:25:24', 0, 0, '/permission', '', 0, 0, 0, 1, '', '权限管理', 'monitor', 0, 0);
INSERT INTO `t_menus` VALUES (8, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'dict/detail/:id(\\d+)', '/system/dict/detail/index', 0, 1, 0, 1, 'SystemDictDetail', '字典参数', 'dashboard', 0, 2);
INSERT INTO `t_menus` VALUES (9, '2022-10-29 23:57:16', 0, '2022-10-29 23:57:16', 0, 0, 'label', '/permission/label/index', 0, 0, 0, 4, 'PermissionLabel', '权限标签', 'icon', 1, 7);
INSERT INTO `t_menus` VALUES (11, '2023-12-02 18:06:51', 0, '2023-12-07 22:10:46', 1, 0, 'developer', '/hiker/developer/index', 0, 0, 0, 1, 'HikerDeveloper', '开发者', 'peoples', 1, 10);
INSERT INTO `t_menus` VALUES (10, '2023-12-02 18:05:43', 0, '2023-12-02 18:05:43', 0, 0, '/hiker', '', 0, 0, 0, 3, '', '海阔视界', 'international', 1, 0);
INSERT INTO `t_menus` VALUES (12, '2023-12-02 23:23:55', 1, '2023-12-07 22:10:55', 1, 0, 'rule_type', '/hiker/rule_type/index', 0, 0, 0, 2, 'HikerRuleType', '规则类型', 'component', 1, 10);
INSERT INTO `t_menus` VALUES (13, '2023-12-03 19:03:50', 1, '2023-12-07 22:11:07', 1, 0, 'rule', '/hiker/rule/index', 0, 0, 0, 3, 'HikerRule', '规则', 'list', 1, 10);
INSERT INTO `t_menus` VALUES (14, '2023-12-04 21:49:25', 1, '2023-12-04 21:49:25', 0, 0, 'control_panel', '/control_panel/index', 0, 0, 0, 4, 'ControlPanel', '控制面板', 'swagger', 1, 2);
INSERT INTO `t_menus` VALUES (15, '2023-12-05 08:49:37', 1, '2023-12-05 08:50:03', 1, 0, '/tool', '', 0, 0, 0, 4, '', '工具', 'bug', 1, 0);
INSERT INTO `t_menus` VALUES (16, '2023-12-05 08:51:06', 1, '2023-12-05 08:52:00', 1, 0, 'swagger', '/tool/swagger/index', 0, 0, 0, 1, 'Swagger', 'swagger', 'swagger', 1, 15);
INSERT INTO `t_menus` VALUES (17, '2023-12-05 09:08:13', 1, '2023-12-06 22:50:59', 1, 0, '/monitor', '', 0, 0, 0, 4, '', '系统监控', 'monitor', 1, 0);
INSERT INTO `t_menus` VALUES (18, '2023-12-05 09:09:57', 1, '2023-12-07 00:03:28', 1, 0, 'job', '/monitor/job/index', 0, 0, 0, 2, 'Job', '定时任务', 'time-range', 1, 17);
INSERT INTO `t_menus` VALUES (19, '2023-12-05 09:11:12', 1, '2023-12-07 00:03:23', 1, 0, 'server', '/monitor/server/index', 0, 0, 0, 1, 'Server', '服务监控', 'server', 1, 17);
INSERT INTO `t_menus` VALUES (20, '2023-12-06 22:49:09', 1, '2023-12-06 22:49:09', 0, 0, 'blog', '/tool/blog/index', 0, 0, 0, 2, 'Blog', '博客', 'log', 1, 15);
INSERT INTO `t_menus` VALUES (21, '2023-12-06 22:53:25', 1, '2023-12-15 00:17:28', 1, 0, 'online', '/monitor/online/index', 0, 1, 0, 6, 'Online', '在线用户', 'online', 1, 17);
INSERT INTO `t_menus` VALUES (22, '2023-12-06 22:55:02', 1, '2023-12-15 00:17:17', 1, 0, 'cache', ' /monitor/cache/index', 0, 1, 0, 5, '', '缓存监控', 'redis', 1, 17);
INSERT INTO `t_menus` VALUES (23, '2023-12-06 22:56:00', 1, '2023-12-15 00:17:23', 1, 0, 'cacheList', '/monitor/cache/list', 0, 0, 0, 5, 'cacheList', '缓存列表', 'redis-list', 1, 17);
INSERT INTO `t_menus` VALUES (24, '2023-12-06 23:22:16', 1, '2023-12-06 23:22:16', 0, 0, 'icons', '/components/icons/index', 0, 0, 0, 3, 'Icons', '图标组件', 'icon', 1, 15);
INSERT INTO `t_menus` VALUES (25, '2023-12-06 23:33:18', 1, '2023-12-06 23:37:20', 1, 0, 'build', '/tool/build/index', 0, 0, 0, 1, 'Build', '表单构建', 'build', 1, 15);
INSERT INTO `t_menus` VALUES (26, '2023-12-07 22:06:50', 1, '2023-12-07 22:16:07', 1, 0, 'developer/:id(\\d+)', '/hiker/developer/index', 0, 1, 0, 1, 'DeveloperDetail', '开发者详情', 'peoples', 1, 10);
INSERT INTO `t_menus` VALUES (27, '2023-12-07 22:09:16', 1, '2023-12-07 22:16:02', 1, 0, 'rule_type/:id(\\d+)', '/hiker/rule_type/index', 0, 1, 0, 2, 'RuleTypeDetail', '规则类型详情', 'component', 1, 10);
INSERT INTO `t_menus` VALUES (28, '2023-12-07 22:56:42', 1, '2023-12-15 00:16:45', 1, 0, 'logininfor', '/monitor/logininfor/index', 0, 0, 0, 3, 'LoginInfor', '登录日志', 'people', 1, 17);
INSERT INTO `t_menus` VALUES (29, '2023-12-11 20:39:10', 1, '2023-12-11 20:42:25', 1, 1, 'control_panel1', '/hello', 0, 0, 0, 1, '', 'hello world', 'clipboard', 1, 7);
INSERT INTO `t_menus` VALUES (30, '2023-12-13 22:44:56', 1, '2023-12-15 00:16:50', 1, 0, 'pip', '/monitor/pip/index', 0, 0, 0, 4, 'Pip', '依赖管理', 'list', 1, 17);
INSERT INTO `t_menus` VALUES (31, '2023-12-15 00:11:11', 1, '2023-12-15 00:17:03', 1, 0, 'job-log/:id(\\d+)', '/monitor/job/log', 0, 1, 0, 2, 'JobLog', '定时任务执行日志', 'log', 1, 17);
INSERT INTO `t_menus` VALUES (32, '2023-12-15 00:36:18', 1, '2023-12-15 00:36:18', 0, 0, 'xfgpt', '/tool/xfgpt/index', 0, 0, 0, 4, 'XfGpt', '讯飞GPT', 'example', 1, 15);
INSERT INTO `t_menus` VALUES (34, '2024-01-14 16:22:36', 1, '2024-01-14 16:22:53', 1, 0, '/vod', '', 0, 0, 0, 3, '', 'hipy源', 'education', 1, 0);
INSERT INTO `t_menus` VALUES (35, '2024-01-14 16:23:36', 1, '2024-01-14 16:24:07', 1, 0, 'rules', '/vod/rules/index', 0, 0, 0, 1, 'VodRules', '源管理', 'list', 1, 34);
INSERT INTO `t_menus` VALUES (41, '2024-02-27 16:24:14', 1, '2024-02-27 16:24:14', 0, 0, 'index', '/vod/web/home/category', 0, 1, 0, 1, 'VodWebIndex', 'CMS首页', 'international', 1, 39);
INSERT INTO `t_menus` VALUES (42, '2024-02-27 16:24:59', 1, '2024-02-27 16:24:59', 0, 0, 'category', '/vod/web/home/category', 0, 1, 0, 2, 'VodWebCategory', 'CMS分类页', 'nested', 1, 39);
INSERT INTO `t_menus` VALUES (43, '2024-02-27 16:25:29', 1, '2024-02-27 16:25:29', 0, 0, 'detail', '/vod/web/home/detail', 0, 1, 0, 3, 'VodWebDetail', 'CMS详情页', 'form', 1, 39);
INSERT INTO `t_menus` VALUES (40, '2024-02-21 17:46:55', 1, '2024-02-27 16:25:55', 1, 0, 'search', '/vod/web/home/search', 0, 1, 0, 4, 'VodWebSearch', 'CMS搜索页', 'search', 1, 39);
INSERT INTO `t_menus` VALUES (44, '2024-06-19 09:52:46', 1, '2024-06-19 09:52:46', 0, 0, 'subs', '/vod/subs/index', 0, 0, 0, 2, 'VodSubs', '订阅管理', 'chart', 1, 34);
INSERT INTO `t_menus` VALUES (36, '2024-01-14 16:44:59', 1, '2024-06-19 09:52:55', 1, 0, 'configs', '/vod/configs/index', 0, 0, 0, 3, 'VodConfigs', '配置中心', 'table', 1, 34);
INSERT INTO `t_menus` VALUES (37, '2024-01-21 08:39:35', 1, '2024-06-19 09:52:59', 1, 0, 'rules_edit/:id(\\d+)', '/vod/rules/edit', 0, 1, 0, 4, 'VodRulesEdit', '在线编辑源', 'code', 1, 34);
INSERT INTO `t_menus` VALUES (38, '2024-02-19 13:58:41', 1, '2024-06-19 09:53:08', 1, 0, 'houses', '/vod/houses/index', 0, 0, 0, 5, 'VodHouses', '源仓库', 'shopping', 1, 34);
INSERT INTO `t_menus` VALUES (39, '2024-02-21 17:21:06', 1, '2024-06-19 09:53:12', 1, 0, 'web', '/vod/web/index', 0, 0, 0, 6, 'VodWeb', '在线预览', 'international', 1, 34);

-- ----------------------------
-- Table structure for t_perm_label
-- ----------------------------
DROP TABLE IF EXISTS `t_perm_label`;
CREATE TABLE `t_perm_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `label` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '标签',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_perm_label_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_perm_label
-- ----------------------------
INSERT INTO `t_perm_label` VALUES (1, '2023-12-02 15:30:37', 0, '2023-12-16 11:42:53', 1, 0, 'perm:user:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (2, '2023-12-02 15:30:57', 0, '2023-12-16 11:43:03', 1, 0, 'system:dict:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (3, '2023-12-02 15:31:25', 0, '2023-12-16 11:43:17', 1, 0, 'system:config-setting:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (4, '2023-12-02 15:33:26', 0, '2023-12-02 15:33:26', 0, 0, 'perm:user:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (5, '2023-12-02 15:36:42', 0, '2023-12-02 15:36:42', 0, 0, 'perm:user:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (6, '2023-12-02 15:37:45', 0, '2023-12-16 12:50:23', 1, 0, 'perm:menu:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (7, '2023-12-02 15:38:12', 0, '2023-12-16 12:50:26', 1, 0, 'perm:role:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (8, '2023-12-02 15:38:46', 0, '2023-12-16 12:50:30', 1, 0, 'perm:label:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (9, '2023-12-02 15:39:04', 0, '2023-12-02 15:39:04', 0, 0, 'system:config-setting:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (10, '2023-12-02 15:39:26', 0, '2023-12-16 11:48:34', 1, 0, 'system:dict:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (11, '2023-12-02 18:00:37', 0, '2023-12-02 18:00:37', 0, 0, 'hiker:developer:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (12, '2023-12-02 18:05:43', 0, '2023-12-02 18:05:43', 0, 0, 'perm:menu:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (13, '2023-12-02 18:08:24', 0, '2023-12-02 18:08:24', 0, 0, 'perm:menu:gut', NULL, 0);
INSERT INTO `t_perm_label` VALUES (14, '2023-12-02 18:09:28', 0, '2023-12-02 18:09:28', 0, 0, 'perm:menu:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (15, '2023-12-02 19:15:42', 0, '2023-12-02 19:15:42', 0, 0, 'hiker:developer:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (16, '2023-12-02 19:19:35', 0, '2023-12-16 12:46:21', 1, 0, 'hiker:developer:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (17, '2023-12-04 19:53:00', 0, '2023-12-16 11:48:20', 1, 0, 'system:dict:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (18, '2023-12-04 19:53:04', 0, '2023-12-16 11:43:50', 1, 0, 'system:dict:detail:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (19, '2023-12-04 19:53:35', 0, '2023-12-16 12:23:47', 1, 0, 'system:dict:detail:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (20, '2023-12-04 19:54:59', 0, '2023-12-16 12:23:50', 1, 0, 'system:dict:detail:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (21, '2023-12-04 19:55:50', 0, '2023-12-04 19:55:50', 0, 0, 'hiker:rule_type:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (22, '2023-12-04 20:00:34', 0, '2023-12-04 20:00:34', 0, 0, 'hiker:rule:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (23, '2023-12-04 20:00:59', 0, '2023-12-04 20:00:59', 0, 0, 'hiker:rule:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (24, '2023-12-04 22:13:09', 0, '2023-12-04 22:13:09', 0, 0, 'system:config-setting:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (25, '2023-12-05 19:44:23', 0, '2023-12-05 19:44:23', 0, 0, 'monitor:server:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (26, '2023-12-05 20:08:50', 0, '2023-12-16 11:59:31', 1, 0, 'monitor:server:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (27, '2023-12-05 22:52:40', 0, '2023-12-05 22:52:40', 0, 0, 'hiker:rule_type:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (28, '2023-12-05 22:52:46', 0, '2023-12-05 22:52:46', 0, 0, 'hiker:rule_type:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (29, '2023-12-07 00:00:33', 0, '2023-12-07 00:00:33', 0, 0, 'perm:user:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (30, '2023-12-07 19:50:07', 0, '2023-12-07 19:50:07', 0, 0, 'report:excel_generate:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (31, '2023-12-07 21:39:27', 0, '2023-12-07 21:39:27', 0, 0, 'report:excel_generate:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (32, '2023-12-09 02:27:25', 0, '2023-12-09 02:27:25', 0, 0, 'system:config_setting:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (33, '2023-12-09 16:20:03', 0, '2023-12-09 16:20:03', 0, 0, 'monitor:logininfor:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (34, '2023-12-09 16:50:10', 0, '2023-12-09 16:50:10', 0, 0, 'hiker:developer:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (35, '2023-12-09 16:54:11', 0, '2023-12-09 16:54:11', 0, 0, 'hiker:rule:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (36, '2023-12-10 17:41:10', 0, '2023-12-10 17:41:10', 0, 0, 'monitor:job:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (37, '2023-12-10 18:16:32', 0, '2023-12-10 18:16:32', 0, 0, 'monitor:job:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (38, '2023-12-10 18:25:10', 0, '2023-12-10 18:25:10', 0, 0, 'monitor:job:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (39, '2023-12-11 20:42:25', 0, '2023-12-11 20:42:25', 0, 0, 'perm:menu:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (40, '2023-12-13 22:29:05', 0, '2023-12-16 11:59:41', 1, 0, 'monitor:pip:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (41, '2023-12-13 23:12:13', 0, '2023-12-13 23:12:13', 0, 0, 'monitor:pip:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (42, '2023-12-13 23:21:20', 0, '2023-12-13 23:21:20', 0, 0, 'monitor:pip:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (43, '2023-12-13 23:28:11', 0, '2023-12-13 23:28:11', 0, 0, 'monitor:pip:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (44, '2023-12-16 11:36:07', 0, '2023-12-16 11:36:07', 0, 0, 'perm:role:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (45, '2023-12-16 11:38:40', 0, '2023-12-16 11:38:40', 0, 0, 'perm:label:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (46, '2023-12-16 12:28:44', 0, '2023-12-16 12:28:44', 0, 0, 'report:excel_generate:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (47, '2023-12-17 14:13:25', 0, '2023-12-17 14:45:14', 1, 1, 'report:excel_generate:exports', NULL, 0);
INSERT INTO `t_perm_label` VALUES (48, '2023-12-17 14:38:50', 0, '2023-12-17 14:44:57', 1, 1, 'system_user:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (49, '2023-12-17 14:44:45', 0, '2023-12-17 14:44:45', 0, 0, 'perm:user:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (50, '2023-12-17 14:44:57', 0, '2023-12-17 14:44:57', 0, 0, 'perm:label:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (51, '2023-12-17 14:47:51', 0, '2023-12-17 14:53:44', 1, 0, 'monitor:logininfor:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (52, '2023-12-17 14:47:58', 0, '2023-12-17 14:52:03', 1, 0, 'monitor:job:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (53, '2023-12-17 16:00:22', 0, '2023-12-17 16:00:22', 0, 0, 'monitor:cache:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (54, '2023-12-17 16:47:58', 0, '2023-12-17 16:47:58', 0, 0, 'monitor:cache:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (55, '2024-01-02 20:24:36', 0, '2024-01-02 20:24:36', 0, 0, 'system:user:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (56, '2024-01-06 12:37:09', 0, '2024-01-06 12:37:09', 0, 0, 'monitor:job-log:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (57, '2024-01-06 13:24:14', 0, '2024-01-06 13:24:14', 0, 0, '/monitor/jobLog/export:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (58, '2024-01-06 13:36:05', 0, '2024-01-06 13:36:05', 0, 0, 'monitor:job:log:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (60, '2024-01-14 16:38:44', 0, '2024-01-25 14:18:14', 1, 0, 'vod:rules:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (61, '2024-01-14 17:26:01', 0, '2024-01-25 14:18:20', 1, 0, 'vod:rules:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (62, '2024-01-14 17:48:29', 0, '2024-01-25 14:18:28', 1, 0, 'vod:rules:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (63, '2024-01-15 17:03:56', 0, '2024-01-25 14:18:34', 1, 0, 'vod:rules:export', NULL, 0);
INSERT INTO `t_perm_label` VALUES (64, '2024-01-25 13:06:52', 0, '2024-01-25 14:18:39', 1, 0, 'vod:configs:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (65, '2024-01-25 13:22:05', 0, '2024-01-25 14:18:43', 1, 0, 'vod:configs:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (67, '2024-01-25 13:54:21', 0, '2024-01-25 14:18:48', 1, 0, 'vod:configs:put', NULL, 0);
INSERT INTO `t_perm_label` VALUES (68, '2024-01-25 14:11:49', 0, '2024-01-25 14:18:52', 1, 0, 'vod:rules:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (66, '2024-01-25 13:42:15', 0, '2024-01-25 14:18:59', 1, 0, 'vod:configs:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (69, '2024-02-19 14:30:49', 0, '2024-02-19 14:30:49', 0, 0, 'vod:houses:get', NULL, 0);
INSERT INTO `t_perm_label` VALUES (70, '2024-02-19 15:22:23', 0, '2024-02-19 15:22:23', 0, 0, 'vod:houses:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (71, '2024-02-19 16:30:39', 0, '2024-02-19 16:30:39', 0, 0, 'vod:houses:delete', NULL, 0);
INSERT INTO `t_perm_label` VALUES (72, '2024-06-19 09:53:59', 0, '2024-06-19 09:53:59', 0, 0, 'vod:subs:post', NULL, 0);
INSERT INTO `t_perm_label` VALUES (73, '2024-06-19 10:06:39', 0, '2024-06-19 10:06:39', 0, 0, 'vod:subs:put', NULL, 0);

-- ----------------------------
-- Table structure for t_perm_label_role
-- ----------------------------
DROP TABLE IF EXISTS `t_perm_label_role`;
CREATE TABLE `t_perm_label_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `label_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `label_id`(`label_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `ix_t_perm_label_role_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of t_perm_label_role
-- ----------------------------
INSERT INTO `t_perm_label_role` VALUES (1, '2023-12-06 22:37:39', 0, '2023-12-06 22:37:39', 0, 0, NULL, NULL);
INSERT INTO `t_perm_label_role` VALUES (2, '2023-12-16 11:42:53', 1, '2023-12-16 11:42:53', 0, 0, 1, 2);
INSERT INTO `t_perm_label_role` VALUES (3, '2023-12-16 11:43:03', 1, '2023-12-16 11:43:03', 0, 0, 2, 2);
INSERT INTO `t_perm_label_role` VALUES (4, '2023-12-16 11:43:17', 1, '2023-12-16 11:43:17', 0, 0, 3, 2);
INSERT INTO `t_perm_label_role` VALUES (5, '2023-12-16 11:43:50', 1, '2023-12-16 11:43:50', 0, 0, 18, 2);
INSERT INTO `t_perm_label_role` VALUES (17, '2023-12-16 12:50:26', 1, '2023-12-16 12:50:26', 0, 0, 7, 2);
INSERT INTO `t_perm_label_role` VALUES (18, '2023-12-16 12:50:30', 1, '2023-12-16 12:50:30', 0, 0, 8, 2);
INSERT INTO `t_perm_label_role` VALUES (10, '2023-12-16 11:59:31', 1, '2023-12-16 11:59:31', 0, 0, 26, 2);
INSERT INTO `t_perm_label_role` VALUES (11, '2023-12-16 11:59:41', 1, '2023-12-16 11:59:41', 0, 0, 40, 2);
INSERT INTO `t_perm_label_role` VALUES (16, '2023-12-16 12:50:23', 1, '2023-12-16 12:50:23', 0, 0, 6, 2);
INSERT INTO `t_perm_label_role` VALUES (15, '2023-12-16 12:46:21', 1, '2023-12-16 12:46:21', 0, 0, 16, 2);
INSERT INTO `t_perm_label_role` VALUES (19, '2023-12-17 14:52:03', 1, '2023-12-17 14:52:03', 0, 0, 52, 2);
INSERT INTO `t_perm_label_role` VALUES (20, '2023-12-17 14:53:44', 1, '2023-12-17 14:53:44', 0, 0, 51, 2);
INSERT INTO `t_perm_label_role` VALUES (21, '2024-01-25 14:18:14', 1, '2024-01-25 14:18:14', 0, 0, 60, 2);
INSERT INTO `t_perm_label_role` VALUES (22, '2024-01-25 14:18:20', 1, '2024-01-25 14:18:20', 0, 0, 61, 2);
INSERT INTO `t_perm_label_role` VALUES (23, '2024-01-25 14:18:28', 1, '2024-01-25 14:18:28', 0, 0, 62, 2);
INSERT INTO `t_perm_label_role` VALUES (24, '2024-01-25 14:18:34', 1, '2024-01-25 14:18:34', 0, 0, 63, 2);
INSERT INTO `t_perm_label_role` VALUES (25, '2024-01-25 14:18:39', 1, '2024-01-25 14:18:39', 0, 0, 64, 2);
INSERT INTO `t_perm_label_role` VALUES (26, '2024-01-25 14:18:43', 1, '2024-01-25 14:18:43', 0, 0, 65, 2);
INSERT INTO `t_perm_label_role` VALUES (27, '2024-01-25 14:18:48', 1, '2024-01-25 14:18:48', 0, 0, 67, 2);
INSERT INTO `t_perm_label_role` VALUES (28, '2024-01-25 14:18:52', 1, '2024-01-25 14:18:52', 0, 0, 68, 2);
INSERT INTO `t_perm_label_role` VALUES (29, '2024-01-25 14:18:59', 1, '2024-01-25 14:18:59', 0, 0, 66, 2);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `role_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE,
  INDEX `ix_t_role_menu_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (1, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 2);
INSERT INTO `t_role_menu` VALUES (2, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 4);
INSERT INTO `t_role_menu` VALUES (3, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 5);
INSERT INTO `t_role_menu` VALUES (4, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 8);
INSERT INTO `t_role_menu` VALUES (115, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 2);
INSERT INTO `t_role_menu` VALUES (116, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 8);
INSERT INTO `t_role_menu` VALUES (117, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 5);
INSERT INTO `t_role_menu` VALUES (118, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 14);
INSERT INTO `t_role_menu` VALUES (119, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 4);
INSERT INTO `t_role_menu` VALUES (120, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 34);
INSERT INTO `t_role_menu` VALUES (121, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 35);
INSERT INTO `t_role_menu` VALUES (122, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 36);
INSERT INTO `t_role_menu` VALUES (123, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 37);
INSERT INTO `t_role_menu` VALUES (124, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 10);
INSERT INTO `t_role_menu` VALUES (125, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 11);
INSERT INTO `t_role_menu` VALUES (126, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 26);
INSERT INTO `t_role_menu` VALUES (127, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 12);
INSERT INTO `t_role_menu` VALUES (128, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 27);
INSERT INTO `t_role_menu` VALUES (129, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 13);
INSERT INTO `t_role_menu` VALUES (130, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 15);
INSERT INTO `t_role_menu` VALUES (131, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 16);
INSERT INTO `t_role_menu` VALUES (132, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 25);
INSERT INTO `t_role_menu` VALUES (133, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 20);
INSERT INTO `t_role_menu` VALUES (134, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 24);
INSERT INTO `t_role_menu` VALUES (135, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 32);
INSERT INTO `t_role_menu` VALUES (136, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 17);
INSERT INTO `t_role_menu` VALUES (137, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 19);
INSERT INTO `t_role_menu` VALUES (138, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 18);
INSERT INTO `t_role_menu` VALUES (139, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 28);
INSERT INTO `t_role_menu` VALUES (140, '2024-01-25 14:17:34', 1, '2024-01-25 14:17:34', 0, 0, 2, 30);

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '权限标识',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '权限名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '顺序',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态(0: 正常, 1: 停用)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ix_t_roles_key`(`key`) USING BTREE,
  INDEX `ix_t_roles_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles` VALUES (1, '2022-11-13 02:44:13', 0, '2022-11-13 02:44:13', 0, 0, 'admin', '超级管理员', 1, 0);
INSERT INTO `t_roles` VALUES (3, '2022-11-22 00:55:04', 1, '2022-11-22 00:55:04', 0, 0, 'Operation', '管理员', 3, 0);
INSERT INTO `t_roles` VALUES (2, '2022-11-13 02:46:33', 0, '2024-01-25 14:17:34', 1, 0, 'general', '一般用户', 2, 0);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `ix_t_user_role_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, '2022-11-13 02:58:19', 0, '2022-11-13 02:58:19', 0, 0, 1, 1);
INSERT INTO `t_user_role` VALUES (3, '2022-11-22 00:50:26', 0, '2022-11-22 00:50:26', 0, 0, 3, 2);
INSERT INTO `t_user_role` VALUES (4, '2022-11-22 00:55:57', 1, '2022-11-22 00:55:57', 0, 0, 2, 3);
INSERT INTO `t_user_role` VALUES (10, '2023-12-16 11:35:26', 1, '2023-12-16 11:35:26', 0, 0, 4, 2);
INSERT INTO `t_user_role` VALUES (6, '2023-12-06 13:18:51', 0, '2023-12-06 13:18:51', 0, 0, 5, 2);
INSERT INTO `t_user_role` VALUES (28, '2024-01-02 22:29:54', 0, '2024-01-02 22:29:54', 0, 0, 6, 2);
INSERT INTO `t_user_role` VALUES (29, '2024-06-02 03:20:09', 0, '2024-06-02 03:20:09', 0, 0, 7, 2);

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '姓名',
  `sex` int(11) NULL DEFAULT 0 COMMENT '性别',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '手机号',
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '邮箱',
  `hashed_password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '密码',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `is_active` tinyint(1) NULL DEFAULT 0 COMMENT '是否已经验证用户',
  `is_superuser` tinyint(1) NULL DEFAULT 0 COMMENT '是否超级管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ix_t_users_username`(`username`) USING BTREE,
  INDEX `ix_t_users_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (2, '2022-11-22 00:48:34', 0, '2022-11-22 00:55:57', 1, 0, 'opt', 'opt', 0, '12345678911', 'opt@beginner2020.top', '$2b$12$EbJD0X5U0LwAvf5EVvYxZO20Jyv2xLKU1quekOyX3SwhdVepz1RFu', NULL, 0, 1, 0);
INSERT INTO `t_users` VALUES (3, '2022-11-22 00:50:26', 0, '2023-12-09 16:47:45', 1, 0, 'user', NULL, 0, '12345678912', 'user@beginner2020.top', '$2b$12$Wov4niPCoLOeBcRNgGDNhekSZBgB/GAhYs25CLHfJG.me1KbFP0am', NULL, 0, 1, 0);
INSERT INTO `t_users` VALUES (4, '2023-12-02 15:36:42', 1, '2023-12-16 13:16:49', 4, 0, 'hjdhnx', '道长', 2, '13154671296', '434857005@qq.com', '$2b$12$X3LQ2VXThey.YB/WGlwYq.35CKOeKkBgmA6TTR91q/VYe6hGDAWRO', 'images/avatar/f84e9577-9047-470e-bcde-16173ca1811c.jpg', 0, 1, 0);
INSERT INTO `t_users` VALUES (5, '2024-01-02 21:35:02', 0, '2024-01-02 21:38:43', 0, 0, 'admin1', '超级管理员1', 0, '12345678910', 'admin1@beginner2020.top', '$2b$12$s1WlihU/PaMhW0T2H360Me8IswCyKtep8p.kQcV3z9QVdS7natYL.', NULL, 0, 1, 0);
INSERT INTO `t_users` VALUES (6, '2024-01-02 21:41:41', 0, '2024-01-02 22:29:54', 0, 0, 'admin2', '超级管理员2', 0, '12345678910', 'admin2@beginner2020.top', '$2b$12$1JuTbUoZ4KkgNzCG1h6/9OzOLQ2NOU9g.fdPy5OHtrhFUBvBa31bO', NULL, 0, 1, 0);
INSERT INTO `t_users` VALUES (1, '2022-11-13 02:58:19', 0, '2024-03-17 09:41:24', 1, 0, 'admin', '超级管理员', 0, '12345678910', 'admin@beginner2020.top', '$2b$12$nlyWZAzu4C9cgbHV/FE1X.nwBKiGemATgCxikPQEQVznMqBCrDw/e', 'images/avatar/cad832e9-e7e5-4b4c-a898-0a64ca9ea2f4.png', 0, 1, 1);
INSERT INTO `t_users` VALUES (7, '2024-06-02 03:20:09', 0, '2024-06-02 03:20:09', 0, 0, 'xiaoxiaoDM', NULL, 0, '16676002381', '2762698772@qq.com', '$2b$12$0BeoJ.B1CBVZ.twMOncyR.HYYiWeFG1EHI3SfRtA5AB2aUHf1MMB6', NULL, 0, 1, 0);

-- ----------------------------
-- Table structure for t_vod_configs
-- ----------------------------
DROP TABLE IF EXISTS `t_vod_configs`;
CREATE TABLE `t_vod_configs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参数名称',
  `key` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参数键',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '参数值',
  `value_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '值类型',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `status` int(11) NULL DEFAULT 0 COMMENT '参数状态',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_vod_configs_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vod_configs
-- ----------------------------
INSERT INTO `t_vod_configs` VALUES (14, '2024-02-19 13:52:29', 1, '2024-05-29 13:11:46', 1, 0, 'drpy源仓库1', 'vod_drpy_house1', 'hjdhnx/dr_py|js', 'str', 'drpy源的github仓库。repo|path', 1, 14);
INSERT INTO `t_vod_configs` VALUES (15, '2024-02-19 13:52:29', 1, '2024-05-29 13:11:46', 1, 0, 'drpy源仓库2', 'vod_drpy_house2', 'heroaku/TVboxo|Js', 'str', 'drpy源的github仓库。repo|path', 1, 15);
INSERT INTO `t_vod_configs` VALUES (16, '2024-03-10 11:05:05', 1, '2024-05-29 13:11:46', 1, 0, 'drpy源仓库3', 'vod_drpy_house3', 'gaotianliuyun/gao|js', 'str', 'drpy源的github仓库(高天流云)。repo|path', 1, 16);
INSERT INTO `t_vod_configs` VALUES (4, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:56', 1, 0, '自定义配置模板文件', 'vod_config_custom', 'txt/pg.conf', 'file', 'hipy的自动生成在线配置将使用此文件作为个性化配置', 1, 4);
INSERT INTO `t_vod_configs` VALUES (1, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:45', 1, 0, 'drpy接口文件', 'vod_drpy_api', 'drpy_libs/drpy2.min.js', 'file', '自动生成配置中的drpy的api将会使用此文件', 1, 1);
INSERT INTO `t_vod_configs` VALUES (2, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:45', 1, 0, '接口密码', 'vod_passwd', 'dzyyds', 'str', 'hipy的t4接口将使用此密码作为参数验证', 1, 2);
INSERT INTO `t_vod_configs` VALUES (3, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:45', 1, 0, '生成配置模板文件', 'vod_config_base', 'txt/config.txt', 'file', 'hipy的自动生成在线配置将使用此文件作为渲染模板', 1, 3);
INSERT INTO `t_vod_configs` VALUES (5, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:45', 1, 0, '自定义解析文件', 'vod_vip_parse', 'txt/vip_parse.conf', 'file', 'hipy的自定义视频解析配置文件', 1, 5);
INSERT INTO `t_vod_configs` VALUES (6, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:45', 1, 0, '自定义直播外链', 'vod_zb_url', 'http://hiker.nokia.press/hikerule/zyw_data/43', 'url', 'hipy的自定义直播外链文件', 1, 6);
INSERT INTO `t_vod_configs` VALUES (10, '2024-02-04 14:21:12', 1, '2024-05-29 13:11:45', 1, 0, '自定义直播本地文件', 'vod_zb_file', 'txt/mytv.txt', 'file', 'hipy的自定义直播本地文件', 1, 10);
INSERT INTO `t_vod_configs` VALUES (11, '2024-02-04 14:21:12', 1, '2024-05-29 13:11:46', 1, 0, '自定义直播使用', 'vod_zb_use', 'file', 'str', 'hipy的直播使用外链或文件|file:使用文件,url:使用外链', 1, 11);
INSERT INTO `t_vod_configs` VALUES (7, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:46', 1, 0, '自定义挂载jar', 'vod_custom_jar', 'jar/custom_spider_dz1201.jar', 'file', 'hipy的自定义外挂jar文件,用于直播解析和视频解析轮询', 1, 7);
INSERT INTO `t_vod_configs` VALUES (8, '2024-02-01 13:15:53', 1, '2024-05-29 13:11:46', 1, 0, '自定义壁纸', 'vod_wall_paper', 'https://tuapi.eees.cc/api.php?category=fengjing&type=302', 'url', 'hipy的自定义壁纸，可以是文件或着链接', 1, 8);
INSERT INTO `t_vod_configs` VALUES (9, '2024-02-02 17:36:29', 1, '2024-05-29 13:11:46', 1, 0, '环境变量', 'vod_hipy_env', '{\"ali_token\":\"682c41720d6d4c9d8ded00bcdd712870\",\"bili_cookie\":\"SESSDATA=93f1b89c%2C1685503124%2C760e0%2Ac1; bili_jct=5e0a1e65979f4d9f48fd9c158362b573; DedeUserID=253592508\",\"douban\":\"264291961\",\"vmid\":\"253592508\",\"test_env\":\"测试环境变量\",\"appkey\":\"1d8b6e7d45233436\",\"access_key\":\"3841bf63f94a8e8d0181e59470167aa1CjCup6x6MSEv8rLctbAuWLQs0ra3Ej09EJhjMBrgAsaVt3ALYteyfxjvizVqWrnlR0ESVmlucDVmcHBycjZDVk9KMDFucTRmMEcwMUlHWWhQZkVvUnRqeTdMWTNjU2phSkdpRkZFTGJPQUZ6NEVmcVVMUUx2WjZBTl8wb0lsTjhLbmp6SHVxRjdRIIEC\"}', 'json', 'hipy的环境变量，json数据', 1, 9);
INSERT INTO `t_vod_configs` VALUES (12, '2024-02-19 11:22:58', 1, '2024-05-29 13:11:46', 1, 0, 'git访问代理', 'vod_git_proxy', 'https://ghproxy.liuzhicong.com/', 'url', '代理加速git访问，解决被墙问题', 1, 12);
INSERT INTO `t_vod_configs` VALUES (13, '2024-02-19 11:22:58', 1, '2024-05-29 13:11:46', 1, 0, 'git访问令牌', 'vod_git_token', ' ', 'str', '从 http://github.com/settings/tokens 获取的token，可以操作api以及破解git访问次数限制每小时60次提升至5000次', 1, 13);

-- ----------------------------
-- Table structure for t_vod_rules
-- ----------------------------
DROP TABLE IF EXISTS `t_vod_rules`;
CREATE TABLE `t_vod_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '源名称',
  `group` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '源分组',
  `path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文件路径',
  `is_exist` tinyint(1) NULL DEFAULT 1 COMMENT '是否存在',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示排序',
  `file_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文件类型',
  `ext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ext扩展',
  `status` int(11) NULL DEFAULT 0 COMMENT '源状态',
  `searchable` int(11) NULL DEFAULT 0 COMMENT '可搜索',
  `filterable` int(11) NULL DEFAULT 0 COMMENT '可筛选',
  `quickSearch` int(11) NULL DEFAULT 0 COMMENT '可快速搜索',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_vod_rules_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 467 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vod_rules
-- ----------------------------
INSERT INTO `t_vod_rules` VALUES (49, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'douyu', 't4/files/txt', 't4/files/txt/douyu.txt', 1, 49, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (9, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '两个BT', 't4/spiders', 't4/spiders/两个BT.py', 1, 9, '.py', '{{host}}/files/hipy/两个BT.json', 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (4, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'base_spider', 't4/spiders', 't4/spiders/base_spider.py', 1, 0, '.py', NULL, 1, 1, 1, 0, 0);
INSERT INTO `t_vod_rules` VALUES (320, '2024-05-25 15:45:01', 1, '2024-06-20 02:37:50', 1, 0, 'iFun', 't4/files/drpy_js', 't4/files/drpy_js/iFun.js', 1, 314, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (11, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '喵次元', 't4/spiders', 't4/spiders/喵次元.py', 1, 11, '.py', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (7, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'test_1', 't4/spiders', 't4/spiders/test_1.txt', 1, 9999, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (40, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'mod', 't4/files/drpy_libs', 't4/files/drpy_libs/mod.js', 1, 40, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (267, '2024-05-15 06:21:15', 1, '2024-06-20 02:37:48', 1, 0, '思古影视[V2]', 't4/files/drpy_js', 't4/files/drpy_js/思古影视[V2].js', 1, 261, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (44, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, '模板', 't4/files/drpy_libs', 't4/files/drpy_libs/模板.js', 1, 44, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (283, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '星云影视', 't4/files/drpy_js', 't4/files/drpy_js/星云影视.js', 1, 277, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (42, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'searchFilter', 't4/files/drpy_libs', 't4/files/drpy_libs/searchFilter.js', 1, 42, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (38, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'gbk', 't4/files/drpy_libs', 't4/files/drpy_libs/gbk.js', 1, 38, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (34, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'drpy2.min', 't4/files/drpy_libs', 't4/files/drpy_libs/drpy2.min.js', 1, 34, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (319, '2024-05-25 15:45:01', 1, '2024-06-20 02:37:49', 1, 0, '看客影院', 't4/files/drpy_js', 't4/files/drpy_js/看客影院.js', 1, 313, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (279, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:48', 1, 0, '看看影视', 't4/files/drpy_js', 't4/files/drpy_js/看看影视.js', 1, 273, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (36, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'es6py', 't4/files/drpy_libs', 't4/files/drpy_libs/es6py.js', 1, 36, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (43, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'sortName', 't4/files/drpy_libs', 't4/files/drpy_libs/sortName.js', 1, 43, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (54, '2024-02-02 15:59:25', 1, '2024-06-20 02:37:49', 1, 0, '在线之家', 't4/files/drpy_js', 't4/files/drpy_js/在线之家.js', 1, 54, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (362, '2024-06-08 01:52:31', 1, '2024-06-20 02:37:49', 1, 0, '黑料不打烊-z', 't4/files/drpy_js', 't4/files/drpy_js/黑料不打烊-z.js', 1, 356, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (287, '2024-05-16 08:22:12', 1, '2024-06-20 02:37:50', 1, 0, '快看影视', 't4/files/drpy_js', 't4/files/drpy_js/快看影视.js', 1, 281, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (3, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'base_spider', 't4/spiders', 't4/spiders/base_spider.json', 1, 9999, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (31, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'crypto-js', 't4/files/drpy_libs', 't4/files/drpy_libs/crypto-js.js', 1, 31, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (37, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'exRegExp', 't4/files/drpy_libs', 't4/files/drpy_libs/exRegExp.js', 1, 37, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (27, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'atob', 't4/files/drpy_libs', 't4/files/drpy_libs/atob.js', 1, 27, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (64, '2024-02-05 09:48:57', 1, '2024-06-20 02:37:50', 1, 0, 'qjs_env', 't4/files/drpy_libs', 't4/files/drpy_libs/qjs_env.js', 1, 64, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (33, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'drpy2', 't4/files/drpy_libs', 't4/files/drpy_libs/drpy2.js', 1, 33, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (39, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'live2cms', 't4/files/drpy_libs', 't4/files/drpy_libs/live2cms.js', 1, 39, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (29, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'cheerio.min', 't4/files/drpy_libs', 't4/files/drpy_libs/cheerio.min.js', 1, 29, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (35, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'drT', 't4/files/drpy_libs', 't4/files/drpy_libs/drT.js', 1, 35, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (14, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '樱花动漫', 't4/spiders', 't4/spiders/樱花动漫.py', 1, 14, '.py', 'https://jihulab.com/qiaoji/open/-/raw/main/yinghua', 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (8, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '两个BT', 't4/spiders', 't4/spiders/两个BT.json', 1, 9999, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (285, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '孜然影视', 't4/files/drpy_js', 't4/files/drpy_js/孜然影视.js', 1, 279, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (344, '2024-05-30 18:55:04', 1, '2024-06-20 02:37:49', 1, 0, '易搜[搜]', 't4/files/drpy_js', 't4/files/drpy_js/易搜[搜].js', 1, 338, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (30, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'crypto-hiker', 't4/files/drpy_libs', 't4/files/drpy_libs/crypto-hiker.js', 1, 30, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (12, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '新浪资源', 't4/spiders', 't4/spiders/新浪资源.py', 1, 12, '.py', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (13, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '樱花动漫', 't4/spiders', 't4/spiders/樱花动漫.json', 1, 9999, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (6, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'cntv央视', 't4/spiders', 't4/spiders/cntv央视.py', 1, 0, '.py', '{{host}}/files/hipy/cntv央视.json', 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (332, '2024-05-28 03:41:22', 1, '2024-06-20 02:37:48', 1, 0, '爱看hd', 't4/files/drpy_js', 't4/files/drpy_js/爱看hd.js', 1, 326, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (25, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'alist', 't4/files/drpy_libs', 't4/files/drpy_libs/alist.js', 1, 25, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (28, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'base64', 't4/files/drpy_libs', 't4/files/drpy_libs/base64.js', 1, 28, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (45, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'alist', 't4/files/json', 't4/files/json/alist.json', 1, 45, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (41, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/rsa.js', 1, 41, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (50, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'huya', 't4/files/txt', 't4/files/txt/huya.txt', 1, 50, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (354, '2024-06-05 15:25:08', 1, '2024-06-20 02:37:49', 1, 0, '番茄小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/番茄小说[书].js', 1, 348, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (318, '2024-05-25 15:45:01', 1, '2024-06-20 02:37:49', 1, 0, '黑木耳资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/黑木耳资源[资].js', 1, 312, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (91, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'alist', 't4/files/drpy3_js', 't4/files/drpy3_js/alist.json', 1, 85, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (76, '2024-02-20 16:25:29', 1, '2024-06-20 02:37:50', 1, 0, 'tv', 't4/files/txt', 't4/files/txt/tv.txt', 1, 70, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (47, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'config', 't4/files/txt', 't4/files/txt/config.txt', 1, 47, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (78, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, 'cheerio.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/cheerio.min.js', 1, 72, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (119, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'yyets', 't4/files/drpy3_js', 't4/files/drpy3_js/yyets.js', 1, 113, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (122, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '吸瓜', 't4/files/drpy3_js', 't4/files/drpy3_js/吸瓜.js', 1, 116, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (98, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'funletu', 't4/files/drpy3_js', 't4/files/drpy3_js/funletu.js', 1, 92, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (67, '2024-02-05 09:56:10', 1, '2024-06-20 02:37:51', 1, 0, '哔哩', 't4/files/js_parse_api', 't4/files/js_parse_api/哔哩.js', 1, 67, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (125, '2024-03-19 11:00:53', 1, '2024-06-20 02:37:51', 1, 0, 'drpy3.hiker', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.hiker.js', 1, 119, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (83, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, '模板', 't4/files/drpy3_libs', 't4/files/drpy3_libs/模板.js', 1, 77, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (80, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, 'drpy3', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.js', 1, 74, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (102, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'jiyingwp', 't4/files/drpy3_js', 't4/files/drpy3_js/jiyingwp.js', 1, 96, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (88, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '4khdr', 't4/files/drpy3_js', 't4/files/drpy3_js/4khdr.js', 1, 82, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (92, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'banan', 't4/files/drpy3_js', 't4/files/drpy3_js/banan.js', 1, 86, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (93, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'cilixiong', 't4/files/drpy3_js', 't4/files/drpy3_js/cilixiong.js', 1, 87, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (105, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'lf_live', 't4/files/drpy3_js', 't4/files/drpy3_js/lf_live.txt', 1, 99, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (99, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'huya', 't4/files/drpy3_js', 't4/files/drpy3_js/huya.js', 1, 93, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (94, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'cilixiongp', 't4/files/drpy3_js', 't4/files/drpy3_js/cilixiongp.js', 1, 88, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (106, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'lf_live1', 't4/files/drpy3_js', 't4/files/drpy3_js/lf_live1.txt', 1, 100, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (95, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'ddys_d', 't4/files/drpy3_js', 't4/files/drpy3_js/ddys_d.js', 1, 89, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (89, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '97tvs', 't4/files/drpy3_js', 't4/files/drpy3_js/97tvs.js', 1, 83, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (104, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'kuba', 't4/files/drpy3_js', 't4/files/drpy3_js/kuba.js', 1, 98, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (85, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '1080P', 't4/files/drpy3_js', 't4/files/drpy3_js/1080P.js', 1, 79, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (97, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'dygang', 't4/files/drpy3_js', 't4/files/drpy3_js/dygang.js', 1, 91, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (120, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'yyetsp', 't4/files/drpy3_js', 't4/files/drpy3_js/yyetsp.js', 1, 114, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (96, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'dydhhy', 't4/files/drpy3_js', 't4/files/drpy3_js/dydhhy.js', 1, 90, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (79, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, 'crypto-js', 't4/files/drpy3_libs', 't4/files/drpy3_libs/crypto-js.js', 1, 73, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (100, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'jianpian', 't4/files/drpy3_js', 't4/files/drpy3_js/jianpian.js', 1, 94, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (101, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'jiyingw', 't4/files/drpy3_js', 't4/files/drpy3_js/jiyingw.js', 1, 95, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (86, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '18av', 't4/files/drpy3_js', 't4/files/drpy3_js/18av.js', 1, 80, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (90, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'aipanso', 't4/files/drpy3_js', 't4/files/drpy3_js/aipanso.js', 1, 84, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (282, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '蓝光影视', 't4/files/drpy_js', 't4/files/drpy_js/蓝光影视.js', 1, 276, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (284, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '西屋影视', 't4/files/drpy_js', 't4/files/drpy_js/西屋影视.js', 1, 278, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (381, '2024-06-09 18:53:00', 1, '2024-06-20 02:37:50', 1, 0, '飞翔鸟[书]', 't4/files/drpy_js', 't4/files/drpy_js/飞翔鸟[书].js', 1, 375, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (60, '2024-02-04 14:21:09', 1, '2024-06-20 02:37:50', 1, 0, 'E8plus', 't4/files/json', 't4/files/json/E8plus.json', 1, 60, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (46, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'bili', 't4/files/txt', 't4/files/txt/bili.txt', 1, 46, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (62, '2024-02-04 14:21:09', 1, '2024-06-20 02:37:50', 1, 0, 'zb', 't4/files/txt', 't4/files/txt/zb.txt', 1, 62, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (77, '2024-03-08 15:53:20', 1, '2024-06-20 02:37:50', 1, 0, 'mytv', 't4/files/txt', 't4/files/txt/mytv.txt', 1, 71, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (48, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'custom', 't4/files/txt', 't4/files/txt/custom.conf', 1, 48, '.conf', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (65, '2024-02-05 09:48:57', 1, '2024-06-20 02:37:50', 1, 0, 'custom_jsapi', 't4/files/jar', 't4/files/jar/custom_jsapi.jar', 1, 65, '.jar', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (66, '2024-02-05 09:48:57', 1, '2024-06-20 02:37:50', 1, 0, 'custom_spider_dz1201', 't4/files/jar', 't4/files/jar/custom_spider_dz1201.jar', 1, 66, '.jar', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (82, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, 'gbk', 't4/files/drpy3_libs', 't4/files/drpy3_libs/gbk.js', 1, 76, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (121, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '养端', 't4/files/drpy3_js', 't4/files/drpy3_js/养端.js', 1, 115, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (87, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '369影视', 't4/files/drpy3_js', 't4/files/drpy3_js/369影视.js', 1, 81, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (330, '2024-05-27 10:10:44', 1, '2024-06-20 02:37:49', 1, 0, '爱看农民[优]', 't4/files/drpy_js', 't4/files/drpy_js/爱看农民[优].js', 1, 324, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (133, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, '虾米', 't4/files/js_parse_api', 't4/files/js_parse_api/虾米.js', 1, 127, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (51, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'vip_parse', 't4/files/txt', 't4/files/txt/vip_parse.conf', 1, 51, '.conf', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (112, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'mp4us', 't4/files/drpy3_js', 't4/files/drpy3_js/mp4us.js', 1, 106, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (5, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'cntv央视', 't4/spiders', 't4/spiders/cntv央视.json', 1, 9999, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (111, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'Missav', 't4/files/drpy3_js', 't4/files/drpy3_js/Missav.js', 1, 105, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (2, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'base_java_loader', 't4/spiders', 't4/spiders/base_java_loader.py', 1, 0, '.py', NULL, 1, 1, 1, 0, 0);
INSERT INTO `t_vod_rules` VALUES (109, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'meijumip', 't4/files/drpy3_js', 't4/files/drpy3_js/meijumip.js', 1, 103, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (271, '2024-05-15 06:21:15', 1, '2024-06-20 02:37:49', 1, 0, '蛋蛋赞', 't4/files/drpy_js', 't4/files/drpy_js/蛋蛋赞.js', 1, 265, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (288, '2024-05-16 08:22:12', 1, '2024-06-20 02:37:50', 1, 0, '星空影院', 't4/files/drpy_js', 't4/files/drpy_js/星空影院.js', 1, 282, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (108, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'meijumi', 't4/files/drpy3_js', 't4/files/drpy3_js/meijumi.js', 1, 102, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (124, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '玩偶姐姐', 't4/files/drpy3_js', 't4/files/drpy3_js/玩偶姐姐.js', 1, 118, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (113, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'qimiao', 't4/files/drpy3_js', 't4/files/drpy3_js/qimiao.js', 1, 107, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (136, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:48', 1, 0, '在线之家', 't4/spiders', 't4/spiders/在线之家.py', 1, 130, '.py', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (429, '2024-06-17 16:35:36', 1, '2024-06-20 02:37:48', 1, 0, '好趣网[播]', 't4/files/drpy_js', 't4/files/drpy_js/好趣网[播].js', 1, 423, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (432, '2024-06-17 16:35:36', 1, '2024-06-20 02:37:49', 1, 0, '麻雀视频[优]', 't4/files/drpy_js', 't4/files/drpy_js/麻雀视频[优].js', 1, 426, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (433, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '第一韩漫[画]', 't4/files/drpy_js', 't4/files/drpy_js/第一韩漫[画].js', 1, 427, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (127, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:49', 1, 0, '厂长资源', 't4/files/drpy_js', 't4/files/drpy_js/厂长资源.js', 1, 121, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (117, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'xb6v', 't4/files/drpy3_js', 't4/files/drpy3_js/xb6v.js', 1, 111, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (1, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, 'ad', 't4/spiders', 't4/spiders/ad.m3u8', 1, 9999, '.m3u8', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (155, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:49', 1, 0, '大米星球', 't4/files/drpy_js', 't4/files/drpy_js/大米星球.js', 1, 149, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (134, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, '阳途', 't4/files/js_parse_api', 't4/files/js_parse_api/阳途.js', 1, 128, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (116, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'tzfile', 't4/files/drpy3_js', 't4/files/drpy3_js/tzfile.js', 1, 110, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (410, '2024-06-14 18:03:33', 1, '2024-06-20 02:37:49', 1, 0, 'bilfun(自动)', 't4/files/drpy_js', 't4/files/drpy_js/bilfun(自动).js', 1, 404, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (331, '2024-05-27 12:03:03', 1, '2024-06-20 02:37:49', 1, 0, '爱看农民2[优]', 't4/files/drpy_js', 't4/files/drpy_js/爱看农民2[优].js', 1, 325, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (118, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'xzys', 't4/files/drpy3_js', 't4/files/drpy3_js/xzys.js', 1, 112, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (114, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'rrdyw', 't4/files/drpy3_js', 't4/files/drpy3_js/rrdyw.js', 1, 108, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (10, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:48', 1, 0, '哔滴影视', 't4/spiders', 't4/spiders/哔滴影视.py', 1, 10, '.py', '{{host}}/files/hipy/jars/bidi.jar', 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (135, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:48', 1, 0, '厂长资源', 't4/spiders', 't4/spiders/厂长资源.py', 1, 129, '.py', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (126, '2024-03-29 09:09:20', 1, '2024-06-20 02:37:49', 1, 0, 'freeok', 't4/files/drpy_js', 't4/files/drpy_js/freeok.js', 1, 120, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (395, '2024-06-12 10:09:51', 1, '2024-06-20 02:37:49', 1, 0, '千百视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/千百视频[密].js', 1, 389, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (440, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '维奇动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/维奇动漫[漫].js', 1, 434, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (103, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'kkpans', 't4/files/drpy3_js', 't4/files/drpy3_js/kkpans.js', 1, 97, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (130, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, '夜幕', 't4/files/js_parse_api', 't4/files/js_parse_api/夜幕.js', 1, 124, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (270, '2024-05-15 06:21:15', 1, '2024-06-20 02:37:49', 1, 0, '蛋蛋剧', 't4/files/drpy_js', 't4/files/drpy_js/蛋蛋剧.js', 1, 264, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (441, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '88看球[球]', 't4/files/drpy_js', 't4/files/drpy_js/88看球[球].js', 1, 435, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (129, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, 'CK', 't4/files/js_parse_api', 't4/files/js_parse_api/CK.js', 1, 123, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (439, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '樱花动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/樱花动漫[漫].js', 1, 433, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (110, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'meow', 't4/files/drpy3_js', 't4/files/drpy3_js/meow.js', 1, 104, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (388, '2024-06-11 10:05:03', 1, '2024-06-20 02:37:49', 1, 0, '热片网', 't4/files/drpy_js', 't4/files/drpy_js/热片网.js', 1, 382, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (322, '2024-05-25 15:45:01', 1, '2024-06-20 02:37:50', 1, 0, '电影天堂', 't4/files/drpy_js', 't4/files/drpy_js/电影天堂.js', 1, 316, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (59, '2024-02-04 14:21:09', 1, '2024-06-20 02:37:50', 1, 0, 'bili', 't4/files/json', 't4/files/json/bili.json', 1, 59, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (132, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, '盘古', 't4/files/js_parse_api', 't4/files/js_parse_api/盘古.js', 1, 126, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (131, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:51', 1, 0, '杰森', 't4/files/js_parse_api', 't4/files/js_parse_api/杰森.js', 1, 125, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (182, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'pikpakclass.json.db', 't4/files/json', 't4/files/json/pikpakclass.json.db.gz', 1, 176, '.gz', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (186, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'moli', 't4/files/json', 't4/files/json/moli.json', 1, 180, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (188, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'wgcf', 't4/files/json', 't4/files/json/wgcf.json', 1, 182, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (191, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'pg', 't4/files/jar', 't4/files/jar/pg.jar', 1, 185, '.jar', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (192, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:51', 1, 0, 'pako.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/pako.min.js', 1, 186, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (107, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'live2mv_data', 't4/files/drpy3_js', 't4/files/drpy3_js/live2mv_data.json', 1, 101, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (438, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '大米动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/大米动漫[漫].js', 1, 432, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (389, '2024-06-11 10:05:03', 1, '2024-06-20 02:37:49', 1, 0, '子子影视', 't4/files/drpy_js', 't4/files/drpy_js/子子影视.js', 1, 383, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (333, '2024-05-28 10:11:14', 1, '2024-06-20 02:37:49', 1, 0, '胖虎影视', 't4/files/drpy_js', 't4/files/drpy_js/胖虎影视.js', 1, 327, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (56, '2024-02-02 16:38:12', 1, '2024-06-20 02:37:49', 1, 0, '555影视[飞]', 't4/files/drpy_js', 't4/files/drpy_js/555影视[飞].js', 1, 56, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (81, '2024-03-08 15:53:21', 1, '2024-06-20 02:37:51', 1, 0, 'drpy3.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.min.js', 0, 75, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (390, '2024-06-11 10:05:04', 1, '2024-06-20 02:37:50', 1, 0, '天启', 't4/files/drpy_js', 't4/files/drpy_js/天启.js', 1, 384, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (172, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'jsencrypt', 't4/files/drpy_libs', 't4/files/drpy_libs/jsencrypt.js', 1, 166, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (75, '2024-02-19 18:15:01', 1, '2024-06-20 02:37:50', 1, 0, 'drpy_rules', 't4/files/json', 't4/files/json/drpy_rules.json', 1, 69, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (430, '2024-06-17 16:35:36', 1, '2024-06-20 02:37:49', 1, 0, '漫小肆[画]', 't4/files/drpy_js', 't4/files/drpy_js/漫小肆[画].js', 1, 424, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (431, '2024-06-17 16:35:36', 1, '2024-06-20 02:37:49', 1, 0, '清风DJ[听]', 't4/files/drpy_js', 't4/files/drpy_js/清风DJ[听].js', 1, 425, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (434, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '次元城动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/次元城动漫[漫].js', 1, 428, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (174, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'tokenm', 't4/files/json', 't4/files/json/tokenm.json', 1, 168, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (435, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, 'OmoFun[漫]', 't4/files/drpy_js', 't4/files/drpy_js/OmoFun[漫].js', 1, 429, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (436, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, 'R18撸[密]', 't4/files/drpy_js', 't4/files/drpy_js/R18撸[密].js', 1, 430, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (446, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '斗鱼直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/斗鱼直播[官].js', 1, 440, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (396, '2024-06-12 10:09:52', 1, '2024-06-20 02:37:49', 1, 0, '老司视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/老司视频[密].js', 1, 390, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (180, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'aliproxy', 't4/files/json', 't4/files/json/aliproxy.gz', 1, 174, '.gz', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (452, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '相声随身听[听]', 't4/files/drpy_js', 't4/files/drpy_js/相声随身听[听].js', 1, 446, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (170, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'test_rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/test_rsa.mjs', 1, 164, '.mjs', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (61, '2024-02-04 14:21:09', 1, '2024-06-20 02:37:50', 1, 0, 'live2mv_data', 't4/files/json', 't4/files/json/live2mv_data.json', 1, 61, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (153, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:49', 1, 0, '白嫖者联盟', 't4/files/drpy_js', 't4/files/drpy_js/白嫖者联盟.js', 1, 147, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (442, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '云盘资源网[盘]', 't4/files/drpy_js', 't4/files/drpy_js/云盘资源网[盘].js', 1, 436, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (444, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '虎牙直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/虎牙直播[官].js', 1, 438, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (415, '2024-06-15 06:37:46', 1, '2024-06-20 02:37:49', 1, 0, '黑狐影院', 't4/files/drpy_js', 't4/files/drpy_js/黑狐影院.js', 1, 409, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (445, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '动漫网[漫]', 't4/files/drpy_js', 't4/files/drpy_js/动漫网[漫].js', 1, 439, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (447, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '恒大影视[密]', 't4/files/drpy_js', 't4/files/drpy_js/恒大影视[密].js', 1, 441, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (448, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '爱车MV[听]', 't4/files/drpy_js', 't4/files/drpy_js/爱车MV[听].js', 1, 442, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (449, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '驴番[漫]', 't4/files/drpy_js', 't4/files/drpy_js/驴番[漫].js', 1, 443, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (451, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '多多追剧[优]', 't4/files/drpy_js', 't4/files/drpy_js/多多追剧[优].js', 1, 445, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (453, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '广播迷FM[听]', 't4/files/drpy_js', 't4/files/drpy_js/广播迷FM[听].js', 1, 447, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (160, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, '榜一短剧', 't4/files/drpy_js', 't4/files/drpy_js/榜一短剧.js', 1, 154, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (162, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'voflix', 't4/files/drpy_js', 't4/files/drpy_js/voflix.js', 1, 156, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (128, '2024-03-29 09:09:21', 1, '2024-06-20 02:37:50', 1, 0, '耐看', 't4/files/drpy_js', 't4/files/drpy_js/耐看.js', 1, 122, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (457, '2024-06-17 16:35:38', 1, '2024-06-20 02:37:50', 1, 0, 'MuteFun[漫]', 't4/files/drpy_js', 't4/files/drpy_js/MuteFun[漫].js', 1, 451, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (424, '2024-06-17 07:27:22', 1, '2024-06-20 02:37:50', 1, 0, '最新4K', 't4/files/drpy_js', 't4/files/drpy_js/最新4K.js', 1, 418, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (459, '2024-06-17 16:35:38', 1, '2024-06-20 02:37:50', 1, 0, 'NT动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/NT动漫[漫].js', 1, 453, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (175, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, '小学教育', 't4/files/json', 't4/files/json/小学教育.json', 1, 169, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (178, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'thundershare', 't4/files/json', 't4/files/json/thundershare.txt', 1, 172, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (437, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '动漫巴士[漫]', 't4/files/drpy_js', 't4/files/drpy_js/动漫巴士[漫].js', 1, 431, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (185, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'pushshare', 't4/files/json', 't4/files/json/pushshare.txt', 1, 179, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (156, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:49', 1, 0, '6V新版[磁]', 't4/files/drpy_js', 't4/files/drpy_js/6V新版[磁].js', 1, 150, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (369, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:50', 1, 0, '海洋听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/海洋听书[听].js', 1, 363, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (193, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:51', 1, 0, 'jsencrypt', 't4/files/drpy3_libs', 't4/files/drpy3_libs/jsencrypt.js', 1, 187, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (215, '2024-05-10 10:26:50', 1, '2024-06-20 02:37:51', 1, 0, '酷云77', 't4/files/drpy3_js', 't4/files/drpy3_js/酷云77.js', 1, 209, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (364, '2024-06-09 11:52:39', 1, '2024-06-20 02:37:48', 1, 0, '六月听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/六月听书[听].js', 1, 358, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (198, '2024-05-07 03:06:28', 1, '2024-06-20 02:37:49', 1, 0, 'TVB云播', 't4/files/drpy_js', 't4/files/drpy_js/TVB云播.js', 1, 192, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (385, '2024-06-10 02:30:06', 1, '2024-06-20 02:37:50', 1, 0, '橘子柚[盘]', 't4/files/drpy_js', 't4/files/drpy_js/橘子柚[盘].js', 1, 379, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (196, '2024-05-06 13:55:50', 1, '2024-06-20 02:37:49', 1, 0, '新片场', 't4/files/drpy_js', 't4/files/drpy_js/新片场.js', 1, 190, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (171, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'jsrsa.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jsrsa.min.js', 1, 165, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (173, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'alishare.ebook', 't4/files/json', 't4/files/json/alishare.ebook.txt', 1, 167, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (177, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'sambashare', 't4/files/json', 't4/files/json/sambashare.txt', 1, 171, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (197, '2024-05-06 13:55:50', 1, '2024-06-20 02:37:49', 1, 0, 'cokemv', 't4/files/drpy_js', 't4/files/drpy_js/cokemv.js', 1, 191, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (183, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'wogg', 't4/files/json', 't4/files/json/wogg.json', 1, 177, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (208, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '996影视', 't4/files/drpy3_js', 't4/files/drpy3_js/996影视.js', 1, 202, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (210, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '农民影视新', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视新.js', 1, 204, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (201, '2024-05-08 14:08:15', 1, '2024-06-20 02:37:50', 1, 0, '黑料网', 't4/files/drpy_js', 't4/files/drpy_js/黑料网.js', 1, 195, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (356, '2024-06-06 09:12:14', 1, '2024-06-20 02:37:50', 1, 0, '7猫小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/7猫小说[书].js', 1, 350, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (203, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:50', 1, 0, '磁力熊[磁]', 't4/files/drpy_js', 't4/files/drpy_js/磁力熊[磁].js', 1, 197, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (176, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'geoip.dat', 't4/files/json', 't4/files/json/geoip.dat.gz', 1, 170, '.gz', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (181, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'quarkshare', 't4/files/json', 't4/files/json/quarkshare.txt', 1, 175, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (184, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'xray', 't4/files/json', 't4/files/json/xray.gz', 1, 178, '.gz', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (346, '2024-06-02 03:26:45', 7, '2024-06-20 02:37:49', 1, 0, '阅动漫', 't4/files/drpy_js', 't4/files/drpy_js/阅动漫.json', 1, 340, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (336, '2024-05-28 13:59:41', 1, '2024-06-20 02:37:50', 1, 0, '狗狗盘[搜]', 't4/files/drpy_js', 't4/files/drpy_js/狗狗盘[搜].js', 1, 330, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (187, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, '白嫖筛选', 't4/files/json', 't4/files/json/白嫖筛选.json', 1, 181, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (189, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'alishare', 't4/files/json', 't4/files/json/alishare.txt', 1, 183, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (190, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'pg', 't4/files/txt', 't4/files/txt/pg.conf', 1, 184, '.conf', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (211, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '农民影视2', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视2.js', 1, 205, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (213, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '农民影视', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视.js', 1, 207, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (202, '2024-05-09 11:39:58', 1, '2024-06-20 02:37:49', 1, 0, '七年影视', 't4/files/drpy_js', 't4/files/drpy_js/七年影视.js', 1, 196, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (161, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, '大米星球[V2]', 't4/files/drpy_js', 't4/files/drpy_js/大米星球[V2].js', 1, 155, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (168, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'pako.min', 't4/files/drpy_libs', 't4/files/drpy_libs/pako.min.js', 1, 162, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (206, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:50', 1, 0, 'node-rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/node-rsa.js', 1, 200, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (179, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:50', 1, 0, 'pikpakclass', 't4/files/json', 't4/files/json/pikpakclass.json', 1, 173, '.json', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (123, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, '朱古力', 't4/files/drpy3_js', 't4/files/drpy3_js/朱古力.js', 1, 117, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (207, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, 'node-rsa', 't4/files/drpy3_libs', 't4/files/drpy3_libs/node-rsa.js', 1, 201, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (200, '2024-05-08 14:08:15', 1, '2024-06-20 02:37:49', 1, 0, '侠客影视', 't4/files/drpy_js', 't4/files/drpy_js/侠客影视.js', 1, 194, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (212, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, 'heiliao', 't4/files/drpy3_js', 't4/files/drpy3_js/heiliao.js', 1, 206, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (195, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:51', 1, 0, '去广告测试源1', 't4/files/drpy3_js', 't4/files/drpy3_js/去广告测试源1.js', 1, 189, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (367, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:49', 1, 0, '播客[听]', 't4/files/drpy_js', 't4/files/drpy_js/播客[听].js', 1, 361, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (209, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '小蚂蚁资源', 't4/files/drpy3_js', 't4/files/drpy3_js/小蚂蚁资源.js', 1, 203, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (194, '2024-05-06 13:29:00', 1, '2024-06-20 02:37:51', 1, 0, '去广告测试源', 't4/files/drpy3_js', 't4/files/drpy3_js/去广告测试源.js', 1, 188, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (214, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:51', 1, 0, '小蚂蚁资源2', 't4/files/drpy3_js', 't4/files/drpy3_js/小蚂蚁资源2.js', 1, 208, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (366, '2024-06-09 11:52:39', 1, '2024-06-20 02:37:49', 1, 0, 'i275听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/i275听书[听].js', 1, 360, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (26, '2024-02-01 14:31:22', 1, '2024-06-20 02:37:50', 1, 0, 'alist.min', 't4/files/drpy_libs', 't4/files/drpy_libs/alist.min.js', 1, 26, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (240, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '腾云驾雾[官]', 't4/files/drpy_js', 't4/files/drpy_js/腾云驾雾[官].js', 1, 234, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (245, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '网飞猫[优]', 't4/files/drpy_js', 't4/files/drpy_js/网飞猫[优].js', 1, 239, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (229, '2024-05-14 08:53:58', 1, '2024-06-20 02:37:49', 1, 0, '宝片视频', 't4/files/drpy_js', 't4/files/drpy_js/宝片视频.js', 1, 223, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (242, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '奇珍异兽[官]', 't4/files/drpy_js', 't4/files/drpy_js/奇珍异兽[官].js', 1, 236, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (243, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '百忙无果[官]', 't4/files/drpy_js', 't4/files/drpy_js/百忙无果[官].js', 1, 237, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (244, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '阿里土豆[盘]', 't4/files/drpy_js', 't4/files/drpy_js/阿里土豆[盘].js', 1, 238, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (246, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '我的哔哩[官]', 't4/files/drpy_js', 't4/files/drpy_js/我的哔哩[官].js', 1, 240, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (248, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '南瓜影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/南瓜影视[优].js', 1, 242, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (249, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '量子资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/量子资源[资].js', 1, 243, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (286, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '人人影视', 't4/files/drpy_js', 't4/files/drpy_js/人人影视.js', 1, 280, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (292, '2024-05-16 17:25:50', 1, '2024-06-20 02:37:49', 1, 0, '美益达', 't4/files/drpy_js', 't4/files/drpy_js/美益达.js', 1, 286, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (295, '2024-05-18 06:05:14', 1, '2024-06-20 02:37:49', 1, 0, '夕云影视', 't4/files/drpy_js', 't4/files/drpy_js/夕云影视.js', 1, 289, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (296, '2024-05-18 06:05:14', 1, '2024-06-20 02:37:50', 1, 0, '420电影院', 't4/files/drpy_js', 't4/files/drpy_js/420电影院.js', 1, 290, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (253, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '农民影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/农民影视[优].js', 1, 247, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (254, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '爱看机器人[虫]', 't4/files/drpy_js', 't4/files/drpy_js/爱看机器人[虫].js', 1, 248, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (220, '2024-05-11 14:54:31', 1, '2024-06-20 02:37:50', 1, 0, '海外剧汇', 't4/files/drpy_js', 't4/files/drpy_js/海外剧汇.js', 1, 214, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (255, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '量子影视[资]', 't4/files/drpy_js', 't4/files/drpy_js/量子影视[资].js', 1, 249, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (232, '2024-05-14 17:57:11', 1, '2024-06-20 02:37:49', 1, 0, '看57', 't4/files/drpy_js', 't4/files/drpy_js/看57.js', 1, 226, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (335, '2024-05-28 13:59:41', 1, '2024-06-20 02:37:50', 1, 0, '小站盘[搜]', 't4/files/drpy_js', 't4/files/drpy_js/小站盘[搜].js', 1, 329, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (231, '2024-05-14 08:53:58', 1, '2024-06-20 02:37:50', 1, 0, '新茶杯狐', 't4/files/drpy_js', 't4/files/drpy_js/新茶杯狐.js', 1, 225, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (289, '2024-05-16 08:22:12', 1, '2024-06-20 02:37:50', 1, 0, 'HDmoli', 't4/files/drpy_js', 't4/files/drpy_js/HDmoli.js', 1, 283, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (221, '2024-05-11 14:54:31', 1, '2024-06-20 02:37:50', 1, 0, '美剧星球', 't4/files/drpy_js', 't4/files/drpy_js/美剧星球.js', 1, 215, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (219, '2024-05-11 14:54:30', 1, '2024-06-20 02:37:48', 1, 0, '千神影视', 't4/files/drpy_js', 't4/files/drpy_js/千神影视.js', 1, 213, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (234, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:48', 1, 0, '极客资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/极客资源[资].js', 1, 228, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (235, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:48', 1, 0, 'ok资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/ok资源[资].js', 1, 229, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (222, '2024-05-11 18:12:59', 1, '2024-06-20 02:37:48', 1, 0, '橙汁影视', 't4/files/drpy_js', 't4/files/drpy_js/橙汁影视.js', 1, 216, '.js', NULL, 1, 0, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (280, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:48', 1, 0, '酷客影视', 't4/files/drpy_js', 't4/files/drpy_js/酷客影视.js', 1, 274, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (281, '2024-05-16 08:22:11', 1, '2024-06-20 02:37:49', 1, 0, '热播之家', 't4/files/drpy_js', 't4/files/drpy_js/热播之家.js', 1, 275, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (237, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '卧龙资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/卧龙资源[资].js', 1, 231, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (294, '2024-05-18 06:05:14', 1, '2024-06-20 02:37:49', 1, 0, '即看影视', 't4/files/drpy_js', 't4/files/drpy_js/即看影视.js', 1, 288, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (323, '2024-05-26 11:05:14', 1, '2024-06-20 02:37:49', 1, 0, '短剧天堂', 't4/files/drpy_js', 't4/files/drpy_js/短剧天堂.js', 1, 317, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (250, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '烧火影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/烧火影视[优].js', 1, 244, '.js', NULL, 1, 0, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (238, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '非凡资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/非凡资源[资].js', 1, 232, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (241, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '360影视[官]', 't4/files/drpy_js', 't4/files/drpy_js/360影视[官].js', 1, 235, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (251, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '可可影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/可可影视[优].js', 1, 245, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (256, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '暴风资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/暴风资源[资].js', 1, 250, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (257, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '豆瓣[官]', 't4/files/drpy_js', 't4/files/drpy_js/豆瓣[官].js', 1, 251, '.js', '?render=1', 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (239, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '素白白[优]', 't4/files/drpy_js', 't4/files/drpy_js/素白白[优].js', 1, 233, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (454, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '包子漫画[画]', 't4/files/drpy_js', 't4/files/drpy_js/包子漫画[画].js', 1, 448, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (419, '2024-06-15 06:37:46', 1, '2024-06-20 02:37:50', 1, 0, '速播小屋', 't4/files/drpy_js', 't4/files/drpy_js/速播小屋.js', 1, 413, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (420, '2024-06-15 06:37:46', 1, '2024-06-20 02:37:50', 1, 0, 'iku喵[资]', 't4/files/drpy_js', 't4/files/drpy_js/iku喵[资].js', 1, 414, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (236, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '索尼资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/索尼资源[资].js', 1, 230, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (443, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '哔哩直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/哔哩直播[官].js', 1, 437, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (425, '2024-06-17 10:13:18', 1, '2024-06-20 02:37:49', 1, 0, 'JRKAN直播', 't4/files/drpy_js', 't4/files/drpy_js/JRKAN直播.js', 1, 419, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (370, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:50', 1, 0, '有声绘本网[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声绘本网[听].js', 1, 364, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (460, '2024-06-17 16:35:38', 1, '2024-06-20 02:37:50', 1, 0, '星辰[优]', 't4/files/drpy_js', 't4/files/drpy_js/星辰[优].js', 1, 454, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (205, '2024-05-10 10:26:49', 1, '2024-06-20 02:37:50', 1, 0, 'test_node_rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/test_node_rsa.mjs', 1, 199, '.mjs', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (324, '2024-05-26 11:05:14', 1, '2024-06-20 02:37:49', 1, 0, '飘花影院', 't4/files/drpy_js', 't4/files/drpy_js/飘花影院.js', 1, 318, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (169, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:50', 1, 0, 'jsrsa', 't4/files/drpy_libs', 't4/files/drpy_libs/jsrsa.js', 1, 163, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (115, '2024-03-10 11:22:54', 1, '2024-06-20 02:37:51', 1, 0, 'template', 't4/files/drpy3_js', 't4/files/drpy3_js/template.js', 0, 109, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (259, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, 'LIBVIO[优]', 't4/files/drpy_js', 't4/files/drpy_js/LIBVIO[优].js', 1, 253, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (368, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:49', 1, 0, '爱上你听书网[听]', 't4/files/drpy_js', 't4/files/drpy_js/爱上你听书网[听].js', 1, 362, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (321, '2024-05-25 15:45:01', 1, '2024-06-20 02:37:50', 1, 0, '如意影视', 't4/files/drpy_js', 't4/files/drpy_js/如意影视.js', 1, 315, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (413, '2024-06-15 06:37:45', 1, '2024-06-20 02:37:49', 1, 0, '大师兄影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/大师兄影视[优].js', 1, 407, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (455, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '古风漫画[画]', 't4/files/drpy_js', 't4/files/drpy_js/古风漫画[画].js', 1, 449, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (456, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:50', 1, 0, '七色番[漫]', 't4/files/drpy_js', 't4/files/drpy_js/七色番[漫].js', 1, 450, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (416, '2024-06-15 06:37:46', 1, '2024-06-20 02:37:49', 1, 0, '剧集TV', 't4/files/drpy_js', 't4/files/drpy_js/剧集TV.js', 1, 410, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (158, '2024-05-06 13:28:59', 1, '2024-06-20 02:37:49', 1, 0, '777影视', 't4/files/drpy_js', 't4/files/drpy_js/777影视.js', 1, 152, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (325, '2024-05-26 11:05:14', 1, '2024-06-20 02:37:49', 1, 0, '我播', 't4/files/drpy_js', 't4/files/drpy_js/我播.js', 1, 319, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (227, '2024-05-12 19:13:04', 1, '2024-06-20 02:37:49', 1, 0, '掌心世界', 't4/files/drpy_js', 't4/files/drpy_js/掌心世界.js', 1, 221, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (371, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:50', 1, 0, '博看听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/博看听书[听].js', 1, 365, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (382, '2024-06-09 18:53:00', 1, '2024-06-20 02:37:50', 1, 0, '顶点小说2[书]', 't4/files/drpy_js', 't4/files/drpy_js/顶点小说2[书].js', 1, 376, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (458, '2024-06-17 16:35:38', 1, '2024-06-20 02:37:50', 1, 0, '有声听书网[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声听书网[听].js', 1, 452, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (397, '2024-06-13 04:47:01', 1, '2024-06-20 02:37:48', 1, 0, '剧圈圈[自动]', 't4/files/drpy_js', 't4/files/drpy_js/剧圈圈[自动].js', 1, 391, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (275, '2024-05-15 10:03:27', 1, '2024-06-20 02:37:48', 1, 0, '时光影院', 't4/files/drpy_js', 't4/files/drpy_js/时光影院.js', 1, 269, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (247, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '金鹰资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/金鹰资源[资].js', 1, 241, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (326, '2024-05-26 11:05:14', 1, '2024-06-20 02:37:49', 1, 0, '想看影院', 't4/files/drpy_js', 't4/files/drpy_js/想看影院.js', 1, 320, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (465, '2024-06-18 16:03:22', 1, '2024-06-20 02:37:49', 1, 0, '刺猬影视', 't4/files/drpy_js', 't4/files/drpy_js/刺猬影视.js', 1, 459, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (450, '2024-06-17 16:35:37', 1, '2024-06-20 02:37:49', 1, 0, '58动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/58动漫[漫].js', 1, 444, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (218, '2024-05-10 18:07:08', 1, '2024-06-20 02:37:50', 1, 0, '可达影视', 't4/files/drpy_js', 't4/files/drpy_js/可达影视.js', 1, 212, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (327, '2024-05-26 11:05:14', 1, '2024-06-20 02:37:49', 1, 0, '小鱼影视', 't4/files/drpy_js', 't4/files/drpy_js/小鱼影视.js', 1, 321, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (391, '2024-06-11 10:48:33', 1, '2024-06-20 02:37:49', 1, 0, '我看书斋[书]', 't4/files/drpy_js', 't4/files/drpy_js/我看书斋[书].js', 1, 385, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (400, '2024-06-13 09:30:12', 1, '2024-06-20 02:37:49', 1, 0, '29片库[密]', 't4/files/drpy_js', 't4/files/drpy_js/29片库[密].js', 1, 394, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (414, '2024-06-15 06:37:45', 1, '2024-06-20 02:37:49', 1, 0, '看戏网', 't4/files/drpy_js', 't4/files/drpy_js/看戏网.js', 1, 408, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (404, '2024-06-13 09:30:13', 1, '2024-06-20 02:37:50', 1, 0, '乐草TV[密]', 't4/files/drpy_js', 't4/files/drpy_js/乐草TV[密].js', 1, 398, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (373, '2024-06-09 11:52:40', 1, '2024-06-20 02:37:50', 1, 0, '有声小说吧[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声小说吧[听].js', 1, 367, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (359, '2024-06-07 10:19:39', 1, '2024-06-20 02:37:49', 1, 0, '蜡笔[盘]', 't4/files/drpy_js', 't4/files/drpy_js/蜡笔[盘].js', 1, 353, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (300, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:49', 1, 0, '茶语资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/茶语资源[资].js', 1, 294, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (341, '2024-05-29 09:43:51', 1, '2024-06-20 02:37:50', 1, 0, '蚂蚁影视', 't4/files/drpy_js', 't4/files/drpy_js/蚂蚁影视.js', 1, 335, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (305, '2024-05-22 15:37:31', 1, '2024-06-20 02:37:50', 1, 0, 'jsonpathplus.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jsonpathplus.min.js', 1, 299, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (252, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '魔都资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/魔都资源[资].js', 1, 246, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (297, '2024-05-19 02:54:49', 1, '2024-06-20 02:37:50', 1, 0, 'tokenm.readme', 't4/files/json', 't4/files/json/tokenm.readme.txt', 1, 291, '.txt', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (298, '2024-05-19 02:54:49', 1, '2024-06-20 02:37:50', 1, 0, 'pg.jar', 't4/files/jar', 't4/files/jar/pg.jar.md5', 1, 292, '.md5', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (258, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '玩偶哥哥[盘]', 't4/files/drpy_js', 't4/files/drpy_js/玩偶哥哥[盘].js', 1, 252, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (261, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '花子动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/花子动漫[漫].js', 1, 255, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (417, '2024-06-15 06:37:46', 1, '2024-06-20 02:37:49', 1, 0, '一起看[优]', 't4/files/drpy_js', 't4/files/drpy_js/一起看[优].js', 1, 411, '.js', NULL, 1, 0, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (224, '2024-05-11 18:13:00', 1, '2024-06-20 02:37:51', 1, 0, '白嫖影视', 't4/files/drpy3_js', 't4/files/drpy3_js/白嫖影视.js', 1, 218, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (401, '2024-06-13 09:30:13', 1, '2024-06-20 02:37:50', 1, 0, '草莓秒播[密]', 't4/files/drpy_js', 't4/files/drpy_js/草莓秒播[密].js', 1, 395, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (398, '2024-06-13 09:30:12', 1, '2024-06-20 02:37:49', 1, 0, '黑料不打烊[密]', 't4/files/drpy_js', 't4/files/drpy_js/黑料不打烊[密].js', 1, 392, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (402, '2024-06-13 09:30:13', 1, '2024-06-20 02:37:50', 1, 0, '绿色仓库[密]', 't4/files/drpy_js', 't4/files/drpy_js/绿色仓库[密].js', 1, 396, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (392, '2024-06-12 02:16:52', 1, '2024-06-20 02:37:49', 1, 0, '一点视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/一点视频[密].js', 1, 386, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (399, '2024-06-13 09:30:12', 1, '2024-06-20 02:37:49', 1, 0, '爱爱影院[密]', 't4/files/drpy_js', 't4/files/drpy_js/爱爱影院[密].js', 1, 393, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (426, '2024-06-17 10:13:18', 1, '2024-06-20 02:37:50', 1, 0, '追剧兔', 't4/files/drpy_js', 't4/files/drpy_js/追剧兔.js', 1, 420, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (262, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:50', 1, 0, '优酷[官]', 't4/files/drpy_js', 't4/files/drpy_js/优酷[官].js', 1, 256, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (277, '2024-05-15 10:03:27', 1, '2024-06-20 02:37:50', 1, 0, '皮皮影视', 't4/files/drpy_js', 't4/files/drpy_js/皮皮影视.js', 1, 271, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (263, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:50', 1, 0, '哔哩影视[官]', 't4/files/drpy_js', 't4/files/drpy_js/哔哩影视[官].js', 1, 257, '.js', '?render=1', 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (265, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:50', 1, 0, '极速资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/极速资源[资].js', 1, 259, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (466, '2024-06-19 03:46:08', 1, '2024-06-20 02:37:50', 1, 0, '文才[资]', 't4/files/drpy_js', 't4/files/drpy_js/文才[资].js', 1, 460, '.js', NULL, 1, 1, 1, 1, 1);
INSERT INTO `t_vod_rules` VALUES (303, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:50', 1, 0, 'jinja.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jinja.min.js', 1, 297, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (375, '2024-06-09 16:28:15', 1, '2024-06-20 02:37:48', 1, 0, '顶点小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/顶点小说[书].js', 1, 369, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (301, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:50', 1, 0, '电影先生', 't4/files/drpy_js', 't4/files/drpy_js/电影先生.js', 1, 295, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (304, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:50', 1, 0, 'jinja', 't4/files/drpy_libs', 't4/files/drpy_libs/jinja.js', 1, 298, '.js', NULL, 1, 0, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (230, '2024-05-14 08:53:58', 1, '2024-06-20 02:37:50', 1, 0, '易看影视', 't4/files/drpy_js', 't4/files/drpy_js/易看影视.js', 1, 224, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (306, '2024-05-23 10:17:08', 1, '2024-06-20 02:37:49', 1, 0, '新视觉', 't4/files/drpy_js', 't4/files/drpy_js/新视觉.js', 1, 300, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (260, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:49', 1, 0, '兔小贝[儿]', 't4/files/drpy_js', 't4/files/drpy_js/兔小贝[儿].js', 1, 254, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (360, '2024-06-07 11:27:00', 1, '2024-06-20 02:37:49', 1, 0, '虾酱追剧', 't4/files/drpy_js', 't4/files/drpy_js/虾酱追剧.js', 1, 354, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (217, '2024-05-10 18:07:08', 1, '2024-06-20 02:37:49', 1, 0, '一起看', 't4/files/drpy_js', 't4/files/drpy_js/一起看.js', 1, 211, '.js', NULL, 1, 0, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (408, '2024-06-14 11:29:46', 1, '2024-06-20 02:37:49', 1, 0, '地瓜视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/地瓜视频[密].js', 1, 402, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (421, '2024-06-15 07:26:03', 1, '2024-06-20 02:37:49', 1, 0, '天天影视', 't4/files/drpy_js', 't4/files/drpy_js/天天影视.js', 1, 415, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (339, '2024-05-29 09:43:50', 1, '2024-06-20 02:37:49', 1, 0, '暖光影视', 't4/files/drpy_js', 't4/files/drpy_js/暖光影视.js', 1, 333, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (313, '2024-05-24 11:27:11', 1, '2024-06-20 02:37:49', 1, 0, '首发网', 't4/files/drpy_js', 't4/files/drpy_js/首发网.js', 1, 307, '.js', NULL, 1, 0, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (409, '2024-06-14 11:29:46', 1, '2024-06-20 02:37:50', 1, 0, '神仙影视', 't4/files/drpy_js', 't4/files/drpy_js/神仙影视.js', 1, 403, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (293, '2024-05-17 03:38:35', 1, '2024-06-20 02:37:50', 1, 0, '干饭影视', 't4/files/drpy_js', 't4/files/drpy_js/干饭影视.js', 1, 287, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (307, '2024-05-24 05:50:49', 1, '2024-06-20 02:37:50', 1, 0, '4k剧院', 't4/files/drpy_js', 't4/files/drpy_js/4k剧院.js', 1, 301, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (264, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:50', 1, 0, '菜狗[官]', 't4/files/drpy_js', 't4/files/drpy_js/菜狗[官].js', 1, 258, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (310, '2024-05-24 11:27:11', 1, '2024-06-20 02:37:49', 1, 0, '往往影视[慢]', 't4/files/drpy_js', 't4/files/drpy_js/往往影视[慢].js', 1, 304, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (299, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:49', 1, 0, '8号影院', 't4/files/drpy_js', 't4/files/drpy_js/8号影院.js', 1, 293, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (403, '2024-06-13 09:30:13', 1, '2024-06-20 02:37:50', 1, 0, 'Pornhub[密]', 't4/files/drpy_js', 't4/files/drpy_js/Pornhub[密].js', 1, 397, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (233, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:48', 1, 0, '神马电影[搜]', 't4/files/drpy_js', 't4/files/drpy_js/神马电影[搜].js', 1, 227, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (290, '2024-05-16 10:22:36', 1, '2024-06-20 02:37:48', 1, 0, '4khdr', 't4/files/drpy_js', 't4/files/drpy_js/4khdr.js', 1, 284, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (311, '2024-05-24 11:27:11', 1, '2024-06-20 02:37:49', 1, 0, '爱看影院', 't4/files/drpy_js', 't4/files/drpy_js/爱看影院.js', 1, 305, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (406, '2024-06-14 11:29:44', 1, '2024-06-20 02:37:48', 1, 0, '星辰CT', 't4/files/drpy_js', 't4/files/drpy_js/星辰CT.js', 1, 400, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (309, '2024-05-24 11:27:11', 1, '2024-06-20 02:37:48', 1, 0, '魔方影视', 't4/files/drpy_js', 't4/files/drpy_js/魔方影视.js', 1, 303, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (278, '2024-05-15 14:55:44', 1, '2024-06-20 02:37:49', 1, 0, '影视看吧', 't4/files/drpy_js', 't4/files/drpy_js/影视看吧.js', 1, 272, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (427, '2024-06-17 15:02:35', 1, '2024-06-20 02:37:49', 1, 0, '无插件直播', 't4/files/drpy_js', 't4/files/drpy_js/无插件直播.js', 1, 421, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (312, '2024-05-24 11:27:11', 1, '2024-06-20 02:37:49', 1, 0, '一号影院[搜]', 't4/files/drpy_js', 't4/files/drpy_js/一号影院[搜].js', 1, 306, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (461, '2024-06-17 16:45:34', 1, '2024-06-20 02:37:50', 1, 0, '飞刀资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/飞刀资源[资].js', 1, 455, '.js', NULL, 1, 1, 0, 1, 1);
INSERT INTO `t_vod_rules` VALUES (462, '2024-06-17 16:45:34', 1, '2024-06-20 02:37:50', 1, 0, '我的哔哩传参[官]', 't4/files/drpy_js', 't4/files/drpy_js/我的哔哩传参[官].js', 1, 456, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (266, '2024-05-15 01:58:31', 1, '2024-06-20 02:37:50', 1, 0, '荐片[优]', 't4/files/drpy_js', 't4/files/drpy_js/荐片[优].js', 1, 260, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (351, '2024-06-04 16:02:34', 1, '2024-06-20 02:37:48', 1, 0, '短剧在线', 't4/files/drpy_js', 't4/files/drpy_js/短剧在线.js', 1, 345, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (302, '2024-05-22 15:37:30', 1, '2024-06-20 02:37:50', 1, 0, '鸭奈飞影视', 't4/files/drpy_js', 't4/files/drpy_js/鸭奈飞影视.js', 1, 296, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (340, '2024-05-29 09:43:51', 1, '2024-06-20 02:37:50', 1, 0, '被窝电影', 't4/files/drpy_js', 't4/files/drpy_js/被窝电影.js', 1, 334, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (378, '2024-06-09 18:53:00', 1, '2024-06-20 02:37:49', 1, 0, '丫丫电子书[书]', 't4/files/drpy_js', 't4/files/drpy_js/丫丫电子书[书].js', 1, 372, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (314, '2024-05-24 15:02:58', 1, '2024-06-20 02:37:49', 1, 0, '星辰影视', 't4/files/drpy_js', 't4/files/drpy_js/星辰影视.js', 1, 308, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (464, '2024-06-18 16:03:22', 1, '2024-06-20 02:37:49', 1, 0, '路视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/路视频[密].js', 1, 458, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (405, '2024-06-13 09:57:03', 1, '2024-06-20 02:37:49', 1, 0, '酷云影视', 't4/files/drpy_js', 't4/files/drpy_js/酷云影视.js', 1, 399, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (352, '2024-06-04 16:02:34', 1, '2024-06-20 02:37:49', 1, 0, '哈皮影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/哈皮影视[优].js', 1, 346, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (353, '2024-06-04 16:02:34', 1, '2024-06-20 02:37:49', 1, 0, '笔趣阁[书]', 't4/files/drpy_js', 't4/files/drpy_js/笔趣阁[书].js', 1, 347, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (407, '2024-06-14 11:29:45', 1, '2024-06-20 02:37:49', 1, 0, '爱迪[自动]', 't4/files/drpy_js', 't4/files/drpy_js/爱迪[自动].js', 1, 401, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (315, '2024-05-24 15:02:58', 1, '2024-06-20 02:37:49', 1, 0, '大中国', 't4/files/drpy_js', 't4/files/drpy_js/大中国.js', 1, 309, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (394, '2024-06-12 02:16:53', 1, '2024-06-20 02:37:49', 1, 0, '九妖仓库[密]', 't4/files/drpy_js', 't4/files/drpy_js/九妖仓库[密].js', 1, 388, '.js', NULL, 1, 1, 1, 0, 1);
INSERT INTO `t_vod_rules` VALUES (422, '2024-06-15 07:26:04', 1, '2024-06-20 02:37:49', 1, 0, '九牛电影', 't4/files/drpy_js', 't4/files/drpy_js/九牛电影.js', 1, 416, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (428, '2024-06-17 16:02:19', 1, '2024-06-20 02:37:49', 1, 0, '猫视界', 't4/files/drpy_js', 't4/files/drpy_js/猫视界.js', 1, 422, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (342, '2024-05-29 16:32:00', 1, '2024-06-20 02:37:50', 1, 0, '影搜[搜]', 't4/files/drpy_js', 't4/files/drpy_js/影搜[搜].js', 1, 336, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (316, '2024-05-24 15:02:59', 1, '2024-06-20 02:37:50', 1, 0, '剧圈圈', 't4/files/drpy_js', 't4/files/drpy_js/剧圈圈.js', 1, 310, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (317, '2024-05-24 15:02:59', 1, '2024-06-20 02:37:50', 1, 0, '短剧TV网', 't4/files/drpy_js', 't4/files/drpy_js/短剧TV网.js', 1, 311, '.js', NULL, 1, 1, 0, 0, 1);
INSERT INTO `t_vod_rules` VALUES (463, '2024-06-18 16:03:22', 1, '2024-06-20 02:37:49', 1, 0, '七新电影网', 't4/files/drpy_js', 't4/files/drpy_js/七新电影网.js', 1, 457, '.js', NULL, 1, 1, 1, 0, 1);

-- ----------------------------
-- Table structure for t_vod_subs
-- ----------------------------
DROP TABLE IF EXISTS `t_vod_subs`;
CREATE TABLE `t_vod_subs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `creator_id` int(11) NULL DEFAULT 0 COMMENT '创建人id',
  `modified_time` datetime(0) NULL DEFAULT current_timestamp(0) COMMENT '更新时间',
  `modifier_id` int(11) NULL DEFAULT 0 COMMENT '修改人id',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '逻辑删除:0=未删除,1=删除',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '订阅名称',
  `code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订阅代码',
  `reg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '正则表达式',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `mode` int(11) NULL DEFAULT 0 COMMENT '匹配模式:0正向匹配 1逆向排除',
  `due_time` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_t_vod_subs_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vod_subs
-- ----------------------------
INSERT INTO `t_vod_subs` VALUES (1, '2024-06-19 09:53:59', 1, '2024-06-19 09:53:59', 0, 0, '全部', 'dzyyds', '.*', 1, 0, NULL);
INSERT INTO `t_vod_subs` VALUES (3, '2024-06-19 10:06:27', 1, '2024-06-19 10:58:42', 1, 0, '不含18+', 'green1', '密', 1, 1, NULL);
INSERT INTO `t_vod_subs` VALUES (2, '2024-06-19 09:54:38', 1, '2024-06-19 10:59:24', 1, 0, '18+', 'yellow1', '密', 1, 0, '2024-12-16 17:54:36');
INSERT INTO `t_vod_subs` VALUES (4, '2024-06-20 02:08:06', 1, '2024-06-20 02:08:06', 0, 0, '官源', 'luNhHy', '官', 1, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
