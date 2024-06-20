/*
 Navicat Premium Data Transfer

 Source Server         : 本地pg
 Source Server Type    : PostgreSQL
 Source Server Version : 120000
 Source Host           : localhost:5432
 Source Catalog        : hipy5
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120000
 File Encoding         : 65001

 Date: 20/06/2024 11:27:54
*/


-- ----------------------------
-- Sequence structure for t_config_settings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_config_settings_id_seq";
CREATE SEQUENCE "public"."t_config_settings_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_dict_data_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_dict_data_id_seq";
CREATE SEQUENCE "public"."t_dict_data_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_dict_details_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_dict_details_id_seq";
CREATE SEQUENCE "public"."t_dict_details_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_hiker_developer_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_hiker_developer_id_seq";
CREATE SEQUENCE "public"."t_hiker_developer_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_hiker_rule_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_hiker_rule_id_seq";
CREATE SEQUENCE "public"."t_hiker_rule_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_hiker_rule_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_hiker_rule_type_id_seq";
CREATE SEQUENCE "public"."t_hiker_rule_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_id_seq";
CREATE SEQUENCE "public"."t_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_job_log_id_seq";
CREATE SEQUENCE "public"."t_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_login_infor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_login_infor_id_seq";
CREATE SEQUENCE "public"."t_login_infor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_menus_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_menus_id_seq";
CREATE SEQUENCE "public"."t_menus_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_perm_label_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_perm_label_id_seq";
CREATE SEQUENCE "public"."t_perm_label_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_perm_label_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_perm_label_role_id_seq";
CREATE SEQUENCE "public"."t_perm_label_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_role_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_menu_id_seq";
CREATE SEQUENCE "public"."t_role_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_roles_id_seq";
CREATE SEQUENCE "public"."t_roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_user_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_user_role_id_seq";
CREATE SEQUENCE "public"."t_user_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_users_id_seq";
CREATE SEQUENCE "public"."t_users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_vod_configs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_vod_configs_id_seq";
CREATE SEQUENCE "public"."t_vod_configs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_vod_rules_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_vod_rules_id_seq";
CREATE SEQUENCE "public"."t_vod_rules_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_vod_subs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_vod_subs_id_seq";
CREATE SEQUENCE "public"."t_vod_subs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for t_config_settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_config_settings";
CREATE TABLE "public"."t_config_settings" (
  "id" int4 NOT NULL DEFAULT nextval('t_config_settings_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "key" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(256) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" int4 DEFAULT 0,
  "order_num" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_config_settings"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_config_settings"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_config_settings"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_config_settings"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_config_settings"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_config_settings"."name" IS '参数名称';
COMMENT ON COLUMN "public"."t_config_settings"."key" IS '参数键名';
COMMENT ON COLUMN "public"."t_config_settings"."value" IS '参数键值';
COMMENT ON COLUMN "public"."t_config_settings"."remark" IS '备注';
COMMENT ON COLUMN "public"."t_config_settings"."status" IS '状态 0: 正常  1:停用';
COMMENT ON COLUMN "public"."t_config_settings"."order_num" IS '排序';

-- ----------------------------
-- Records of t_config_settings
-- ----------------------------
INSERT INTO "public"."t_config_settings" VALUES (1, '2022-11-13 02:47:53', 0, '2022-11-13 02:47:53', 0, 0, '用户初始角色', 'user_init_roles', 'general', '0', 0, 1);
INSERT INTO "public"."t_config_settings" VALUES (2, '2023-12-04 22:13:09', 1, '2023-12-09 12:29:32', 1, 0, '数据库升级密码', 'database_update_auth', 'hjdhnx', '默认密码hjdhnx', 0, 2);
INSERT INTO "public"."t_config_settings" VALUES (4, '2023-12-09 12:53:44', 0, '2024-01-02 22:14:43', 1, 0, '登录日志记录验证码错误', 'log_captcha_error', '0', '0/false不记录 1/true记录', 0, 4);
INSERT INTO "public"."t_config_settings" VALUES (5, '2023-12-10 16:19:44', 1, '2023-12-10 16:20:17', 1, 1, '定时任务启动状态', 'sys_job_status', '0', '0 暂停 1 运行', 0, 12);
INSERT INTO "public"."t_config_settings" VALUES (6, '2024-01-02 22:10:13', 1, '2024-01-02 22:14:30', 1, 0, '用户初始密码', 'default_password', '123456', '用户表导入的时候按这个密码创建用户记录', 0, 1);
INSERT INTO "public"."t_config_settings" VALUES (3, '2023-12-04 23:04:31', 1, '2024-01-31 15:52:15.209255', 1, 0, '登录需要验证码', 'login_with_captcha', 'no', 'yes 开启 no 关闭', 0, 3);

-- ----------------------------
-- Table structure for t_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dict_data";
CREATE TABLE "public"."t_dict_data" (
  "id" int4 NOT NULL DEFAULT nextval('t_dict_data_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "dict_type" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "remark" varchar(256) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" int4 DEFAULT 0,
  "order_num" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_dict_data"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_dict_data"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_dict_data"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_dict_data"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_dict_data"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."t_dict_data"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."t_dict_data"."remark" IS '备注';
COMMENT ON COLUMN "public"."t_dict_data"."status" IS '状态 0: 正常  1:停用';
COMMENT ON COLUMN "public"."t_dict_data"."order_num" IS '排序';

-- ----------------------------
-- Records of t_dict_data
-- ----------------------------
INSERT INTO "public"."t_dict_data" VALUES (1, '2022-11-13 02:49:40', 0, '2022-11-13 02:49:40', 0, 0, 'permission_user_sex', '用户性别', '(0: 未知; 1: 男; 2: 女)', 0, 1);
INSERT INTO "public"."t_dict_data" VALUES (2, '2022-11-13 02:49:40', 0, '2022-11-13 02:49:40', 0, 0, 'com_default_status', '通用状态字典', '(0: 正常; 1: 停用)', 0, 2);
INSERT INTO "public"."t_dict_data" VALUES (3, '2022-11-13 02:49:40', 0, '2023-12-02 15:40:02', 1, 0, 'permission_user_status', '用户状态', NULL, 0, 1);
INSERT INTO "public"."t_dict_data" VALUES (4, '2023-12-04 19:53:00', 1, '2023-12-04 19:57:21', 1, 0, 'hiker_rule_data_type', '海阔视界规则数据类型', '[(''home_rule_url'', ''首页云规则''), (''publish'', ''提交云仓库''), (''js_url'', ''网页插件''),(''html'',''静态页面''),(''config'',''主页配置'')]', 0, 3);
INSERT INTO "public"."t_dict_data" VALUES (5, '2023-12-10 16:20:45', 1, '2023-12-10 16:20:45', 0, 0, 'sys_job_group', '定时任务分组', NULL, 0, 4);
INSERT INTO "public"."t_dict_data" VALUES (6, '2023-12-10 16:21:01', 1, '2023-12-10 16:21:01', 0, 0, 'sys_job_status', '定时任务运行状态', NULL, 0, 5);
INSERT INTO "public"."t_dict_data" VALUES (7, '2024-01-06 12:05:26', 1, '2024-01-06 12:05:26', 0, 0, 'sys_job_run_status', '定时任务调度状态', '1 正常 0 失败', 0, 7);
INSERT INTO "public"."t_dict_data" VALUES (9, '2024-01-15 15:48:43.862324', 1, '2024-01-15 15:48:43.862324', 0, 0, 'vod_rule_group', 'hipy源分组', 'groups = {
        ''hipy'': ''t4/spiders'',
        ''drpy_js'': ''t4/files/drpy_js'',
        ''json'': ''t4/files/json'',
        ''m3u'': ''t4/files/m3u'',
        ''txt'': ''t4/files/txt'',
    }', 0, 8);
INSERT INTO "public"."t_dict_data" VALUES (10, '2024-01-15 16:23:43.576457', 1, '2024-01-15 16:23:43.576457', 0, 0, 'vod_rule_status', '源状态', '1正常 0异常', 0, 9);
INSERT INTO "public"."t_dict_data" VALUES (11, '2024-01-25 14:00:03.613571', 1, '2024-01-25 14:00:03.613571', 0, 0, 'vod_configs_value_type', 'hipy配置值类型', 'str:字符串，int:数字', 0, 11);

-- ----------------------------
-- Table structure for t_dict_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dict_details";
CREATE TABLE "public"."t_dict_details" (
  "id" int4 NOT NULL DEFAULT nextval('t_dict_details_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "dict_label" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_disabled" bool NOT NULL DEFAULT false,
  "dict_value" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(256) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "is_default" bool NOT NULL DEFAULT false,
  "status" int4 DEFAULT 0,
  "order_num" int4 DEFAULT 0,
  "dict_data_id" int4
)
;
COMMENT ON COLUMN "public"."t_dict_details"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_dict_details"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_dict_details"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_dict_details"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_dict_details"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_dict_details"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."t_dict_details"."dict_disabled" IS '是否禁用';
COMMENT ON COLUMN "public"."t_dict_details"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."t_dict_details"."remark" IS '备注';
COMMENT ON COLUMN "public"."t_dict_details"."is_default" IS '是否默认值';
COMMENT ON COLUMN "public"."t_dict_details"."status" IS '状态 0: 正常  1:停用';
COMMENT ON COLUMN "public"."t_dict_details"."order_num" IS '排序';

-- ----------------------------
-- Records of t_dict_details
-- ----------------------------
INSERT INTO "public"."t_dict_details" VALUES (1, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '未知', 'f', '0', NULL, 't', 0, 1, 1);
INSERT INTO "public"."t_dict_details" VALUES (2, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '男', 'f', '1', NULL, 'f', 0, 2, 1);
INSERT INTO "public"."t_dict_details" VALUES (3, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '女', 'f', '2', NULL, 'f', 0, 3, 1);
INSERT INTO "public"."t_dict_details" VALUES (4, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '正常', 'f', '0', NULL, 't', 0, 0, 2);
INSERT INTO "public"."t_dict_details" VALUES (5, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '停用', 'f', '1', NULL, 'f', 0, 1, 2);
INSERT INTO "public"."t_dict_details" VALUES (6, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '正常', 'f', '0', NULL, 't', 0, 1, 3);
INSERT INTO "public"."t_dict_details" VALUES (7, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '停用', 'f', '1', NULL, 'f', 0, 2, 3);
INSERT INTO "public"."t_dict_details" VALUES (8, '2022-11-13 02:52:55', 0, '2022-11-13 02:52:55', 0, 0, '拉黑', 'f', '2', NULL, 'f', 0, 3, 3);
INSERT INTO "public"."t_dict_details" VALUES (9, '2023-12-04 19:53:35', 1, '2023-12-04 19:53:35', 0, 0, '首页云规则', 'f', 'home_rule_url', NULL, 't', 0, 1, 4);
INSERT INTO "public"."t_dict_details" VALUES (10, '2023-12-04 19:53:56', 1, '2023-12-04 19:58:52', 1, 0, '提交云仓库', 't', 'publish', NULL, 'f', 0, 2, 4);
INSERT INTO "public"."t_dict_details" VALUES (11, '2023-12-04 19:54:20', 1, '2023-12-04 19:54:20', 0, 0, '网页插件', 'f', 'js_url', NULL, 'f', 0, 3, 4);
INSERT INTO "public"."t_dict_details" VALUES (12, '2023-12-04 19:54:35', 1, '2023-12-04 19:54:35', 0, 0, '静态页面', 'f', 'html', NULL, 'f', 0, 4, 4);
INSERT INTO "public"."t_dict_details" VALUES (13, '2023-12-04 19:54:53', 1, '2023-12-04 19:54:53', 0, 0, '主页配置', 'f', 'config', NULL, 'f', 0, 5, 4);
INSERT INTO "public"."t_dict_details" VALUES (14, '2023-12-10 16:21:16', 1, '2023-12-10 16:21:29', 1, 0, '暂停', 'f', '0', NULL, 't', 0, 1, 6);
INSERT INTO "public"."t_dict_details" VALUES (15, '2023-12-10 16:21:22', 1, '2023-12-10 16:21:22', 0, 0, '启动', 'f', '1', NULL, 'f', 0, 2, 6);
INSERT INTO "public"."t_dict_details" VALUES (16, '2023-12-10 16:22:10', 1, '2023-12-10 16:22:43', 1, 0, '单次', 'f', 'setTimeout', NULL, 'f', 0, 1, 5);
INSERT INTO "public"."t_dict_details" VALUES (17, '2023-12-10 16:22:31', 1, '2023-12-10 16:22:58', 1, 0, '循环', 'f', 'setInterval', NULL, 't', 0, 2, 5);
INSERT INTO "public"."t_dict_details" VALUES (18, '2024-01-06 12:05:43', 1, '2024-01-06 12:05:43', 0, 0, '失败', 'f', '0', NULL, 'f', 0, 1, 7);
INSERT INTO "public"."t_dict_details" VALUES (19, '2024-01-06 12:05:52', 1, '2024-01-06 12:05:52', 0, 0, '正常', 'f', '1', NULL, 't', 0, 2, 7);
INSERT INTO "public"."t_dict_details" VALUES (22, '2024-01-15 15:50:29.696713', 1, '2024-01-15 15:50:29.696713', 0, 0, 'drpy_js', 'f', 't4/files/drpy_js', 'drpy的js源放这个分组', 'f', 0, 2, 9);
INSERT INTO "public"."t_dict_details" VALUES (21, '2024-01-15 15:49:54.323147', 1, '2024-01-15 15:50:43.873742', 1, 0, 'hipy', 'f', 't4/spiders', 'hipy的py源放这个分组。可以放同名的json配置文件', 't', 0, 1, 9);
INSERT INTO "public"."t_dict_details" VALUES (25, '2024-01-15 15:52:54.626462', 1, '2024-01-15 15:52:54.626462', 0, 0, 'txt', 'f', 't4/files/txt', '一些静态文本文件', 'f', 0, 5, 9);
INSERT INTO "public"."t_dict_details" VALUES (26, '2024-01-15 16:23:54.150693', 1, '2024-01-15 16:23:54.150693', 0, 0, '正常', 'f', '1', NULL, 'f', 0, 1, 10);
INSERT INTO "public"."t_dict_details" VALUES (28, '2024-01-25 12:15:39.034565', 1, '2024-01-25 12:16:21.187196', 1, 0, 'drpy_libs', 'f', 't4/files/drpy_libs', 'drpy的依赖库放这个分组', 'f', 0, 3, 9);
INSERT INTO "public"."t_dict_details" VALUES (23, '2024-01-15 15:51:53.434961', 1, '2024-01-25 12:16:26.274722', 1, 0, 'json', 'f', 't4/files/json', '无关大雅的json放这个位置', 'f', 0, 4, 9);
INSERT INTO "public"."t_dict_details" VALUES (24, '2024-01-15 15:52:19.029403', 1, '2024-01-25 12:16:45.595673', 1, 0, 'm3u', 'f', 't4/files/m3u', '一些m3u直播类文件', 'f', 0, 6, 9);
INSERT INTO "public"."t_dict_details" VALUES (29, '2024-01-25 14:00:21.238762', 1, '2024-01-25 14:00:26.903135', 1, 0, '字符串', 'f', 'str', NULL, 't', 0, 1, 11);
INSERT INTO "public"."t_dict_details" VALUES (30, '2024-01-25 14:00:36.494561', 1, '2024-01-25 14:00:36.494561', 0, 0, '数字', 'f', 'int', NULL, 'f', 0, 2, 11);
INSERT INTO "public"."t_dict_details" VALUES (32, '2024-01-31 15:36:10.612562', 1, '2024-01-31 15:36:10.612562', 0, 0, '链接', 'f', 'url', NULL, 'f', 0, 4, 11);
INSERT INTO "public"."t_dict_details" VALUES (31, '2024-01-31 15:00:08.718797', 1, '2024-01-31 15:45:49.347612', 1, 0, '文件', 'f', 'file', NULL, 'f', 0, 3, 11);
INSERT INTO "public"."t_dict_details" VALUES (33, '2024-02-02 17:33:55.526379', 1, '2024-02-02 17:33:55.526379', 0, 0, '数据集', 'f', 'json', NULL, 'f', 0, 5, 11);
INSERT INTO "public"."t_dict_details" VALUES (27, '2024-01-15 16:24:01.16754', 1, '2024-02-04 17:13:14.059809', 1, 0, '禁用', 'f', '0', NULL, 'f', 0, 2, 10);
INSERT INTO "public"."t_dict_details" VALUES (35, '2024-02-04 17:14:42.75294', 1, '2024-02-05 09:55:00.551827', 1, 0, 'js_parse_api', 'f', 't4/files/js_parse_api', 'js实现的vip解析接口文件', 'f', 0, 8, 9);
INSERT INTO "public"."t_dict_details" VALUES (34, '2024-02-04 17:14:13.807944', 1, '2024-02-05 09:55:21.063489', 1, 0, 'jar', 'f', 't4/files/jar', 'drpy2及tvbox配置需要的外挂jar', 'f', 0, 7, 9);
INSERT INTO "public"."t_dict_details" VALUES (36, '2024-03-08 15:50:48.583918', 1, '2024-03-08 15:50:48.583918', 0, 0, 'drpy3_libs', 'f', 't4/files/drpy3_libs', 'drpy3的t4源需要的js依赖文件及模块,commonJS格式', 'f', 0, 9, 9);
INSERT INTO "public"."t_dict_details" VALUES (37, '2024-03-08 15:51:32.506584', 1, '2024-03-08 15:51:32.506584', 0, 0, 'drpy3_js', 'f', 't4/files/drpy3_js', 'drpy3的t4源在运行过程中自动缓存线上文件到此目录', 'f', 0, 10, 9);

-- ----------------------------
-- Table structure for t_hiker_developer
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_hiker_developer";
CREATE TABLE "public"."t_hiker_developer" (
  "id" int4 NOT NULL DEFAULT nextval('t_hiker_developer_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "qq" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(256) COLLATE "pg_catalog"."default" NOT NULL DEFAULT '123456'::character varying,
  "status" int4 DEFAULT 0,
  "is_manager" bool DEFAULT false,
  "active" bool DEFAULT true,
  "test" varchar(10) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t_hiker_developer"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_hiker_developer"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_hiker_developer"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_hiker_developer"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_hiker_developer"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_hiker_developer"."name" IS '开发者账号';
COMMENT ON COLUMN "public"."t_hiker_developer"."qq" IS 'QQ号';
COMMENT ON COLUMN "public"."t_hiker_developer"."password" IS '开发者密码';
COMMENT ON COLUMN "public"."t_hiker_developer"."status" IS '状态';
COMMENT ON COLUMN "public"."t_hiker_developer"."is_manager" IS '是否超管';
COMMENT ON COLUMN "public"."t_hiker_developer"."active" IS '是否启用';
COMMENT ON COLUMN "public"."t_hiker_developer"."test" IS '测试字段';

-- ----------------------------
-- Records of t_hiker_developer
-- ----------------------------
INSERT INTO "public"."t_hiker_developer" VALUES (1, '2023-12-02 18:00:37', 1, '2023-12-09 16:55:06', 1, 0, '道长', '434857005', '123456789', 0, 'f', 't', NULL);

-- ----------------------------
-- Table structure for t_hiker_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_hiker_rule";
CREATE TABLE "public"."t_hiker_rule" (
  "id" int4 NOT NULL DEFAULT nextval('t_hiker_rule_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default",
  "type_id" int4,
  "dev_id" int4,
  "value" text COLLATE "pg_catalog"."default",
  "url" varchar(256) COLLATE "pg_catalog"."default",
  "state" int4 DEFAULT 0,
  "auth" varchar(256) COLLATE "pg_catalog"."default",
  "auth_date_time" timestamp(6) DEFAULT now(),
  "time_over" bool DEFAULT false,
  "b64_value" text COLLATE "pg_catalog"."default",
  "home_url" varchar(256) COLLATE "pg_catalog"."default",
  "pic_url" varchar(256) COLLATE "pg_catalog"."default",
  "is_json" bool DEFAULT true,
  "is_redirect" bool DEFAULT false,
  "is_tap" bool DEFAULT false,
  "can_discuss" bool DEFAULT true,
  "is_json_list" bool DEFAULT false,
  "data_type" varchar(256) COLLATE "pg_catalog"."default" DEFAULT 'home_rule_url'::character varying,
  "version" varchar(256) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "author" varchar(256) COLLATE "pg_catalog"."default",
  "note" text COLLATE "pg_catalog"."default",
  "good_num" int4 DEFAULT 0,
  "bad_num" int4 DEFAULT 0,
  "reply_num" int4 DEFAULT 0,
  "is_safe" bool DEFAULT true,
  "is_good" bool DEFAULT false,
  "is_white" bool DEFAULT false,
  "not_safe_note" text COLLATE "pg_catalog"."default",
  "last_active" timestamp(6) DEFAULT now()
)
;
COMMENT ON COLUMN "public"."t_hiker_rule"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_hiker_rule"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_hiker_rule"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_hiker_rule"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_hiker_rule"."name" IS '规则名称';
COMMENT ON COLUMN "public"."t_hiker_rule"."type_id" IS '规则类型';
COMMENT ON COLUMN "public"."t_hiker_rule"."dev_id" IS '开发者';
COMMENT ON COLUMN "public"."t_hiker_rule"."value" IS '规则Json';
COMMENT ON COLUMN "public"."t_hiker_rule"."url" IS '地址';
COMMENT ON COLUMN "public"."t_hiker_rule"."state" IS '状态';
COMMENT ON COLUMN "public"."t_hiker_rule"."auth" IS '私有密码';
COMMENT ON COLUMN "public"."t_hiker_rule"."auth_date_time" IS '私有密码过期时间';
COMMENT ON COLUMN "public"."t_hiker_rule"."time_over" IS '私有规则过期';
COMMENT ON COLUMN "public"."t_hiker_rule"."b64_value" IS '64编码';
COMMENT ON COLUMN "public"."t_hiker_rule"."home_url" IS '规则主页链接';
COMMENT ON COLUMN "public"."t_hiker_rule"."pic_url" IS '网站图标链接';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_json" IS '是否json值';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_redirect" IS '是否为后端重定向';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_tap" IS '是否为仓库跳转规则';
COMMENT ON COLUMN "public"."t_hiker_rule"."can_discuss" IS '是否可以互动';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_json_list" IS '是否json列表';
COMMENT ON COLUMN "public"."t_hiker_rule"."data_type" IS '数据类型';
COMMENT ON COLUMN "public"."t_hiker_rule"."version" IS '版本号';
COMMENT ON COLUMN "public"."t_hiker_rule"."author" IS '作者';
COMMENT ON COLUMN "public"."t_hiker_rule"."note" IS '说明';
COMMENT ON COLUMN "public"."t_hiker_rule"."good_num" IS '点赞数';
COMMENT ON COLUMN "public"."t_hiker_rule"."bad_num" IS '踩数';
COMMENT ON COLUMN "public"."t_hiker_rule"."reply_num" IS '回复数';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_safe" IS '是否安全';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_good" IS '是否优质';
COMMENT ON COLUMN "public"."t_hiker_rule"."is_white" IS '是否白名单';
COMMENT ON COLUMN "public"."t_hiker_rule"."not_safe_note" IS '风险描述';
COMMENT ON COLUMN "public"."t_hiker_rule"."last_active" IS '开发者上次提交时间';

-- ----------------------------
-- Records of t_hiker_rule
-- ----------------------------
INSERT INTO "public"."t_hiker_rule" VALUES (1, '2023-12-04 20:00:34', 1, '2023-12-09 16:54:53', 1, 0, '道德经', 1, 1, '"{\"name\":\"道德经\"}"', 'hiker://empty#', 1, NULL, '2023-12-04 20:00:34', 'f', NULL, NULL, NULL, 't', 'f', 'f', 't', 'f', 'home_rule_url', '1', '道长', NULL, 1, 1, 1, 't', 't', 't', NULL, '2023-12-04 20:00:34');

-- ----------------------------
-- Table structure for t_hiker_rule_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_hiker_rule_type";
CREATE TABLE "public"."t_hiker_rule_type" (
  "id" int4 NOT NULL DEFAULT nextval('t_hiker_rule_type_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "count_num" int4 DEFAULT 0,
  "active" bool DEFAULT true
)
;
COMMENT ON COLUMN "public"."t_hiker_rule_type"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."name" IS '分类名称';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."count_num" IS '数目';
COMMENT ON COLUMN "public"."t_hiker_rule_type"."active" IS '是否启用';

-- ----------------------------
-- Records of t_hiker_rule_type
-- ----------------------------
INSERT INTO "public"."t_hiker_rule_type" VALUES (1, '2023-12-04 19:55:50', 1, '2023-12-09 16:55:14', 1, 0, '影视', 2, 't');
INSERT INTO "public"."t_hiker_rule_type" VALUES (2, '2023-12-05 22:52:36', 1, '2023-12-09 16:55:12', 1, 0, '电影2', 3, 't');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_job";
CREATE TABLE "public"."t_job" (
  "id" int4 NOT NULL DEFAULT nextval('t_job_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "job_id" varchar(256) COLLATE "pg_catalog"."default",
  "job_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(256) COLLATE "pg_catalog"."default",
  "func_name" varchar(256) COLLATE "pg_catalog"."default",
  "func_args" varchar(256) COLLATE "pg_catalog"."default",
  "func_kwargs" varchar(256) COLLATE "pg_catalog"."default",
  "cron_model" varchar(256) COLLATE "pg_catalog"."default",
  "coalesce" int4 DEFAULT 0,
  "next_run" timestamp(6),
  "cron_expression" varchar(256) COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "misfire_policy" int4 DEFAULT 0,
  "active" bool DEFAULT true
)
;
COMMENT ON COLUMN "public"."t_job"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_job"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_job"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_job"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_job"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_job"."job_id" IS '任务代号';
COMMENT ON COLUMN "public"."t_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."t_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."t_job"."func_name" IS '调用目标字符串';
COMMENT ON COLUMN "public"."t_job"."func_args" IS '传入位置参数';
COMMENT ON COLUMN "public"."t_job"."func_kwargs" IS '传入字典参数';
COMMENT ON COLUMN "public"."t_job"."cron_model" IS '执行模式';
COMMENT ON COLUMN "public"."t_job"."coalesce" IS '是否并发';
COMMENT ON COLUMN "public"."t_job"."next_run" IS '下次执行时间';
COMMENT ON COLUMN "public"."t_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."t_job"."status" IS '任务状态';
COMMENT ON COLUMN "public"."t_job"."misfire_policy" IS '执行策略';
COMMENT ON COLUMN "public"."t_job"."active" IS '是否启用';

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO "public"."t_job" VALUES (1, '2023-12-10 21:31:19', 1, '2024-02-20 15:51:14.280557', 1, 0, 'demo', '测试', 'setInterval', 'tasks.demo_task.demo', '[''hello world'']', '{''a'':''1'',''b'':''2''}', 'cron', 0, '2024-02-20 15:50:44.656558', '30 20 * * * ?', 0, 1, 'f');
INSERT INTO "public"."t_job" VALUES (15, '2023-12-13 00:53:05', 1, '2024-02-20 15:51:14.280557', 1, 0, 'kzz', '可转债打新查询', 'setInterval', 'tasks.kzz_spider.get_now_kzz', NULL, '{''dayeExtra'':8}', 'cron', 0, '2024-02-20 15:50:44.660541', '0 0 8 1/1 * ?', 0, 1, 'f');
INSERT INTO "public"."t_job" VALUES (14, '2023-12-13 00:26:59', 1, '2024-02-20 15:51:14.280557', 1, 0, 'demo2', '测试2', 'setInterval', 'tasks.demo_task.demo', '[''哈哈哈哈哈'']', '{''key'':''你好吗''}', 'cron', 0, '2024-02-20 15:50:44.660541', '30 10 * * * ?', 0, 1, 'f');
INSERT INTO "public"."t_job" VALUES (16, '2024-02-20 16:23:34.633837', 1, '2024-06-20 11:19:15.329669', 0, 0, 'tv_spider', 'tv源爬虫', 'setInterval', 'tasks.tv_spider.main', '[]', '{}', 'cron', 0, '2024-06-20 11:19:25.329269', '0 0 0/4 * * ?', 1, 1, 't');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_job_log";
CREATE TABLE "public"."t_job_log" (
  "id" int4 NOT NULL DEFAULT nextval('t_job_log_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "job_id" varchar(256) COLLATE "pg_catalog"."default",
  "job_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(256) COLLATE "pg_catalog"."default",
  "func_name" varchar(256) COLLATE "pg_catalog"."default",
  "func_args" varchar(256) COLLATE "pg_catalog"."default",
  "func_kwargs" varchar(256) COLLATE "pg_catalog"."default",
  "run_info" text COLLATE "pg_catalog"."default",
  "run_except_info" text COLLATE "pg_catalog"."default",
  "run_status" int4 DEFAULT 0,
  "run_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_job_log"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_job_log"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_job_log"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_job_log"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_job_log"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_job_log"."job_id" IS '任务代号';
COMMENT ON COLUMN "public"."t_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."t_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."t_job_log"."func_name" IS '调用目标字符串';
COMMENT ON COLUMN "public"."t_job_log"."func_args" IS '传入位置参数';
COMMENT ON COLUMN "public"."t_job_log"."func_kwargs" IS '传入字典参数';
COMMENT ON COLUMN "public"."t_job_log"."run_info" IS '正常日志信息';
COMMENT ON COLUMN "public"."t_job_log"."run_except_info" IS '异常日志信息';
COMMENT ON COLUMN "public"."t_job_log"."run_status" IS '执行状态';
COMMENT ON COLUMN "public"."t_job_log"."run_time" IS '执行时间';

-- ----------------------------
-- Records of t_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_login_infor
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_login_infor";
CREATE TABLE "public"."t_login_infor" (
  "id" int4 NOT NULL DEFAULT nextval('t_login_infor_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "user_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "ipaddr" varchar(256) COLLATE "pg_catalog"."default",
  "login_location" varchar(256) COLLATE "pg_catalog"."default",
  "browser" varchar(256) COLLATE "pg_catalog"."default",
  "os" varchar(256) COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "msg" varchar(256) COLLATE "pg_catalog"."default",
  "login_time" timestamp(6) DEFAULT now()
)
;
COMMENT ON COLUMN "public"."t_login_infor"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_login_infor"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_login_infor"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_login_infor"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_login_infor"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_login_infor"."user_name" IS '用户名称';
COMMENT ON COLUMN "public"."t_login_infor"."ipaddr" IS '登录地址';
COMMENT ON COLUMN "public"."t_login_infor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."t_login_infor"."browser" IS '浏览器';
COMMENT ON COLUMN "public"."t_login_infor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."t_login_infor"."status" IS '登录状态';
COMMENT ON COLUMN "public"."t_login_infor"."msg" IS '操作信息';
COMMENT ON COLUMN "public"."t_login_infor"."login_time" IS '登录日期';

-- ----------------------------
-- Records of t_login_infor
-- ----------------------------

-- ----------------------------
-- Table structure for t_menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_menus";
CREATE TABLE "public"."t_menus" (
  "id" int4 NOT NULL DEFAULT nextval('t_menus_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "path" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "component" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "is_frame" bool DEFAULT false,
  "hidden" bool DEFAULT false,
  "status" int4 DEFAULT 0,
  "order_num" int4 DEFAULT 0,
  "name" varchar(32) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "title" varchar(32) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "icon" varchar(32) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "no_cache" bool DEFAULT false,
  "parent_id" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_menus"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_menus"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_menus"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_menus"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_menus"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_menus"."path" IS '路由';
COMMENT ON COLUMN "public"."t_menus"."component" IS '组件';
COMMENT ON COLUMN "public"."t_menus"."is_frame" IS '是否外链';
COMMENT ON COLUMN "public"."t_menus"."hidden" IS '是否隐藏';
COMMENT ON COLUMN "public"."t_menus"."status" IS '菜单状态';
COMMENT ON COLUMN "public"."t_menus"."order_num" IS '显示排序';
COMMENT ON COLUMN "public"."t_menus"."name" IS '唯一标识用于页面缓存，否则keep-alive会出问题';
COMMENT ON COLUMN "public"."t_menus"."title" IS '标题';
COMMENT ON COLUMN "public"."t_menus"."icon" IS '图标';
COMMENT ON COLUMN "public"."t_menus"."no_cache" IS '是否缓存';
COMMENT ON COLUMN "public"."t_menus"."parent_id" IS '上级菜单';

-- ----------------------------
-- Records of t_menus
-- ----------------------------
INSERT INTO "public"."t_menus" VALUES (1, '2022-07-14 03:56:19', 0, '2022-07-19 15:40:51', 0, 0, 'role', '/permission/role/index', 'f', 'f', 0, 3, 'PermissionRole', '角色管理', 'peoples', 't', 7);
INSERT INTO "public"."t_menus" VALUES (2, '2022-07-14 03:56:19', 0, '2022-07-20 10:25:17', 0, 0, '/system', '', 'f', 'f', 0, 2, '', '系统管理', 'system', 'f', 0);
INSERT INTO "public"."t_menus" VALUES (3, '2022-07-14 03:56:19', 0, '2022-07-19 16:03:40', 0, 0, 'menu', '/permission/menu/index', 'f', 'f', 0, 2, 'PermissionMenu', '菜单管理', 'tree-table', 'f', 7);
INSERT INTO "public"."t_menus" VALUES (4, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'dict', '/system/dict/index', 'f', 'f', 0, 4, 'SystemDictType', '字典管理', 'dict', 'f', 2);
INSERT INTO "public"."t_menus" VALUES (5, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'parameter', '/system/parameter/index', 'f', 'f', 0, 3, 'SystemParameter', '参数管理', 'tree', 'f', 2);
INSERT INTO "public"."t_menus" VALUES (6, '2022-07-14 03:56:19', 0, '2022-07-19 16:03:33', 0, 0, 'user', '/permission/user/index', 'f', 'f', 0, 1, 'PermissionUser', '用户管理', 'user', 'f', 7);
INSERT INTO "public"."t_menus" VALUES (7, '2022-07-14 03:56:19', 0, '2022-07-20 10:25:24', 0, 0, '/permission', '', 'f', 'f', 0, 1, '', '权限管理', 'monitor', 'f', 0);
INSERT INTO "public"."t_menus" VALUES (8, '2022-07-14 03:56:19', 0, '2022-07-14 03:56:19', 0, 0, 'dict/detail/:id(\d+)', '/system/dict/detail/index', 'f', 't', 0, 1, 'SystemDictDetail', '字典参数', 'dashboard', 'f', 2);
INSERT INTO "public"."t_menus" VALUES (9, '2022-10-29 23:57:16', 0, '2022-10-29 23:57:16', 0, 0, 'label', '/permission/label/index', 'f', 'f', 0, 4, 'PermissionLabel', '权限标签', 'icon', 't', 7);
INSERT INTO "public"."t_menus" VALUES (11, '2023-12-02 18:06:51', 0, '2023-12-07 22:10:46', 1, 0, 'developer', '/hiker/developer/index', 'f', 'f', 0, 1, 'HikerDeveloper', '开发者', 'peoples', 't', 10);
INSERT INTO "public"."t_menus" VALUES (10, '2023-12-02 18:05:43', 0, '2023-12-02 18:05:43', 0, 0, '/hiker', '', 'f', 'f', 0, 3, '', '海阔视界', 'international', 't', 0);
INSERT INTO "public"."t_menus" VALUES (12, '2023-12-02 23:23:55', 1, '2023-12-07 22:10:55', 1, 0, 'rule_type', '/hiker/rule_type/index', 'f', 'f', 0, 2, 'HikerRuleType', '规则类型', 'component', 't', 10);
INSERT INTO "public"."t_menus" VALUES (13, '2023-12-03 19:03:50', 1, '2023-12-07 22:11:07', 1, 0, 'rule', '/hiker/rule/index', 'f', 'f', 0, 3, 'HikerRule', '规则', 'list', 't', 10);
INSERT INTO "public"."t_menus" VALUES (14, '2023-12-04 21:49:25', 1, '2023-12-04 21:49:25', 0, 0, 'control_panel', '/control_panel/index', 'f', 'f', 0, 4, 'ControlPanel', '控制面板', 'swagger', 't', 2);
INSERT INTO "public"."t_menus" VALUES (15, '2023-12-05 08:49:37', 1, '2023-12-05 08:50:03', 1, 0, '/tool', '', 'f', 'f', 0, 4, '', '工具', 'bug', 't', 0);
INSERT INTO "public"."t_menus" VALUES (16, '2023-12-05 08:51:06', 1, '2023-12-05 08:52:00', 1, 0, 'swagger', '/tool/swagger/index', 'f', 'f', 0, 1, 'Swagger', 'swagger', 'swagger', 't', 15);
INSERT INTO "public"."t_menus" VALUES (17, '2023-12-05 09:08:13', 1, '2023-12-06 22:50:59', 1, 0, '/monitor', '', 'f', 'f', 0, 4, '', '系统监控', 'monitor', 't', 0);
INSERT INTO "public"."t_menus" VALUES (18, '2023-12-05 09:09:57', 1, '2023-12-07 00:03:28', 1, 0, 'job', '/monitor/job/index', 'f', 'f', 0, 2, 'Job', '定时任务', 'time-range', 't', 17);
INSERT INTO "public"."t_menus" VALUES (19, '2023-12-05 09:11:12', 1, '2023-12-07 00:03:23', 1, 0, 'server', '/monitor/server/index', 'f', 'f', 0, 1, 'Server', '服务监控', 'server', 't', 17);
INSERT INTO "public"."t_menus" VALUES (20, '2023-12-06 22:49:09', 1, '2023-12-06 22:49:09', 0, 0, 'blog', '/tool/blog/index', 'f', 'f', 0, 2, 'Blog', '博客', 'log', 't', 15);
INSERT INTO "public"."t_menus" VALUES (21, '2023-12-06 22:53:25', 1, '2023-12-15 00:17:28', 1, 0, 'online', '/monitor/online/index', 'f', 't', 0, 6, 'Online', '在线用户', 'online', 't', 17);
INSERT INTO "public"."t_menus" VALUES (22, '2023-12-06 22:55:02', 1, '2023-12-15 00:17:17', 1, 0, 'cache', ' /monitor/cache/index', 'f', 't', 0, 5, '', '缓存监控', 'redis', 't', 17);
INSERT INTO "public"."t_menus" VALUES (23, '2023-12-06 22:56:00', 1, '2023-12-15 00:17:23', 1, 0, 'cacheList', '/monitor/cache/list', 'f', 'f', 0, 5, 'cacheList', '缓存列表', 'redis-list', 't', 17);
INSERT INTO "public"."t_menus" VALUES (24, '2023-12-06 23:22:16', 1, '2023-12-06 23:22:16', 0, 0, 'icons', '/components/icons/index', 'f', 'f', 0, 3, 'Icons', '图标组件', 'icon', 't', 15);
INSERT INTO "public"."t_menus" VALUES (25, '2023-12-06 23:33:18', 1, '2023-12-06 23:37:20', 1, 0, 'build', '/tool/build/index', 'f', 'f', 0, 1, 'Build', '表单构建', 'build', 't', 15);
INSERT INTO "public"."t_menus" VALUES (26, '2023-12-07 22:06:50', 1, '2023-12-07 22:16:07', 1, 0, 'developer/:id(\d+)', '/hiker/developer/index', 'f', 't', 0, 1, 'DeveloperDetail', '开发者详情', 'peoples', 't', 10);
INSERT INTO "public"."t_menus" VALUES (27, '2023-12-07 22:09:16', 1, '2023-12-07 22:16:02', 1, 0, 'rule_type/:id(\d+)', '/hiker/rule_type/index', 'f', 't', 0, 2, 'RuleTypeDetail', '规则类型详情', 'component', 't', 10);
INSERT INTO "public"."t_menus" VALUES (28, '2023-12-07 22:56:42', 1, '2023-12-15 00:16:45', 1, 0, 'logininfor', '/monitor/logininfor/index', 'f', 'f', 0, 3, 'LoginInfor', '登录日志', 'people', 't', 17);
INSERT INTO "public"."t_menus" VALUES (29, '2023-12-11 20:39:10', 1, '2023-12-11 20:42:25', 1, 1, 'control_panel1', '/hello', 'f', 'f', 0, 1, '', 'hello world', 'clipboard', 't', 7);
INSERT INTO "public"."t_menus" VALUES (30, '2023-12-13 22:44:56', 1, '2023-12-15 00:16:50', 1, 0, 'pip', '/monitor/pip/index', 'f', 'f', 0, 4, 'Pip', '依赖管理', 'list', 't', 17);
INSERT INTO "public"."t_menus" VALUES (31, '2023-12-15 00:11:11', 1, '2023-12-15 00:17:03', 1, 0, 'job-log/:id(\d+)', '/monitor/job/log', 'f', 't', 0, 2, 'JobLog', '定时任务执行日志', 'log', 't', 17);
INSERT INTO "public"."t_menus" VALUES (32, '2023-12-15 00:36:18', 1, '2023-12-15 00:36:18', 0, 0, 'xfgpt', '/tool/xfgpt/index', 'f', 'f', 0, 4, 'XfGpt', '讯飞GPT', 'example', 't', 15);
INSERT INTO "public"."t_menus" VALUES (34, '2024-01-14 16:22:36.889797', 1, '2024-01-14 16:22:53.497814', 1, 0, '/vod', '', 'f', 'f', 0, 3, '', 'hipy源', 'education', 't', 0);
INSERT INTO "public"."t_menus" VALUES (35, '2024-01-14 16:23:36.380029', 1, '2024-01-14 16:24:07.355086', 1, 0, 'rules', '/vod/rules/index', 'f', 'f', 0, 1, 'VodRules', '源管理', 'list', 't', 34);
INSERT INTO "public"."t_menus" VALUES (41, '2024-02-27 16:24:14.004865', 1, '2024-02-27 16:24:14.004865', 0, 0, 'index', '/vod/web/home/category', 'f', 't', 0, 1, 'VodWebIndex', 'CMS首页', 'international', 't', 39);
INSERT INTO "public"."t_menus" VALUES (42, '2024-02-27 16:24:59.465788', 1, '2024-02-27 16:24:59.465788', 0, 0, 'category', '/vod/web/home/category', 'f', 't', 0, 2, 'VodWebCategory', 'CMS分类页', 'nested', 't', 39);
INSERT INTO "public"."t_menus" VALUES (43, '2024-02-27 16:25:29.078335', 1, '2024-02-27 16:25:29.078335', 0, 0, 'detail', '/vod/web/home/detail', 'f', 't', 0, 3, 'VodWebDetail', 'CMS详情页', 'form', 't', 39);
INSERT INTO "public"."t_menus" VALUES (40, '2024-02-21 17:46:55.221369', 1, '2024-02-27 16:25:55.403831', 1, 0, 'search', '/vod/web/home/search', 'f', 't', 0, 4, 'VodWebSearch', 'CMS搜索页', 'search', 't', 39);
INSERT INTO "public"."t_menus" VALUES (44, '2024-06-19 09:52:46.034162', 1, '2024-06-19 09:52:46.034162', 0, 0, 'subs', '/vod/subs/index', 'f', 'f', 0, 2, 'VodSubs', '订阅管理', 'chart', 't', 34);
INSERT INTO "public"."t_menus" VALUES (36, '2024-01-14 16:44:59.020793', 1, '2024-06-19 09:52:55.717516', 1, 0, 'configs', '/vod/configs/index', 'f', 'f', 0, 3, 'VodConfigs', '配置中心', 'table', 't', 34);
INSERT INTO "public"."t_menus" VALUES (37, '2024-01-21 08:39:35.602841', 1, '2024-06-19 09:52:59.28837', 1, 0, 'rules_edit/:id(\d+)', '/vod/rules/edit', 'f', 't', 0, 4, 'VodRulesEdit', '在线编辑源', 'code', 't', 34);
INSERT INTO "public"."t_menus" VALUES (38, '2024-02-19 13:58:41.826335', 1, '2024-06-19 09:53:08.519928', 1, 0, 'houses', '/vod/houses/index', 'f', 'f', 0, 5, 'VodHouses', '源仓库', 'shopping', 't', 34);
INSERT INTO "public"."t_menus" VALUES (39, '2024-02-21 17:21:06.123879', 1, '2024-06-19 09:53:12.201774', 1, 0, 'web', '/vod/web/index', 'f', 'f', 0, 6, 'VodWeb', '在线预览', 'international', 't', 34);

-- ----------------------------
-- Table structure for t_perm_label
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_perm_label";
CREATE TABLE "public"."t_perm_label" (
  "id" int4 NOT NULL DEFAULT nextval('t_perm_label_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "label" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "remark" varchar(256) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_perm_label"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_perm_label"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_perm_label"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_perm_label"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_perm_label"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_perm_label"."label" IS '标签';
COMMENT ON COLUMN "public"."t_perm_label"."remark" IS '备注';
COMMENT ON COLUMN "public"."t_perm_label"."status" IS '状态';

-- ----------------------------
-- Records of t_perm_label
-- ----------------------------
INSERT INTO "public"."t_perm_label" VALUES (1, '2023-12-02 15:30:37', 0, '2023-12-16 11:42:53', 1, 0, 'perm:user:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (2, '2023-12-02 15:30:57', 0, '2023-12-16 11:43:03', 1, 0, 'system:dict:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (3, '2023-12-02 15:31:25', 0, '2023-12-16 11:43:17', 1, 0, 'system:config-setting:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (4, '2023-12-02 15:33:26', 0, '2023-12-02 15:33:26', 0, 0, 'perm:user:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (5, '2023-12-02 15:36:42', 0, '2023-12-02 15:36:42', 0, 0, 'perm:user:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (6, '2023-12-02 15:37:45', 0, '2023-12-16 12:50:23', 1, 0, 'perm:menu:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (7, '2023-12-02 15:38:12', 0, '2023-12-16 12:50:26', 1, 0, 'perm:role:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (8, '2023-12-02 15:38:46', 0, '2023-12-16 12:50:30', 1, 0, 'perm:label:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (9, '2023-12-02 15:39:04', 0, '2023-12-02 15:39:04', 0, 0, 'system:config-setting:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (10, '2023-12-02 15:39:26', 0, '2023-12-16 11:48:34', 1, 0, 'system:dict:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (11, '2023-12-02 18:00:37', 0, '2023-12-02 18:00:37', 0, 0, 'hiker:developer:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (12, '2023-12-02 18:05:43', 0, '2023-12-02 18:05:43', 0, 0, 'perm:menu:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (13, '2023-12-02 18:08:24', 0, '2023-12-02 18:08:24', 0, 0, 'perm:menu:gut', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (14, '2023-12-02 18:09:28', 0, '2023-12-02 18:09:28', 0, 0, 'perm:menu:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (15, '2023-12-02 19:15:42', 0, '2023-12-02 19:15:42', 0, 0, 'hiker:developer:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (16, '2023-12-02 19:19:35', 0, '2023-12-16 12:46:21', 1, 0, 'hiker:developer:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (17, '2023-12-04 19:53:00', 0, '2023-12-16 11:48:20', 1, 0, 'system:dict:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (18, '2023-12-04 19:53:04', 0, '2023-12-16 11:43:50', 1, 0, 'system:dict:detail:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (19, '2023-12-04 19:53:35', 0, '2023-12-16 12:23:47', 1, 0, 'system:dict:detail:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (20, '2023-12-04 19:54:59', 0, '2023-12-16 12:23:50', 1, 0, 'system:dict:detail:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (21, '2023-12-04 19:55:50', 0, '2023-12-04 19:55:50', 0, 0, 'hiker:rule_type:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (22, '2023-12-04 20:00:34', 0, '2023-12-04 20:00:34', 0, 0, 'hiker:rule:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (23, '2023-12-04 20:00:59', 0, '2023-12-04 20:00:59', 0, 0, 'hiker:rule:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (24, '2023-12-04 22:13:09', 0, '2023-12-04 22:13:09', 0, 0, 'system:config-setting:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (25, '2023-12-05 19:44:23', 0, '2023-12-05 19:44:23', 0, 0, 'monitor:server:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (26, '2023-12-05 20:08:50', 0, '2023-12-16 11:59:31', 1, 0, 'monitor:server:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (27, '2023-12-05 22:52:40', 0, '2023-12-05 22:52:40', 0, 0, 'hiker:rule_type:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (28, '2023-12-05 22:52:46', 0, '2023-12-05 22:52:46', 0, 0, 'hiker:rule_type:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (29, '2023-12-07 00:00:33', 0, '2023-12-07 00:00:33', 0, 0, 'perm:user:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (30, '2023-12-07 19:50:07', 0, '2023-12-07 19:50:07', 0, 0, 'report:excel_generate:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (31, '2023-12-07 21:39:27', 0, '2023-12-07 21:39:27', 0, 0, 'report:excel_generate:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (32, '2023-12-09 02:27:25', 0, '2023-12-09 02:27:25', 0, 0, 'system:config_setting:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (33, '2023-12-09 16:20:03', 0, '2023-12-09 16:20:03', 0, 0, 'monitor:logininfor:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (34, '2023-12-09 16:50:10', 0, '2023-12-09 16:50:10', 0, 0, 'hiker:developer:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (35, '2023-12-09 16:54:11', 0, '2023-12-09 16:54:11', 0, 0, 'hiker:rule:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (36, '2023-12-10 17:41:10', 0, '2023-12-10 17:41:10', 0, 0, 'monitor:job:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (37, '2023-12-10 18:16:32', 0, '2023-12-10 18:16:32', 0, 0, 'monitor:job:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (38, '2023-12-10 18:25:10', 0, '2023-12-10 18:25:10', 0, 0, 'monitor:job:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (39, '2023-12-11 20:42:25', 0, '2023-12-11 20:42:25', 0, 0, 'perm:menu:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (40, '2023-12-13 22:29:05', 0, '2023-12-16 11:59:41', 1, 0, 'monitor:pip:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (41, '2023-12-13 23:12:13', 0, '2023-12-13 23:12:13', 0, 0, 'monitor:pip:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (42, '2023-12-13 23:21:20', 0, '2023-12-13 23:21:20', 0, 0, 'monitor:pip:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (43, '2023-12-13 23:28:11', 0, '2023-12-13 23:28:11', 0, 0, 'monitor:pip:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (44, '2023-12-16 11:36:07', 0, '2023-12-16 11:36:07', 0, 0, 'perm:role:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (45, '2023-12-16 11:38:40', 0, '2023-12-16 11:38:40', 0, 0, 'perm:label:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (46, '2023-12-16 12:28:44', 0, '2023-12-16 12:28:44', 0, 0, 'report:excel_generate:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (47, '2023-12-17 14:13:25', 0, '2023-12-17 14:45:14', 1, 1, 'report:excel_generate:exports', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (48, '2023-12-17 14:38:50', 0, '2023-12-17 14:44:57', 1, 1, 'system_user:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (49, '2023-12-17 14:44:45', 0, '2023-12-17 14:44:45', 0, 0, 'perm:user:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (50, '2023-12-17 14:44:57', 0, '2023-12-17 14:44:57', 0, 0, 'perm:label:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (51, '2023-12-17 14:47:51', 0, '2023-12-17 14:53:44', 1, 0, 'monitor:logininfor:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (52, '2023-12-17 14:47:58', 0, '2023-12-17 14:52:03', 1, 0, 'monitor:job:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (53, '2023-12-17 16:00:22', 0, '2023-12-17 16:00:22', 0, 0, 'monitor:cache:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (54, '2023-12-17 16:47:58', 0, '2023-12-17 16:47:58', 0, 0, 'monitor:cache:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (55, '2024-01-02 20:24:36', 0, '2024-01-02 20:24:36', 0, 0, 'system:user:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (56, '2024-01-06 12:37:09', 0, '2024-01-06 12:37:09', 0, 0, 'monitor:job-log:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (57, '2024-01-06 13:24:14', 0, '2024-01-06 13:24:14', 0, 0, '/monitor/jobLog/export:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (58, '2024-01-06 13:36:05', 0, '2024-01-06 13:36:05', 0, 0, 'monitor:job:log:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (60, '2024-01-14 16:38:44.050973', 0, '2024-01-25 14:18:14.104444', 1, 0, 'vod:rules:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (61, '2024-01-14 17:26:01.12343', 0, '2024-01-25 14:18:20.504608', 1, 0, 'vod:rules:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (62, '2024-01-14 17:48:29.445349', 0, '2024-01-25 14:18:28.928992', 1, 0, 'vod:rules:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (63, '2024-01-15 17:03:56.811658', 0, '2024-01-25 14:18:34.943489', 1, 0, 'vod:rules:export', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (64, '2024-01-25 13:06:52.800978', 0, '2024-01-25 14:18:39.833144', 1, 0, 'vod:configs:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (65, '2024-01-25 13:22:05.803287', 0, '2024-01-25 14:18:43.877302', 1, 0, 'vod:configs:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (67, '2024-01-25 13:54:21.800597', 0, '2024-01-25 14:18:48.362957', 1, 0, 'vod:configs:put', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (68, '2024-01-25 14:11:49.030614', 0, '2024-01-25 14:18:52.037383', 1, 0, 'vod:rules:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (66, '2024-01-25 13:42:15.230753', 0, '2024-01-25 14:18:59.133881', 1, 0, 'vod:configs:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (69, '2024-02-19 14:30:49.512688', 0, '2024-02-19 14:30:49.512688', 0, 0, 'vod:houses:get', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (70, '2024-02-19 15:22:23.097785', 0, '2024-02-19 15:22:23.097785', 0, 0, 'vod:houses:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (71, '2024-02-19 16:30:39.854378', 0, '2024-02-19 16:30:39.854378', 0, 0, 'vod:houses:delete', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (72, '2024-06-19 09:53:59.733701', 0, '2024-06-19 09:53:59.733701', 0, 0, 'vod:subs:post', NULL, 0);
INSERT INTO "public"."t_perm_label" VALUES (73, '2024-06-19 10:06:39.924957', 0, '2024-06-19 10:06:39.924957', 0, 0, 'vod:subs:put', NULL, 0);

-- ----------------------------
-- Table structure for t_perm_label_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_perm_label_role";
CREATE TABLE "public"."t_perm_label_role" (
  "id" int4 NOT NULL DEFAULT nextval('t_perm_label_role_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "label_id" int4,
  "role_id" int4
)
;
COMMENT ON COLUMN "public"."t_perm_label_role"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_perm_label_role"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_perm_label_role"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_perm_label_role"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_perm_label_role"."is_deleted" IS '逻辑删除:0=未删除,1=删除';

-- ----------------------------
-- Records of t_perm_label_role
-- ----------------------------
INSERT INTO "public"."t_perm_label_role" VALUES (1, '2023-12-06 22:37:39', 0, '2023-12-06 22:37:39', 0, 0, NULL, NULL);
INSERT INTO "public"."t_perm_label_role" VALUES (2, '2023-12-16 11:42:53', 1, '2023-12-16 11:42:53', 0, 0, 1, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (3, '2023-12-16 11:43:03', 1, '2023-12-16 11:43:03', 0, 0, 2, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (4, '2023-12-16 11:43:17', 1, '2023-12-16 11:43:17', 0, 0, 3, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (5, '2023-12-16 11:43:50', 1, '2023-12-16 11:43:50', 0, 0, 18, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (17, '2023-12-16 12:50:26', 1, '2023-12-16 12:50:26', 0, 0, 7, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (18, '2023-12-16 12:50:30', 1, '2023-12-16 12:50:30', 0, 0, 8, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (10, '2023-12-16 11:59:31', 1, '2023-12-16 11:59:31', 0, 0, 26, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (11, '2023-12-16 11:59:41', 1, '2023-12-16 11:59:41', 0, 0, 40, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (16, '2023-12-16 12:50:23', 1, '2023-12-16 12:50:23', 0, 0, 6, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (15, '2023-12-16 12:46:21', 1, '2023-12-16 12:46:21', 0, 0, 16, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (19, '2023-12-17 14:52:03', 1, '2023-12-17 14:52:03', 0, 0, 52, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (20, '2023-12-17 14:53:44', 1, '2023-12-17 14:53:44', 0, 0, 51, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (21, '2024-01-25 14:18:14.120617', 1, '2024-01-25 14:18:14.120617', 0, 0, 60, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (22, '2024-01-25 14:18:20.51855', 1, '2024-01-25 14:18:20.51855', 0, 0, 61, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (23, '2024-01-25 14:18:28.94315', 1, '2024-01-25 14:18:28.94315', 0, 0, 62, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (24, '2024-01-25 14:18:34.959602', 1, '2024-01-25 14:18:34.959602', 0, 0, 63, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (25, '2024-01-25 14:18:39.837577', 1, '2024-01-25 14:18:39.837577', 0, 0, 64, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (26, '2024-01-25 14:18:43.881502', 1, '2024-01-25 14:18:43.881502', 0, 0, 65, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (27, '2024-01-25 14:18:48.377718', 1, '2024-01-25 14:18:48.377718', 0, 0, 67, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (28, '2024-01-25 14:18:52.041284', 1, '2024-01-25 14:18:52.041284', 0, 0, 68, 2);
INSERT INTO "public"."t_perm_label_role" VALUES (29, '2024-01-25 14:18:59.138266', 1, '2024-01-25 14:18:59.138266', 0, 0, 66, 2);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_menu";
CREATE TABLE "public"."t_role_menu" (
  "id" int4 NOT NULL DEFAULT nextval('t_role_menu_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "role_id" int4,
  "menu_id" int4
)
;
COMMENT ON COLUMN "public"."t_role_menu"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_role_menu"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_role_menu"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_role_menu"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_role_menu"."is_deleted" IS '逻辑删除:0=未删除,1=删除';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO "public"."t_role_menu" VALUES (1, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 2);
INSERT INTO "public"."t_role_menu" VALUES (2, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 4);
INSERT INTO "public"."t_role_menu" VALUES (3, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 5);
INSERT INTO "public"."t_role_menu" VALUES (4, '2022-11-22 00:55:04', 0, '2022-11-22 00:55:04', 0, 0, 3, 8);
INSERT INTO "public"."t_role_menu" VALUES (115, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 2);
INSERT INTO "public"."t_role_menu" VALUES (116, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 8);
INSERT INTO "public"."t_role_menu" VALUES (117, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 5);
INSERT INTO "public"."t_role_menu" VALUES (118, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 14);
INSERT INTO "public"."t_role_menu" VALUES (119, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 4);
INSERT INTO "public"."t_role_menu" VALUES (120, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 34);
INSERT INTO "public"."t_role_menu" VALUES (121, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 35);
INSERT INTO "public"."t_role_menu" VALUES (122, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 36);
INSERT INTO "public"."t_role_menu" VALUES (123, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 37);
INSERT INTO "public"."t_role_menu" VALUES (124, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 10);
INSERT INTO "public"."t_role_menu" VALUES (125, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 11);
INSERT INTO "public"."t_role_menu" VALUES (126, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 26);
INSERT INTO "public"."t_role_menu" VALUES (127, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 12);
INSERT INTO "public"."t_role_menu" VALUES (128, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 27);
INSERT INTO "public"."t_role_menu" VALUES (129, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 13);
INSERT INTO "public"."t_role_menu" VALUES (130, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 15);
INSERT INTO "public"."t_role_menu" VALUES (131, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 16);
INSERT INTO "public"."t_role_menu" VALUES (132, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 25);
INSERT INTO "public"."t_role_menu" VALUES (133, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 20);
INSERT INTO "public"."t_role_menu" VALUES (134, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 24);
INSERT INTO "public"."t_role_menu" VALUES (135, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 32);
INSERT INTO "public"."t_role_menu" VALUES (136, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 17);
INSERT INTO "public"."t_role_menu" VALUES (137, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 19);
INSERT INTO "public"."t_role_menu" VALUES (138, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 18);
INSERT INTO "public"."t_role_menu" VALUES (139, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 28);
INSERT INTO "public"."t_role_menu" VALUES (140, '2024-01-25 14:17:34.612628', 1, '2024-01-25 14:17:34.612628', 0, 0, 2, 30);

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_roles";
CREATE TABLE "public"."t_roles" (
  "id" int4 NOT NULL DEFAULT nextval('t_roles_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "key" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(256) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "order_num" int4 DEFAULT 0,
  "status" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_roles"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_roles"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_roles"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_roles"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_roles"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_roles"."key" IS '权限标识';
COMMENT ON COLUMN "public"."t_roles"."name" IS '权限名称';
COMMENT ON COLUMN "public"."t_roles"."order_num" IS '顺序';
COMMENT ON COLUMN "public"."t_roles"."status" IS '状态(0: 正常, 1: 停用)';

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO "public"."t_roles" VALUES (1, '2022-11-13 02:44:13', 0, '2022-11-13 02:44:13', 0, 0, 'admin', '超级管理员', 1, 0);
INSERT INTO "public"."t_roles" VALUES (3, '2022-11-22 00:55:04', 1, '2022-11-22 00:55:04', 0, 0, 'Operation', '管理员', 3, 0);
INSERT INTO "public"."t_roles" VALUES (2, '2022-11-13 02:46:33', 0, '2024-01-25 14:17:34.566964', 1, 0, 'general', '一般用户', 2, 0);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user_role";
CREATE TABLE "public"."t_user_role" (
  "id" int4 NOT NULL DEFAULT nextval('t_user_role_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "user_id" int4,
  "role_id" int4
)
;
COMMENT ON COLUMN "public"."t_user_role"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_user_role"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_user_role"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_user_role"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_user_role"."is_deleted" IS '逻辑删除:0=未删除,1=删除';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO "public"."t_user_role" VALUES (1, '2022-11-13 02:58:19', 0, '2022-11-13 02:58:19', 0, 0, 1, 1);
INSERT INTO "public"."t_user_role" VALUES (3, '2022-11-22 00:50:26', 0, '2022-11-22 00:50:26', 0, 0, 3, 2);
INSERT INTO "public"."t_user_role" VALUES (4, '2022-11-22 00:55:57', 1, '2022-11-22 00:55:57', 0, 0, 2, 3);
INSERT INTO "public"."t_user_role" VALUES (10, '2023-12-16 11:35:26', 1, '2023-12-16 11:35:26', 0, 0, 4, 2);
INSERT INTO "public"."t_user_role" VALUES (6, '2023-12-06 13:18:51', 0, '2023-12-06 13:18:51', 0, 0, 5, 2);
INSERT INTO "public"."t_user_role" VALUES (28, '2024-01-02 22:29:54', 0, '2024-01-02 22:29:54', 0, 0, 6, 2);
INSERT INTO "public"."t_user_role" VALUES (29, '2024-06-02 03:20:09.761182', 0, '2024-06-02 03:20:09.761182', 0, 0, 7, 2);

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_users";
CREATE TABLE "public"."t_users" (
  "id" int4 NOT NULL DEFAULT nextval('t_users_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "username" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nickname" varchar(32) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sex" int4 DEFAULT 0,
  "phone" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "hashed_password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" int4 NOT NULL DEFAULT 0,
  "is_active" bool DEFAULT false,
  "is_superuser" bool DEFAULT false
)
;
COMMENT ON COLUMN "public"."t_users"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_users"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_users"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_users"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_users"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_users"."username" IS '用户名';
COMMENT ON COLUMN "public"."t_users"."nickname" IS '姓名';
COMMENT ON COLUMN "public"."t_users"."sex" IS '性别';
COMMENT ON COLUMN "public"."t_users"."phone" IS '手机号';
COMMENT ON COLUMN "public"."t_users"."email" IS '邮箱';
COMMENT ON COLUMN "public"."t_users"."hashed_password" IS '密码';
COMMENT ON COLUMN "public"."t_users"."avatar" IS '头像';
COMMENT ON COLUMN "public"."t_users"."status" IS '状态';
COMMENT ON COLUMN "public"."t_users"."is_active" IS '是否已经验证用户';
COMMENT ON COLUMN "public"."t_users"."is_superuser" IS '是否超级管理员';

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO "public"."t_users" VALUES (2, '2022-11-22 00:48:34', 0, '2022-11-22 00:55:57', 1, 0, 'opt', 'opt', 0, '12345678911', 'opt@beginner2020.top', '$2b$12$EbJD0X5U0LwAvf5EVvYxZO20Jyv2xLKU1quekOyX3SwhdVepz1RFu', NULL, 0, 't', 'f');
INSERT INTO "public"."t_users" VALUES (3, '2022-11-22 00:50:26', 0, '2023-12-09 16:47:45', 1, 0, 'user', NULL, 0, '12345678912', 'user@beginner2020.top', '$2b$12$Wov4niPCoLOeBcRNgGDNhekSZBgB/GAhYs25CLHfJG.me1KbFP0am', NULL, 0, 't', 'f');
INSERT INTO "public"."t_users" VALUES (4, '2023-12-02 15:36:42', 1, '2023-12-16 13:16:49', 4, 0, 'hjdhnx', '道长', 2, '13154671296', '434857005@qq.com', '$2b$12$X3LQ2VXThey.YB/WGlwYq.35CKOeKkBgmA6TTR91q/VYe6hGDAWRO', 'images/avatar/f84e9577-9047-470e-bcde-16173ca1811c.jpg', 0, 't', 'f');
INSERT INTO "public"."t_users" VALUES (5, '2024-01-02 21:35:02', 0, '2024-01-02 21:38:43', 0, 0, 'admin1', '超级管理员1', 0, '12345678910', 'admin1@beginner2020.top', '$2b$12$s1WlihU/PaMhW0T2H360Me8IswCyKtep8p.kQcV3z9QVdS7natYL.', NULL, 0, 't', 'f');
INSERT INTO "public"."t_users" VALUES (6, '2024-01-02 21:41:41', 0, '2024-01-02 22:29:54', 0, 0, 'admin2', '超级管理员2', 0, '12345678910', 'admin2@beginner2020.top', '$2b$12$1JuTbUoZ4KkgNzCG1h6/9OzOLQ2NOU9g.fdPy5OHtrhFUBvBa31bO', NULL, 0, 't', 'f');
INSERT INTO "public"."t_users" VALUES (1, '2022-11-13 02:58:19', 0, '2024-03-17 09:41:24.829004', 1, 0, 'admin', '超级管理员', 0, '12345678910', 'admin@beginner2020.top', '$2b$12$nlyWZAzu4C9cgbHV/FE1X.nwBKiGemATgCxikPQEQVznMqBCrDw/e', 'images/avatar/cad832e9-e7e5-4b4c-a898-0a64ca9ea2f4.png', 0, 't', 't');
INSERT INTO "public"."t_users" VALUES (7, '2024-06-02 03:20:09.761182', 0, '2024-06-02 03:20:09.761182', 0, 0, 'xiaoxiaoDM', NULL, 0, '16676002381', '2762698772@qq.com', '$2b$12$0BeoJ.B1CBVZ.twMOncyR.HYYiWeFG1EHI3SfRtA5AB2aUHf1MMB6', NULL, 0, 't', 'f');

-- ----------------------------
-- Table structure for t_vod_configs
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_vod_configs";
CREATE TABLE "public"."t_vod_configs" (
  "id" int4 NOT NULL DEFAULT nextval('t_vod_configs_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "key" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "value" text COLLATE "pg_catalog"."default",
  "value_type" varchar(256) COLLATE "pg_catalog"."default",
  "remark" varchar(256) COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "order_num" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."t_vod_configs"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_vod_configs"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_vod_configs"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_vod_configs"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_vod_configs"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_vod_configs"."name" IS '参数名称';
COMMENT ON COLUMN "public"."t_vod_configs"."key" IS '参数键';
COMMENT ON COLUMN "public"."t_vod_configs"."value" IS '参数值';
COMMENT ON COLUMN "public"."t_vod_configs"."value_type" IS '值类型';
COMMENT ON COLUMN "public"."t_vod_configs"."remark" IS '备注';
COMMENT ON COLUMN "public"."t_vod_configs"."status" IS '参数状态';
COMMENT ON COLUMN "public"."t_vod_configs"."order_num" IS '显示排序';

-- ----------------------------
-- Records of t_vod_configs
-- ----------------------------
INSERT INTO "public"."t_vod_configs" VALUES (14, '2024-02-19 13:52:29.123947', 1, '2024-05-29 13:11:46.050462', 1, 0, 'drpy源仓库1', 'vod_drpy_house1', 'hjdhnx/dr_py|js', 'str', 'drpy源的github仓库。repo|path', 1, 14);
INSERT INTO "public"."t_vod_configs" VALUES (15, '2024-02-19 13:52:29.128959', 1, '2024-05-29 13:11:46.060169', 1, 0, 'drpy源仓库2', 'vod_drpy_house2', 'heroaku/TVboxo|Js', 'str', 'drpy源的github仓库。repo|path', 1, 15);
INSERT INTO "public"."t_vod_configs" VALUES (16, '2024-03-10 11:05:05.154723', 1, '2024-05-29 13:11:46.072912', 1, 0, 'drpy源仓库3', 'vod_drpy_house3', 'gaotianliuyun/gao|js', 'str', 'drpy源的github仓库(高天流云)。repo|path', 1, 16);
INSERT INTO "public"."t_vod_configs" VALUES (4, '2024-02-01 13:15:53.620216', 1, '2024-05-29 13:11:56.507803', 1, 0, '自定义配置模板文件', 'vod_config_custom', 'txt/pg.conf', 'file', 'hipy的自动生成在线配置将使用此文件作为个性化配置', 1, 4);
INSERT INTO "public"."t_vod_configs" VALUES (1, '2024-02-01 13:15:53.558712', 1, '2024-05-29 13:11:45.933782', 1, 0, 'drpy接口文件', 'vod_drpy_api', 'drpy_libs/drpy2.min.js', 'file', '自动生成配置中的drpy的api将会使用此文件', 1, 1);
INSERT INTO "public"."t_vod_configs" VALUES (2, '2024-02-01 13:15:53.589862', 1, '2024-05-29 13:11:45.94833', 1, 0, '接口密码', 'vod_passwd', 'dzyyds', 'str', 'hipy的t4接口将使用此密码作为参数验证', 1, 2);
INSERT INTO "public"."t_vod_configs" VALUES (3, '2024-02-01 13:15:53.60785', 1, '2024-05-29 13:11:45.955541', 1, 0, '生成配置模板文件', 'vod_config_base', 'txt/config.txt', 'file', 'hipy的自动生成在线配置将使用此文件作为渲染模板', 1, 3);
INSERT INTO "public"."t_vod_configs" VALUES (5, '2024-02-01 13:15:53.637165', 1, '2024-05-29 13:11:45.971142', 1, 0, '自定义解析文件', 'vod_vip_parse', 'txt/vip_parse.conf', 'file', 'hipy的自定义视频解析配置文件', 1, 5);
INSERT INTO "public"."t_vod_configs" VALUES (6, '2024-02-01 13:15:53.649765', 1, '2024-05-29 13:11:45.980396', 1, 0, '自定义直播外链', 'vod_zb_url', 'http://hiker.nokia.press/hikerule/zyw_data/43', 'url', 'hipy的自定义直播外链文件', 1, 6);
INSERT INTO "public"."t_vod_configs" VALUES (10, '2024-02-04 14:21:12.74512', 1, '2024-05-29 13:11:45.987393', 1, 0, '自定义直播本地文件', 'vod_zb_file', 'txt/mytv.txt', 'file', 'hipy的自定义直播本地文件', 1, 10);
INSERT INTO "public"."t_vod_configs" VALUES (11, '2024-02-04 14:21:12.748985', 1, '2024-05-29 13:11:46.004131', 1, 0, '自定义直播使用', 'vod_zb_use', 'file', 'str', 'hipy的直播使用外链或文件|file:使用文件,url:使用外链', 1, 11);
INSERT INTO "public"."t_vod_configs" VALUES (7, '2024-02-01 13:15:53.665355', 1, '2024-05-29 13:11:46.012589', 1, 0, '自定义挂载jar', 'vod_custom_jar', 'jar/custom_spider_dz1201.jar', 'file', 'hipy的自定义外挂jar文件,用于直播解析和视频解析轮询', 1, 7);
INSERT INTO "public"."t_vod_configs" VALUES (8, '2024-02-01 13:15:53.686778', 1, '2024-05-29 13:11:46.021512', 1, 0, '自定义壁纸', 'vod_wall_paper', 'https://tuapi.eees.cc/api.php?category=fengjing&type=302', 'url', 'hipy的自定义壁纸，可以是文件或着链接', 1, 8);
INSERT INTO "public"."t_vod_configs" VALUES (9, '2024-02-02 17:36:29.83668', 1, '2024-05-29 13:11:46.029454', 1, 0, '环境变量', 'vod_hipy_env', '{"ali_token":"682c41720d6d4c9d8ded00bcdd712870","bili_cookie":"SESSDATA=93f1b89c%2C1685503124%2C760e0%2Ac1; bili_jct=5e0a1e65979f4d9f48fd9c158362b573; DedeUserID=253592508","douban":"264291961","vmid":"253592508","test_env":"测试环境变量","appkey":"1d8b6e7d45233436","access_key":"3841bf63f94a8e8d0181e59470167aa1CjCup6x6MSEv8rLctbAuWLQs0ra3Ej09EJhjMBrgAsaVt3ALYteyfxjvizVqWrnlR0ESVmlucDVmcHBycjZDVk9KMDFucTRmMEcwMUlHWWhQZkVvUnRqeTdMWTNjU2phSkdpRkZFTGJPQUZ6NEVmcVVMUUx2WjZBTl8wb0lsTjhLbmp6SHVxRjdRIIEC"}', 'json', 'hipy的环境变量，json数据', 1, 9);
INSERT INTO "public"."t_vod_configs" VALUES (12, '2024-02-19 11:22:58.438504', 1, '2024-05-29 13:11:46.036377', 1, 0, 'git访问代理', 'vod_git_proxy', 'https://ghproxy.liuzhicong.com/', 'url', '代理加速git访问，解决被墙问题', 1, 12);
INSERT INTO "public"."t_vod_configs" VALUES (13, '2024-02-19 11:22:58.455035', 1, '2024-05-29 13:11:46.042839', 1, 0, 'git访问令牌', 'vod_git_token', ' ', 'str', '从 http://github.com/settings/tokens 获取的token，可以操作api以及破解git访问次数限制每小时60次提升至5000次', 1, 13);

-- ----------------------------
-- Table structure for t_vod_rules
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_vod_rules";
CREATE TABLE "public"."t_vod_rules" (
  "id" int4 NOT NULL DEFAULT nextval('t_vod_rules_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "group" varchar(256) COLLATE "pg_catalog"."default",
  "path" varchar(256) COLLATE "pg_catalog"."default",
  "is_exist" bool DEFAULT true,
  "order_num" int4 DEFAULT 0,
  "file_type" varchar(256) COLLATE "pg_catalog"."default",
  "ext" text COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "searchable" int4 DEFAULT 0,
  "filterable" int4 DEFAULT 0,
  "quickSearch" int4 DEFAULT 0,
  "active" bool DEFAULT true
)
;
COMMENT ON COLUMN "public"."t_vod_rules"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_vod_rules"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_vod_rules"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_vod_rules"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_vod_rules"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_vod_rules"."name" IS '源名称';
COMMENT ON COLUMN "public"."t_vod_rules"."group" IS '源分组';
COMMENT ON COLUMN "public"."t_vod_rules"."path" IS '文件路径';
COMMENT ON COLUMN "public"."t_vod_rules"."is_exist" IS '是否存在';
COMMENT ON COLUMN "public"."t_vod_rules"."order_num" IS '显示排序';
COMMENT ON COLUMN "public"."t_vod_rules"."file_type" IS '文件类型';
COMMENT ON COLUMN "public"."t_vod_rules"."ext" IS 'ext扩展';
COMMENT ON COLUMN "public"."t_vod_rules"."status" IS '源状态';
COMMENT ON COLUMN "public"."t_vod_rules"."searchable" IS '可搜索';
COMMENT ON COLUMN "public"."t_vod_rules"."filterable" IS '可筛选';
COMMENT ON COLUMN "public"."t_vod_rules"."quickSearch" IS '可快速搜索';
COMMENT ON COLUMN "public"."t_vod_rules"."active" IS '是否显示';

-- ----------------------------
-- Records of t_vod_rules
-- ----------------------------
INSERT INTO "public"."t_vod_rules" VALUES (49, '2024-02-01 14:31:22.214129', 1, '2024-06-20 02:37:50.924022', 1, 0, 'douyu', 't4/files/txt', 't4/files/txt/douyu.txt', 't', 49, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (9, '2024-02-01 14:31:22.073461', 1, '2024-06-20 02:37:48.772393', 1, 0, '两个BT', 't4/spiders', 't4/spiders/两个BT.py', 't', 9, '.py', '{{host}}/files/hipy/两个BT.json', 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (4, '2024-02-01 14:31:22.05337', 1, '2024-06-20 02:37:48.780568', 1, 0, 'base_spider', 't4/spiders', 't4/spiders/base_spider.py', 't', 0, '.py', NULL, 1, 1, 1, 0, 'f');
INSERT INTO "public"."t_vod_rules" VALUES (320, '2024-05-25 15:45:01.74015', 1, '2024-06-20 02:37:50.119963', 1, 0, 'iFun', 't4/files/drpy_js', 't4/files/drpy_js/iFun.js', 't', 314, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (11, '2024-02-01 14:31:22.082471', 1, '2024-06-20 02:37:48.862135', 1, 0, '喵次元', 't4/spiders', 't4/spiders/喵次元.py', 't', 11, '.py', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (7, '2024-02-01 14:31:22.066253', 1, '2024-06-20 02:37:48.873618', 1, 0, 'test_1', 't4/spiders', 't4/spiders/test_1.txt', 't', 9999, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (40, '2024-02-01 14:31:22.179776', 1, '2024-06-20 02:37:50.53519', 1, 0, 'mod', 't4/files/drpy_libs', 't4/files/drpy_libs/mod.js', 't', 40, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (267, '2024-05-15 06:21:15.245255', 1, '2024-06-20 02:37:48.879504', 1, 0, '思古影视[V2]', 't4/files/drpy_js', 't4/files/drpy_js/思古影视[V2].js', 't', 261, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (44, '2024-02-01 14:31:22.194524', 1, '2024-06-20 02:37:50.499045', 1, 0, '模板', 't4/files/drpy_libs', 't4/files/drpy_libs/模板.js', 't', 44, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (283, '2024-05-16 08:22:11.800032', 1, '2024-06-20 02:37:49.113339', 1, 0, '星云影视', 't4/files/drpy_js', 't4/files/drpy_js/星云影视.js', 't', 277, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (42, '2024-02-01 14:31:22.187826', 1, '2024-06-20 02:37:50.6661', 1, 0, 'searchFilter', 't4/files/drpy_libs', 't4/files/drpy_libs/searchFilter.js', 't', 42, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (38, '2024-02-01 14:31:22.174162', 1, '2024-06-20 02:37:50.50583', 1, 0, 'gbk', 't4/files/drpy_libs', 't4/files/drpy_libs/gbk.js', 't', 38, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (34, '2024-02-01 14:31:22.161255', 1, '2024-06-20 02:37:50.513398', 1, 0, 'drpy2.min', 't4/files/drpy_libs', 't4/files/drpy_libs/drpy2.min.js', 't', 34, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (319, '2024-05-25 15:45:01.602023', 1, '2024-06-20 02:37:49.815897', 1, 0, '看客影院', 't4/files/drpy_js', 't4/files/drpy_js/看客影院.js', 't', 313, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (279, '2024-05-16 08:22:11.695928', 1, '2024-06-20 02:37:48.885784', 1, 0, '看看影视', 't4/files/drpy_js', 't4/files/drpy_js/看看影视.js', 't', 273, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (36, '2024-02-01 14:31:22.167772', 1, '2024-06-20 02:37:50.619487', 1, 0, 'es6py', 't4/files/drpy_libs', 't4/files/drpy_libs/es6py.js', 't', 36, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (43, '2024-02-01 14:31:22.191456', 1, '2024-06-20 02:37:50.690371', 1, 0, 'sortName', 't4/files/drpy_libs', 't4/files/drpy_libs/sortName.js', 't', 43, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (54, '2024-02-02 15:59:25.736026', 1, '2024-06-20 02:37:49.858081', 1, 0, '在线之家', 't4/files/drpy_js', 't4/files/drpy_js/在线之家.js', 't', 54, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (362, '2024-06-08 01:52:31.762835', 1, '2024-06-20 02:37:49.609146', 1, 0, '黑料不打烊-z', 't4/files/drpy_js', 't4/files/drpy_js/黑料不打烊-z.js', 't', 356, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (287, '2024-05-16 08:22:12.153112', 1, '2024-06-20 02:37:50.014197', 1, 0, '快看影视', 't4/files/drpy_js', 't4/files/drpy_js/快看影视.js', 't', 281, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (3, '2024-02-01 14:31:22.048522', 1, '2024-06-20 02:37:48.840916', 1, 0, 'base_spider', 't4/spiders', 't4/spiders/base_spider.json', 't', 9999, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (31, '2024-02-01 14:31:22.150591', 1, '2024-06-20 02:37:50.527509', 1, 0, 'crypto-js', 't4/files/drpy_libs', 't4/files/drpy_libs/crypto-js.js', 't', 31, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (37, '2024-02-01 14:31:22.171107', 1, '2024-06-20 02:37:50.547426', 1, 0, 'exRegExp', 't4/files/drpy_libs', 't4/files/drpy_libs/exRegExp.js', 't', 37, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (27, '2024-02-01 14:31:22.138315', 1, '2024-06-20 02:37:50.56302', 1, 0, 'atob', 't4/files/drpy_libs', 't4/files/drpy_libs/atob.js', 't', 27, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (64, '2024-02-05 09:48:57.436728', 1, '2024-06-20 02:37:50.571909', 1, 0, 'qjs_env', 't4/files/drpy_libs', 't4/files/drpy_libs/qjs_env.js', 't', 64, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (33, '2024-02-01 14:31:22.158067', 1, '2024-06-20 02:37:50.612838', 1, 0, 'drpy2', 't4/files/drpy_libs', 't4/files/drpy_libs/drpy2.js', 't', 33, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (39, '2024-02-01 14:31:22.177056', 1, '2024-06-20 02:37:50.626457', 1, 0, 'live2cms', 't4/files/drpy_libs', 't4/files/drpy_libs/live2cms.js', 't', 39, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (29, '2024-02-01 14:31:22.144645', 1, '2024-06-20 02:37:50.682747', 1, 0, 'cheerio.min', 't4/files/drpy_libs', 't4/files/drpy_libs/cheerio.min.js', 't', 29, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (35, '2024-02-01 14:31:22.164177', 1, '2024-06-20 02:37:50.699245', 1, 0, 'drT', 't4/files/drpy_libs', 't4/files/drpy_libs/drT.js', 't', 35, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (14, '2024-02-01 14:31:22.093364', 1, '2024-06-20 02:37:48.802785', 1, 0, '樱花动漫', 't4/spiders', 't4/spiders/樱花动漫.py', 't', 14, '.py', 'https://jihulab.com/qiaoji/open/-/raw/main/yinghua', 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (8, '2024-02-01 14:31:22.0695', 1, '2024-06-20 02:37:48.814645', 1, 0, '两个BT', 't4/spiders', 't4/spiders/两个BT.json', 't', 9999, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (285, '2024-05-16 08:22:11.90766', 1, '2024-06-20 02:37:49.332711', 1, 0, '孜然影视', 't4/files/drpy_js', 't4/files/drpy_js/孜然影视.js', 't', 279, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (344, '2024-05-30 18:55:04.441384', 1, '2024-06-20 02:37:49.392189', 1, 0, '易搜[搜]', 't4/files/drpy_js', 't4/files/drpy_js/易搜[搜].js', 't', 338, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (30, '2024-02-01 14:31:22.147509', 1, '2024-06-20 02:37:50.67517', 1, 0, 'crypto-hiker', 't4/files/drpy_libs', 't4/files/drpy_libs/crypto-hiker.js', 't', 30, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (12, '2024-02-01 14:31:22.085792', 1, '2024-06-20 02:37:48.827551', 1, 0, '新浪资源', 't4/spiders', 't4/spiders/新浪资源.py', 't', 12, '.py', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (13, '2024-02-01 14:31:22.089587', 1, '2024-06-20 02:37:48.833811', 1, 0, '樱花动漫', 't4/spiders', 't4/spiders/樱花动漫.json', 't', 9999, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (6, '2024-02-01 14:31:22.061431', 1, '2024-06-20 02:37:48.855795', 1, 0, 'cntv央视', 't4/spiders', 't4/spiders/cntv央视.py', 't', 0, '.py', '{{host}}/files/hipy/cntv央视.json', 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (332, '2024-05-28 03:41:22.842135', 1, '2024-06-20 02:37:48.956085', 1, 0, '爱看hd', 't4/files/drpy_js', 't4/files/drpy_js/爱看hd.js', 't', 326, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (25, '2024-02-01 14:31:22.131846', 1, '2024-06-20 02:37:50.519809', 1, 0, 'alist', 't4/files/drpy_libs', 't4/files/drpy_libs/alist.js', 't', 25, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (28, '2024-02-01 14:31:22.141613', 1, '2024-06-20 02:37:50.706825', 1, 0, 'base64', 't4/files/drpy_libs', 't4/files/drpy_libs/base64.js', 't', 28, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (45, '2024-02-01 14:31:22.197684', 1, '2024-06-20 02:37:50.760072', 1, 0, 'alist', 't4/files/json', 't4/files/json/alist.json', 't', 45, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (41, '2024-02-01 14:31:22.183051', 1, '2024-06-20 02:37:50.722157', 1, 0, 'rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/rsa.js', 't', 41, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (50, '2024-02-01 14:31:22.217894', 1, '2024-06-20 02:37:50.945734', 1, 0, 'huya', 't4/files/txt', 't4/files/txt/huya.txt', 't', 50, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (354, '2024-06-05 15:25:08.439074', 1, '2024-06-20 02:37:49.149529', 1, 0, '番茄小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/番茄小说[书].js', 't', 348, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (318, '2024-05-25 15:45:01.302243', 1, '2024-06-20 02:37:49.339452', 1, 0, '黑木耳资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/黑木耳资源[资].js', 't', 312, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (91, '2024-03-10 11:22:54.431043', 1, '2024-06-20 02:37:51.208397', 1, 0, 'alist', 't4/files/drpy3_js', 't4/files/drpy3_js/alist.json', 't', 85, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (76, '2024-02-20 16:25:29.526731', 1, '2024-06-20 02:37:50.930605', 1, 0, 'tv', 't4/files/txt', 't4/files/txt/tv.txt', 't', 70, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (47, '2024-02-01 14:31:22.206951', 1, '2024-06-20 02:37:50.917779', 1, 0, 'config', 't4/files/txt', 't4/files/txt/config.txt', 't', 47, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (78, '2024-03-08 15:53:21.065726', 1, '2024-06-20 02:37:51.120718', 1, 0, 'cheerio.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/cheerio.min.js', 't', 72, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (119, '2024-03-10 11:22:54.566374', 1, '2024-06-20 02:37:51.244408', 1, 0, 'yyets', 't4/files/drpy3_js', 't4/files/drpy3_js/yyets.js', 't', 113, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (122, '2024-03-10 11:22:54.581446', 1, '2024-06-20 02:37:51.256164', 1, 0, '吸瓜', 't4/files/drpy3_js', 't4/files/drpy3_js/吸瓜.js', 't', 116, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (98, '2024-03-10 11:22:54.466196', 1, '2024-06-20 02:37:51.262924', 1, 0, 'funletu', 't4/files/drpy3_js', 't4/files/drpy3_js/funletu.js', 't', 92, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (67, '2024-02-05 09:56:10.488387', 1, '2024-06-20 02:37:51.042196', 1, 0, '哔哩', 't4/files/js_parse_api', 't4/files/js_parse_api/哔哩.js', 't', 67, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (125, '2024-03-19 11:00:53.11513', 1, '2024-06-20 02:37:51.060465', 1, 0, 'drpy3.hiker', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.hiker.js', 't', 119, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (83, '2024-03-08 15:53:21.079211', 1, '2024-06-20 02:37:51.068016', 1, 0, '模板', 't4/files/drpy3_libs', 't4/files/drpy3_libs/模板.js', 't', 77, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (80, '2024-03-08 15:53:21.072166', 1, '2024-06-20 02:37:51.128834', 1, 0, 'drpy3', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.js', 't', 74, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (102, '2024-03-10 11:22:54.485559', 1, '2024-06-20 02:37:51.144369', 1, 0, 'jiyingwp', 't4/files/drpy3_js', 't4/files/drpy3_js/jiyingwp.js', 't', 96, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (88, '2024-03-10 11:22:54.415189', 1, '2024-06-20 02:37:51.168034', 1, 0, '4khdr', 't4/files/drpy3_js', 't4/files/drpy3_js/4khdr.js', 't', 82, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (92, '2024-03-10 11:22:54.436023', 1, '2024-06-20 02:37:51.229373', 1, 0, 'banan', 't4/files/drpy3_js', 't4/files/drpy3_js/banan.js', 't', 86, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (93, '2024-03-10 11:22:54.441055', 1, '2024-06-20 02:37:51.23609', 1, 0, 'cilixiong', 't4/files/drpy3_js', 't4/files/drpy3_js/cilixiong.js', 't', 87, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (105, '2024-03-10 11:22:54.499477', 1, '2024-06-20 02:37:51.269581', 1, 0, 'lf_live', 't4/files/drpy3_js', 't4/files/drpy3_js/lf_live.txt', 't', 99, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (99, '2024-03-10 11:22:54.471919', 1, '2024-06-20 02:37:51.275825', 1, 0, 'huya', 't4/files/drpy3_js', 't4/files/drpy3_js/huya.js', 't', 93, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (94, '2024-03-10 11:22:54.446128', 1, '2024-06-20 02:37:51.283865', 1, 0, 'cilixiongp', 't4/files/drpy3_js', 't4/files/drpy3_js/cilixiongp.js', 't', 88, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (106, '2024-03-10 11:22:54.504301', 1, '2024-06-20 02:37:51.290943', 1, 0, 'lf_live1', 't4/files/drpy3_js', 't4/files/drpy3_js/lf_live1.txt', 't', 100, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (95, '2024-03-10 11:22:54.451334', 1, '2024-06-20 02:37:51.318367', 1, 0, 'ddys_d', 't4/files/drpy3_js', 't4/files/drpy3_js/ddys_d.js', 't', 89, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (89, '2024-03-10 11:22:54.420127', 1, '2024-06-20 02:37:51.337934', 1, 0, '97tvs', 't4/files/drpy3_js', 't4/files/drpy3_js/97tvs.js', 't', 83, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (104, '2024-03-10 11:22:54.494281', 1, '2024-06-20 02:37:51.343995', 1, 0, 'kuba', 't4/files/drpy3_js', 't4/files/drpy3_js/kuba.js', 't', 98, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (85, '2024-03-10 11:22:54.396452', 1, '2024-06-20 02:37:51.365383', 1, 0, '1080P', 't4/files/drpy3_js', 't4/files/drpy3_js/1080P.js', 't', 79, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (97, '2024-03-10 11:22:54.461295', 1, '2024-06-20 02:37:51.38436', 1, 0, 'dygang', 't4/files/drpy3_js', 't4/files/drpy3_js/dygang.js', 't', 91, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (120, '2024-03-10 11:22:54.570699', 1, '2024-06-20 02:37:51.42344', 1, 0, 'yyetsp', 't4/files/drpy3_js', 't4/files/drpy3_js/yyetsp.js', 't', 114, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (96, '2024-03-10 11:22:54.456638', 1, '2024-06-20 02:37:51.438356', 1, 0, 'dydhhy', 't4/files/drpy3_js', 't4/files/drpy3_js/dydhhy.js', 't', 90, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (79, '2024-03-08 15:53:21.070369', 1, '2024-06-20 02:37:51.087154', 1, 0, 'crypto-js', 't4/files/drpy3_libs', 't4/files/drpy3_libs/crypto-js.js', 't', 73, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (100, '2024-03-10 11:22:54.476378', 1, '2024-06-20 02:37:51.46146', 1, 0, 'jianpian', 't4/files/drpy3_js', 't4/files/drpy3_js/jianpian.js', 't', 94, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (101, '2024-03-10 11:22:54.48102', 1, '2024-06-20 02:37:51.478239', 1, 0, 'jiyingw', 't4/files/drpy3_js', 't4/files/drpy3_js/jiyingw.js', 't', 95, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (86, '2024-03-10 11:22:54.404715', 1, '2024-06-20 02:37:51.494339', 1, 0, '18av', 't4/files/drpy3_js', 't4/files/drpy3_js/18av.js', 't', 80, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (90, '2024-03-10 11:22:54.425029', 1, '2024-06-20 02:37:51.508559', 1, 0, 'aipanso', 't4/files/drpy3_js', 't4/files/drpy3_js/aipanso.js', 't', 84, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (282, '2024-05-16 08:22:11.775273', 1, '2024-06-20 02:37:49.010384', 1, 0, '蓝光影视', 't4/files/drpy_js', 't4/files/drpy_js/蓝光影视.js', 't', 276, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (284, '2024-05-16 08:22:11.811528', 1, '2024-06-20 02:37:49.156525', 1, 0, '西屋影视', 't4/files/drpy_js', 't4/files/drpy_js/西屋影视.js', 't', 278, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (381, '2024-06-09 18:53:00.718922', 1, '2024-06-20 02:37:50.095888', 1, 0, '飞翔鸟[书]', 't4/files/drpy_js', 't4/files/drpy_js/飞翔鸟[书].js', 't', 375, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (60, '2024-02-04 14:21:09.834304', 1, '2024-06-20 02:37:50.860637', 1, 0, 'E8plus', 't4/files/json', 't4/files/json/E8plus.json', 't', 60, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (46, '2024-02-01 14:31:22.201442', 1, '2024-06-20 02:37:50.903264', 1, 0, 'bili', 't4/files/txt', 't4/files/txt/bili.txt', 't', 46, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (62, '2024-02-04 14:21:09.849102', 1, '2024-06-20 02:37:50.938141', 1, 0, 'zb', 't4/files/txt', 't4/files/txt/zb.txt', 't', 62, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (77, '2024-03-08 15:53:20.98301', 1, '2024-06-20 02:37:50.958875', 1, 0, 'mytv', 't4/files/txt', 't4/files/txt/mytv.txt', 't', 71, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (48, '2024-02-01 14:31:22.210714', 1, '2024-06-20 02:37:50.965211', 1, 0, 'custom', 't4/files/txt', 't4/files/txt/custom.conf', 't', 48, '.conf', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (65, '2024-02-05 09:48:57.517131', 1, '2024-06-20 02:37:50.985165', 1, 0, 'custom_jsapi', 't4/files/jar', 't4/files/jar/custom_jsapi.jar', 't', 65, '.jar', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (66, '2024-02-05 09:48:57.524729', 1, '2024-06-20 02:37:50.992017', 1, 0, 'custom_spider_dz1201', 't4/files/jar', 't4/files/jar/custom_spider_dz1201.jar', 't', 66, '.jar', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (82, '2024-03-08 15:53:21.07716', 1, '2024-06-20 02:37:51.077421', 1, 0, 'gbk', 't4/files/drpy3_libs', 't4/files/drpy3_libs/gbk.js', 't', 76, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (121, '2024-03-10 11:22:54.575765', 1, '2024-06-20 02:37:51.376818', 1, 0, '养端', 't4/files/drpy3_js', 't4/files/drpy3_js/养端.js', 't', 115, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (87, '2024-03-10 11:22:54.410304', 1, '2024-06-20 02:37:51.487488', 1, 0, '369影视', 't4/files/drpy3_js', 't4/files/drpy3_js/369影视.js', 't', 81, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (330, '2024-05-27 10:10:44.903811', 1, '2024-06-20 02:37:49.640912', 1, 0, '爱看农民[优]', 't4/files/drpy_js', 't4/files/drpy_js/爱看农民[优].js', 't', 324, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (133, '2024-03-29 09:09:21.21701', 1, '2024-06-20 02:37:51.026133', 1, 0, '虾米', 't4/files/js_parse_api', 't4/files/js_parse_api/虾米.js', 't', 127, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (51, '2024-02-01 14:31:22.221119', 1, '2024-06-20 02:37:50.95271', 1, 0, 'vip_parse', 't4/files/txt', 't4/files/txt/vip_parse.conf', 't', 51, '.conf', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (112, '2024-03-10 11:22:54.531894', 1, '2024-06-20 02:37:51.222708', 1, 0, 'mp4us', 't4/files/drpy3_js', 't4/files/drpy3_js/mp4us.js', 't', 106, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (5, '2024-02-01 14:31:22.05774', 1, '2024-06-20 02:37:48.045229', 1, 0, 'cntv央视', 't4/spiders', 't4/spiders/cntv央视.json', 't', 9999, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (111, '2024-03-10 11:22:54.526879', 1, '2024-06-20 02:37:51.192371', 1, 0, 'Missav', 't4/files/drpy3_js', 't4/files/drpy3_js/Missav.js', 't', 105, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (2, '2024-02-01 14:31:22.043862', 1, '2024-06-20 02:37:48.795296', 1, 0, 'base_java_loader', 't4/spiders', 't4/spiders/base_java_loader.py', 't', 0, '.py', NULL, 1, 1, 1, 0, 'f');
INSERT INTO "public"."t_vod_rules" VALUES (109, '2024-03-10 11:22:54.518066', 1, '2024-06-20 02:37:51.356919', 1, 0, 'meijumip', 't4/files/drpy3_js', 't4/files/drpy3_js/meijumip.js', 't', 103, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (271, '2024-05-15 06:21:15.45228', 1, '2024-06-20 02:37:49.49449', 1, 0, '蛋蛋赞', 't4/files/drpy_js', 't4/files/drpy_js/蛋蛋赞.js', 't', 265, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (288, '2024-05-16 08:22:12.282205', 1, '2024-06-20 02:37:50.310103', 1, 0, '星空影院', 't4/files/drpy_js', 't4/files/drpy_js/星空影院.js', 't', 282, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (108, '2024-03-10 11:22:54.5137', 1, '2024-06-20 02:37:51.311924', 1, 0, 'meijumi', 't4/files/drpy3_js', 't4/files/drpy3_js/meijumi.js', 't', 102, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (124, '2024-03-10 11:22:54.592597', 1, '2024-06-20 02:37:51.446218', 1, 0, '玩偶姐姐', 't4/files/drpy3_js', 't4/files/drpy3_js/玩偶姐姐.js', 't', 118, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (113, '2024-03-10 11:22:54.53651', 1, '2024-06-20 02:37:51.469024', 1, 0, 'qimiao', 't4/files/drpy3_js', 't4/files/drpy3_js/qimiao.js', 't', 107, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (136, '2024-05-06 13:28:59.370606', 1, '2024-06-20 02:37:48.848039', 1, 0, '在线之家', 't4/spiders', 't4/spiders/在线之家.py', 't', 130, '.py', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (429, '2024-06-17 16:35:36.919229', 1, '2024-06-20 02:37:48.982471', 1, 0, '好趣网[播]', 't4/files/drpy_js', 't4/files/drpy_js/好趣网[播].js', 't', 423, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (432, '2024-06-17 16:35:36.983571', 1, '2024-06-20 02:37:49.074679', 1, 0, '麻雀视频[优]', 't4/files/drpy_js', 't4/files/drpy_js/麻雀视频[优].js', 't', 426, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (433, '2024-06-17 16:35:37.007061', 1, '2024-06-20 02:37:49.105331', 1, 0, '第一韩漫[画]', 't4/files/drpy_js', 't4/files/drpy_js/第一韩漫[画].js', 't', 427, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (127, '2024-03-29 09:09:21.022291', 1, '2024-06-20 02:37:49.257995', 1, 0, '厂长资源', 't4/files/drpy_js', 't4/files/drpy_js/厂长资源.js', 't', 121, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (117, '2024-03-10 11:22:54.556124', 1, '2024-06-20 02:37:51.533949', 1, 0, 'xb6v', 't4/files/drpy3_js', 't4/files/drpy3_js/xb6v.js', 't', 111, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (1, '2024-02-01 14:31:22.022744', 1, '2024-06-20 02:37:48.867744', 1, 0, 'ad', 't4/spiders', 't4/spiders/ad.m3u8', 't', 9999, '.m3u8', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (155, '2024-05-06 13:28:59.628363', 1, '2024-06-20 02:37:49.723719', 1, 0, '大米星球', 't4/files/drpy_js', 't4/files/drpy_js/大米星球.js', 't', 149, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (134, '2024-03-29 09:09:21.220463', 1, '2024-06-20 02:37:51.052108', 1, 0, '阳途', 't4/files/js_parse_api', 't4/files/js_parse_api/阳途.js', 't', 128, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (116, '2024-03-10 11:22:54.551052', 1, '2024-06-20 02:37:51.332102', 1, 0, 'tzfile', 't4/files/drpy3_js', 't4/files/drpy3_js/tzfile.js', 't', 110, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (410, '2024-06-14 18:03:33.410059', 1, '2024-06-20 02:37:49.164641', 1, 0, 'bilfun(自动)', 't4/files/drpy_js', 't4/files/drpy_js/bilfun(自动).js', 't', 404, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (331, '2024-05-27 12:03:03.995243', 1, '2024-06-20 02:37:49.190287', 1, 0, '爱看农民2[优]', 't4/files/drpy_js', 't4/files/drpy_js/爱看农民2[优].js', 't', 325, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (118, '2024-03-10 11:22:54.561607', 1, '2024-06-20 02:37:51.177429', 1, 0, 'xzys', 't4/files/drpy3_js', 't4/files/drpy3_js/xzys.js', 't', 112, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (114, '2024-03-10 11:22:54.541045', 1, '2024-06-20 02:37:51.304989', 1, 0, 'rrdyw', 't4/files/drpy3_js', 't4/files/drpy3_js/rrdyw.js', 't', 108, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (10, '2024-02-01 14:31:22.077409', 1, '2024-06-20 02:37:48.787308', 1, 0, '哔滴影视', 't4/spiders', 't4/spiders/哔滴影视.py', 't', 10, '.py', '{{host}}/files/hipy/jars/bidi.jar', 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (135, '2024-05-06 13:28:59.334848', 1, '2024-06-20 02:37:48.821509', 1, 0, '厂长资源', 't4/spiders', 't4/spiders/厂长资源.py', 't', 129, '.py', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (126, '2024-03-29 09:09:20.999119', 1, '2024-06-20 02:37:49.243701', 1, 0, 'freeok', 't4/files/drpy_js', 't4/files/drpy_js/freeok.js', 't', 120, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (395, '2024-06-12 10:09:51.875734', 1, '2024-06-20 02:37:49.345042', 1, 0, '千百视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/千百视频[密].js', 't', 389, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (440, '2024-06-17 16:35:37.397274', 1, '2024-06-20 02:37:49.601573', 1, 0, '维奇动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/维奇动漫[漫].js', 't', 434, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (103, '2024-03-10 11:22:54.489716', 1, '2024-06-20 02:37:51.527728', 1, 0, 'kkpans', 't4/files/drpy3_js', 't4/files/drpy3_js/kkpans.js', 't', 97, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (130, '2024-03-29 09:09:21.206493', 1, '2024-06-20 02:37:51.007388', 1, 0, '夜幕', 't4/files/js_parse_api', 't4/files/js_parse_api/夜幕.js', 't', 124, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (270, '2024-05-15 06:21:15.433748', 1, '2024-06-20 02:37:49.441458', 1, 0, '蛋蛋剧', 't4/files/drpy_js', 't4/files/drpy_js/蛋蛋剧.js', 't', 264, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (441, '2024-06-17 16:35:37.502432', 1, '2024-06-20 02:37:49.731039', 1, 0, '88看球[球]', 't4/files/drpy_js', 't4/files/drpy_js/88看球[球].js', 't', 435, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (129, '2024-03-29 09:09:21.199069', 1, '2024-06-20 02:37:51.034671', 1, 0, 'CK', 't4/files/js_parse_api', 't4/files/js_parse_api/CK.js', 't', 123, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (439, '2024-06-17 16:35:37.289358', 1, '2024-06-20 02:37:49.468572', 1, 0, '樱花动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/樱花动漫[漫].js', 't', 433, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (110, '2024-03-10 11:22:54.522405', 1, '2024-06-20 02:37:51.200895', 1, 0, 'meow', 't4/files/drpy3_js', 't4/files/drpy3_js/meow.js', 't', 104, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (388, '2024-06-11 10:05:03.303369', 1, '2024-06-20 02:37:49.475564', 1, 0, '热片网', 't4/files/drpy_js', 't4/files/drpy_js/热片网.js', 't', 382, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (322, '2024-05-25 15:45:01.962292', 1, '2024-06-20 02:37:50.400725', 1, 0, '电影天堂', 't4/files/drpy_js', 't4/files/drpy_js/电影天堂.js', 't', 316, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (59, '2024-02-04 14:21:09.832085', 1, '2024-06-20 02:37:50.847247', 1, 0, 'bili', 't4/files/json', 't4/files/json/bili.json', 't', 59, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (132, '2024-03-29 09:09:21.213665', 1, '2024-06-20 02:37:51.00039', 1, 0, '盘古', 't4/files/js_parse_api', 't4/files/js_parse_api/盘古.js', 't', 126, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (131, '2024-03-29 09:09:21.210231', 1, '2024-06-20 02:37:51.016221', 1, 0, '杰森', 't4/files/js_parse_api', 't4/files/js_parse_api/杰森.js', 't', 125, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (182, '2024-05-06 13:29:00.072149', 1, '2024-06-20 02:37:50.834432', 1, 0, 'pikpakclass.json.db', 't4/files/json', 't4/files/json/pikpakclass.json.db.gz', 't', 176, '.gz', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (186, '2024-05-06 13:29:00.117259', 1, '2024-06-20 02:37:50.875168', 1, 0, 'moli', 't4/files/json', 't4/files/json/moli.json', 't', 180, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (188, '2024-05-06 13:29:00.130646', 1, '2024-06-20 02:37:50.889367', 1, 0, 'wgcf', 't4/files/json', 't4/files/json/wgcf.json', 't', 182, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (191, '2024-05-06 13:29:00.22327', 1, '2024-06-20 02:37:50.978543', 1, 0, 'pg', 't4/files/jar', 't4/files/jar/pg.jar', 't', 185, '.jar', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (192, '2024-05-06 13:29:00.323252', 1, '2024-06-20 02:37:51.09506', 1, 0, 'pako.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/pako.min.js', 't', 186, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (107, '2024-03-10 11:22:54.508952', 1, '2024-06-20 02:37:51.29801', 1, 0, 'live2mv_data', 't4/files/drpy3_js', 't4/files/drpy3_js/live2mv_data.json', 't', 101, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (438, '2024-06-17 16:35:37.283601', 1, '2024-06-20 02:37:49.461756', 1, 0, '大米动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/大米动漫[漫].js', 't', 432, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (389, '2024-06-11 10:05:03.445614', 1, '2024-06-20 02:37:49.575468', 1, 0, '子子影视', 't4/files/drpy_js', 't4/files/drpy_js/子子影视.js', 't', 383, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (333, '2024-05-28 10:11:14.082974', 1, '2024-06-20 02:37:49.656126', 1, 0, '胖虎影视', 't4/files/drpy_js', 't4/files/drpy_js/胖虎影视.js', 't', 327, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (56, '2024-02-02 16:38:12.276321', 1, '2024-06-20 02:37:49.773579', 1, 0, '555影视[飞]', 't4/files/drpy_js', 't4/files/drpy_js/555影视[飞].js', 't', 56, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (81, '2024-03-08 15:53:21.075372', 1, '2024-06-20 02:37:51.540782', 1, 0, 'drpy3.min', 't4/files/drpy3_libs', 't4/files/drpy3_libs/drpy3.min.js', 'f', 75, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (390, '2024-06-11 10:05:04.084003', 1, '2024-06-20 02:37:50.293599', 1, 0, '天启', 't4/files/drpy_js', 't4/files/drpy_js/天启.js', 't', 384, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (172, '2024-05-06 13:28:59.919464', 1, '2024-06-20 02:37:50.649711', 1, 0, 'jsencrypt', 't4/files/drpy_libs', 't4/files/drpy_libs/jsencrypt.js', 't', 166, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (75, '2024-02-19 18:15:01.925873', 1, '2024-06-20 02:37:50.735482', 1, 0, 'drpy_rules', 't4/files/json', 't4/files/json/drpy_rules.json', 't', 69, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (430, '2024-06-17 16:35:36.951309', 1, '2024-06-20 02:37:49.031765', 1, 0, '漫小肆[画]', 't4/files/drpy_js', 't4/files/drpy_js/漫小肆[画].js', 't', 424, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (431, '2024-06-17 16:35:36.977455', 1, '2024-06-20 02:37:49.06518', 1, 0, '清风DJ[听]', 't4/files/drpy_js', 't4/files/drpy_js/清风DJ[听].js', 't', 425, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (434, '2024-06-17 16:35:37.061611', 1, '2024-06-20 02:37:49.182097', 1, 0, '次元城动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/次元城动漫[漫].js', 't', 428, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (174, '2024-05-06 13:28:59.990672', 1, '2024-06-20 02:37:50.751916', 1, 0, 'tokenm', 't4/files/json', 't4/files/json/tokenm.json', 't', 168, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (435, '2024-06-17 16:35:37.20086', 1, '2024-06-20 02:37:49.35849', 1, 0, 'OmoFun[漫]', 't4/files/drpy_js', 't4/files/drpy_js/OmoFun[漫].js', 't', 429, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (436, '2024-06-17 16:35:37.235152', 1, '2024-06-20 02:37:49.398771', 1, 0, 'R18撸[密]', 't4/files/drpy_js', 't4/files/drpy_js/R18撸[密].js', 't', 430, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (446, '2024-06-17 16:35:37.585434', 1, '2024-06-20 02:37:49.829108', 1, 0, '斗鱼直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/斗鱼直播[官].js', 't', 440, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (396, '2024-06-12 10:09:52.379917', 1, '2024-06-20 02:37:49.971198', 1, 0, '老司视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/老司视频[密].js', 't', 390, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (180, '2024-05-06 13:29:00.057574', 1, '2024-06-20 02:37:50.812409', 1, 0, 'aliproxy', 't4/files/json', 't4/files/json/aliproxy.gz', 't', 174, '.gz', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (452, '2024-06-17 16:35:37.783857', 1, '2024-06-20 02:37:50.026913', 1, 0, '相声随身听[听]', 't4/files/drpy_js', 't4/files/drpy_js/相声随身听[听].js', 't', 446, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (170, '2024-05-06 13:28:59.904969', 1, '2024-06-20 02:37:50.634282', 1, 0, 'test_rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/test_rsa.mjs', 't', 164, '.mjs', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (61, '2024-02-04 14:21:09.836048', 1, '2024-06-20 02:37:50.781594', 1, 0, 'live2mv_data', 't4/files/json', 't4/files/json/live2mv_data.json', 't', 61, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (153, '2024-05-06 13:28:59.61497', 1, '2024-06-20 02:37:49.709134', 1, 0, '白嫖者联盟', 't4/files/drpy_js', 't4/files/drpy_js/白嫖者联盟.js', 't', 147, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (442, '2024-06-17 16:35:37.508464', 1, '2024-06-20 02:37:49.739096', 1, 0, '云盘资源网[盘]', 't4/files/drpy_js', 't4/files/drpy_js/云盘资源网[盘].js', 't', 436, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (444, '2024-06-17 16:35:37.520877', 1, '2024-06-20 02:37:49.753288', 1, 0, '虎牙直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/虎牙直播[官].js', 't', 438, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (415, '2024-06-15 06:37:46.151277', 1, '2024-06-20 02:37:49.759914', 1, 0, '黑狐影院', 't4/files/drpy_js', 't4/files/drpy_js/黑狐影院.js', 't', 409, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (445, '2024-06-17 16:35:37.532546', 1, '2024-06-20 02:37:49.766178', 1, 0, '动漫网[漫]', 't4/files/drpy_js', 't4/files/drpy_js/动漫网[漫].js', 't', 439, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (447, '2024-06-17 16:35:37.654708', 1, '2024-06-20 02:37:49.905182', 1, 0, '恒大影视[密]', 't4/files/drpy_js', 't4/files/drpy_js/恒大影视[密].js', 't', 441, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (448, '2024-06-17 16:35:37.669656', 1, '2024-06-20 02:37:49.91716', 1, 0, '爱车MV[听]', 't4/files/drpy_js', 't4/files/drpy_js/爱车MV[听].js', 't', 442, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (449, '2024-06-17 16:35:37.696774', 1, '2024-06-20 02:37:49.942218', 1, 0, '驴番[漫]', 't4/files/drpy_js', 't4/files/drpy_js/驴番[漫].js', 't', 443, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (451, '2024-06-17 16:35:37.760122', 1, '2024-06-20 02:37:50.00195', 1, 0, '多多追剧[优]', 't4/files/drpy_js', 't4/files/drpy_js/多多追剧[优].js', 't', 445, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (453, '2024-06-17 16:35:37.820317', 1, '2024-06-20 02:37:50.076734', 1, 0, '广播迷FM[听]', 't4/files/drpy_js', 't4/files/drpy_js/广播迷FM[听].js', 't', 447, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (160, '2024-05-06 13:28:59.710465', 1, '2024-06-20 02:37:50.152018', 1, 0, '榜一短剧', 't4/files/drpy_js', 't4/files/drpy_js/榜一短剧.js', 't', 154, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (162, '2024-05-06 13:28:59.724194', 1, '2024-06-20 02:37:50.234366', 1, 0, 'voflix', 't4/files/drpy_js', 't4/files/drpy_js/voflix.js', 't', 156, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (128, '2024-03-29 09:09:21.048809', 1, '2024-06-20 02:37:50.285996', 1, 0, '耐看', 't4/files/drpy_js', 't4/files/drpy_js/耐看.js', 't', 122, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (457, '2024-06-17 16:35:38.014082', 1, '2024-06-20 02:37:50.317062', 1, 0, 'MuteFun[漫]', 't4/files/drpy_js', 't4/files/drpy_js/MuteFun[漫].js', 't', 451, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (424, '2024-06-17 07:27:22.591333', 1, '2024-06-20 02:37:50.374341', 1, 0, '最新4K', 't4/files/drpy_js', 't4/files/drpy_js/最新4K.js', 't', 418, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (459, '2024-06-17 16:35:38.08813', 1, '2024-06-20 02:37:50.408877', 1, 0, 'NT动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/NT动漫[漫].js', 't', 453, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (175, '2024-05-06 13:29:00.00549', 1, '2024-06-20 02:37:50.766767', 1, 0, '小学教育', 't4/files/json', 't4/files/json/小学教育.json', 't', 169, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (178, '2024-05-06 13:29:00.042172', 1, '2024-06-20 02:37:50.796219', 1, 0, 'thundershare', 't4/files/json', 't4/files/json/thundershare.txt', 't', 172, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (437, '2024-06-17 16:35:37.271622', 1, '2024-06-20 02:37:49.448002', 1, 0, '动漫巴士[漫]', 't4/files/drpy_js', 't4/files/drpy_js/动漫巴士[漫].js', 't', 431, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (185, '2024-05-06 13:29:00.109933', 1, '2024-06-20 02:37:50.86835', 1, 0, 'pushshare', 't4/files/json', 't4/files/json/pushshare.txt', 't', 179, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (156, '2024-05-06 13:28:59.643767', 1, '2024-06-20 02:37:49.78337', 1, 0, '6V新版[磁]', 't4/files/drpy_js', 't4/files/drpy_js/6V新版[磁].js', 't', 150, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (369, '2024-06-09 11:52:40.550088', 1, '2024-06-20 02:37:50.131932', 1, 0, '海洋听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/海洋听书[听].js', 't', 363, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (193, '2024-05-06 13:29:00.329209', 1, '2024-06-20 02:37:51.103385', 1, 0, 'jsencrypt', 't4/files/drpy3_libs', 't4/files/drpy3_libs/jsencrypt.js', 't', 187, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (215, '2024-05-10 10:26:50.005235', 1, '2024-06-20 02:37:51.517673', 1, 0, '酷云77', 't4/files/drpy3_js', 't4/files/drpy3_js/酷云77.js', 't', 209, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (364, '2024-06-09 11:52:39.67463', 1, '2024-06-20 02:37:48.897781', 1, 0, '六月听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/六月听书[听].js', 't', 358, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (198, '2024-05-07 03:06:28.970657', 1, '2024-06-20 02:37:49.128452', 1, 0, 'TVB云播', 't4/files/drpy_js', 't4/files/drpy_js/TVB云播.js', 't', 192, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (385, '2024-06-10 02:30:06.616497', 1, '2024-06-20 02:37:50.431706', 1, 0, '橘子柚[盘]', 't4/files/drpy_js', 't4/files/drpy_js/橘子柚[盘].js', 't', 379, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (196, '2024-05-06 13:55:50.020422', 1, '2024-06-20 02:37:49.790965', 1, 0, '新片场', 't4/files/drpy_js', 't4/files/drpy_js/新片场.js', 't', 190, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (171, '2024-05-06 13:28:59.913485', 1, '2024-06-20 02:37:50.642087', 1, 0, 'jsrsa.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jsrsa.min.js', 't', 165, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (173, '2024-05-06 13:28:59.982973', 1, '2024-06-20 02:37:50.744089', 1, 0, 'alishare.ebook', 't4/files/json', 't4/files/json/alishare.ebook.txt', 't', 167, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (177, '2024-05-06 13:29:00.035163', 1, '2024-06-20 02:37:50.788793', 1, 0, 'sambashare', 't4/files/json', 't4/files/json/sambashare.txt', 't', 171, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (197, '2024-05-06 13:55:50.053701', 1, '2024-06-20 02:37:49.871276', 1, 0, 'cokemv', 't4/files/drpy_js', 't4/files/drpy_js/cokemv.js', 't', 191, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (183, '2024-05-06 13:29:00.07901', 1, '2024-06-20 02:37:50.840898', 1, 0, 'wogg', 't4/files/json', 't4/files/json/wogg.json', 't', 177, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (208, '2024-05-10 10:26:49.659263', 1, '2024-06-20 02:37:51.185112', 1, 0, '996影视', 't4/files/drpy3_js', 't4/files/drpy3_js/996影视.js', 't', 202, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (210, '2024-05-10 10:26:49.819937', 1, '2024-06-20 02:37:51.325339', 1, 0, '农民影视新', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视新.js', 't', 204, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (201, '2024-05-08 14:08:15.605961', 1, '2024-06-20 02:37:50.035698', 1, 0, '黑料网', 't4/files/drpy_js', 't4/files/drpy_js/黑料网.js', 't', 195, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (356, '2024-06-06 09:12:14.548884', 1, '2024-06-20 02:37:50.063008', 1, 0, '7猫小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/7猫小说[书].js', 't', 350, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (203, '2024-05-10 10:26:49.00574', 1, '2024-06-20 02:37:50.102243', 1, 0, '磁力熊[磁]', 't4/files/drpy_js', 't4/files/drpy_js/磁力熊[磁].js', 't', 197, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (176, '2024-05-06 13:29:00.020434', 1, '2024-06-20 02:37:50.773895', 1, 0, 'geoip.dat', 't4/files/json', 't4/files/json/geoip.dat.gz', 't', 170, '.gz', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (181, '2024-05-06 13:29:00.065029', 1, '2024-06-20 02:37:50.82389', 1, 0, 'quarkshare', 't4/files/json', 't4/files/json/quarkshare.txt', 't', 175, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (184, '2024-05-06 13:29:00.093585', 1, '2024-06-20 02:37:50.853591', 1, 0, 'xray', 't4/files/json', 't4/files/json/xray.gz', 't', 178, '.gz', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (346, '2024-06-02 03:26:45.667193', 7, '2024-06-20 02:37:49.097393', 1, 0, '阅动漫', 't4/files/drpy_js', 't4/files/drpy_js/阅动漫.json', 't', 340, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (336, '2024-05-28 13:59:41.473983', 1, '2024-06-20 02:37:50.302216', 1, 0, '狗狗盘[搜]', 't4/files/drpy_js', 't4/files/drpy_js/狗狗盘[搜].js', 't', 330, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (187, '2024-05-06 13:29:00.12408', 1, '2024-06-20 02:37:50.882006', 1, 0, '白嫖筛选', 't4/files/json', 't4/files/json/白嫖筛选.json', 't', 181, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (189, '2024-05-06 13:29:00.139073', 1, '2024-06-20 02:37:50.8965', 1, 0, 'alishare', 't4/files/json', 't4/files/json/alishare.txt', 't', 183, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (190, '2024-05-06 13:29:00.152364', 1, '2024-06-20 02:37:50.910585', 1, 0, 'pg', 't4/files/txt', 't4/files/txt/pg.conf', 't', 184, '.conf', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (211, '2024-05-10 10:26:49.84609', 1, '2024-06-20 02:37:51.350361', 1, 0, '农民影视2', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视2.js', 't', 205, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (213, '2024-05-10 10:26:49.893219', 1, '2024-06-20 02:37:51.409677', 1, 0, '农民影视', 't4/files/drpy3_js', 't4/files/drpy3_js/农民影视.js', 't', 207, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (202, '2024-05-09 11:39:58.476424', 1, '2024-06-20 02:37:49.87829', 1, 0, '七年影视', 't4/files/drpy_js', 't4/files/drpy_js/七年影视.js', 't', 196, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (161, '2024-05-06 13:28:59.717584', 1, '2024-06-20 02:37:50.190601', 1, 0, '大米星球[V2]', 't4/files/drpy_js', 't4/files/drpy_js/大米星球[V2].js', 't', 155, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (168, '2024-05-06 13:28:59.871728', 1, '2024-06-20 02:37:50.594406', 1, 0, 'pako.min', 't4/files/drpy_libs', 't4/files/drpy_libs/pako.min.js', 't', 162, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (206, '2024-05-10 10:26:49.243402', 1, '2024-06-20 02:37:50.657273', 1, 0, 'node-rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/node-rsa.js', 't', 200, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (179, '2024-05-06 13:29:00.049625', 1, '2024-06-20 02:37:50.802587', 1, 0, 'pikpakclass', 't4/files/json', 't4/files/json/pikpakclass.json', 't', 173, '.json', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (123, '2024-03-10 11:22:54.586467', 1, '2024-06-20 02:37:51.501291', 1, 0, '朱古力', 't4/files/drpy3_js', 't4/files/drpy3_js/朱古力.js', 't', 117, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (207, '2024-05-10 10:26:49.612448', 1, '2024-06-20 02:37:51.112003', 1, 0, 'node-rsa', 't4/files/drpy3_libs', 't4/files/drpy3_libs/node-rsa.js', 't', 201, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (200, '2024-05-08 14:08:15.453814', 1, '2024-06-20 02:37:49.53571', 1, 0, '侠客影视', 't4/files/drpy_js', 't4/files/drpy_js/侠客影视.js', 't', 194, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (212, '2024-05-10 10:26:49.886989', 1, '2024-06-20 02:37:51.398443', 1, 0, 'heiliao', 't4/files/drpy3_js', 't4/files/drpy3_js/heiliao.js', 't', 206, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (195, '2024-05-06 13:29:00.58218', 1, '2024-06-20 02:37:51.454243', 1, 0, '去广告测试源1', 't4/files/drpy3_js', 't4/files/drpy3_js/去广告测试源1.js', 't', 189, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (367, '2024-06-09 11:52:40.197544', 1, '2024-06-20 02:37:49.61818', 1, 0, '播客[听]', 't4/files/drpy_js', 't4/files/drpy_js/播客[听].js', 't', 361, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (209, '2024-05-10 10:26:49.697753', 1, '2024-06-20 02:37:51.215491', 1, 0, '小蚂蚁资源', 't4/files/drpy3_js', 't4/files/drpy3_js/小蚂蚁资源.js', 't', 203, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (194, '2024-05-06 13:29:00.551685', 1, '2024-06-20 02:37:51.39066', 1, 0, '去广告测试源', 't4/files/drpy3_js', 't4/files/drpy3_js/去广告测试源.js', 't', 188, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (214, '2024-05-10 10:26:49.905089', 1, '2024-06-20 02:37:51.431145', 1, 0, '小蚂蚁资源2', 't4/files/drpy3_js', 't4/files/drpy3_js/小蚂蚁资源2.js', 't', 208, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (366, '2024-06-09 11:52:39.898976', 1, '2024-06-20 02:37:49.235874', 1, 0, 'i275听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/i275听书[听].js', 't', 360, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (26, '2024-02-01 14:31:22.13501', 1, '2024-06-20 02:37:50.492475', 1, 0, 'alist.min', 't4/files/drpy_libs', 't4/files/drpy_libs/alist.min.js', 't', 26, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (240, '2024-05-15 01:58:31.449202', 1, '2024-06-20 02:37:49.251711', 1, 0, '腾云驾雾[官]', 't4/files/drpy_js', 't4/files/drpy_js/腾云驾雾[官].js', 't', 234, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (245, '2024-05-15 01:58:31.499947', 1, '2024-06-20 02:37:49.311352', 1, 0, '网飞猫[优]', 't4/files/drpy_js', 't4/files/drpy_js/网飞猫[优].js', 't', 239, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (229, '2024-05-14 08:53:58.667963', 1, '2024-06-20 02:37:49.270205', 1, 0, '宝片视频', 't4/files/drpy_js', 't4/files/drpy_js/宝片视频.js', 't', 223, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (242, '2024-05-15 01:58:31.476547', 1, '2024-06-20 02:37:49.292735', 1, 0, '奇珍异兽[官]', 't4/files/drpy_js', 't4/files/drpy_js/奇珍异兽[官].js', 't', 236, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (243, '2024-05-15 01:58:31.482593', 1, '2024-06-20 02:37:49.298757', 1, 0, '百忙无果[官]', 't4/files/drpy_js', 't4/files/drpy_js/百忙无果[官].js', 't', 237, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (244, '2024-05-15 01:58:31.489285', 1, '2024-06-20 02:37:49.304249', 1, 0, '阿里土豆[盘]', 't4/files/drpy_js', 't4/files/drpy_js/阿里土豆[盘].js', 't', 238, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (246, '2024-05-15 01:58:31.507728', 1, '2024-06-20 02:37:49.351465', 1, 0, '我的哔哩[官]', 't4/files/drpy_js', 't4/files/drpy_js/我的哔哩[官].js', 't', 240, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (248, '2024-05-15 01:58:31.52131', 1, '2024-06-20 02:37:49.412582', 1, 0, '南瓜影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/南瓜影视[优].js', 't', 242, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (249, '2024-05-15 01:58:31.534817', 1, '2024-06-20 02:37:49.455335', 1, 0, '量子资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/量子资源[资].js', 't', 243, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (286, '2024-05-16 08:22:11.958736', 1, '2024-06-20 02:37:49.4885', 1, 0, '人人影视', 't4/files/drpy_js', 't4/files/drpy_js/人人影视.js', 't', 280, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (292, '2024-05-16 17:25:50.916046', 1, '2024-06-20 02:37:49.5076', 1, 0, '美益达', 't4/files/drpy_js', 't4/files/drpy_js/美益达.js', 't', 286, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (295, '2024-05-18 06:05:14.450418', 1, '2024-06-20 02:37:49.625233', 1, 0, '夕云影视', 't4/files/drpy_js', 't4/files/drpy_js/夕云影视.js', 't', 289, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (296, '2024-05-18 06:05:14.618028', 1, '2024-06-20 02:37:50.047977', 1, 0, '420电影院', 't4/files/drpy_js', 't4/files/drpy_js/420电影院.js', 't', 290, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (253, '2024-05-15 01:58:31.572212', 1, '2024-06-20 02:37:49.64922', 1, 0, '农民影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/农民影视[优].js', 't', 247, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (254, '2024-05-15 01:58:31.578394', 1, '2024-06-20 02:37:49.663164', 1, 0, '爱看机器人[虫]', 't4/files/drpy_js', 't4/files/drpy_js/爱看机器人[虫].js', 't', 248, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (220, '2024-05-11 14:54:31.110198', 1, '2024-06-20 02:37:50.165411', 1, 0, '海外剧汇', 't4/files/drpy_js', 't4/files/drpy_js/海外剧汇.js', 't', 214, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (255, '2024-05-15 01:58:31.584287', 1, '2024-06-20 02:37:49.671187', 1, 0, '量子影视[资]', 't4/files/drpy_js', 't4/files/drpy_js/量子影视[资].js', 't', 249, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (232, '2024-05-14 17:57:11.82607', 1, '2024-06-20 02:37:49.500566', 1, 0, '看57', 't4/files/drpy_js', 't4/files/drpy_js/看57.js', 't', 226, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (335, '2024-05-28 13:59:41.437055', 1, '2024-06-20 02:37:50.217721', 1, 0, '小站盘[搜]', 't4/files/drpy_js', 't4/files/drpy_js/小站盘[搜].js', 't', 329, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (231, '2024-05-14 08:53:58.961908', 1, '2024-06-20 02:37:50.351574', 1, 0, '新茶杯狐', 't4/files/drpy_js', 't4/files/drpy_js/新茶杯狐.js', 't', 225, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (289, '2024-05-16 08:22:12.301865', 1, '2024-06-20 02:37:50.416839', 1, 0, 'HDmoli', 't4/files/drpy_js', 't4/files/drpy_js/HDmoli.js', 't', 283, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (221, '2024-05-11 14:54:31.185329', 1, '2024-06-20 02:37:50.453738', 1, 0, '美剧星球', 't4/files/drpy_js', 't4/files/drpy_js/美剧星球.js', 't', 215, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (219, '2024-05-11 14:54:30.82851', 1, '2024-06-20 02:37:48.914522', 1, 0, '千神影视', 't4/files/drpy_js', 't4/files/drpy_js/千神影视.js', 't', 213, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (234, '2024-05-15 01:58:31.384629', 1, '2024-06-20 02:37:48.929218', 1, 0, '极客资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/极客资源[资].js', 't', 228, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (235, '2024-05-15 01:58:31.392104', 1, '2024-06-20 02:37:48.941875', 1, 0, 'ok资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/ok资源[资].js', 't', 229, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (222, '2024-05-11 18:12:59.678594', 1, '2024-06-20 02:37:48.969508', 1, 0, '橙汁影视', 't4/files/drpy_js', 't4/files/drpy_js/橙汁影视.js', 't', 216, '.js', NULL, 1, 0, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (280, '2024-05-16 08:22:11.751243', 1, '2024-06-20 02:37:48.976051', 1, 0, '酷客影视', 't4/files/drpy_js', 't4/files/drpy_js/酷客影视.js', 't', 274, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (281, '2024-05-16 08:22:11.767275', 1, '2024-06-20 02:37:49.003233', 1, 0, '热播之家', 't4/files/drpy_js', 't4/files/drpy_js/热播之家.js', 't', 275, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (237, '2024-05-15 01:58:31.411685', 1, '2024-06-20 02:37:49.048569', 1, 0, '卧龙资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/卧龙资源[资].js', 't', 231, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (294, '2024-05-18 06:05:14.243261', 1, '2024-06-20 02:37:49.05521', 1, 0, '即看影视', 't4/files/drpy_js', 't4/files/drpy_js/即看影视.js', 't', 288, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (323, '2024-05-26 11:05:14.16099', 1, '2024-06-20 02:37:49.083416', 1, 0, '短剧天堂', 't4/files/drpy_js', 't4/files/drpy_js/短剧天堂.js', 't', 317, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (250, '2024-05-15 01:58:31.553866', 1, '2024-06-20 02:37:49.541777', 1, 0, '烧火影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/烧火影视[优].js', 't', 244, '.js', NULL, 1, 0, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (238, '2024-05-15 01:58:31.429988', 1, '2024-06-20 02:37:49.196791', 1, 0, '非凡资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/非凡资源[资].js', 't', 232, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (241, '2024-05-15 01:58:31.470023', 1, '2024-06-20 02:37:49.276867', 1, 0, '360影视[官]', 't4/files/drpy_js', 't4/files/drpy_js/360影视[官].js', 't', 235, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (251, '2024-05-15 01:58:31.560381', 1, '2024-06-20 02:37:49.56838', 1, 0, '可可影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/可可影视[优].js', 't', 245, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (256, '2024-05-15 01:58:31.595797', 1, '2024-06-20 02:37:49.688123', 1, 0, '暴风资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/暴风资源[资].js', 't', 250, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (257, '2024-05-15 01:58:31.601263', 1, '2024-06-20 02:37:49.694692', 1, 0, '豆瓣[官]', 't4/files/drpy_js', 't4/files/drpy_js/豆瓣[官].js', 't', 251, '.js', '?render=1', 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (239, '2024-05-15 01:58:31.435847', 1, '2024-06-20 02:37:49.20964', 1, 0, '素白白[优]', 't4/files/drpy_js', 't4/files/drpy_js/素白白[优].js', 't', 233, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (454, '2024-06-17 16:35:37.847294', 1, '2024-06-20 02:37:50.108471', 1, 0, '包子漫画[画]', 't4/files/drpy_js', 't4/files/drpy_js/包子漫画[画].js', 't', 448, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (419, '2024-06-15 06:37:46.712731', 1, '2024-06-20 02:37:50.393273', 1, 0, '速播小屋', 't4/files/drpy_js', 't4/files/drpy_js/速播小屋.js', 't', 413, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (420, '2024-06-15 06:37:46.76684', 1, '2024-06-20 02:37:50.446544', 1, 0, 'iku喵[资]', 't4/files/drpy_js', 't4/files/drpy_js/iku喵[资].js', 't', 414, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (236, '2024-05-15 01:58:31.405593', 1, '2024-06-20 02:37:49.040589', 1, 0, '索尼资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/索尼资源[资].js', 't', 230, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (443, '2024-06-17 16:35:37.514011', 1, '2024-06-20 02:37:49.74579', 1, 0, '哔哩直播[官]', 't4/files/drpy_js', 't4/files/drpy_js/哔哩直播[官].js', 't', 437, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (425, '2024-06-17 10:13:18.538922', 1, '2024-06-20 02:37:49.822307', 1, 0, 'JRKAN直播', 't4/files/drpy_js', 't4/files/drpy_js/JRKAN直播.js', 't', 419, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (370, '2024-06-09 11:52:40.571796', 1, '2024-06-20 02:37:50.145319', 1, 0, '有声绘本网[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声绘本网[听].js', 't', 364, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (460, '2024-06-17 16:35:38.153135', 1, '2024-06-20 02:37:50.477833', 1, 0, '星辰[优]', 't4/files/drpy_js', 't4/files/drpy_js/星辰[优].js', 't', 454, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (205, '2024-05-10 10:26:49.188664', 1, '2024-06-20 02:37:50.586444', 1, 0, 'test_node_rsa', 't4/files/drpy_libs', 't4/files/drpy_libs/test_node_rsa.mjs', 't', 199, '.mjs', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (324, '2024-05-26 11:05:14.239308', 1, '2024-06-20 02:37:49.227151', 1, 0, '飘花影院', 't4/files/drpy_js', 't4/files/drpy_js/飘花影院.js', 't', 318, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (169, '2024-05-06 13:28:59.8786', 1, '2024-06-20 02:37:50.605328', 1, 0, 'jsrsa', 't4/files/drpy_libs', 't4/files/drpy_libs/jsrsa.js', 't', 163, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (115, '2024-03-10 11:22:54.545975', 1, '2024-06-20 02:37:51.540782', 1, 0, 'template', 't4/files/drpy3_js', 't4/files/drpy3_js/template.js', 'f', 109, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (259, '2024-05-15 01:58:31.644751', 1, '2024-06-20 02:37:49.835316', 1, 0, 'LIBVIO[优]', 't4/files/drpy_js', 't4/files/drpy_js/LIBVIO[优].js', 't', 253, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (368, '2024-06-09 11:52:40.396283', 1, '2024-06-20 02:37:49.86449', 1, 0, '爱上你听书网[听]', 't4/files/drpy_js', 't4/files/drpy_js/爱上你听书网[听].js', 't', 362, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (321, '2024-05-25 15:45:01.805493', 1, '2024-06-20 02:37:50.184566', 1, 0, '如意影视', 't4/files/drpy_js', 't4/files/drpy_js/如意影视.js', 't', 315, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (413, '2024-06-15 06:37:45.717468', 1, '2024-06-20 02:37:49.318066', 1, 0, '大师兄影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/大师兄影视[优].js', 't', 407, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (455, '2024-06-17 16:35:37.940256', 1, '2024-06-20 02:37:50.226284', 1, 0, '古风漫画[画]', 't4/files/drpy_js', 't4/files/drpy_js/古风漫画[画].js', 't', 449, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (456, '2024-06-17 16:35:37.95316', 1, '2024-06-20 02:37:50.242599', 1, 0, '七色番[漫]', 't4/files/drpy_js', 't4/files/drpy_js/七色番[漫].js', 't', 450, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (416, '2024-06-15 06:37:46.295242', 1, '2024-06-20 02:37:49.891834', 1, 0, '剧集TV', 't4/files/drpy_js', 't4/files/drpy_js/剧集TV.js', 't', 410, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (158, '2024-05-06 13:28:59.675887', 1, '2024-06-20 02:37:49.911217', 1, 0, '777影视', 't4/files/drpy_js', 't4/files/drpy_js/777影视.js', 't', 152, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (325, '2024-05-26 11:05:14.346694', 1, '2024-06-20 02:37:49.371329', 1, 0, '我播', 't4/files/drpy_js', 't4/files/drpy_js/我播.js', 't', 319, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (227, '2024-05-12 19:13:04.299039', 1, '2024-06-20 02:37:49.956943', 1, 0, '掌心世界', 't4/files/drpy_js', 't4/files/drpy_js/掌心世界.js', 't', 221, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (371, '2024-06-09 11:52:40.670239', 1, '2024-06-20 02:37:50.25899', 1, 0, '博看听书[听]', 't4/files/drpy_js', 't4/files/drpy_js/博看听书[听].js', 't', 365, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (382, '2024-06-09 18:53:00.907928', 1, '2024-06-20 02:37:50.365718', 1, 0, '顶点小说2[书]', 't4/files/drpy_js', 't4/files/drpy_js/顶点小说2[书].js', 't', 376, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (458, '2024-06-17 16:35:38.067755', 1, '2024-06-20 02:37:50.382871', 1, 0, '有声听书网[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声听书网[听].js', 't', 452, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (397, '2024-06-13 04:47:01.21362', 1, '2024-06-20 02:37:48.935519', 1, 0, '剧圈圈[自动]', 't4/files/drpy_js', 't4/files/drpy_js/剧圈圈[自动].js', 't', 391, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (275, '2024-05-15 10:03:27.285611', 1, '2024-06-20 02:37:48.989107', 1, 0, '时光影院', 't4/files/drpy_js', 't4/files/drpy_js/时光影院.js', 't', 269, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (247, '2024-05-15 01:58:31.514489', 1, '2024-06-20 02:37:49.406164', 1, 0, '金鹰资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/金鹰资源[资].js', 't', 241, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (326, '2024-05-26 11:05:14.399292', 1, '2024-06-20 02:37:49.481986', 1, 0, '想看影院', 't4/files/drpy_js', 't4/files/drpy_js/想看影院.js', 't', 320, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (465, '2024-06-18 16:03:22.70325', 1, '2024-06-20 02:37:49.522177', 1, 0, '刺猬影视', 't4/files/drpy_js', 't4/files/drpy_js/刺猬影视.js', 't', 459, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (450, '2024-06-17 16:35:37.714918', 1, '2024-06-20 02:37:49.964736', 1, 0, '58动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/58动漫[漫].js', 't', 444, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (218, '2024-05-10 18:07:08.078221', 1, '2024-06-20 02:37:50.01991', 1, 0, '可达影视', 't4/files/drpy_js', 't4/files/drpy_js/可达影视.js', 't', 212, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (327, '2024-05-26 11:05:14.471144', 1, '2024-06-20 02:37:49.583233', 1, 0, '小鱼影视', 't4/files/drpy_js', 't4/files/drpy_js/小鱼影视.js', 't', 321, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (391, '2024-06-11 10:48:33.764903', 1, '2024-06-20 02:37:49.70205', 1, 0, '我看书斋[书]', 't4/files/drpy_js', 't4/files/drpy_js/我看书斋[书].js', 't', 385, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (400, '2024-06-13 09:30:12.734734', 1, '2024-06-20 02:37:49.383696', 1, 0, '29片库[密]', 't4/files/drpy_js', 't4/files/drpy_js/29片库[密].js', 't', 394, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (414, '2024-06-15 06:37:45.820416', 1, '2024-06-20 02:37:49.433981', 1, 0, '看戏网', 't4/files/drpy_js', 't4/files/drpy_js/看戏网.js', 't', 408, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (404, '2024-06-13 09:30:13.762238', 1, '2024-06-20 02:37:50.461422', 1, 0, '乐草TV[密]', 't4/files/drpy_js', 't4/files/drpy_js/乐草TV[密].js', 't', 398, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (373, '2024-06-09 11:52:40.785964', 1, '2024-06-20 02:37:50.469104', 1, 0, '有声小说吧[听]', 't4/files/drpy_js', 't4/files/drpy_js/有声小说吧[听].js', 't', 367, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (359, '2024-06-07 10:19:39.557702', 1, '2024-06-20 02:37:49.548672', 1, 0, '蜡笔[盘]', 't4/files/drpy_js', 't4/files/drpy_js/蜡笔[盘].js', 't', 353, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (300, '2024-05-22 15:37:30.49207', 1, '2024-06-20 02:37:49.561686', 1, 0, '茶语资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/茶语资源[资].js', 't', 294, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (341, '2024-05-29 09:43:51.239377', 1, '2024-06-20 02:37:50.485775', 1, 0, '蚂蚁影视', 't4/files/drpy_js', 't4/files/drpy_js/蚂蚁影视.js', 't', 335, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (305, '2024-05-22 15:37:31.081034', 1, '2024-06-20 02:37:50.714236', 1, 0, 'jsonpathplus.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jsonpathplus.min.js', 't', 299, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (252, '2024-05-15 01:58:31.566244', 1, '2024-06-20 02:37:49.632354', 1, 0, '魔都资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/魔都资源[资].js', 't', 246, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (297, '2024-05-19 02:54:49.604439', 1, '2024-06-20 02:37:50.729222', 1, 0, 'tokenm.readme', 't4/files/json', 't4/files/json/tokenm.readme.txt', 't', 291, '.txt', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (298, '2024-05-19 02:54:49.850996', 1, '2024-06-20 02:37:50.971429', 1, 0, 'pg.jar', 't4/files/jar', 't4/files/jar/pg.jar.md5', 't', 292, '.md5', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (258, '2024-05-15 01:58:31.63836', 1, '2024-06-20 02:37:49.809096', 1, 0, '玩偶哥哥[盘]', 't4/files/drpy_js', 't4/files/drpy_js/玩偶哥哥[盘].js', 't', 252, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (261, '2024-05-15 01:58:31.674151', 1, '2024-06-20 02:37:49.885116', 1, 0, '花子动漫[漫]', 't4/files/drpy_js', 't4/files/drpy_js/花子动漫[漫].js', 't', 255, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (417, '2024-06-15 06:37:46.302582', 1, '2024-06-20 02:37:49.898577', 1, 0, '一起看[优]', 't4/files/drpy_js', 't4/files/drpy_js/一起看[优].js', 't', 411, '.js', NULL, 1, 0, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (224, '2024-05-11 18:13:00.525395', 1, '2024-06-20 02:37:51.15202', 1, 0, '白嫖影视', 't4/files/drpy3_js', 't4/files/drpy3_js/白嫖影视.js', 't', 218, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (401, '2024-06-13 09:30:13.409227', 1, '2024-06-20 02:37:50.04198', 1, 0, '草莓秒播[密]', 't4/files/drpy_js', 't4/files/drpy_js/草莓秒播[密].js', 't', 395, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (398, '2024-06-13 09:30:12.352712', 1, '2024-06-20 02:37:49.090247', 1, 0, '黑料不打烊[密]', 't4/files/drpy_js', 't4/files/drpy_js/黑料不打烊[密].js', 't', 392, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (402, '2024-06-13 09:30:13.440049', 1, '2024-06-20 02:37:50.070441', 1, 0, '绿色仓库[密]', 't4/files/drpy_js', 't4/files/drpy_js/绿色仓库[密].js', 't', 396, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (392, '2024-06-12 02:16:52.993479', 1, '2024-06-20 02:37:49.172453', 1, 0, '一点视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/一点视频[密].js', 't', 386, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (399, '2024-06-13 09:30:12.582083', 1, '2024-06-20 02:37:49.284906', 1, 0, '爱爱影院[密]', 't4/files/drpy_js', 't4/files/drpy_js/爱爱影院[密].js', 't', 393, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (426, '2024-06-17 10:13:18.768409', 1, '2024-06-20 02:37:50.08982', 1, 0, '追剧兔', 't4/files/drpy_js', 't4/files/drpy_js/追剧兔.js', 't', 420, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (262, '2024-05-15 01:58:31.742532', 1, '2024-06-20 02:37:50.158834', 1, 0, '优酷[官]', 't4/files/drpy_js', 't4/files/drpy_js/优酷[官].js', 't', 256, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (277, '2024-05-15 10:03:27.706182', 1, '2024-06-20 02:37:50.175178', 1, 0, '皮皮影视', 't4/files/drpy_js', 't4/files/drpy_js/皮皮影视.js', 't', 271, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (263, '2024-05-15 01:58:31.767816', 1, '2024-06-20 02:37:50.204647', 1, 0, '哔哩影视[官]', 't4/files/drpy_js', 't4/files/drpy_js/哔哩影视[官].js', 't', 257, '.js', '?render=1', 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (265, '2024-05-15 01:58:31.787494', 1, '2024-06-20 02:37:50.27829', 1, 0, '极速资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/极速资源[资].js', 't', 259, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (466, '2024-06-19 03:46:08.104083', 1, '2024-06-20 02:37:50.342401', 1, 0, '文才[资]', 't4/files/drpy_js', 't4/files/drpy_js/文才[资].js', 't', 460, '.js', NULL, 1, 1, 1, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (303, '2024-05-22 15:37:30.92702', 1, '2024-06-20 02:37:50.555498', 1, 0, 'jinja.min', 't4/files/drpy_libs', 't4/files/drpy_libs/jinja.min.js', 't', 297, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (375, '2024-06-09 16:28:15.749009', 1, '2024-06-20 02:37:48.996609', 1, 0, '顶点小说[书]', 't4/files/drpy_js', 't4/files/drpy_js/顶点小说[书].js', 't', 369, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (301, '2024-05-22 15:37:30.714152', 1, '2024-06-20 02:37:50.125942', 1, 0, '电影先生', 't4/files/drpy_js', 't4/files/drpy_js/电影先生.js', 't', 295, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (304, '2024-05-22 15:37:30.945724', 1, '2024-06-20 02:37:50.579269', 1, 0, 'jinja', 't4/files/drpy_libs', 't4/files/drpy_libs/jinja.js', 't', 298, '.js', NULL, 1, 0, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (230, '2024-05-14 08:53:58.895365', 1, '2024-06-20 02:37:50.138028', 1, 0, '易看影视', 't4/files/drpy_js', 't4/files/drpy_js/易看影视.js', 't', 224, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (306, '2024-05-23 10:17:08.251026', 1, '2024-06-20 02:37:49.134924', 1, 0, '新视觉', 't4/files/drpy_js', 't4/files/drpy_js/新视觉.js', 't', 300, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (260, '2024-05-15 01:58:31.64995', 1, '2024-06-20 02:37:49.851548', 1, 0, '兔小贝[儿]', 't4/files/drpy_js', 't4/files/drpy_js/兔小贝[儿].js', 't', 254, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (360, '2024-06-07 11:27:00.043484', 1, '2024-06-20 02:37:49.922737', 1, 0, '虾酱追剧', 't4/files/drpy_js', 't4/files/drpy_js/虾酱追剧.js', 't', 354, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (217, '2024-05-10 18:07:08.061654', 1, '2024-06-20 02:37:49.9356', 1, 0, '一起看', 't4/files/drpy_js', 't4/files/drpy_js/一起看.js', 't', 211, '.js', NULL, 1, 0, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (408, '2024-06-14 11:29:46.04784', 1, '2024-06-20 02:37:49.949822', 1, 0, '地瓜视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/地瓜视频[密].js', 't', 402, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (421, '2024-06-15 07:26:03.613655', 1, '2024-06-20 02:37:49.263912', 1, 0, '天天影视', 't4/files/drpy_js', 't4/files/drpy_js/天天影视.js', 't', 415, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (339, '2024-05-29 09:43:50.994075', 1, '2024-06-20 02:37:49.985881', 1, 0, '暖光影视', 't4/files/drpy_js', 't4/files/drpy_js/暖光影视.js', 't', 333, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (313, '2024-05-24 11:27:11.648413', 1, '2024-06-20 02:37:49.994359', 1, 0, '首发网', 't4/files/drpy_js', 't4/files/drpy_js/首发网.js', 't', 307, '.js', NULL, 1, 0, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (409, '2024-06-14 11:29:46.086636', 1, '2024-06-20 02:37:50.008492', 1, 0, '神仙影视', 't4/files/drpy_js', 't4/files/drpy_js/神仙影视.js', 't', 403, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (293, '2024-05-17 03:38:35.402028', 1, '2024-06-20 02:37:50.197937', 1, 0, '干饭影视', 't4/files/drpy_js', 't4/files/drpy_js/干饭影视.js', 't', 287, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (307, '2024-05-24 05:50:49.019486', 1, '2024-06-20 02:37:50.211268', 1, 0, '4k剧院', 't4/files/drpy_js', 't4/files/drpy_js/4k剧院.js', 't', 301, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (264, '2024-05-15 01:58:31.781694', 1, '2024-06-20 02:37:50.250135', 1, 0, '菜狗[官]', 't4/files/drpy_js', 't4/files/drpy_js/菜狗[官].js', 't', 258, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (310, '2024-05-24 11:27:11.37969', 1, '2024-06-20 02:37:49.419091', 1, 0, '往往影视[慢]', 't4/files/drpy_js', 't4/files/drpy_js/往往影视[慢].js', 't', 304, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (299, '2024-05-22 15:37:30.45444', 1, '2024-06-20 02:37:49.515047', 1, 0, '8号影院', 't4/files/drpy_js', 't4/files/drpy_js/8号影院.js', 't', 293, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (403, '2024-06-13 09:30:13.629543', 1, '2024-06-20 02:37:50.267522', 1, 0, 'Pornhub[密]', 't4/files/drpy_js', 't4/files/drpy_js/Pornhub[密].js', 't', 397, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (233, '2024-05-15 01:58:31.371139', 1, '2024-06-20 02:37:48.891666', 1, 0, '神马电影[搜]', 't4/files/drpy_js', 't4/files/drpy_js/神马电影[搜].js', 't', 227, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (290, '2024-05-16 10:22:36.277247', 1, '2024-06-20 02:37:48.904939', 1, 0, '4khdr', 't4/files/drpy_js', 't4/files/drpy_js/4khdr.js', 't', 284, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (311, '2024-05-24 11:27:11.451805', 1, '2024-06-20 02:37:49.555043', 1, 0, '爱看影院', 't4/files/drpy_js', 't4/files/drpy_js/爱看影院.js', 't', 305, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (406, '2024-06-14 11:29:44.98418', 1, '2024-06-20 02:37:48.922744', 1, 0, '星辰CT', 't4/files/drpy_js', 't4/files/drpy_js/星辰CT.js', 't', 400, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (309, '2024-05-24 11:27:11.179552', 1, '2024-06-20 02:37:48.948665', 1, 0, '魔方影视', 't4/files/drpy_js', 't4/files/drpy_js/魔方影视.js', 't', 303, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (278, '2024-05-15 14:55:44.720454', 1, '2024-06-20 02:37:49.680371', 1, 0, '影视看吧', 't4/files/drpy_js', 't4/files/drpy_js/影视看吧.js', 't', 272, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (427, '2024-06-17 15:02:35.132518', 1, '2024-06-20 02:37:49.717022', 1, 0, '无插件直播', 't4/files/drpy_js', 't4/files/drpy_js/无插件直播.js', 't', 421, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (312, '2024-05-24 11:27:11.56854', 1, '2024-06-20 02:37:49.800064', 1, 0, '一号影院[搜]', 't4/files/drpy_js', 't4/files/drpy_js/一号影院[搜].js', 't', 306, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (461, '2024-06-17 16:45:34.704071', 1, '2024-06-20 02:37:50.054466', 1, 0, '飞刀资源[资]', 't4/files/drpy_js', 't4/files/drpy_js/飞刀资源[资].js', 't', 455, '.js', NULL, 1, 1, 0, 1, 't');
INSERT INTO "public"."t_vod_rules" VALUES (462, '2024-06-17 16:45:34.76714', 1, '2024-06-20 02:37:50.114733', 1, 0, '我的哔哩传参[官]', 't4/files/drpy_js', 't4/files/drpy_js/我的哔哩传参[官].js', 't', 456, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (266, '2024-05-15 01:58:31.798737', 1, '2024-06-20 02:37:50.325112', 1, 0, '荐片[优]', 't4/files/drpy_js', 't4/files/drpy_js/荐片[优].js', 't', 260, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (351, '2024-06-04 16:02:34.463798', 1, '2024-06-20 02:37:48.963432', 1, 0, '短剧在线', 't4/files/drpy_js', 't4/files/drpy_js/短剧在线.js', 't', 345, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (302, '2024-05-22 15:37:30.839785', 1, '2024-06-20 02:37:50.333791', 1, 0, '鸭奈飞影视', 't4/files/drpy_js', 't4/files/drpy_js/鸭奈飞影视.js', 't', 296, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (340, '2024-05-29 09:43:51.225532', 1, '2024-06-20 02:37:50.439407', 1, 0, '被窝电影', 't4/files/drpy_js', 't4/files/drpy_js/被窝电影.js', 't', 334, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (378, '2024-06-09 18:53:00.029263', 1, '2024-06-20 02:37:49.141527', 1, 0, '丫丫电子书[书]', 't4/files/drpy_js', 't4/files/drpy_js/丫丫电子书[书].js', 't', 372, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (314, '2024-05-24 15:02:58.712225', 1, '2024-06-20 02:37:49.202979', 1, 0, '星辰影视', 't4/files/drpy_js', 't4/files/drpy_js/星辰影视.js', 't', 308, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (464, '2024-06-18 16:03:22.408803', 1, '2024-06-20 02:37:49.217228', 1, 0, '路视频[密]', 't4/files/drpy_js', 't4/files/drpy_js/路视频[密].js', 't', 458, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (405, '2024-06-13 09:57:03.147083', 1, '2024-06-20 02:37:49.324765', 1, 0, '酷云影视', 't4/files/drpy_js', 't4/files/drpy_js/酷云影视.js', 't', 399, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (352, '2024-06-04 16:02:34.722625', 1, '2024-06-20 02:37:49.365277', 1, 0, '哈皮影视[优]', 't4/files/drpy_js', 't4/files/drpy_js/哈皮影视[优].js', 't', 346, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (353, '2024-06-04 16:02:34.734751', 1, '2024-06-20 02:37:49.377072', 1, 0, '笔趣阁[书]', 't4/files/drpy_js', 't4/files/drpy_js/笔趣阁[书].js', 't', 347, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (407, '2024-06-14 11:29:45.629384', 1, '2024-06-20 02:37:49.529226', 1, 0, '爱迪[自动]', 't4/files/drpy_js', 't4/files/drpy_js/爱迪[自动].js', 't', 401, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (315, '2024-05-24 15:02:58.934514', 1, '2024-06-20 02:37:49.594901', 1, 0, '大中国', 't4/files/drpy_js', 't4/files/drpy_js/大中国.js', 't', 309, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (394, '2024-06-12 02:16:53.640653', 1, '2024-06-20 02:37:49.84223', 1, 0, '九妖仓库[密]', 't4/files/drpy_js', 't4/files/drpy_js/九妖仓库[密].js', 't', 388, '.js', NULL, 1, 1, 1, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (422, '2024-06-15 07:26:04.357302', 1, '2024-06-20 02:37:49.929509', 1, 0, '九牛电影', 't4/files/drpy_js', 't4/files/drpy_js/九牛电影.js', 't', 416, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (428, '2024-06-17 16:02:19.755238', 1, '2024-06-20 02:37:49.978208', 1, 0, '猫视界', 't4/files/drpy_js', 't4/files/drpy_js/猫视界.js', 't', 422, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (342, '2024-05-29 16:32:00.072648', 1, '2024-06-20 02:37:50.083183', 1, 0, '影搜[搜]', 't4/files/drpy_js', 't4/files/drpy_js/影搜[搜].js', 't', 336, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (316, '2024-05-24 15:02:59.295906', 1, '2024-06-20 02:37:50.358703', 1, 0, '剧圈圈', 't4/files/drpy_js', 't4/files/drpy_js/剧圈圈.js', 't', 310, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (317, '2024-05-24 15:02:59.308858', 1, '2024-06-20 02:37:50.423967', 1, 0, '短剧TV网', 't4/files/drpy_js', 't4/files/drpy_js/短剧TV网.js', 't', 311, '.js', NULL, 1, 1, 0, 0, 't');
INSERT INTO "public"."t_vod_rules" VALUES (463, '2024-06-18 16:03:22.235527', 1, '2024-06-20 02:37:49.01792', 1, 0, '七新电影网', 't4/files/drpy_js', 't4/files/drpy_js/七新电影网.js', 't', 457, '.js', NULL, 1, 1, 1, 0, 't');

-- ----------------------------
-- Table structure for t_vod_subs
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_vod_subs";
CREATE TABLE "public"."t_vod_subs" (
  "id" int4 NOT NULL DEFAULT nextval('t_vod_subs_id_seq'::regclass),
  "created_time" timestamp(6) DEFAULT now(),
  "creator_id" int4 DEFAULT 0,
  "modified_time" timestamp(6) DEFAULT now(),
  "modifier_id" int4 DEFAULT 0,
  "is_deleted" int4 DEFAULT 0,
  "name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(256) COLLATE "pg_catalog"."default",
  "reg" text COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "mode" int4 DEFAULT 0,
  "due_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."t_vod_subs"."created_time" IS '创建时间';
COMMENT ON COLUMN "public"."t_vod_subs"."creator_id" IS '创建人id';
COMMENT ON COLUMN "public"."t_vod_subs"."modified_time" IS '更新时间';
COMMENT ON COLUMN "public"."t_vod_subs"."modifier_id" IS '修改人id';
COMMENT ON COLUMN "public"."t_vod_subs"."is_deleted" IS '逻辑删除:0=未删除,1=删除';
COMMENT ON COLUMN "public"."t_vod_subs"."name" IS '订阅名称';
COMMENT ON COLUMN "public"."t_vod_subs"."code" IS '订阅代码';
COMMENT ON COLUMN "public"."t_vod_subs"."reg" IS '正则表达式';
COMMENT ON COLUMN "public"."t_vod_subs"."status" IS '状态';
COMMENT ON COLUMN "public"."t_vod_subs"."mode" IS '匹配模式:0正向匹配 1逆向排除';
COMMENT ON COLUMN "public"."t_vod_subs"."due_time" IS '到期时间';

-- ----------------------------
-- Records of t_vod_subs
-- ----------------------------
INSERT INTO "public"."t_vod_subs" VALUES (1, '2024-06-19 09:53:59.764772', 1, '2024-06-19 09:53:59.764772', 0, 0, '全部', 'dzyyds', '.*', 1, 0, NULL);
INSERT INTO "public"."t_vod_subs" VALUES (3, '2024-06-19 10:06:27.433109', 1, '2024-06-19 10:58:42.805524', 1, 0, '不含18+', 'green1', '密', 1, 1, NULL);
INSERT INTO "public"."t_vod_subs" VALUES (2, '2024-06-19 09:54:38.332997', 1, '2024-06-19 10:59:24.230045', 1, 0, '18+', 'yellow1', '密', 1, 0, '2024-12-16 17:54:36');
INSERT INTO "public"."t_vod_subs" VALUES (4, '2024-06-20 02:08:06.290099', 1, '2024-06-20 02:08:06.290099', 0, 0, '官源', 'luNhHy', '官', 1, 0, NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_config_settings_id_seq"
OWNED BY "public"."t_config_settings"."id";
SELECT setval('"public"."t_config_settings_id_seq"', 8, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_dict_data_id_seq"
OWNED BY "public"."t_dict_data"."id";
SELECT setval('"public"."t_dict_data_id_seq"', 13, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_dict_details_id_seq"
OWNED BY "public"."t_dict_details"."id";
SELECT setval('"public"."t_dict_details_id_seq"', 39, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_hiker_developer_id_seq"
OWNED BY "public"."t_hiker_developer"."id";
SELECT setval('"public"."t_hiker_developer_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_hiker_rule_id_seq"
OWNED BY "public"."t_hiker_rule"."id";
SELECT setval('"public"."t_hiker_rule_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_hiker_rule_type_id_seq"
OWNED BY "public"."t_hiker_rule_type"."id";
SELECT setval('"public"."t_hiker_rule_type_id_seq"', 4, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_id_seq"
OWNED BY "public"."t_job"."id";
SELECT setval('"public"."t_job_id_seq"', 18, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_job_log_id_seq"
OWNED BY "public"."t_job_log"."id";
SELECT setval('"public"."t_job_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_login_infor_id_seq"
OWNED BY "public"."t_login_infor"."id";
SELECT setval('"public"."t_login_infor_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_menus_id_seq"
OWNED BY "public"."t_menus"."id";
SELECT setval('"public"."t_menus_id_seq"', 46, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_perm_label_id_seq"
OWNED BY "public"."t_perm_label"."id";
SELECT setval('"public"."t_perm_label_id_seq"', 75, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_perm_label_role_id_seq"
OWNED BY "public"."t_perm_label_role"."id";
SELECT setval('"public"."t_perm_label_role_id_seq"', 31, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_role_menu_id_seq"
OWNED BY "public"."t_role_menu"."id";
SELECT setval('"public"."t_role_menu_id_seq"', 142, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_roles_id_seq"
OWNED BY "public"."t_roles"."id";
SELECT setval('"public"."t_roles_id_seq"', 5, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_user_role_id_seq"
OWNED BY "public"."t_user_role"."id";
SELECT setval('"public"."t_user_role_id_seq"', 31, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_users_id_seq"
OWNED BY "public"."t_users"."id";
SELECT setval('"public"."t_users_id_seq"', 9, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_vod_configs_id_seq"
OWNED BY "public"."t_vod_configs"."id";
SELECT setval('"public"."t_vod_configs_id_seq"', 18, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_vod_rules_id_seq"
OWNED BY "public"."t_vod_rules"."id";
SELECT setval('"public"."t_vod_rules_id_seq"', 468, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_vod_subs_id_seq"
OWNED BY "public"."t_vod_subs"."id";
SELECT setval('"public"."t_vod_subs_id_seq"', 6, false);

-- ----------------------------
-- Indexes structure for table t_config_settings
-- ----------------------------
CREATE INDEX "ix_t_config_settings_id" ON "public"."t_config_settings" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "ix_t_config_settings_name" ON "public"."t_config_settings" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_config_settings
-- ----------------------------
ALTER TABLE "public"."t_config_settings" ADD CONSTRAINT "t_config_settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_dict_data
-- ----------------------------
CREATE UNIQUE INDEX "ix_t_dict_data_dict_type" ON "public"."t_dict_data" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ix_t_dict_data_id" ON "public"."t_dict_data" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_dict_data
-- ----------------------------
ALTER TABLE "public"."t_dict_data" ADD CONSTRAINT "t_dict_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_dict_details
-- ----------------------------
CREATE INDEX "ix_t_dict_details_id" ON "public"."t_dict_details" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_dict_details
-- ----------------------------
ALTER TABLE "public"."t_dict_details" ADD CONSTRAINT "t_dict_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_hiker_developer
-- ----------------------------
CREATE INDEX "ix_t_hiker_developer_id" ON "public"."t_hiker_developer" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_hiker_developer
-- ----------------------------
ALTER TABLE "public"."t_hiker_developer" ADD CONSTRAINT "t_hiker_developer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_hiker_rule
-- ----------------------------
CREATE INDEX "ix_t_hiker_rule_id" ON "public"."t_hiker_rule" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_hiker_rule
-- ----------------------------
ALTER TABLE "public"."t_hiker_rule" ADD CONSTRAINT "t_hiker_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_hiker_rule_type
-- ----------------------------
CREATE INDEX "ix_t_hiker_rule_type_id" ON "public"."t_hiker_rule_type" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_hiker_rule_type
-- ----------------------------
ALTER TABLE "public"."t_hiker_rule_type" ADD CONSTRAINT "t_hiker_rule_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_job
-- ----------------------------
CREATE INDEX "ix_t_job_id" ON "public"."t_job" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_job
-- ----------------------------
ALTER TABLE "public"."t_job" ADD CONSTRAINT "t_job_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_job_log
-- ----------------------------
CREATE INDEX "ix_t_job_log_id" ON "public"."t_job_log" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_job_log
-- ----------------------------
ALTER TABLE "public"."t_job_log" ADD CONSTRAINT "t_job_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_login_infor
-- ----------------------------
CREATE INDEX "ix_t_login_infor_id" ON "public"."t_login_infor" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_login_infor
-- ----------------------------
ALTER TABLE "public"."t_login_infor" ADD CONSTRAINT "t_login_infor_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_menus
-- ----------------------------
CREATE INDEX "ix_t_menus_id" ON "public"."t_menus" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_menus
-- ----------------------------
ALTER TABLE "public"."t_menus" ADD CONSTRAINT "t_menus_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_perm_label
-- ----------------------------
CREATE INDEX "ix_t_perm_label_id" ON "public"."t_perm_label" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_perm_label
-- ----------------------------
ALTER TABLE "public"."t_perm_label" ADD CONSTRAINT "t_perm_label_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_perm_label_role
-- ----------------------------
CREATE INDEX "ix_t_perm_label_role_id" ON "public"."t_perm_label_role" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_perm_label_role
-- ----------------------------
ALTER TABLE "public"."t_perm_label_role" ADD CONSTRAINT "t_perm_label_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_role_menu
-- ----------------------------
CREATE INDEX "ix_t_role_menu_id" ON "public"."t_role_menu" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_role_menu
-- ----------------------------
ALTER TABLE "public"."t_role_menu" ADD CONSTRAINT "t_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_roles
-- ----------------------------
CREATE INDEX "ix_t_roles_id" ON "public"."t_roles" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "ix_t_roles_key" ON "public"."t_roles" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_roles
-- ----------------------------
ALTER TABLE "public"."t_roles" ADD CONSTRAINT "t_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_user_role
-- ----------------------------
CREATE INDEX "ix_t_user_role_id" ON "public"."t_user_role" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_user_role
-- ----------------------------
ALTER TABLE "public"."t_user_role" ADD CONSTRAINT "t_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_users
-- ----------------------------
CREATE INDEX "ix_t_users_id" ON "public"."t_users" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "ix_t_users_username" ON "public"."t_users" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_users
-- ----------------------------
ALTER TABLE "public"."t_users" ADD CONSTRAINT "t_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_vod_configs
-- ----------------------------
CREATE INDEX "ix_t_vod_configs_id" ON "public"."t_vod_configs" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_vod_configs
-- ----------------------------
ALTER TABLE "public"."t_vod_configs" ADD CONSTRAINT "t_vod_configs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_vod_rules
-- ----------------------------
CREATE INDEX "ix_t_vod_rules_id" ON "public"."t_vod_rules" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_vod_rules
-- ----------------------------
ALTER TABLE "public"."t_vod_rules" ADD CONSTRAINT "t_vod_rules_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_vod_subs
-- ----------------------------
CREATE INDEX "ix_t_vod_subs_id" ON "public"."t_vod_subs" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_vod_subs
-- ----------------------------
ALTER TABLE "public"."t_vod_subs" ADD CONSTRAINT "t_vod_subs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table t_dict_details
-- ----------------------------
ALTER TABLE "public"."t_dict_details" ADD CONSTRAINT "t_dict_details_dict_data_id_fkey" FOREIGN KEY ("dict_data_id") REFERENCES "public"."t_dict_data" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t_hiker_rule
-- ----------------------------
ALTER TABLE "public"."t_hiker_rule" ADD CONSTRAINT "t_hiker_rule_dev_id_fkey" FOREIGN KEY ("dev_id") REFERENCES "public"."t_hiker_developer" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."t_hiker_rule" ADD CONSTRAINT "t_hiker_rule_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "public"."t_hiker_rule_type" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t_perm_label_role
-- ----------------------------
ALTER TABLE "public"."t_perm_label_role" ADD CONSTRAINT "t_perm_label_role_label_id_fkey" FOREIGN KEY ("label_id") REFERENCES "public"."t_perm_label" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."t_perm_label_role" ADD CONSTRAINT "t_perm_label_role_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."t_roles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t_role_menu
-- ----------------------------
ALTER TABLE "public"."t_role_menu" ADD CONSTRAINT "t_role_menu_menu_id_fkey" FOREIGN KEY ("menu_id") REFERENCES "public"."t_menus" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t_role_menu" ADD CONSTRAINT "t_role_menu_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."t_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t_user_role
-- ----------------------------
ALTER TABLE "public"."t_user_role" ADD CONSTRAINT "t_user_role_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."t_roles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t_user_role" ADD CONSTRAINT "t_user_role_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."t_users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
