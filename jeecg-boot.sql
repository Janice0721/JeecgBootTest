/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : jeecg-boot

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 23/06/2022 09:07:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for onl_auth_data
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_data`;
CREATE TABLE `onl_auth_data`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `cgform_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'online表ID',
  `rule_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名',
  `rule_column` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则列',
  `rule_operator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则条件 大于小于like',
  `rule_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `status` int NULL DEFAULT NULL COMMENT '1有效 0无效',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_auth_data
-- ----------------------------

-- ----------------------------
-- Table structure for onl_auth_page
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_page`;
CREATE TABLE `onl_auth_page`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT ' 主键',
  `cgform_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'online表id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名/按钮编码',
  `type` int NULL DEFAULT NULL COMMENT '1字段 2按钮',
  `control` int NULL DEFAULT NULL COMMENT '3可编辑 5可见(仅支持两种状态值3,5)',
  `page` int NULL DEFAULT NULL COMMENT '3列表 5表单(仅支持两种状态值3,5)',
  `status` int NULL DEFAULT NULL COMMENT '1有效 0无效',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_auth_page
-- ----------------------------
INSERT INTO `onl_auth_page` VALUES ('1539771754458038274', '80a3ecde0362417380eb00701b917ccb', 'add', 2, 5, 3, 0, '2022-06-23 08:46:08', 'admin', NULL, NULL);
INSERT INTO `onl_auth_page` VALUES ('1539771900524675073', '92eee2c8fee34ebaa57dc957190466dd', 'add', 2, 5, 3, 1, '2022-06-23 08:46:43', 'admin', NULL, NULL);
INSERT INTO `onl_auth_page` VALUES ('1539771903544573953', '92eee2c8fee34ebaa57dc957190466dd', 'update', 2, 5, 3, 1, '2022-06-23 08:46:44', 'admin', NULL, NULL);
INSERT INTO `onl_auth_page` VALUES ('1539771908435132418', '92eee2c8fee34ebaa57dc957190466dd', 'delete', 2, 5, 3, 1, '2022-06-23 08:46:45', 'admin', NULL, NULL);
INSERT INTO `onl_auth_page` VALUES ('1539771956921286658', '92eee2c8fee34ebaa57dc957190466dd', 'super_query', 2, 5, 3, 1, '2022-06-23 08:46:57', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for onl_auth_relation
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_relation`;
CREATE TABLE `onl_auth_relation`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `auth_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `type` int NULL DEFAULT NULL COMMENT '1字段 2按钮 3数据权限',
  `cgform_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'online表单ID',
  `auth_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权方式role角色，depart部门，user人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_auth_relation
-- ----------------------------
INSERT INTO `onl_auth_relation` VALUES ('1539775187672023041', 'f6817f48af4fb3af11b9e8bf182f618b', '1539771903544573953', 2, '92eee2c8fee34ebaa57dc957190466dd', 'role');
INSERT INTO `onl_auth_relation` VALUES ('1539775187680411649', 'f6817f48af4fb3af11b9e8bf182f618b', '1539771900524675073', 2, '92eee2c8fee34ebaa57dc957190466dd', 'role');
INSERT INTO `onl_auth_relation` VALUES ('1539775187680411650', 'f6817f48af4fb3af11b9e8bf182f618b', '1539771908435132418', 2, '92eee2c8fee34ebaa57dc957190466dd', 'role');

-- ----------------------------
-- Table structure for onl_cgform_button
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_button`;
CREATE TABLE `onl_cgform_button`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `BUTTON_ICON` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮图标',
  `BUTTON_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `BUTTON_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮状态',
  `BUTTON_STYLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮样式',
  `EXP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表达式',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  `OPT_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮类型',
  `ORDER_NUM` int NULL DEFAULT NULL COMMENT '排序',
  `OPT_POSITION` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮位置1侧面 2底部',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_formid`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `index_button_code`(`BUTTON_CODE` ASC) USING BTREE,
  INDEX `index_button_status`(`BUTTON_STATUS` ASC) USING BTREE,
  INDEX `index_button_order`(`ORDER_NUM` ASC) USING BTREE,
  INDEX `idx_ocb_CGFORM_HEAD_ID`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `idx_ocb_BUTTON_CODE`(`BUTTON_CODE` ASC) USING BTREE,
  INDEX `idx_ocb_BUTTON_STATUS`(`BUTTON_STATUS` ASC) USING BTREE,
  INDEX `idx_ocb_ORDER_NUM`(`ORDER_NUM` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Online表单自定义按钮' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_enhance_java
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_java`;
CREATE TABLE `onl_cgform_enhance_java`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BUTTON_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `CG_JAVA_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `CG_JAVA_VALUE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数值',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单ID',
  `ACTIVE_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '生效状态',
  `EVENT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'end' COMMENT '事件状态(end:结束，start:开始)',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_buttoncode`(`BUTTON_CODE` ASC) USING BTREE,
  INDEX `index_status`(`ACTIVE_STATUS` ASC) USING BTREE,
  INDEX `idx_ejava_cgform_head_id`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `idx_ocej_BUTTON_CODE`(`BUTTON_CODE` ASC) USING BTREE,
  INDEX `idx_ocej_ACTIVE_STATUS`(`ACTIVE_STATUS` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_enhance_java
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_js`;
CREATE TABLE `onl_cgform_enhance_js`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `CG_JS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'JS增强内容',
  `CG_JS_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_fmid`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `index_jstype`(`CG_JS_TYPE` ASC) USING BTREE,
  INDEX `idx_ejs_cgform_head_id`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `idx_ejs_cg_js_type`(`CG_JS_TYPE` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_enhance_sql
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_sql`;
CREATE TABLE `onl_cgform_enhance_sql`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `CGB_SQL` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'SQL内容',
  `CGB_SQL_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Sql名称',
  `CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_formid`(`CGFORM_HEAD_ID` ASC) USING BTREE,
  INDEX `idx_oces_CGFORM_HEAD_ID`(`CGFORM_HEAD_ID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_enhance_sql
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_field
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_field`;
CREATE TABLE `onl_cgform_field`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `cgform_head_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表ID',
  `db_field_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名字',
  `db_field_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段备注',
  `db_field_name_old` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原字段名',
  `db_is_key` tinyint(1) NULL DEFAULT NULL COMMENT '是否主键 0否 1是',
  `db_is_null` tinyint(1) NULL DEFAULT NULL COMMENT '是否允许为空0否 1是',
  `db_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库字段类型',
  `db_length` int NOT NULL COMMENT '数据库字段长度',
  `db_point_length` int NULL DEFAULT NULL COMMENT '小数点',
  `db_default_val` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表字段默认值',
  `dict_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典code',
  `dict_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典表',
  `dict_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典Text',
  `field_show_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单控件类型',
  `field_href` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转URL',
  `field_length` int NULL DEFAULT NULL COMMENT '表单控件长度',
  `field_valid_type` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单字段校验规则',
  `field_must_input` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段是否必填',
  `field_extend_json` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展参数JSON',
  `field_default_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控件默认值，不同的表达式展示不同的结果。\r\n1. 纯字符串直接赋给默认值；\r\n2. #{普通变量}；\r\n3. {{ 动态JS表达式 }}；\r\n4. ${填值规则编码}；\r\n填值规则表达式只允许存在一个，且不能和其他规则混用。',
  `is_query` tinyint(1) NULL DEFAULT NULL COMMENT '是否查询条件0否 1是',
  `is_show_form` tinyint(1) NULL DEFAULT NULL COMMENT '表单是否显示0否 1是',
  `is_show_list` tinyint(1) NULL DEFAULT NULL COMMENT '列表是否显示0否 1是',
  `is_read_only` tinyint(1) NULL DEFAULT 0 COMMENT '是否是只读（1是 0否）',
  `query_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `main_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键主表名',
  `main_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键主键字段',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `converter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义值转换器',
  `query_def_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询默认值',
  `query_dict_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典text',
  `query_dict_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典code',
  `query_dict_table` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典table',
  `query_show_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询显示控件',
  `query_config_flag` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用查询配置1是0否',
  `query_valid_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询字段校验类型',
  `query_must_input` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询字段是否必填1是0否',
  `sort_flag` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否支持排序1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inex_table_id`(`cgform_head_id` ASC) USING BTREE,
  INDEX `idx_ocf_cgform_head_id`(`cgform_head_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_field
-- ----------------------------
INSERT INTO `onl_cgform_field` VALUES ('004c6e6793d7b3725a97332fa45a222e', '402883b9818a674501818a68a827000e', 'insurance_fee', '保险经纪佣金费', 'insurance_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0080721b3bf5c4342a6fe0decb15fc0a', '402883b9818a674501818a68b7f10028', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 33, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('00a00906e8da9577ff89ca1c1a965850', '402883b9818a674501818a674c240008', 'pic', '分类图片', 'pic', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('015f35937b8dcbc34476f5c0278fc7a9', '402883b9818a674501818a68a8c6000f', 'dict_name', '字典名称', 'dict_name', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('019fbf243a875715f5fd14202a2b3fa0', '80a3ecde0362417380eb00701b917ccb', 'res_time', '离职时间', NULL, 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('01aa43d3d52e7bddd5987a71678a0697', '402883b9818a674501818a68ae140018', 'accomplish_weight_unit', '完单重量单位（字典）', 'accomplish_weight_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('01f011641b1618c22ee38309c346b48c', '402883b9818a674501818a68b68d0026', 'delivery_create_time', '入库交接单创建日期', 'delivery_create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 44, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0291fa42b9af62aaec5fb6c646421120', '402883b9818a674501818a674a5f0005', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('02ab83d83399262080371a045df51c9a', '402883b9818a674501818a68b73d0027', 'backup3', '物料代码', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 32, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('02f1cdff264f6a7ffebf934b81296001', '402883b9818a674501818a68b73d0027', 'id', '计划表2id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('03c1ffd3b4da9084ca6c37a53ad777dc', '402883b9818a674501818a68b68d0026', 'delivery_create_by', '入库交接单创建人', 'delivery_create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 43, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0476673a20bc4e23f43fc43f76aeabbe', '402883b9818a674501818a68b68d0026', 'factory_no', '出厂编号', 'factory_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 37, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0567a5cddefe4a1d79aca2df4c46419f', '402883b9818a674501818a68a75a000d', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0572cd8f90c5b6936723a46c3b7613e7', '402883b9818a674501818a674aef0006', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('05759009653b61edb6f1b947c97d8435', '402883b9818a674501818a674b8b0007', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('05e98649759c0df42aa0d38804ff233c', '402883b9818a674501818a68abd20014', 'order_num', '排序', 'order_num', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('06e98d19e3a0567df57f603a9728b21f', '402883b9818a674501818a68aed20019', 'punch_time', '打卡时间', 'punch_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0704d98842cb3315ce2b7b5ad100075d', '402883b9818a674501818a68b93a002a', 'linkman', '联系人', 'linkman', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('071f932312530317ab9fa9cb7fa6f0d7', '402883b9818a674501818a68b68d0026', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 58, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('072139a47bb9645a693e0421c38efeb3', '92eee2c8fee34ebaa57dc957190466dd', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('0723272d75461829dd118b0731ac3aea', '402883b9818a674501818a674aef0006', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('07298657cc0fa3faa382cee074fa25cf', '402883b9818a674501818a68ad8a0017', 'state', '状态', 'state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('07f3bc0a57583291e39616cd61389c1a', '402883b9818a674501818a68b7f10028', 'complete_state', '完成状态(字典)', 'complete_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 31, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('07fd91611b50bd902e4cf06727153bbc', '402883b9818a674501818a68acfb0016', 'api_url', '外网api', 'api_url', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('080f1fcf3767af05a00de4935d24e72e', '402883b9818a674501818a68b68d0026', 'system_no', '系统系列号', 'system_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 51, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0810514ee5379cac30aa4b40f3aa940a', '402883b9818a674501818a68b02f001b', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('08557e824abaec4ee9fd64159926eabc', '402883b9818a674501818a68b93a002a', 'receipt_no', '入库交接单号', 'receipt_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('08a57af705c637bc1d8b0b824d6b8571', '402883b9818a674501818a68b93a002a', 'annotation', '情况说明', 'annotation', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0934c18d1f6f5578537c8f6ff08b6b09', '402883b9818a674501818a674aef0006', 'num', '数量', 'num', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('09588a9c4859e16c07d014658744d761', '402883b9818a674501818a68b68d0026', 'plans_complete_time', '计划报废完成时间', 'plans_complete_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('09f964d6f97ef6aed2ad52fee221059e', '92eee2c8fee34ebaa57dc957190466dd', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('0a222cbee0b7eaadcfd5ee4e32cdb9c7', '402883b9818a674501818a68b89b0029', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0ad090f3bd1c92d9517f21ebe1ddf645', '402883b9818a674501818a68a9590010', 'create_time', 'createTime', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0bd70b1ddc897d389679cf6ad21bedbd', '402883b9818a674501818a68b68d0026', 'id', '计划表1id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0c4dfd01ada9083d6aa0008342f696f3', '402883b9818a674501818a68ab220013', 'create_by', '创建人登录名称', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0c50f0b8cf7009e6230348fb0e847c25', '402883b9818a674501818a6749cd0004', 'city', '市', 'city', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0c5f233f7105955039dee903546f7279', '402883b9818a674501818a68b5f90025', 'url', '文件地址', 'url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0cbcb3c2ed20b66ee8c05d035299fc62', '402883b9818a674501818a68b3a40021', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0d1e39f2f20310450fecb9e9eb7bd0be', '402883b9818a674501818a6745900000', 'id', '派单表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0dc8cff887026c083ed7ce733e03def5', '402883b9818a674501818a68a9590010', 'update_time', 'updateTime', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0e0a1e73ec99d02ce26d97ae817f23ce', '80a3ecde0362417380eb00701b917ccb', 'dept', '部门', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'sel_depart', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('0e9bf669ee23c7f2a06a4a8dd496375a', '402883b9818a674501818a68b68d0026', 'equipment_deveui', '设备编号', 'equipment_deveui', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 34, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0f62b2ce19885ca856b23bf17e91d269', '402883b9818a674501818a68b3a40021', 'data', '地图数据', 'data', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0febe3e6cb4f47cf09ea633b6f6733a7', '402883b9818a674501818a68af72001a', 'address', '地址', 'address', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0fff2ca58c07301a0a2a6ea5680c2f08', '402883b9818a674501818a68abd20014', 'update_by', '更新人登录名称', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('106a18b1bd729fbb5d88f4837f642e5f', '402883b9818a674501818a68b159001d', 'inventory_quantity', '库存数量 出库入库都需进行修改数量', 'inventory_quantity', 0, 1, 'BigDecimal', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('10d8f0e3e9296d6b7d4fa21e15601bdc', '402883b9818a674501818a68b159001d', 'material_id', '物料id', 'material_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('111f3adf7621074d53aedc3067ed7961', '402883b9818a674501818a68ae140018', 'plan_id', '计划id', 'plan_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('11574336aec7eaf3479b227f474eb3da', '402883b9818a674501818a68a75a000d', 'order_id', '外键', 'order_id', 0, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('11647a11ef32316e3271fafa2d3fae4f', '402883b9818a674501818a68b93a002a', 'recycling_specifications', '回收规格', 'recycling_specifications', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1196d0d5dedf6b4f53f1316dfba04f10', '402883b9818a674501818a6747790001', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('11bc080eabaf815f96efdb4a3cf9f2c7', '402883b9818a674501818a674c240008', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('11ce3ef50426b50852cc07217666c97c', '402883b9818a674501818a68b7f10028', 'project_manager', '项目经理', 'project_manager', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('12a6ad995549682bfcea3bb176581ad3', '402883b9818a674501818a684e13000c', 'storage_location_id2', '新库位id', 'storage_location_id2', 0, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('137935bdd9e75edd898e6667bdf9ed4f', '402883b9818a674501818a68acfb0016', 'report_id', '积木设计器id', 'report_id', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('137ff3e93dd5be2a4d3c527ad4f50f7d', '402883b9818a674501818a68b7f10028', 'construction_time', '具体施工日期', 'construction_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('13b1d2bc0ed1baabcc7ed5b5069580f5', '402883b9818a674501818a68b3180020', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('13fe3411e196d82a62ef64e57260c28c', '402883b9818a674501818a68ab220013', 'api_url', '请求地址', 'api_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1403b51b0c4946e0bc4f1aa0a04cfcc3', '92eee2c8fee34ebaa57dc957190466dd', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('1424647b9aba17fe72e2289e98c3f6e5', '402883b9818a674501818a68a9590010', 'description', '描述', 'description', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('143759bde183e12335558376e41ecb58', '402883b9818a674501818a68ad8a0017', 'engine_no', '发动机号', 'engine_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('14860720fe77bc6aed940af78d55db7e', '402883b9818a674501818a674aef0006', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1507c5dd8ce7e797ac6f6255d0db63d7', '402883b9818a674501818a6747790001', 'send_orders_id', '派单表id', 'send_orders_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1507e46ae05e4cb18471fcb012c4d893', '80a3ecde0362417380eb00701b917ccb', 'status', '状态', NULL, 0, 1, 'int', 10, 0, '', 'ban_normal_status', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('1642cfa603d21cada362ad0e3352d1a6', '402883b9818a674501818a68aa8b0012', 'code', '编码', 'code', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('165e48b06e75dbb1d6197b26d5aaf217', '402883b9818a674501818a68a9590010', 'status', '状态（1启用 0不启用）', 'status', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('16b525bc9c3d9ae0bef0677397f1030c', '402883b9818a674501818a68b89b0029', 'plan_type', '计划类型', 'plan_type', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('170366e4f2b50b58a89e4a8a0fd2fc88', '402883b9818a674501818a68b68d0026', 'already_deliver_storage', '已入库数', 'already_deliver_storage', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('172f1b693fef4c289d7049c12de438df', '402883b9818a674501818a684d78000b', 'wx_nc', '微信昵称', 'wx_nc', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1844988d2202bf88702c312e101df010', '402883b9818a674501818a68b1ec001e', 'main_income', '佣金/主营收入', 'main_income', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('18a2bdb9540fcb3b6c767bcc22f75632', '402883b9818a674501818a68b0bf001c', 'insurance_date_begin', '商业险开始日期', 'insurance_date_begin', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('18bfb2d285fecb94919f748df6430ab7', '402883b9818a674501818a68b5f90025', 'create_by', '创建人登录名称', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('190488a87dfd96c6c6b59e7961958a39', '402883b9818a674501818a674d210009', 'state', '状态(字典 0正常 1 维修)', 'state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('194e75cafbc8964a6c5bfc30b1592036', '402883b9818a674501818a68b68d0026', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 63, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('197ec9e138b6d010609caf192b715f81', '402883b9818a674501818a6747790001', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('19aa8fe54dfab0b116c02f14538011b2', '402883b9818a674501818a674d210009', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1b178e46a1ec73c45b7c4eeb012608f7', '402883b9818a674501818a68b159001d', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1b54717096c991aaafe11aec21480e39', '402883b9818a674501818a68b68d0026', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 59, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1bb67a6aa58820844efaa1e5bf62a60d', '402883b9818a674501818a6748860002', 'warehouse_id', '仓库id', 'warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1bc22c6b5f2a0430dd25a581de59755f', '402883b9818a674501818a6745900000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1c0dc0e18770c249d242ba4c7b7c6d18', '402883b9818a674501818a68ab220013', 'db_key', '数据源KEY', 'db_key', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1c7fdbb84a747d57bc5a7aeabd27b1e2', '402883b9818a674501818a68b7f10028', 'plan_type', '新品类型(计划类型(正常/抢修))', 'plan_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1ca1e7ffc31c130eaca6c670de6ee0ae', '402883b9818a674501818a68b93a002a', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 33, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1cc50b0eff2a1d3fb4e60af249f2da95', '402883b9818a674501818a68a9f40011', 'note', '说明', 'note', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1cd8db7ce85975e1e7152b60b51f382b', '402883b9818a674501818a68b4c90023', 'end_date', '请假结束时间', 'end_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d171bf46befcc7200e566726cea285b', '402883b9818a674501818a68acfb0016', 'link_type', '链接方式(0 网络报表 1 网络连接 2 图表联动)', 'link_type', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d43f398faa0480ae4f96fa929019b6d', '402883b9818a674501818a68b0bf001c', 'insura_name', '保险公司', 'insura_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d69a57296bb7f1d5326246e3b301cf2', '402883b9818a674501818a68b68d0026', 'warehouse_phone', '仓库联系电话', 'warehouse_phone', 0, 1, 'string', 11, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 50, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d6aa446a51e92f2bfeca622db428d9a', '402883b9818a674501818a674c240008', 'pid', '父级节点', 'pid', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d6b3bd037f12c843825939bc1f5c836', '402883b9818a674501818a68a827000e', 'interol_consulting_fee', '内控咨询费', 'interol_consulting_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d9f908730447ef8b062da4ab11ee58d', '402883b9818a674501818a68ab220013', 'db_code', '数据集编码', 'db_code', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1dfeb81569fccf22d882a99ec5eecd66', '402883b9818a674501818a68ac690015', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1f1272888a014d0b56fc36d95b7b9d33', '402883b9818a674501818a684e13000c', 'wuliao_name', '物料名称', 'wuliao_name', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1f4a1c08255b8524c7afbd86d83b92aa', '402883b9818a674501818a68b68d0026', 'engineering_address', '工程详细地址', 'engineering_address', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1f5edd3f553706fad75d0d15295e25ed', '402883b9818a674501818a6747790001', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1f716d6d6216031caefc7fe62530e0f4', '402883b9818a674501818a68b68d0026', 'already_receiving_storage', '已出库数', 'already_receiving_storage', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2004f579d4f5c1321f211840b60e1296', '402883b9818a674501818a68acfb0016', 'api_method', '请求方法0-get,1-post', 'api_method', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('20258c3590a6f1855f9afbb506a5ee77', '402883b9818a674501818a68a9f40011', 'update_by', '修改人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2074df432bd2533e0eaedcbe65b52672', '402883b9818a674501818a68b283001f', 'name', '客户名', 'name', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('216baf9d0f4f40779148af97db7dab5e', '80a3ecde0362417380eb00701b917ccb', 'phone', '手机号码', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('218cec22e4fddd5e3723ea57c96b83ab', '402883b9818a674501818a68b93a002a', 'warehouse_id', '仓库id', 'warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2273b7fb95d33af2bed5c6bc0755dc96', '402883b9818a674501818a68b73d0027', 'receipt_is', '是否有入库单', 'receipt_is', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('22768a6e8d5960fd7dfe67944ebc15df', '402883b9818a674501818a68a8c6000f', 'type', '字典类型0为string,1为number', 'type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('22ccb7d09b60ff95cd4a7bfc73653571', '402883b9818a674501818a684d78000b', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('22e42f10bb75ac71dfe2df20bf9b49d4', '402883b9818a674501818a68b43a0022', 'status', '是否过期(0未过期，1已过期)', 'status', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('22fd552f9f02bae5091dcb6d54bd0644', '402883b9818a674501818a68a9590010', 'item_value', '字典项值', 'item_value', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('24fbd818ef20949f66965e8d9a39ca0b', '402883b9818a674501818a68a9f40011', 'view_count', '浏览次数', 'view_count', 0, 1, 'int', 19, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2510be12a1491f889194c582345bf0c8', '402883b9818a674501818a68a9f40011', 'status', '状态', 'status', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('257e70fc38da033cc0659aa78b7f2f78', '402883b9818a674501818a68b43a0022', 'preview_url', '预览地址', 'preview_url', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('26304fdce910fbd62e0882ba1fbea81b', '402883b9818a674501818a68b0bf001c', 'insurance_date_end', '商业险结束日期', 'insurance_date_end', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('26381b92901af27b499de56516008966', '402883b9818a674501818a68b89b0029', 'sampling_addres', '抽取地点', 'sampling_addres', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('26902815a51c30c38207c9a51b5e55a0', '402883b9818a674501818a68aed20019', 'id', '主键ID', 'id', 1, 0, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('271db94eb9aa00353e08b81f5b0cac17', '402883b9818a674501818a68b4c90023', 'begin_date', '开始时间', 'begin_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('29350cb716a5a0bdaea63a7d8de7c234', '402883b9818a674501818a68b55e0024', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2a60792b056a0536c6b7bdfd6b8c5f2e', '402883b9818a674501818a68acfb0016', 'expression', '表达式', 'expression', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2ab35151b0661f5d9e517055f6b32203', '402883b9818a674501818a68b73d0027', 'retired_date', '退役时间', 'retired_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2ab974a4dc7789d55804c75523866098', '402883b9818a674501818a68b02f001b', 'name', '名称', 'name', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2b1a02ec3931314ea307cca86da8def7', '402883b9818a674501818a68b68d0026', 'the_phone', '现场联系电话', 'the_phone', 0, 1, 'string', 11, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 48, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2c48dbb5e791785e6ca440253187756e', '402883b9818a674501818a68ae140018', 'accomplish_volume', '完单容积', 'accomplish_volume', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2ce66abf39ea7e1a74af994c03680338', '402883b9818a674501818a674d210009', 'type', '类型(字典 1 大卡车 2小皮卡)', 'type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2d12c0a769a6f52b5a6426c355c08116', '402883b9818a674501818a68b7f10028', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 39, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2e3d0d42c5525eedebb1ae130557b623', '402883b9818a674501818a68a8c6000f', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2eabc7e8bf7a707bbb96172c034e3213', '402883b9818a674501818a684d78000b', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2eaec32e5aed23807c99b9015e872188', '402883b9818a674501818a68b0bf001c', 'license', '车牌号码', 'license', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2ef50efb07a4973ffe07786779f9cbc1', '402883b9818a674501818a68ac690015', 'param_txt', '参数文本', 'param_txt', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2f309de464af2e9de86a49be013eb828', '402883b9818a674501818a68ab220013', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2f4047e7c8ef6885fd402162f8fa0d1d', '402883b9818a674501818a674c240008', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('301a02588ea07b4f4b5051a4880e6953', '402883b9818a674501818a68b73d0027', 'equipment_owners', '设备主人', 'equipment_owners', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3074f15a31b7181a134929c5e75a3996', '402883b9818a674501818a68b7f10028', 'stop_time', '要求最终到货日期', 'stop_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('30a35cc7e9f6a7e18fe4abb7d1141340', '402883b9818a674501818a68b7f10028', 'field_consignee', '现场收货人', 'field_consignee', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('30f5485cb32b81edd7ca7f234e0ebbb3', '402883b9818a674501818a6745900000', 'warehouse_id', '仓库id（自家仓库）', 'warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3140d044ea76c9818cb6edd035eb83e8', '402883b9818a674501818a68a9f40011', 'api_url', '请求地址', 'api_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('32110be0c04a91297ac3f279d5751ca5', '402883b9818a674501818a68b0bf001c', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3292b272f9f4f710b2c52b00cf7c1c23', '402883b9818a674501818a674b8b0007', 'name', '用户名', 'name', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('32ec49679e0f1924f70b23e1beff0854', '402883b9818a674501818a68a9f40011', 'thumb', '缩略图', 'thumb', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('33a56db90f2d188d71ec89de55c519ae', '402883b9818a674501818a68b89b0029', 'project_no', '账号', 'project_no', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('33aad46eb737d8ec84daf5aecea5b87f', '402883b9818a674501818a68b02f001b', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('33ae0176f06798616883012ccef62ddc', '402883b9818a674501818a6749cd0004', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('33b42ac9d271cdb392f4ea7bafb25517', '402883b9818a674501818a68b68d0026', 'waste_val', '报废原值', 'waste_val', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 38, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('33b6568fd105668a66a5dfc216c3b643', '402883b9818a674501818a68b89b0029', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3417225dc7a451ca43ea0e9e490923c5', '402883b9818a674501818a68aed20019', 'birthday', '生日', 'birthday', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3429c35b4f4de53806990b3986b4b450', '402883b9818a674501818a68b93a002a', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('342f0102fd614adbae9c34f0031caf00', '402883b9818a674501818a6748860002', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('347293e9774ad4bb9fb1673df032e025', '402883b9818a674501818a6745900000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('34e161792b670a14950da1d41edae1ca', '402883b9818a674501818a68b5f90025', 'file_name', '文件名称', 'file_name', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('353d529256e2c2ba6dccdd8c09a1f24b', '402883b9818a674501818a68b68d0026', 'project_name', '项目名称(入库的时候需要把项目名称带到仓库)', 'project_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('35724c7b00153cbc243323539087d27e', '402883b9818a674501818a68b73d0027', 'asset_no', '新资产编号', 'asset_no', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('35bb724b593ff747a82e1d0d94f62a54', '402883b9818a674501818a68b68d0026', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 57, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('35df6ad274e0be3c3b23cba1cbe1ae00', '402883b9818a674501818a68b3a40021', 'id', '主键', 'id', 1, 0, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('362057908bf3ad769096ac9ea7db6881', '402883b9818a674501818a68ae140018', 'scene_photos', '现场照片路径(路径用逗号隔开)', 'scene_photos', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3644b96cd63292f630d01f465f4d149c', '402883b9818a674501818a68ab220013', 'tb_db_key', '填报数据源', 'tb_db_key', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('369fa18eb4a144d333dfa5002b517419', '402883b9818a674501818a68ae140018', 'phone', '电话', 'phone', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3728c43a5a452feda68a58334a0feca2', '80a3ecde0362417380eb00701b917ccb', 'username', '用户名', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('373731e3d70a7ede2596ee8c94b91e9c', '402883b9818a674501818a674b8b0007', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('375236d39a60c22bf01935a23e8a3b63', '92eee2c8fee34ebaa57dc957190466dd', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('37dcf5e04ac573cd3dce7c8f7b8fc441', '402883b9818a674501818a68b93a002a', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('38c635614957b8ff39549d402b03d18d', '402883b9818a674501818a68b68d0026', 'manufacturing', '制造商型号', 'manufacturing', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 36, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('38fc351bb924b20be94e2ec7e16649ff', '402883b9818a674501818a68b68d0026', 'project_type', '项目类型', 'project_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3983dcb9233a09fa474df6bf23ed8bbc', '402883b9818a674501818a68ac690015', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('39f92768c207d13db15d3fad080bcd42', '402883b9818a674501818a674aef0006', 'pro_type', '产品类型', 'pro_type', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3a3d2d14b25fbefc1c7cc8bec387dc05', '402883b9818a674501818a68abd20014', 'search_value', '查询默认值', 'search_value', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3abfb9da5f0e1c0ff74a0569eed18b6e', '402883b9818a674501818a68b93a002a', 'accomplish_num', '出库完单数量', 'accomplish_num', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3adf176892892570c633583c9ea27fc7', '402883b9818a674501818a68b159001d', 'backup4', '容积', 'backup4', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3ae653c8cfce2cb0710230d6040cf60a', '402883b9818a674501818a6745900000', 'storage_location_id', '（自家库位）出库时要选库位 库位要根据项目编号/工程编号来', 'storage_location_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3ba1e840cc7686518d13c3f3bc01d444', '402883b9818a674501818a68b4c90023', 'update_by', '修改人id', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3bb7fe6a9bde0d97736df6c7a69c2378', '402883b9818a674501818a68b7f10028', 'material_code', '物料代码', 'material_code', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3c580586a76c23d77bc8dc2432394437', '402883b9818a674501818a68ac690015', 'widget_type', '查询控件类型', 'widget_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3c607fd5b79c300eab82a4e1abd1c5ae', '402883b9818a674501818a68a9590010', 'item_text', '字典项文本', 'item_text', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3cd7db05a48d62cc6889837337310532', '402883b9818a674501818a68aa8b0012', 'db_password', '密码', 'db_password', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3cf0148e5e789316f19e4fc758c38f56', '402883b9818a674501818a68ac690015', 'dict_code', '字典', 'dict_code', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3d3d2de5251fe064d1bf42b0c8c86938', '92eee2c8fee34ebaa57dc957190466dd', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('3dcc3870e9d827bf26146b5e7a10ace0', '402883b9818a674501818a6749340003', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3dd02b02f1b69300f9140764c418279e', '402883b9818a674501818a68b43a0022', 'report_id', '在线excel设计器id', 'report_id', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3e3eebdc508ae894ad91980a49e2c6cd', '402883b9818a674501818a68b89b0029', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3ef69e2a608efd85e06b0de17e3a41fa', '402883b9818a674501818a68b73d0027', 'backup2', '物料描述', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 31, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3f2491d568b4e0fe78cf9d032681e3b4', '402883b9818a674501818a68a75a000d', 'id', '主键', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3f36c34fe38c56158b95cb904a4cd731', '402883b9818a674501818a68b73d0027', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3faa945a062c121f25584599dcaa4a48', '402883b9818a674501818a674b8b0007', 'content', '请假原因', 'content', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3fb2714975721d7093355f9d45510aa5', '402883b9818a674501818a68b89b0029', 'sampling_length', '预计抽取长度', 'sampling_length', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('40023a47073f43b1b6b5b30d628432e2', '402883b9818a674501818a68aa8b0012', 'db_type', '数据库类型', 'db_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('40420b0a5fec1b5ee5e315ef0b04450d', '402883b9818a674501818a68b68d0026', 'raw_material_unit', '原物料单位(从字典来)', 'raw_material_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('40c7f2e3832182725d6da3da00a99d54', '402883b9818a674501818a68b89b0029', 'feedback', '运检反馈', 'feedback', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4104ffbd77cc3899f74514fa0b08b322', '402883b9818a674501818a684d78000b', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('41a0a7cc2d8740fb7264bea88eec0d52', '402883b9818a674501818a68aa8b0012', 'db_username', '用户名', 'db_username', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('420d3fe4fa4117eeec195866689e3ee3', '402883b9818a674501818a68b3180020', 'id', '主键', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4252399914ef6e624f8b222eb586fc31', '402883b9818a674501818a68a8c6000f', 'del_flag', '删除状态', 'del_flag', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4257d28e1159396d03d29952db2d719b', '402883b9818a674501818a68b159001d', 'asset_no', '资产编号', 'asset_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('42a9bfa8721c2f26fbf89c0156296e0a', '402883b9818a674501818a68b73d0027', 'address', '地址', 'address', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('431766d9ccc76139e88ffa3d0d2d799d', '402883b9818a674501818a68af72001a', 'name', '姓名', 'name', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('43ada53e340b021175231363a20d4f80', '402883b9818a674501818a68b68d0026', 'rate_formation', '资产成新率', 'rate_formation', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 54, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('43cb74a63f96f972b8b428b8f2a84b3a', '402883b9818a674501818a68ae140018', 'recycling_situation', '回收情况', 'recycling_situation', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4418a786740fb7263d7e8051b39091ac', '402883b9818a674501818a68b68d0026', 'asset_no', '资产编码', 'asset_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 31, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('442bc6a4e7c8a6e7078da51eca589aef', '402883b9818a674501818a68b89b0029', 'cable_cross', '电缆截面', 'cable_cross', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('451b117913f447414a72a6b3e0187ee7', '402883b9818a674501818a68a9f40011', 'api_code', '请求编码', 'api_code', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('454312ba664e5660fb8d247a8ce2c798', '402883b9818a674501818a68b89b0029', 'sampling_date', '抽取日期', 'sampling_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('45536024da3f1cae17110959d9531efc', '402883b9818a674501818a68a827000e', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('46107ee22ecc447957294eba942b548d', '402883b9818a674501818a68b73d0027', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 34, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4677d6f8b0eb43b91d25b92ac6af66f5', '402883b9818a674501818a68b159001d', 'backup2', '（1：plan1表；2：plan2表···）', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('469e3cc674621f724b86e40f4ad0a421', '402883b9818a674501818a674d210009', 'engine_number', '发动机号', 'engine_number', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('46b9e702b044071b4fda738cc58723bc', '402883b9818a674501818a68a75a000d', 'ticket_code', '航班号', 'ticket_code', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('476d873efaa8149b89fafa8a038396c1', '402883b9818a674501818a674c240008', 'type_name', '商品分类', 'type_name', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('47b2ff67eef6bdecdf0331f00c260528', '402883b9818a674501818a6745900000', 'plan_id', '计划id', 'plan_id', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('47ca407dd3541ce876728d89f380ede7', '402883b9818a674501818a68ac690015', 'search_flag', '查询标识0否1是 默认0', 'search_flag', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('48360efecd7bb96d8a64a3fb65a2baf9', '402883b9818a674501818a6749cd0004', 'area', '区', 'area', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('486c65c685ddfaaffe46fdfee6311133', '402883b9818a674501818a68b02f001b', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('48fa426929b8b2be48066cbab4c04575', '402883b9818a674501818a68b159001d', 'backup5', '入库完单重量(电缆)', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('491c63cbb369f9703fee7fd10f7c182d', '402883b9818a674501818a684d78000b', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('49806279ca5a121d18560183d79b84f1', '402883b9818a674501818a6745900000', 'backup2', '任务地址', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('49dd48c1bbc6feae21682e5893c57ae3', '402883b9818a674501818a68b283001f', 'idcard_pic', '身份证扫描件', 'idcard_pic', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4a3d4841bc4067e79fce341ed6ec3d98', '402883b9818a674501818a68b89b0029', 'construc_contact', '班组联系人及电话', 'construc_contact', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4b2967dd81c2c8050d0d75f3015da394', '402883b9818a674501818a68a9590010', 'sort_order', '排序', 'sort_order', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4b8ccd0ebdbeaf4fef32751c3beb0981', '402883b9818a674501818a68ae140018', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c5c94d8e2ae372fc54421d67c305fbb', '402883b9818a674501818a68b93a002a', 'texture', '材质（定死，铜，铝）', 'texture', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c79195ef13bbb7aec7c3d6a1f440f4f', '402883b9818a674501818a68b55e0024', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c7e76772e6d403fdff2ba76ebdbb5d8', '402883b9818a674501818a68b68d0026', 'disposal_way', '处置方式', 'disposal_way', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4cc65990d937dba57628ee10e8ba994a', '402883b9818a674501818a68b0bf001c', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4fa063dee3143cd213c3ce68e4d74bca', '402883b9818a674501818a68b02f001b', 'sys_org_code', '所属部门', 'sys_org_code', 0, 1, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4fc06736bac4290e32409a1da79e5b49', '402883b9818a674501818a68acfb0016', 'link_name', '链接名称', 'link_name', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('506a511fd2493f52f82678024528cb88', '402883b9818a674501818a68b43a0022', 'id', '主键', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('508630d6499eada9f72604a4e0b75220', '402883b9818a674501818a68b68d0026', 'project_no_remarks', '项目编码备注', 'project_no_remarks', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 53, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('517f194f5baf5e9024c516a1d35e12af', '402883b9818a674501818a68b02f001b', 'main_id', '主表ID', 'main_id', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5193d5e178f6d090d4d62b955aef008b', '402883b9818a674501818a674d210009', 'carrying_capacity', '载重 单位：吨', 'carrying_capacity', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('51f805b0fdf14212835e960e1bb52c52', '402883b9818a674501818a68ad8a0017', 'license', '车牌号', 'license', 0, 1, 'string', 15, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('52055081f1feebf4b86998cc1faa82af', '402883b9818a674501818a68a9f40011', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('520a47c14fbe62e82834e51b90a10b0e', '402883b9818a674501818a68af72001a', 'sys_org_code', '所属部门', 'sys_org_code', 0, 1, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('521a68fa39c44de66b7525dfdc957ce9', '402883b9818a674501818a68b02f001b', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('52847462e8a1b365963d4146f29bda2f', '402883b9818a674501818a684cc0000a', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5293285fd0b4a10cc694e9d588779a9f', '402883b9818a674501818a68b55e0024', 'serial', '物料编号(唯一)', 'serial', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5343b688656610195f3b871a57e6f623', '402883b9818a674501818a68ae140018', 'storage_location_id', '库位id', 'storage_location_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('53e7d2bb9a0f050dea273c6fb9124842', '402883b9818a674501818a6749340003', 'top_pic', '头像', 'top_pic', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('542a3b92e961959289f263b8b6bf594e', '402883b9818a674501818a68af72001a', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('546b852995023417eeaf06886f4d28e2', '402883b9818a674501818a68ac690015', 'param_value', '参数默认值', 'param_value', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5510262879c0555f7a60fa1bf5439773', '402883b9818a674501818a674aef0006', 'order_fk_id', '订单外键ID', 'order_fk_id', 0, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5585a580a8319c533967bfb8d42abe8b', '402883b9818a674501818a68af72001a', 'address_param', '地址（传参）', 'address_param', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5630765b100a2428d652179eda73448e', '402883b9818a674501818a68b68d0026', 'send_orders_state', '0未派单/1已派单', 'send_orders_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 55, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5668719d552eb4af5d88db063adc6069', '402883b9818a674501818a68b7f10028', 'measuring_unit', '计量单位(字典)', 'measuring_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5679efecb7c321f07386cdbff2dd11f8', '402883b9818a674501818a684d78000b', 'update_by', '更新人', 'update_by', 0, 1, 'string', 0, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('56d2ed22bdf0fe67ca8eeeeaed67b5e9', '402883b9818a674501818a6747790001', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('583f5fc2f4a9f6ecf01f10022dbc10fa', '402883b9818a674501818a68b73d0027', 'note', '备注', 'note', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('58953bd1dad0f1f4f701af0da60938c7', '402883b9818a674501818a68a75a000d', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5945264686e8b9dbe53ca525fd9a6a5d', '402883b9818a674501818a68b93a002a', 'construction_team', '施工队', 'construction_team', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('59709433e4bc7d524e7fa4e8f26038b9', '402883b9818a674501818a68b68d0026', 'item_slip', '项目交接单', 'item_slip', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('59e130a54e1c1064bd1822451b0b12f4', '402883b9818a674501818a68b89b0029', 'backup1', '结算状态（0未结算/ 1已结算）', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('59f8896c6e32305b0ee0b73136b28763', '402883b9818a674501818a68aa8b0012', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a499af1d50bb985a8475b1a48d9e938', '402883b9818a674501818a6745900000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5ab3d0220ef7421521ebd4dcd31171dd', '402883b9818a674501818a674c240008', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5ae543d1806f82c231ec11d8e46b8c42', '402883b9818a674501818a68b5f90025', 'id', '主键id', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5b85373416bef8c2960cc75e7990cd03', '402883b9818a674501818a6747790001', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5bc7008bd3df9cb153491f554400cf76', '402883b9818a674501818a68b68d0026', 'item_slip_no', '交接单行号', 'item_slip_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5cc4e6469e9170685a8e7595e46617fa', '402883b9818a674501818a68b7f10028', 'material_describe', '物料描述', 'material_describe', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5cd764d33021ed3a8e822c22ea37e4bd', '402883b9818a674501818a68b7f10028', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 35, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5cf954e669959b09f8ed3d642bfc052f', '402883b9818a674501818a6749340003', 'create_by', '创建人登录名称', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5cfb80308c8333159cf49cda8f0aa18f', '402883b9818a674501818a68b55e0024', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5ddc1147ef5b3e4915083879fe65523c', '402883b9818a674501818a68b7f10028', 'instructions', '说明', 'instructions', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5ee6b963a563a8cc2aaea21ef4eff6c7', '402883b9818a674501818a68a8c6000f', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5ef331892557746a2e1d2afea3f96c93', '402883b9818a674501818a68b93a002a', 'storage_location_id', '库位id', 'storage_location_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5f535aa5c7b37cbbf6f20442844c5ab1', '402883b9818a674501818a68ab220013', 'is_list', '是否是列表0否1是 默认0', 'is_list', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5f6119e970cdde3d9c81b667eeefc70a', '402883b9818a674501818a674b8b0007', 'sex', '性别', 'sex', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5f648bb11429500dcc443dafe025db7c', '402883b9818a674501818a68b68d0026', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 62, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6035c7da991639285073469e55ba3ec5', '402883b9818a674501818a68a9f40011', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6039d09b77b856ca8373d93f258bdc99', '402883b9818a674501818a68b283001f', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('603a214d308a5d36351acf70ca8ba894', '402883b9818a674501818a68aa8b0012', 'connect_times', '连接失败次数', 'connect_times', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('603b398c03445239f57932606dcf55a1', '402883b9818a674501818a68aa8b0012', 'name', '数据源名称', 'name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6048948645753dfd3c11cf29133335bd', '402883b9818a674501818a68b93a002a', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6093bb0036e16a7819b12669a29e81af', '402883b9818a674501818a68b0bf001c', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('60ea6c7154ec662e391eab7fc44b83f9', '402883b9818a674501818a68b73d0027', 'already_deliver_storage', '已入库数', 'already_deliver_storage', 0, 1, 'BigDecimal', 4, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('61935124af27f1d4f22fccd4594dbe53', '402883b9818a674501818a6749340003', 'birthday', '生日', 'birthday', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('61afd6629c635b7830e6777c51404680', '402883b9818a674501818a68abd20014', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('61b5f349a62a7d07a0a78bf0d16d5b13', '402883b9818a674501818a68af72001a', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6232b08b43f61add2dd0b6eda36dcdd0', '402883b9818a674501818a68ab220013', 'tb_db_table_name', '填报数据表', 'tb_db_table_name', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('62598baa0bacf7d4389339b7693f8fb8', '402883b9818a674501818a68b68d0026', 'waste_material_code', '废旧物料编码(从字典来)', 'waste_material_code', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('625b1bee25deeabcc2661304b372d19c', '402883b9818a674501818a6749cd0004', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6385ef4fe152fe9459c37cc7737b8df5', '402883b9818a674501818a674d210009', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6398d7139177359275eb7eb3b9f16d01', '402883b9818a674501818a6748860002', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6449ee4d1693ed5021c2de0621bd2ca7', '402883b9818a674501818a68ae140018', 'receipt_no', '入库交接单号', 'receipt_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('646713e9dbb840d45048c3f7f74fe1e4', '402883b9818a674501818a68b3a40021', 'update_by', '修改人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('654a86ad91c651a4178a58160ce4f133', '402883b9818a674501818a68a827000e', 'nature', '项目性质', 'nature', 0, 0, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('65e1ba45d986f113df3d5312871fec65', '402883b9818a674501818a674aef0006', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('66721023c4cd34ee3a6db8399b806ebd', '402883b9818a674501818a68aa8b0012', 'report_id', '报表_id', 'report_id', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('66808cdcd2689d3af9193c9e54e1582c', '402883b9818a674501818a68ae140018', 'linkman', '联系人', 'linkman', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('66e04b4803f029c5ddf44d9508eb3902', '402883b9818a674501818a68a8c6000f', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('67e6fbb6bd5346c1d631cc2af6e87583', '402883b9818a674501818a68b3a40021', 'del_flag', '0表示未删除,1表示删除', 'del_flag', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6829b7a7548ca46ee39f45627bf42bbe', '402883b9818a674501818a674a5f0005', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6916b6641d23a01f63f4c6d3c9087885', '402883b9818a674501818a68ae140018', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 36, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('698374c4f8386bab288ef7abbb7f4124', '402883b9818a674501818a68b1ec001e', 'month', '月份', 'month', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('69a29d70828d654f199d8f1c3fec70bd', '402883b9818a674501818a68b159001d', 'project_name', '项目名称 暂时不用', 'project_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('69cf549e3a54d45dbaa1b928c3fc8d86', '92eee2c8fee34ebaa57dc957190466dd', 'name', '部门名称', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('69f98c5232415dfe8f2e7035390fedb5', '402883b9818a674501818a68b159001d', 'storage_location_id', '库位id', 'storage_location_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6a7a80ff333fb88842ac81df61be6df8', '80a3ecde0362417380eb00701b917ccb', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('6b20a5cfdf3571608de87349f95bc5e8', '402883b9818a674501818a68b93a002a', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 34, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6d0199659afcec85f6113c33c59cb104', '402883b9818a674501818a684e13000c', 'wcode', '物料编码', 'wcode', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6d6065d7c83f3197964964f63ac34c59', '402883b9818a674501818a68b0bf001c', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6d65f9e40c0911a13d4d64190cfbdb5f', '402883b9818a674501818a68b55e0024', 'backup1', '物料简称', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6deff72c8828e5a61e267a8550009983', '402883b9818a674501818a68b4c90023', 'create_by', '创建人id', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6e22677126fe2f56cc727cb901605af7', '402883b9818a674501818a68b7f10028', 'note', '备注', 'note', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6e317d3b22dcb31f80f674910baa8ad8', '402883b9818a674501818a68abd20014', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6e4742578cbbbc6db92d5113f3c7aeb7', '402883b9818a674501818a68aa8b0012', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6f49fec5a54ec5703ea0e56b18155303', '402883b9818a674501818a68b3180020', 'order_date', '订单日期', 'order_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6f86d12f5a12eccad82a9334aee2d28a', '402883b9818a674501818a68ae140018', 'whether_complete', '是否完成', 'whether_complete', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6f90a63ad758b41d713979b0b5a20fe5', '402883b9818a674501818a68b89b0029', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6fd82e6180ba171ad695d2317ba97906', '402883b9818a674501818a68b159001d', 'backup3', '单位', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7041fde4a5905a948c9bd0a185c137a2', '402883b9818a674501818a684d78000b', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('70e5d5898b3c341429ba5492d41e88de', '402883b9818a674501818a68b73d0027', 'disposed', '实物已退役但未处置', 'disposed', 0, 1, 'string', 30, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('712265741b1dd3e57212fe71e260b727', '402883b9818a674501818a68af72001a', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('71ce8c34014060ede9dd301027fa9d2f', '402883b9818a674501818a68ae140018', 'recycling_specifications', '回收规格', 'recycling_specifications', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('71e28c811f0281cecd8807f7a5f927ed', '402883b9818a674501818a68b93a002a', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 31, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('720a3451287baf89898b7d48a4f9f0b5', '402883b9818a674501818a68b93a002a', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7216e7c66cffcf411f272575d6fc7b65', '402883b9818a674501818a68acfb0016', 'eject_type', '弹出方式（0 当前页面 1 新窗口）', 'eject_type', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('721a12fcbde9be93dcf69c196926755b', '402883b9818a674501818a68ac690015', 'search_mode', '查询模式1简单2范围', 'search_mode', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('72504680c3b5503b2550386cfb729a02', '402883b9818a674501818a68b68d0026', 'item_slip_type', '交接单类型', 'item_slip_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('727d1c05b5ff86fd72d987af3a55e55f', '402883b9818a674501818a68b7f10028', 'pro_apply_no', '采购申请号', 'pro_apply_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7323bfd8f9ca9f94bb279a2413767a3f', '402883b9818a674501818a684d78000b', 'pic_url', '微信头像地址', 'pic_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('741e454c2acdec3325461d74406088d7', '402883b9818a674501818a68b159001d', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('74466b3fe4593cfa61858ac65498e7e7', '402883b9818a674501818a68ab220013', 'api_method', '请求方法0-get,1-post', 'api_method', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('74610429fbc0bcd9cec98cffdd2247c6', '402883b9818a674501818a68b68d0026', 'raw_material_text', '原物料描述', 'raw_material_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('74610757d5c1421ad8694e60e23c2e4d', '402883b9818a674501818a674d210009', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('747f739e4ffcc8474c2a3fed56c04cf9', '402883b9818a674501818a68ad8a0017', 'weight', '重量（吨）', 'weight', 0, 1, 'double', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('74be74b77a144d6037e37cff16ff64f3', '402883b9818a674501818a6749340003', 'user_code', '用户编码', 'user_code', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('75488ca6463db72e7dcf67260f8fde24', '402883b9818a674501818a684cc0000a', 'name', '仓库名称', 'name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('758b87f1d1fb05a46ff45f43439bbe60', '402883b9818a674501818a68a75a000d', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('762a24f1689cfa639d241414212df2ba', '402883b9818a674501818a684cc0000a', 'address', '仓库地址', 'address', 0, 1, 'string', 225, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('764ef465807eb3fb1c3f773778d195ef', '402883b9818a674501818a674aef0006', 'price', '价格', 'price', 0, 1, 'double', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7773fe48533ded69e182ce91b62785ad', '402883b9818a674501818a68b3180020', 'content', '订单备注', 'content', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('77ea0dcbcf94bf21e59ab6fcfb70b281', '402883b9818a674501818a68aed20019', 'email', '邮箱', 'email', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('781eb6106760d90ebc5d6cef1d26273b', '402883b9818a674501818a68b68d0026', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 64, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('782fc4963d160ab7999c42d28e1ebf0d', '402883b9818a674501818a68b7f10028', 'eng_name', '工程名称', 'eng_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7923b974340e27d83ff0d1766c7dbdcd', '402883b9818a674501818a674d210009', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7924eab5ad37b4e7f10a57c3181eb9d4', '402883b9818a674501818a68b3180020', 'order_money', '订单金额', 'order_money', 0, 1, 'double', 10, 3, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('794b53ceecbbf9c75dcd3ebd5ca0737c', '402883b9818a674501818a6747790001', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('79c7c493d765c30f97c8186fe5f340c6', '402883b9818a674501818a68a9f40011', 'id', '主键', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('79ef0a2392fa6f911bcec1ba44826953', '402883b9818a674501818a68aed20019', 'bonus_money', '奖金', 'bonus_money', 0, 1, 'double', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7acd4656384e91489c747e468b936f07', '402883b9818a674501818a68b4c90023', 'days', '请假天数', 'days', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7bd95387b07ba9b1da4b6adba4511327', '402883b9818a674501818a68b68d0026', 'the_factory', '所属工厂', 'the_factory', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7bfb97b4c7e7d81e3e6a03f3ab93ab5c', '402883b9818a674501818a6749340003', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c0f6780225fa416b1b07de5e1fee45e', '402883b9818a674501818a68b55e0024', 'supplier', '供应商', 'supplier', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c3c53784098d5d5c3125242923f63ef', '402883b9818a674501818a674b8b0007', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c6bb474ba5d75c2ae614bc2600a9e3f', '402883b9818a674501818a68aa8b0012', 'db_driver', '驱动类', 'db_driver', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c98d7c6021cf4995754dbffc76fd0bb', '402883b9818a674501818a6747790001', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7d1374e720fee669957e35e37cedbca3', '402883b9818a674501818a68b93a002a', 'accomplish_num_unit', '出库完单单位', 'accomplish_num_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7d2dc05d0e7853dba0135b0776c10177', '402883b9818a674501818a674d210009', 'text', '备注', 'text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7d6566a4e680235351dd9118a44ccda1', '402883b9818a674501818a68b3180020', 'order_code', '订单号', 'order_code', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7d89ed18a98ad833cf1a5adf8c1f6f56', '402883b9818a674501818a68b3a40021', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7dbf316a8adc3767d11a2f30a5ddeb53', '402883b9818a674501818a68b73d0027', 'complete_state', '完成状态(字典)', 'complete_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7e0a86be23f11b04f620aa6c748c5e5c', '402883b9818a674501818a68b89b0029', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7e1273483392276eed26a1733b894bb8', '402883b9818a674501818a68b93a002a', 'incomplete_description', '未完成说明', 'incomplete_description', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7e82b0ac407bdf007342ed2931d9a01f', '402883b9818a674501818a68a8c6000f', 'id', 'id', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7f55011a0927647ad0dcff501cffb392', '402883b9818a674501818a68b7f10028', 'send_orders_state', '0未派单/1已派单', 'send_orders_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7f572a0b707555925298f4384e359804', '80a3ecde0362417380eb00701b917ccb', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', 'sex', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('7f5a17a58f71ec21e981ef9eb4e43136', '402883b9818a674501818a68b55e0024', 'unit', '单位(字典 米，吨，卷，台，箱)', 'unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7f8fd46d283b8287a5ec45be74fe5903', '402883b9818a674501818a6749340003', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7fd27e95eea35170d22c2fe9026612f5', '402883b9818a674501818a68b89b0029', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7ff5035d1c0ee53c43f7a027bdfd3e3e', '402883b9818a674501818a68ab220013', 'db_table_name', '数据库表名', 'db_table_name', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('803aa35d6fdc24cc24ed6a3fb3ad22c2', '402883b9818a674501818a68b3a40021', 'label', '地图名称', 'label', 0, 1, 'string', 125, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8044eaad350ec8d1637fe89789e34724', '402883b9818a674501818a68b73d0027', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('805c1e0810be332454b65e174ca4936e', '402883b9818a674501818a68a75a000d', 'tickect_date', '航班时间', 'tickect_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('811493defc9407bd7ae29394d3196914', '402883b9818a674501818a684cc0000a', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('81956f8a49ea546dcece96b0e1c1ce7b', '402883b9818a674501818a68b68d0026', 'object_instruct', '技术对象说明', 'object_instruct', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 35, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('81d3d16c2a7bbced57b508424f5a1b27', '402883b9818a674501818a684cc0000a', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('82170ffda52aa8dde09f89ab7e4cf706', '402883b9818a674501818a6745900000', 'backup3', '联系人', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('829dd5a3e5ac4abe92d2e42754d58dde', '402883b9818a674501818a68b7f10028', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 34, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('82a3463e18c2f1aad992c98a17bd58df', '402883b9818a674501818a68b55e0024', 'id', '物料表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('830fc1cb9844a0a54d422c33c6cc2610', '402883b9818a674501818a684d78000b', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('838326686cfef9ec1f90d8848669dbd7', '402883b9818a674501818a68b4c90023', 'name', '请假人', 'name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8388e079b94326744c1f8051f8cbc6e3', '402883b9818a674501818a68b68d0026', 'waste_reason', '报废理由', 'waste_reason', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 39, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('83ae2c3cb1496463570bf9bc05c6e54f', '402883b9818a674501818a6748860002', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('840b9b27621d1079fe3e25f9d5c80820', '402883b9818a674501818a68ab220013', 'db_dyn_sql', '动态查询SQL', 'db_dyn_sql', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8425110d6f5ff8752b42b8b604b6fd8a', '402883b9818a674501818a6745900000', 'project_no', '项目编码', 'project_no', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8466cbf1f3a7a090c161e71ffbf8c35f', '402883b9818a674501818a68b283001f', 'sex', '性别', 'sex', 0, 1, 'string', 4, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8542bc18adeb6e1e0f041df4da2689c8', '402883b9818a674501818a68aa8b0012', 'db_url', '数据源地址', 'db_url', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8595bb59b2d3c2e1c81e57deb54ba42a', '402883b9818a674501818a68abd20014', 'search_mode', '查询模式1简单2范围', 'search_mode', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8603087181f320a3019838036d5110b7', '402883b9818a674501818a68ab220013', 'db_source', '数据源', 'db_source', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('865b7460d218a1ad45ce6485361aef67', '80a3ecde0362417380eb00701b917ccb', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('869f1f04b4795fdd47a3b345a9fb3bc5', '402883b9818a674501818a68b7f10028', 'project_no', '工程账号', 'project_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('870429c26306d33b694a72ee04a8d551', '402883b9818a674501818a68aed20019', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('874f588a0ad70e9db70a75cfda899dbf', '402883b9818a674501818a68a9f40011', 'template', '是否是模板 0不是,1是', 'template', 0, 1, 'int', 3, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('87b87280bbae47a021a1ce2aaf9d1e34', '402883b9818a674501818a68b1ec001e', 'year', 'year', 'year', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('88e540780329d119c2ce341f0f9b9a36', '402883b9818a674501818a68b93a002a', 'plan_type', '计划类型（区分计划1、2、3、4表）', 'plan_type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('89aff210a0bf1275828a368a62e3c885', '402883b9818a674501818a68b4c90023', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8a29a4e56b48a42889e4a7483b1fcac1', '402883b9818a674501818a68b68d0026', 'factory_text', '工厂描述', 'factory_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8a9d7a782faa7a551000beeb8bc3cfd5', '80a3ecde0362417380eb00701b917ccb', 'entry_time', '入职时间', NULL, 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('8ae440398f705785d53b4fd5dbd07d98', '402883b9818a674501818a68a9f40011', 'json_str', 'json字符串', 'json_str', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8b348a21094ef6b7159bc858dae7826e', '402883b9818a674501818a68b68d0026', 'complete_state', '计划完成状态(字典 0未完成 1已完成)', 'complete_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8bbf7517627bc9158b31984252f69cea', '402883b9818a674501818a68b93a002a', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 35, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8bf7258df894b8d5589394d72abca30c', '402883b9818a674501818a6748860002', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8c91fffc321dd19fac81daa178da3961', '402883b9818a674501818a68abd20014', 'widget_type', '控件类型', 'widget_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8cd879cf2773a2c8a82d2e3c8486aed8', '402883b9818a674501818a68b93a002a', 'anomalous_cause', '异常原因', 'anomalous_cause', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 36, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8ce2870bcc4e03b6b584e94f588794bc', '402883b9818a674501818a68ae140018', 'scene_situation', '是否异常(字典0正常 1异常)', 'scene_situation', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8d67c6b880b3361f6d76c612fef15c01', '402883b9818a674501818a68b93a002a', 'accomplish_volume', '完单容积', 'accomplish_volume', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8dd5ec59171cbce4468871dc90c11eff', '402883b9818a674501818a68b89b0029', 'team', '施工队伍', 'team', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8dfe0d7ca6b2bf61c2583770e3e90455', '402883b9818a674501818a6749340003', 'sex', '性别', 'sex', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8e1ec81b31ae1ac0385ff7e926c7e8c7', '402883b9818a674501818a674a5f0005', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8e305285acb14209307fa19f2dee61c4', '402883b9818a674501818a68b73d0027', 'receipt_no', '入库单号', 'receipt_no', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8e7f3bf2b063b43c03d010a4e5ec52b8', '80a3ecde0362417380eb00701b917ccb', 'name', '员工姓名', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('8ed0eeb2d1bfc193510b0fbb1382eea0', '402883b9818a674501818a68b7f10028', 'company_name', '施工单位名称', 'company_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8f834e0157b4e6a8890907ea22b06b7d', '402883b9818a674501818a68b89b0029', 'send_orders_state', '0未派单/1已派单', 'send_orders_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8fbe486465ef4843a837581503530ec1', '402883b9818a674501818a68ab220013', 'is_page', '是否作为分页,0:不分页，1:分页', 'is_page', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9016d40e09ef1c23a9ec603eeaa042da', '402883b9818a674501818a68ae140018', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('90853a5d665a86cf67708fccc2b0e7a3', '402883b9818a674501818a68b02f001b', 'code', '编码', 'code', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('908be61efa647b851ac796493998f85e', '402883b9818a674501818a68b68d0026', 'backup1', '结算状态0.未结算1.已结算', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 60, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('913d5494feadb5e88b985a8c71564c0b', '402883b9818a674501818a68a75a000d', 'update_by', '修改人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('91772606db5bb29abd8523b013b7d8ac', '402883b9818a674501818a68b159001d', 'recycling_specifications', '电缆规格 [ 实际回收规格（字典） + 材质（字典） ]', 'recycling_specifications', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('92086a6a257cb6afd425d2b53193b5f1', '402883b9818a674501818a68b73d0027', 'plan_type', '计划类型(字典 备品\\临措)', 'plan_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('92fd5118dc80991fe06741aa29bea8d8', '402883b9818a674501818a68b55e0024', 'name', '物料名称', 'name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9322ef72d5516618adade5cd79103f6c', '402883b9818a674501818a684cc0000a', 'id', '仓库表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('936e107e4e55e83caf7f3099d824b523', '402883b9818a674501818a68ac690015', 'param_name', '参数字段', 'param_name', 0, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('93a4a23f2aecd82d3b70e0fecbb05d87', '402883b9818a674501818a68b55e0024', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9404ea48a421dbe5e2bdb98ac8454584', '402883b9818a674501818a68abd20014', 'widget_width', '控件宽度', 'widget_width', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('942b3fa83e0ef5a549ae16c8483b4129', '402883b9818a674501818a68b73d0027', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('949faf3995a9d99c93fdc61009335515', '402883b9818a674501818a68b68d0026', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 56, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('94fb20b9e47bb4f7d46afeb71ebc1710', '402883b9818a674501818a68b73d0027', 'retired_asset_no', '退役设备资产编号', 'retired_asset_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9576914d548b1d60d18298e79e04cd83', '402883b9818a674501818a684d78000b', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('959ffb02e6e7a10f1d9ec7d95a6433dd', '402883b9818a674501818a684d78000b', 'wx_id', '微信openid', 'wx_id', 0, 0, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('963901705081b8e349daaec95629c3d9', '402883b9818a674501818a68b93a002a', 'scene_abnormal_photos', '现场异常照片路径(路径用逗号隔开)', 'scene_abnormal_photos', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9668faf5dbf8be1b1333e50a5882e62d', '402883b9818a674501818a68ae140018', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('96ee6852fa4427e5019646809605a82e', '402883b9818a674501818a674b8b0007', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('97f847406a1009da230b6ea86d4b5045', '402883b9818a674501818a68b68d0026', 'num_receipts', '交接单数量(计划出/入)', 'num_receipts', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9959b49eaba3dae8466abae68fb38b3b', '402883b9818a674501818a68b159001d', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9967b16142ceabb8354100d02d60dbe0', '402883b9818a674501818a68b55e0024', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('99fad09c85ad62fbb36663c9b3c3aa08', '402883b9818a674501818a68b7f10028', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 32, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9a484bbbd810c940f5ce1bc4d69436cf', '402883b9818a674501818a68af72001a', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9a78b020da9c0fd9b7a61d04b3e353a1', '402883b9818a674501818a674d210009', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9a8519332200e5b6f3c21f09af90977a', '402883b9818a674501818a6748860002', 'storage_location_volume', '库位容积', 'storage_location_volume', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9ac4080944b72be9dda8d08030724486', '402883b9818a674501818a68ab220013', 'java_type', 'java类数据集  类型（spring:springkey,class:java类名）', 'java_type', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9b16b7969d49d686222ce73d601a08e5', '402883b9818a674501818a68b0bf001c', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9bdbe3456d951a6a4b09c52830a97f93', '402883b9818a674501818a68b93a002a', 'accomplish_weight_unit', '完单重量单位', 'accomplish_weight_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9c02c221a70d50a2769084f2277be06a', '402883b9818a674501818a68af72001a', 'sex', '性别', 'sex', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9c65944ca11ec9597af82eaa580fec86', '402883b9818a674501818a68b159001d', 'project_no', '项目编号', 'project_no', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9cb07e01927d892f69e37fa21e3f61e8', '402883b9818a674501818a68a8c6000f', 'dict_code', '字典编码', 'dict_code', 0, 0, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9ce5ca0e5f1b07b3ce1190d451f8f309', '402883b9818a674501818a68b93a002a', 'recycling_situation', '回收情况', 'recycling_situation', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9cf83f2a2e3351d04047b658eb71a4c2', '402883b9818a674501818a68ae140018', 'annotation', '说明', 'annotation', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9d859647d6b094cddb8acb85838bea94', '402883b9818a674501818a68acfb0016', 'link_chart_id', '联动图表的ID', 'link_chart_id', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9d8bb1d9639f365ce64a23edc5628372', '402883b9818a674501818a68b43a0022', 'term_of_validity', '有效期(0:永久有效，1:1天，2:7天)', 'term_of_validity', 0, 1, 'string', 1, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9dc966aaceba6c531642a569be96b914', '402883b9818a674501818a68b89b0029', 'cable_name', '电缆名称', 'cable_name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9de26246f973125e7f280660e9590b64', '402883b9818a674501818a68b89b0029', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9dffc1d5ac731c491293ebb9866f0e11', '402883b9818a674501818a68ae140018', 'construction_team', '施工队', 'construction_team', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9e27de47ac5aca238b0785d6d1607c3c', '402883b9818a674501818a68b89b0029', 'already_deliver_storage', '已入库数', 'already_deliver_storage', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9e8f617004b592583188cf0826ee23af', '402883b9818a674501818a68ae140018', 'accomplish_num_unit', '完单数量单位（字典）', 'accomplish_num_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9e9f9f40adb3058d69ee419bb0f6cad2', '402883b9818a674501818a68b73d0027', 'model', '型号', 'model', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9eb6e9ab4229fee0cd74f705f202bcdb', '402883b9818a674501818a68b7f10028', 'pro_theorder_no', '采购订单号', 'pro_theorder_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9f9e1c092daffd2e23194042861f1ffe', '402883b9818a674501818a6745900000', 'backup1', '派单数量', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9fb6b9a405921664a282b2dad1d7bbb7', '402883b9818a674501818a68b7f10028', 'lineitem_no', '行项目号', 'lineitem_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9fe09063d0a7c12a995f301c87212215', '402883b9818a674501818a674aef0006', 'descc', '描述', 'descc', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a0eaa7be22b13abe284e077c37c9e2ab', '402883b9818a674501818a68b55e0024', 'material_volume', '物料容积', 'material_volume', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a19ae9717b40e3d2d57a482fe899e2f7', '92eee2c8fee34ebaa57dc957190466dd', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('a1d4d1c9aaa48ba376610624ec8ed83d', '402883b9818a674501818a674d210009', 'license', '车牌号码(唯一)', 'license', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a269f6ca6f0368b46842c0be07ce86e8', '402883b9818a674501818a68b73d0027', 'equipment_no', '设备号', 'equipment_no', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a29ed6a616a400f2f533f86a3e06972b', '402883b9818a674501818a68ab220013', 'db_ch_name', '数据集名字', 'db_ch_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a2ba6bd6d4f44b48653ebb2ce8f9c414', '402883b9818a674501818a68b5f90025', 'update_by', '更新人登录名称', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a34de889c98e6ed27459bea8a67c6351', '402883b9818a674501818a68b159001d', 'backup1', '计划id', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a3a6183f5996e0d32ea303012220e76d', '402883b9818a674501818a68b7f10028', 'start_time', '要求开始送货日期', 'start_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a3b7ad2659dbbb5721260bf00801a676', '402883b9818a674501818a674d210009', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a3b8c4b9e66f17db48de5e0d67b4abbe', '402883b9818a674501818a68ab220013', 'db_type', '数据源类型', 'db_type', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a3dbae303a5cfefb0fa195c2caa5ba2b', '402883b9818a674501818a68ab220013', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a40d6c85947bf3d3ac7aec893ea0d9cf', '402883b9818a674501818a68aed20019', 'key_word', '关键词', 'key_word', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a4c915ec7cf4dc1bd097e68227a1db69', '402883b9818a674501818a68a827000e', 'insurance_evaluation_fee', '保险公估费', 'insurance_evaluation_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a4e7b0ad830a5b19409402df1b093201', '402883b9818a674501818a6749340003', 'update_by', '更新人登录名称', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a5ddfff64240f1a44bd60dea3b33b8f9', '402883b9818a674501818a68b89b0029', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a62796e298308e985612040744bc0f62', '402883b9818a674501818a68b7f10028', 'backup1', '结算状态0.未结算1.已结算', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 36, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a6a4dc092611a906487f7ba15104128a', '402883b9818a674501818a68b283001f', 'telphone', '电话1', 'telphone', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a7061dbdd14f30a5f731e5e4ea0fb5ff', '402883b9818a674501818a68b3a40021', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a74f0a908970418723006a3906e3cdbb', '402883b9818a674501818a68a8c6000f', 'description', '描述', 'description', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a78abfc3966a6171719613407174b920', '402883b9818a674501818a68abd20014', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a809da100469eba2d303fb756ee99b51', '402883b9818a674501818a68ae140018', 'plan_type', '计划类型（区分计划1、2、3、4表）', 'plan_type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a84f5caf234154af023581c10cfb0b25', '402883b9818a674501818a68a9590010', 'create_by', 'createBy', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a8887bb1383a9a27dfdb9ca4367420bf', '402883b9818a674501818a68b02f001b', 'date', '日期', 'date', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a899ffc886dcbfbb7e70d748f4b3b70d', '402883b9818a674501818a68abd20014', 'dict_code', '字典编码支持从表中取数据', 'dict_code', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a9534264da1bd4e19f8b6925ccfd8a77', '402883b9818a674501818a6747790001', 'type_id', '车辆号码/员工id（根据distribution_type变化）', 'type_id', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a9dab9e9c71811421a2b93ddc0f825f3', '402883b9818a674501818a68b0bf001c', 'update_by', '更新人 ', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a9db29bf491eb7c5501a6ca268befa74', '402883b9818a674501818a68b159001d', 'warehouse_id', '仓库id', 'warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('aa718877a5670a489c164e2674e032b9', '80a3ecde0362417380eb00701b917ccb', 'address', '家庭住址', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'pca', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 15, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('aafac3ed92249c95c51c23f4dbf82879', '402883b9818a674501818a68a9f40011', 'type', '类型', 'type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab384bdc6b6e8d392a9b6eb3d6bdde6c', '402883b9818a674501818a68b89b0029', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 27, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab433c1cd3f6d944720c56d4b65f5b9d', '402883b9818a674501818a684cc0000a', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab515c0b1eb7d5dd8446ce9beeea633e', '80a3ecde0362417380eb00701b917ccb', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'sel_depart', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('abae7504cf7783fe4e2cd6274fa83141', '402883b9818a674501818a684cc0000a', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('abcf146ad1807d7dd4568448bf38fd05', '402883b9818a674501818a68b3180020', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ac3e6a5585ab15f56103de4f9dae846f', '402883b9818a674501818a68ac690015', 'update_by', '更新人登录名称', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ac44cdc5c30e00a00356b73ce43d6cba', '402883b9818a674501818a68b7f10028', 'main_contractor', '总包单位', 'main_contractor', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ac648c3cedf8cce12a902a30c3807b44', '402883b9818a674501818a68b93a002a', 'whether_complete', '是否完成', 'whether_complete', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ad2efd359f0f6d5d76b024aea27d0ea1', '402883b9818a674501818a68b0bf001c', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ad88a07cb436bd7d247c1ad7bd318608', '402883b9818a674501818a68aa8b0012', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('addda167d429c9b8820eda1acf17b696', '92eee2c8fee34ebaa57dc957190466dd', 'descr', '描述', NULL, 0, 1, 'Text', 0, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2022-06-22 17:04:13', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('ae40a53defa7470de584ddb7385af66e', '402883b9818a674501818a68b73d0027', 'project_type', '项目分类', 'project_type', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ae6345a69b69b07d44d555a6b95c8c6d', '402883b9818a674501818a68b89b0029', 'construc', '施工班组', 'construc', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('af2761de098c98549b57a381a761be0f', '402883b9818a674501818a68b73d0027', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('af58cd992a71273ae0848760638f557d', '402883b9818a674501818a68b4c90023', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('af9ce62fcb26ecb1cf5bdec89503abbb', '402883b9818a674501818a68aed20019', 'sex', '性别 {男:1,女:2}', 'sex', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b0074bdb35fbb18253887aeabde22b7c', '402883b9818a674501818a68a9f40011', 'del_flag', '删除标识0-正常,1-已删除', 'del_flag', 0, 1, 'int', 3, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b01255cae179c0fc6ea0d5a039191b93', '402883b9818a674501818a68ae140018', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 31, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b0503776fb763ea96589fcef6e9525e5', '402883b9818a674501818a674aef0006', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b09fe4145c0dbaf7ff169256ea85de1a', '402883b9818a674501818a68ab220013', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b0ddc64fe051d83e582acc0f39d3a5b4', '402883b9818a674501818a68ae140018', 'texture', '材质（定死，铜，铝）', 'texture', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b187365844d1a9bed080ea19b715d65c', '402883b9818a674501818a68b68d0026', 'business_type', '业务类型', 'business_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b1bcecb2350377765ca676c27952186b', '402883b9818a674501818a674d210009', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b1bd58224603da3e37c5a9c8cb9898f6', '402883b9818a674501818a6748860002', 'backup1', '库位二维码图片', 'backup1', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b200a686002f2ff127332bbd9a38783d', '402883b9818a674501818a68ac690015', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b233d641bab23d8769402b5ccf4915cf', '402883b9818a674501818a68ac690015', 'order_num', '排序', 'order_num', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b2d753a67dce4d79b07759c4ef970bf0', '402883b9818a674501818a68ab220013', 'jimu_report_id', '主键字段', 'jimu_report_id', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b2f5a5ec8c8f096b0a6093d5a78300f3', '402883b9818a674501818a68b93a002a', 'scene_situation', '情况(字典0正常 1异常)', 'scene_situation', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b301ff931b7be219550205e10d44b0d2', '402883b9818a674501818a68aed20019', 'name', '姓名', 'name', 0, 1, 'string', 30, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b368213a7dd5a636ba83d9bd48e9dcb5', '402883b9818a674501818a68b68d0026', 'the_contact', '现场联系', 'the_contact', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 42, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b3c906080fb953beb457a733cea554cb', '402883b9818a674501818a68a9590010', 'dict_id', '字典id', 'dict_id', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b3fe8ab8bf4a91b22a589dca0b62ffe1', '402883b9818a674501818a68ab220013', 'java_value', 'java类数据源  数值（bean key/java类名）', 'java_value', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b425051a719a9edc5032c84f34ff9a6e', '402883b9818a674501818a68b1ec001e', 'other_income', '其他收入', 'other_income', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b4d7f2435d6b0726446dededb23b0daf', '402883b9818a674501818a68b283001f', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b5393040c544136b4a3583aa10691a16', '402883b9818a674501818a68aa8b0012', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b58602dd5a2dd9f7c8900a3c97f7bf72', '402883b9818a674501818a68ad8a0017', 'type', '车辆类型', 'type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b5fba7e29dca2589ab75e9800287679e', '402883b9818a674501818a6749cd0004', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b69a96fe0d4d7c19c4ce22c22ebcbb07', '402883b9818a674501818a6748860002', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b8b5977b30136c59df64188f9b57665c', '402883b9818a674501818a68b7f10028', 'm_phone', '联系方式', 'm_phone', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b8c7d793857ae803ab14ae9cd2f06e65', '402883b9818a674501818a68ab220013', 'api_convert', 'api转换器', 'api_convert', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b9095771616b76430df75f41502aedf7', '402883b9818a674501818a68b7f10028', 'c_phone', '联系方式', 'c_phone', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b9fd130833c10967d6d5b94cae4cd630', '402883b9818a674501818a6749340003', 'file_kk', '附件', 'file_kk', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ba2ad25d9ce5ac6afc04481a1b39d01d', '402883b9818a674501818a68a827000e', 'risk_consulting_fee', '风险咨询费', 'risk_consulting_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ba4a0565d4e2843898846b6664cae39d', '402883b9818a674501818a674aef0006', 'product_name', '产品名字', 'product_name', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bac373fc4ac335565175ca0aa5b39e88', '402883b9818a674501818a6745900000', 'operator_schema', '操作模式（字典：0.出库，1.入库）', 'operator_schema', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bb17e1b4b9e1f9e397f14ea4b64910f6', '402883b9818a674501818a68ae140018', 'deliver_time', '入库日期', 'deliver_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 26, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bb2cab5125fe8d2f697d05cf37b6e63c', '402883b9818a674501818a6745900000', 'end_warehouse_id', '终点仓库id', 'end_warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bb41972997c3c5f0d414974ec8a36ca9', '402883b9818a674501818a68b68d0026', 'deliver_time', '入库日期', 'deliver_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bbca8a6b51605bf3066da8ae2c99c787', '402883b9818a674501818a68b89b0029', 'voltage_grade', '电压等级', 'voltage_grade', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc164b2d08c23b7298007945a2a51254', '402883b9818a674501818a684e13000c', 'raw_material_unit', '物料单位ID', 'raw_material_unit', 0, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc596deb8652ffad683c90b91422d2b6', '402883b9818a674501818a674d210009', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc88b9bc30f3b774969e21c0530bb226', '402883b9818a674501818a68b68d0026', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 61, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bceda7230886303aa2e09f837fb2dd29', '402883b9818a674501818a6745900000', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bd4128b008314e10b146a0713bd17edd', '402883b9818a674501818a68b283001f', 'order_id', '外键', 'order_id', 0, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('be173b7421b4e2390864ae4ca72edb1d', '402883b9818a674501818a684e13000c', 'zhuanyi_shuliang', '转移数量', 'zhuanyi_shuliang', 0, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('be2d05855e813a4021fd75b22cb44d3c', '402883b9818a674501818a68b3a40021', 'name', '地图编码', 'name', 0, 1, 'string', 125, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf0b7b59b7d11b8d249ae26ed099a64d', '402883b9818a674501818a68b68d0026', 'delete_logo', '删除标识', 'delete_logo', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 40, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf2d51a8a3771d56fcea0518fab6c556', '402883b9818a674501818a68ab220013', 'json_data', 'json数据，直接解析json内容', 'json_data', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf3f24acfeb4b99c3a4a24d555560fe5', '402883b9818a674501818a68b68d0026', 'plan_type', '0.配变电1.其他、2.电缆1、3.线路 导入界面及新增界面下拉 写死', 'plan_type', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf4249d864163cec30c9e3c072d3d0dc', '402883b9818a674501818a6748860002', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf6d3311f47ded0728d06060486579b5', '402883b9818a674501818a6748860002', 'storage_location_name', '库位名称', 'storage_location_name', 0, 1, 'string', 30, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c04b052b50c5232a62f83fd19f2da652', '402883b9818a674501818a68b4c90023', 'id', 'ID', 'id', 1, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c08a9aeaef41535bb0ce1df0fe954281', '402883b9818a674501818a6749340003', 'descc', '描述', 'descc', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c0c1989b7fae8c545f04fd7a9e18af47', '402883b9818a674501818a68ad8a0017', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c0c9287f35fa666a3ba14273a706269a', '402883b9818a674501818a6747790001', 'distribution_type', '0.车、1.人', 'distribution_type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c1825c66550c224785511c44fb4ad4c8', '402883b9818a674501818a68b3a40021', 'sys_org_code', '所属部门', 'sys_org_code', 0, 1, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c1d1d8f4039587326a12df34c8203df4', '402883b9818a674501818a674d210009', 'id', '车辆表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c200e6179544fc74382b5af5c0fa92ed', '402883b9818a674501818a68b7f10028', 'already_receiving_storage', '已出库数', 'already_receiving_storage', 0, 1, 'BigDecimal', 4, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 29, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c2b6eb4e2a743cf1179b5a4ab8e76b57', '402883b9818a674501818a68b7f10028', 'num', '需求数量', 'num', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c30d3452509febfd05ce0892da5ada15', '402883b9818a674501818a68b73d0027', 'site', '站点（工程名称）', 'site', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c35bfb215d38a54c7654a62d8a7d4eae', '402883b9818a674501818a684e13000c', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c372186ef301c1f08fc8604560c1dd25', '402883b9818a674501818a68ab220013', 'update_by', '更新人登录名称', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c37831e4acd252cc81a2c484af5d4f51', '402883b9818a674501818a68abd20014', 'jimu_report_db_id', '数据源ID', 'jimu_report_db_id', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c3992580ae54ee7df518c46448462a6d', '402883b9818a674501818a68b89b0029', 'already_receiving_storage', '已出库数', 'already_receiving_storage', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c3ffd48a72bdc21bd52ecd01edf3f416', '402883b9818a674501818a68b0bf001c', 'insurance_policy', '商业险保单号', 'insurance_policy', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c50949e4206ab3be1bc98860e4903192', '402883b9818a674501818a68b3180020', 'update_by', '修改人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c555760308549d490216ee4ba3a00df0', '402883b9818a674501818a6749340003', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c634fb11a74f9c1ecea88ed9b82259cc', '402883b9818a674501818a6747790001', 'task_time', '任务时间 修改派单信息需要更新任务时间', 'task_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c63bbab69953752129abd79355c1e01d', '402883b9818a674501818a68ac690015', 'create_by', '创建人登录名称', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c673a876e6afd5b237b5735b9ba0ce3b', '402883b9818a674501818a68b93a002a', 'state', '完单状态(字典0未完单 1已完单)', 'state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c691711a67fdc243a8f4a0bcd514bf0e', '402883b9818a674501818a68b7f10028', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 40, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c799c83f16029acd5bfa19be341e6cc1', '402883b9818a674501818a68a8c6000f', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c7c9a19c89b41a05890b3a959c3bf3d5', '402883b9818a674501818a674a5f0005', 'order_date', '下单时间', 'order_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c7fde2a42b4be4caa584ca8ace716d4b', '402883b9818a674501818a68b159001d', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c81919e072528aa1e99b7068f3c16709', '402883b9818a674501818a68b73d0027', 'the_location', '库存地点', 'the_location', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c93bacf610ad25fef5bee27c488ea569', '402883b9818a674501818a68b7f10028', 'date_of_arrival', '具体到货日期', 'date_of_arrival', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c9b3eb6f3880abde20a6396492f06deb', '402883b9818a674501818a68b93a002a', 'receiving_time', '出库日期', 'receiving_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 25, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ca4d7b4cf3301f96484c2488c2064d3b', '402883b9818a674501818a6745900000', 'backup4', '联系电话', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ca585e76869d8bd20e6c0ef68babbd17', '402883b9818a674501818a68abd20014', 'field_text', '字段文本', 'field_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cb3e6e4618841f745c70962e3605c40e', '402883b9818a674501818a68b68d0026', 'the_location_text', '库存点描述', 'the_location_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cb3f0c9e547d8d4ef03e677b1fb5e68f', '402883b9818a674501818a68af72001a', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cc017c4fe407697a544448de47e47980', '402883b9818a674501818a68a9590010', 'update_by', 'updateBy', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cc0be8aca04297779566cbb02f429570', '402883b9818a674501818a6747790001', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cc799ad87b7a37c4196e29c2d9f92332', '402883b9818a674501818a68ae140018', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 34, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cc7d7a559980e363edcf982412adf1aa', '402883b9818a674501818a68b68d0026', 'warehouse_contact', '仓库联系人', 'warehouse_contact', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 49, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ccf4834ae28241b32dbc5f767827090e', '402883b9818a674501818a68b73d0027', 'project_no', '实施工程项目编号（工程账号）', 'project_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cd432c64dea41fec7d4392fc6e9cde78', '402883b9818a674501818a68b7f10028', 'supplier', '供应商', 'supplier', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cdf420c3e3b474155127810790047138', '402883b9818a674501818a68abd20014', 'create_by', '创建人登录名称', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ce67b8f155971ae7db5782bddaab3e61', '402883b9818a674501818a68b93a002a', 'material_id', '物料id', 'material_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ced9297b6c9bd8c352fed1cf7e4f53fd', '402883b9818a674501818a68b89b0029', 'full', '专职', 'full', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf04e712ec9b9108e0e194c3f96b681f', '402883b9818a674501818a68b68d0026', 'delivery_receive_time', '入库交接单接收日期', 'delivery_receive_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 45, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf132ed646e0cb364c93ff099b10f592', '402883b9818a674501818a68ae140018', 'accomplish_weight', '完单重量', 'accomplish_weight', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf3ed537d59aa30bd7fa83b30a744771', '402883b9818a674501818a68b68d0026', 'design_num', '设计确认拆除数量', 'design_num', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 41, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf45237f44e7c19fecff9c964e8f6d47', '402883b9818a674501818a68ad8a0017', 'remake', '备注', 'remake', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cfcc5aaac573cbd8d14cea17ca1fe02b', '402883b9818a674501818a68aa8b0012', 'remark', '备注', 'remark', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d01a0fc38467faccd5a3daeed9987781', '402883b9818a674501818a68b68d0026', 'waste_material_text', '废旧物料描述', 'waste_material_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d060290b0f7ca54c0a772cf8c5676fc6', '402883b9818a674501818a674b8b0007', 'qj_days', '请假天数', 'qj_days', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d074e767f149ae6eff2a45ae3c94fd98', '402883b9818a674501818a6749340003', 'name', '用户名', 'name', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d0a2fb79878ce545acf82022f06dbaec', '402883b9818a674501818a6747790001', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d0e753615bfe104372b4ec03c848b5d9', '402883b9818a674501818a68ae140018', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d1446b440e5e7d695ba4f04ec01c83e8', '402883b9818a674501818a68b5f90025', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d1aaae22e10de47f3c8cb92b38812f5f', '402883b9818a674501818a68b55e0024', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d2667444ac0ea65ab110c1532b12e0b5', '402883b9818a674501818a68b7f10028', 'construction_organization', '施工单位名称(去掉不用)', 'construction_organization', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d2765cc21a897d66ff5761ebc31f17cb', '402883b9818a674501818a68aed20019', 'sys_org_code', '所属部门编码', 'sys_org_code', 0, 1, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d327004d9841aa025c9f6d6148ddb5d3', '402883b9818a674501818a68b0bf001c', 'strong_date_end', '交强险结束日期', 'strong_date_end', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d354246bb885c5cc60b46b4f5945d592', '402883b9818a674501818a674a5f0005', 'order_code', '订单编码', 'order_code', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d38a43504510a965a56006f1c50dbd85', '80a3ecde0362417380eb00701b917ccb', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('d412d098b52bca3f8eb96d6e6deb9f2b', '402883b9818a674501818a684cc0000a', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d42d76d9b982ef12bed413698e0c3ddc', '402883b9818a674501818a68b68d0026', 'deliver_num', '实际入库数量', 'deliver_num', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d4599df3053cee5c92f41def33577d25', '402883b9818a674501818a6749cd0004', 'province', '省份', 'province', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d45fe9bce825986eb4afc8e7f219056b', '402883b9818a674501818a68b5f90025', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d4daa7ff3706584158ee23f0cf8fd0e7', '402883b9818a674501818a68b73d0027', 'equipment_name', '设备名', 'equipment_name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d4ef03976c30cc51ca395f406b054f3c', '80a3ecde0362417380eb00701b917ccb', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('d5dc8a63ba197160f6576754c7bae648', '402883b9818a674501818a68b55e0024', 'ations', '规格型号', 'ations', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d5ff012b7dbb4d97ee5e1ed5e48dda43', '402883b9818a674501818a68a827000e', 'bidding_consulting_fee', '投标咨询费', 'bidding_consulting_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d716474785855535d34a135699a55051', '402883b9818a674501818a6745900000', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d7806ff9fe9be42080878faaaccfc9d9', '402883b9818a674501818a68b0bf001c', 'strong_date_begin', '交强险开始日期', 'strong_date_begin', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d7b3dab3d054dcd62eede1095e2b94fe', '402883b9818a674501818a68b4c90023', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d8cea74bbcb368a9b691d866cdb096d3', '402883b9818a674501818a68b68d0026', 'deliver_voucher', '入库凭证', 'deliver_voucher', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d8d01c2d59e21e67789830fdf215437c', '402883b9818a674501818a68b93a002a', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 32, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d8d4e1e75bfe492ee3dc8e2f0e3d5364', '402883b9818a674501818a68b68d0026', 'real_id', '实物ID', 'real_id', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 33, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d9b8ed6ff8a565dd684b8e2db427f966', '402883b9818a674501818a6748860002', 'update_by', '更新人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d9efec1366ce1976108452a0a324e334', '402883b9818a674501818a674b8b0007', 'id', 'id', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('da23ae082bfac7f1db4bd7514462cf64', '402883b9818a674501818a68b159001d', 'id', '库存表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('da5ff26b97e6c3a706e5434a50d4fe19', '402883b9818a674501818a68ab220013', 'db_source_type', '数据库类型 MYSQL ORACLE SQLSERVER', 'db_source_type', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('daec532618c4d5839b91f2e06a44eebe', '402883b9818a674501818a674a5f0005', 'descc', '描述', 'descc', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dc347811ce45465a715f87b9912a474a', '402883b9818a674501818a674c240008', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dc7cf54963ecae48e8147964c16b8331', '402883b9818a674501818a68b73d0027', 'disposal_way', '处置方式', 'disposal_way', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dd0425916d17a2dbafcca3bf775eda79', '402883b9818a674501818a68b73d0027', 'send_orders_state', '0未派单/1已派单', 'send_orders_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dd435c65cea18989531783acf6993f17', '402883b9818a674501818a68aed20019', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dd48412bcd480240578d2eddc2ea06f2', '402883b9818a674501818a68b7f10028', 'id', '计划表3id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dd6a11d1ce916bc33904c59034fb47dd', '402883b9818a674501818a68b89b0029', 'team_contact', '队伍联系人及电话', 'team_contact', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ddabdfaece3eefe325c08e557d351182', '402883b9818a674501818a68ae140018', 'material_id', '物料id', 'material_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('de414db4615e780cddb736ed6367e050', '402883b9818a674501818a674a5f0005', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('de522fc249951c344d75b3daf73e2e90', '402883b9818a674501818a68a9f40011', 'api_method', '请求方法0-get,1-post', 'api_method', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dec2f43b299282fdfa34be5d156cfc53', '402883b9818a674501818a6745900000', 'plan_type', '区分计划1/2/3/4表', 'plan_type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('df0efdd7376f3841854a9384fc519e0f', '402883b9818a674501818a684cc0000a', 'type', '类型(字典 1自家仓库 2电力公司仓库..)', 'type', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('df101def67394cb74a7ed12794c1f2ab', '402883b9818a674501818a68b68d0026', 'project_phone', '项目联系电话', 'project_phone', 0, 1, 'string', 11, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 47, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('df55a328db0d621f4433b6b545339279', '402883b9818a674501818a68b7f10028', 'address', '送货地点', 'address', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dfe0e5a73cba72a7c46315f91e1c80a4', '402883b9818a674501818a68b68d0026', 'project_no', '项目编码(入库的时候需要把项目编码带到仓库)', 'project_no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e03c4c20236bae8ae420b3bedd08e25c', '402883b9818a674501818a68b4c90023', 'reason', '请假原因', 'reason', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e082cc29affed909137c2bd89f4e13fd', '402883b9818a674501818a684cc0000a', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e0b62d403f95f8f7fe3d4bceb61b9b45', '402883b9818a674501818a674c240008', 'sys_org_code', '所属部门', 'sys_org_code', 0, 1, 'string', 64, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e0de2c66179977bf1b581385cd89a466', '402883b9818a674501818a6747790001', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e22c3a7070f6126851997e4a9ff33c46', '402883b9818a674501818a68b73d0027', 'backup1', '结算状态0.未结算1.已结算', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 30, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e23c26fbe1c677dea588ce62061ea4b5', '402883b9818a674501818a68b283001f', 'id', '主键', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e3545190cb0bc195029494876daa70f5', '402883b9818a674501818a674c240008', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e3852bc7c78663c1859a4e4f08fa701c', '402883b9818a674501818a68b7f10028', 'already_deliver_storage', '已入库数', 'already_deliver_storage', 0, 1, 'BigDecimal', 4, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e41e17e256b57f5a6e90f022ad4345d1', '402883b9818a674501818a68b73d0027', 'capacity', '容量', 'capacity', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e478ab32ec0458fbbaa51eb02bda3c7c', '402883b9818a674501818a68abd20014', 'field_name', '字段名', 'field_name', 0, 1, 'string', 80, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e4c305f9416167470b6b00e41d324008', '402883b9818a674501818a68b73d0027', 'already_receiving_storage', '已出库数', 'already_receiving_storage', 0, 1, 'BigDecimal', 4, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 23, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e52e55e1110cfd684feb19796c90beb7', '402883b9818a674501818a68aed20019', 'salary_money', '工资', 'salary_money', 0, 1, 'BigDecimal', 10, 3, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e6708c00165ad321209f0ad4270075dd', '402883b9818a674501818a6748860002', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e69ec9763cea6e9fe67cb06ba0589008', '402883b9818a674501818a68ae140018', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 33, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e7bde8670588bc18e4d7f4916dbcec2c', '402883b9818a674501818a68ae140018', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 32, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e7fe9a857457fe3e710e85bc12a5fc27', '402883b9818a674501818a68b93a002a', 'plan_id', '计划id', 'plan_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e80a147fba3ba03efa57a9584a345683', '402883b9818a674501818a68a9f40011', 'name', '名称', 'name', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e8f1910c53469d17b0c9212def5b70a3', '402883b9818a674501818a68aed20019', 'update_by', '修改人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e8f8a2aebfb230d54d66b9c708285f06', '80a3ecde0362417380eb00701b917ccb', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2022-06-22 16:30:08', '2022-06-22 16:23:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('e9f8254d88f925487759d063b0ffd87c', '402883b9818a674501818a68b0bf001c', 'strong_policy', '交强险保单号', 'strong_policy', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ea2fbea9f5aa377d9e5f43972f9f1ba3', '402883b9818a674501818a684e13000c', 'create_time', '创建时间', 'create_time', 0, 0, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('eac2d27022369771b732c82213dde33b', '402883b9818a674501818a68b68d0026', 'the_location', '库存地点', 'the_location', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('eaec6ae92d2affe3bcf8256cf97e2ea2', '402883b9818a674501818a68aed20019', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('eaf2752a8e9e2250b9244c185096e5eb', '402883b9818a674501818a68b73d0027', 'asset_status', 'ERP现资产状态', 'asset_status', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('eb72df057b0cbb79b12b98689fa932c6', '402883b9818a674501818a674d210009', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('eba075190d1304c3324a26ecad8a2926', '402883b9818a674501818a68b02f001b', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ebde99c08971a09f1692a6504290fa65', '402883b9818a674501818a68b7f10028', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 38, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ebf429a70ae43bf75369936985eab247', '402883b9818a674501818a68b3180020', 'ctype', '订单类型', 'ctype', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ebfa605d8fecf7244b6747c7994cbc19', '402883b9818a674501818a684cc0000a', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ec0d15c5758091b0d194df9ce021655c', '402883b9818a674501818a68aed20019', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 13, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ec857efcc566766d21648dc65fec4dd2', '402883b9818a674501818a68ae140018', 'accomplish_num', '完单数量（电缆长度）', 'accomplish_num', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ecc65e71b62ba219d6a9a9a0b23828f0', '402883b9818a674501818a68b93a002a', 'phone', '电话', 'phone', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ed11af5dc34194bf76a8360d4149ea36', '402883b9818a674501818a68a827000e', 'evaluation_fee', '承保公估评估费', 'evaluation_fee', 0, 1, 'BigDecimal', 18, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('edb2d19a442700f240b74106ccc15fac', '402883b9818a674501818a68b283001f', 'update_by', '修改人', 'update_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('edd2d598a384be3a4e6ff7bb18464052', '402883b9818a674501818a68b89b0029', 'eng_name', '工程名称', 'eng_name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ede742217925051c0ecb96e4cc411a58', '402883b9818a674501818a68b1ec001e', 'id', 'id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('edfdbbffb75831397c45d1aa6b052da6', '402883b9818a674501818a68b68d0026', 'raw_material_code', '原物料编码(从字典来)', 'raw_material_code', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 19, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ee82012895b20a6807aa4d2fe7f68bcf', '402883b9818a674501818a68ae140018', 'receipt_photos', '回单照片路径(路径用逗号隔开)', 'receipt_photos', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f02b528858db62816022d0444c09f0b8', '402883b9818a674501818a68b55e0024', 'backup3', 'backup3', 'backup3', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f03aba1c04034f59c255bb0c82436bf8', '402883b9818a674501818a6748860002', 'the_current_volume', '当前容积', 'the_current_volume', 0, 1, 'BigDecimal', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f06684816eda2ec284ddbe7fa524e74f', '402883b9818a674501818a68b43a0022', 'last_update_time', '最后更新时间', 'last_update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f08c7c5177feef34185053c0b66adab9', '402883b9818a674501818a684cc0000a', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1583f72211c9d41f0e92fb90d733ed6', '402883b9818a674501818a68af72001a', 'code', '编码', 'code', 0, 1, 'string', 200, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1b98bb3c996cf144f66255ae0fbbc6c', '402883b9818a674501818a674c240008', 'has_child', '是否有子节点', 'has_child', 0, 1, 'string', 3, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2022-06-22 15:53:55', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1caf0e7e02c900ad552502e02a4ebd6', '402883b9818a674501818a68b7f10028', 'feedback', '物资调配中心反馈意见(物资供应公司填写)', 'feedback', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 22, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1e24ed3531fe1dcd48b6fd151a2f887', '402883b9818a674501818a68a9f40011', 'code', '编码', 'code', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f28fd1df32e7fe6912e0bf6a019abfbd', '402883b9818a674501818a684d78000b', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f2ac3c9b4b6d8039effc708b27ad1998', '402883b9818a674501818a68acfb0016', 'id', '主键id', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f34efc46f17de70f1405d8e0d7262120', '402883b9818a674501818a68b283001f', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f365444b4e7a1ef82ec9acea5714db97', '402883b9818a674501818a684d78000b', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f3847ebaf739149463f24c368a79fde3', '402883b9818a674501818a68b93a002a', 'accomplish_weight', '完单重量', 'accomplish_weight', 0, 1, 'double', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f3da0b9911fd01ab7958c5776f7ffa05', '402883b9818a674501818a68b73d0027', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 33, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f40faa818e875e582899b067b8db0f8e', '402883b9818a674501818a68b0bf001c', 'backup5', 'backup5', 'backup5', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f5262b2ca84d14f6919fcf376bd8ef5a', '402883b9818a674501818a68aa8b0012', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f533e31e681c5412f3b30905655e5963', '402883b9818a674501818a68a9590010', 'id', 'id', 'id', 1, 0, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f57eba6320cd9a505427c39fb65d3079', '402883b9818a674501818a68b68d0026', 'project_contact', '项目联系人', 'project_contact', 0, 1, 'string', 20, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 46, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f59e9eece7ef9aecb7a5dc3f4e5717c5', '402883b9818a674501818a68b68d0026', 'note_information', '入库或冲销备注', 'note_information', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 52, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f5ae6a1ea8abf734a2a99f2007c61569', '402883b9818a674501818a68b283001f', 'idcard', '身份证号码', 'idcard', 0, 1, 'string', 18, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f5fa188794581453af2d031b238e08c8', '402883b9818a674501818a68b93a002a', 'receipt_photos', '回单照片路径(路径用逗号隔开)', 'receipt_photos', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f6a5ccb9d2404b81782b1ef0e152d353', '402883b9818a674501818a674b8b0007', 'be_date', '请假时间', 'be_date', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f85e344577ef5dc39af61765799cb133', '402883b9818a674501818a6745900000', 'task_time', '任务时间', 'task_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f891d2e7d0dd74e8473c16268675aaf1', '402883b9818a674501818a68ae140018', 'warehouse_id', '仓库id', 'warehouse_id', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 5, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f934d60704763a92a738b54f62e06ad3', '402883b9818a674501818a6748860002', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f937956c8667a27e2f60b4c634e3bbb6', '402883b9818a674501818a68ae140018', 'incomplete_description', '未完成说明', 'incomplete_description', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 17, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f9d1fa64f1d587bbc33fc07d9336e4a9', '402883b9818a674501818a68b0bf001c', 'backup1', 'backup1', 'backup1', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 14, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa04eaeb0993a52f5a7242d37be25e71', '402883b9818a674501818a684e13000c', 'storage_location_id1', '原库位id', 'storage_location_id1', 0, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:01', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa0684d4f2fefb12782c897cf2417cba', '402883b9818a674501818a68a9f40011', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa084de53e5d9e1e2e4c0063cf3cbe43', '402883b9818a674501818a68b93a002a', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 28, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa4cb025219b2b4689189489ad8641fb', '402883b9818a674501818a68b55e0024', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa5a647a8d575855a5258753f61b0d97', '402883b9818a674501818a68ae140018', 'state', '完单状态(字典0未完单 1已完单)', 'state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 18, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa752fdac110f16367ec05f3530d6535', '402883b9818a674501818a68aed20019', 'content', '个人简介', 'content', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fad70caa9321658284f54038fe6f33f6', '402883b9818a674501818a68ae140018', 'anomalous_cause', '异常原因', 'anomalous_cause', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 20, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fada1916cfce3121adcf99ed2a872a3b', '402883b9818a674501818a68b68d0026', 'waste_material_unit', '废旧物料单位(从字典来)', 'waste_material_unit', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 24, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fb0c5ef102fa81022c7e7a0806ef137e', '402883b9818a674501818a68ac690015', 'jimu_report_head_id', '动态报表ID', 'jimu_report_head_id', 0, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fb4af49364c2ccc3cc4f4e1515031e69', '402883b9818a674501818a68ae140018', 'backup4', 'backup4', 'backup4', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 35, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fb82aed65893e7434d5f9b0cae2dd454', '402883b9818a674501818a674a5f0005', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:53:54', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fc464dab2b3cc5c0c856aba96a7570a0', '402883b9818a674501818a68b7f10028', 'backup2', 'backup2', 'backup2', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 37, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fce34934630843bf7a4cc47b261dfd39', '402883b9818a674501818a68acfb0016', 'parameter', '参数', 'parameter', 0, 1, 'Text', 0, 0, NULL, NULL, NULL, NULL, 'textarea', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fd4a4ec7650d95975fcb89887ee41ce1', '402883b9818a674501818a68abd20014', 'search_flag', '查询标识0否1是 默认0', 'search_flag', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 12, NULL, NULL, '2022-06-22 15:55:25', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fd62d38d4444eaf47dd1f5a84ef97a75', '402883b9818a674501818a68b68d0026', 'demolition_plan', '拆除计划', 'demolition_plan', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 15, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fd6dbe1a1f29fb242cfd7b6722b4ac8e', '402883b9818a674501818a68b89b0029', 'note', '备注', 'note', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 16, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fd8f088b8488f8eea624e5da61606588', '402883b9818a674501818a68b0bf001c', 'id', '车保险表id', 'id', 1, 0, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fda5eb1537d64b288ac8de8018a6a43c', '402883b9818a674501818a68b89b0029', 'complete_state', '完成状态(字典)0未完成/1已完成', 'complete_state', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 21, NULL, NULL, '2022-06-22 15:55:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ff4e017c6995419727369e4f2790275d', '402883b9818a674501818a68b3180020', 'create_by', '创建人', 'create_by', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2022-06-22 15:55:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ffba82c588ecd2a61ff18ef667c53992', '402883b9818a674501818a68b43a0022', 'preview_lock', '密码锁', 'preview_lock', 0, 1, 'string', 4, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ffced3adf51613e505c9b901685a1d16', '402883b9818a674501818a68b68d0026', 'asset_text', '资产名称', 'asset_text', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'single', NULL, NULL, 32, NULL, NULL, '2022-06-22 15:55:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_head`;
CREATE TABLE `onl_cgform_head`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  `table_type` int NOT NULL COMMENT '表类型: 0单表、1主表、2附表',
  `table_version` int NULL DEFAULT 1 COMMENT '表版本',
  `table_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表说明',
  `is_checkbox` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否带checkbox',
  `is_db_synch` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '同步数据库状态',
  `is_page` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否分页',
  `is_tree` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否是树',
  `id_sequence` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键生成序列',
  `id_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键类型',
  `query_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `relation_type` int NULL DEFAULT NULL COMMENT '映射关系 0一对多  1一对一',
  `sub_table_str` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表',
  `tab_order_num` int NULL DEFAULT NULL COMMENT '附表排序序号',
  `tree_parent_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树形表单父id',
  `tree_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树表主键字段',
  `tree_fieldname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树开表单列字段',
  `form_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'bdfl_ptbd' COMMENT '表单分类',
  `form_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PC表单模板',
  `form_template_mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单模板样式(移动端)',
  `scroll` int NULL DEFAULT 0 COMMENT '是否有横向滚动条',
  `copy_version` int NULL DEFAULT NULL COMMENT '复制版本号',
  `copy_type` int NULL DEFAULT 0 COMMENT '复制表类型1为复制表 0为原始表',
  `physic_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始表ID',
  `ext_config_json` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展JSON',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `theme_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题模板',
  `is_des_form` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否用设计器表单',
  `des_form_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计器表单编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlineform_table_name`(`table_name` ASC) USING BTREE,
  INDEX `index_form_templdate`(`form_template` ASC) USING BTREE,
  INDEX `index_templdate_mobile`(`form_template_mobile` ASC) USING BTREE,
  INDEX `index_onlineform_table_version`(`table_version` ASC) USING BTREE,
  INDEX `idx_och_cgform_head_id`(`table_name` ASC) USING BTREE,
  INDEX `idx_och_table_name`(`form_template` ASC) USING BTREE,
  INDEX `idx_och_form_template_mobile`(`form_template_mobile` ASC) USING BTREE,
  INDEX `idx_och_table_version`(`table_version` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_head
-- ----------------------------
INSERT INTO `onl_cgform_head` VALUES ('80a3ecde0362417380eb00701b917ccb', 'tb_employee', 1, 4, '员工表', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'temp', '1', NULL, 1, NULL, 0, NULL, '{\"reportPrintShow\":0,\"reportPrintUrl\":\"\",\"joinQuery\":0,\"modelFullscreen\":0,\"modalMinWidth\":\"\"}', 'admin', '2022-06-22 16:30:08', 'admin', '2022-06-22 16:23:33', 'normal', 'N', '');
INSERT INTO `onl_cgform_head` VALUES ('92eee2c8fee34ebaa57dc957190466dd', 'tb_dept', 1, 2, '部门表', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'temp', '1', NULL, 1, NULL, 0, NULL, '{\"reportPrintShow\":0,\"reportPrintUrl\":\"\",\"joinQuery\":0,\"modelFullscreen\":0,\"modalMinWidth\":\"\"}', 'admin', '2022-06-22 17:04:18', 'admin', '2022-06-22 17:04:13', 'normal', 'N', '');

-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_index`;
CREATE TABLE `onl_cgform_index`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `cgform_head_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主表id',
  `index_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引名称',
  `index_field` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引栏位',
  `index_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `is_db_synch` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否同步数据库 N未同步 Y已同步',
  `del_flag` int NULL DEFAULT 0 COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_id`(`cgform_head_id` ASC) USING BTREE,
  INDEX `idx_oci_cgform_head_id`(`cgform_head_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgform_index
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `low_app_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联的应用ID',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlinereport_code`(`code` ASC) USING BTREE,
  INDEX `idx_och_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段文本',
  `field_width` int NULL DEFAULT NULL,
  `field_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `is_order` int NULL DEFAULT 0 COMMENT '是否排序  0否,1是',
  `is_search` int NULL DEFAULT 0 COMMENT '是否查询  0否,1是',
  `dict_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int NULL DEFAULT 1 COMMENT '是否显示  0否,1显示',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值表达式',
  `is_total` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否合计 0否,1是（仅对数值有效）',
  `group_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组标题',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_CGRHEAD_ID`(`cgrhead_id` ASC) USING BTREE,
  INDEX `index_isshow`(`is_show` ASC) USING BTREE,
  INDEX `index_order_num`(`order_num` ASC) USING BTREE,
  INDEX `idx_oci_cgrhead_id`(`cgrhead_id` ASC) USING BTREE,
  INDEX `idx_oci_is_show`(`is_show` ASC) USING BTREE,
  INDEX `idx_oci_order_num`(`order_num` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数默认值',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_cgrheadid`(`cgrhead_id` ASC) USING BTREE,
  INDEX `idx_ocp_cgrhead_id`(`cgrhead_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', 'SSKJ、1655944940184', 1655946415183, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int NULL DEFAULT NULL,
  `INT_PROP_2` int NULL DEFAULT NULL,
  `LONG_PROP_1` bigint NULL DEFAULT NULL,
  `LONG_PROP_2` bigint NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint NULL DEFAULT NULL,
  `PRIORITY` int NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME` ASC, `JOB_NAME` ASC, `JOB_GROUP` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime NULL DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指定用户',
  `msg_abstract` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '摘要',
  `dt_task_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `annt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime NULL DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户通告阅读标记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_code`(`code` ASC) USING BTREE,
  INDEX `idx_sc_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_category
-- ----------------------------

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_check_rule_code`(`rule_code` ASC) USING BTREE,
  UNIQUE INDEX `uk_scr_rule_code`(`rule_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO `sys_check_rule` VALUES ('1224980593992388610', '通用编码规则', 'common', '[{\"digits\":\"1\",\"pattern\":\"^[a-z|A-Z]$\",\"message\":\"第一位只能是字母\"},{\"digits\":\"*\",\"pattern\":\"^[0-9|a-z|A-Z|_]{0,}$\",\"message\":\"只能填写数字、大小写字母、下划线\"},{\"digits\":\"*\",\"pattern\":\"^.{3,}$\",\"message\":\"最少输入3位数\"},{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"最多输入12位数\"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO `sys_check_rule` VALUES ('1225001845524004866', '负责的功能测试', 'test', '[{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"只能输入3-12位字符\"},{\"digits\":\"3\",\"pattern\":\"^\\\\d{3}$\",\"message\":\"前3位必须是数字\"},{\"digits\":\"*\",\"pattern\":\"^[^pP]*$\",\"message\":\"不能输入P\"},{\"digits\":\"4\",\"pattern\":\"^@{4}$\",\"message\":\"第4-7位必须都为 @\"},{\"digits\":\"2\",\"pattern\":\"^#=$\",\"message\":\"第8-9位必须是 #=\"},{\"digits\":\"1\",\"pattern\":\"^O$\",\"message\":\"第10位必须为大写的O\"},{\"digits\":\"*\",\"pattern\":\"^.*。$\",\"message\":\"必须以。结尾\"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据ID',
  `data_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '数据内容',
  `data_version` int NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sindex`(`data_table` ASC, `data_id` ASC) USING BTREE,
  INDEX `idx_sdl_data_table_id`(`data_table` ASC, `data_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_data_source_code_uni`(`code` ASC) USING BTREE,
  UNIQUE INDEX `uk_sdc_rule_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `depart_order` int NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_depart_org_code`(`org_code` ASC) USING BTREE,
  INDEX `index_depart_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `index_depart_depart_order`(`depart_order` ASC) USING BTREE,
  INDEX `index_depart_org_code`(`org_code` ASC) USING BTREE,
  INDEX `idx_sd_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `idx_sd_depart_order`(`depart_order` ASC) USING BTREE,
  INDEX `idx_sd_org_code`(`org_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('57197590443c44f083d42ae24ef26a2c', 'c6d7cb4deeac411cb3384b1b31278596', '研发部', NULL, NULL, 0, NULL, '1', '2', 'A01A05', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2019-02-21 16:14:41', 'admin', '2019-03-27 19:05:49');
INSERT INTO `sys_depart` VALUES ('67fc001af12a4f9b8458005d3f19934a', 'c6d7cb4deeac411cb3384b1b31278596', '测试部', NULL, NULL, 0, NULL, '1', '2', 'A01A04', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2019-02-21 16:14:35', 'admin', '2019-02-25 12:49:41');
INSERT INTO `sys_depart` VALUES ('6d35e179cd814e3299bd588ea7daed3f', '', 'XX农信社', NULL, NULL, 0, NULL, '1', '1', 'A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2019-02-26 16:36:39', 'admin', '2020-05-02 18:21:22');
INSERT INTO `sys_depart` VALUES ('c6d7cb4deeac411cb3384b1b31278596', '', '叁拾科技', NULL, NULL, 0, NULL, '1', '1', 'A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2019-02-11 14:21:51', 'admin', '2020-05-02 18:21:27');
INSERT INTO `sys_depart` VALUES ('db5c531fa8d744e38965414d7a3b9253', 'c6d7cb4deeac411cb3384b1b31278596', '营销部', NULL, NULL, 0, NULL, '2', '2', 'A01A06', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2022-06-22 16:31:56', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_permission
-- ----------------------------
INSERT INTO `sys_depart_permission` VALUES ('1539526756181348354', 'db5c531fa8d744e38965414d7a3b9253', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756181348355', 'db5c531fa8d744e38965414d7a3b9253', 'f0675b52d89100ee88472b6800754a08', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756181348356', 'db5c531fa8d744e38965414d7a3b9253', '020b06793e4de2eee0007f603000c769', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756181348357', 'db5c531fa8d744e38965414d7a3b9253', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756181348358', 'db5c531fa8d744e38965414d7a3b9253', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736962', 'db5c531fa8d744e38965414d7a3b9253', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736963', 'db5c531fa8d744e38965414d7a3b9253', '1260928341675982849', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736964', 'db5c531fa8d744e38965414d7a3b9253', '1260929666434318338', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736965', 'db5c531fa8d744e38965414d7a3b9253', '1260931366557696001', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736966', 'db5c531fa8d744e38965414d7a3b9253', '1260933542969458689', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736967', 'db5c531fa8d744e38965414d7a3b9253', '190c2b43bec6a5f7a4194a85db67d96a', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736968', 'db5c531fa8d744e38965414d7a3b9253', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736969', 'db5c531fa8d744e38965414d7a3b9253', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736970', 'db5c531fa8d744e38965414d7a3b9253', '1174506953255182338', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736971', 'db5c531fa8d744e38965414d7a3b9253', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736972', 'db5c531fa8d744e38965414d7a3b9253', '1174590283938041857', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736973', 'db5c531fa8d744e38965414d7a3b9253', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736974', 'db5c531fa8d744e38965414d7a3b9253', 'ebb9d82ea16ad864071158e0c449d186', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736975', 'db5c531fa8d744e38965414d7a3b9253', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1539526756189736976', 'db5c531fa8d744e38965414d7a3b9253', '1280350452934307841', NULL);

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `index_group_role_id`(`role_id` ASC) USING BTREE,
  INDEX `index_group_per_id`(`permission_id` ASC) USING BTREE,
  INDEX `idx_sdrp_role_per_id`(`role_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `idx_sdrp_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_sdrp_per_id`(`permission_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色权限表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_depart_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `indextable_dict_code`(`dict_code` ASC) USING BTREE,
  UNIQUE INDEX `uk_sd_dict_code`(`dict_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1公司，2部门 3岗位', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1199517671259906049', '紧急程度', 'urgent_level', '日程计划紧急程度', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199518099888414722', '日程计划类型', 'eoa_plan_type', '', 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199520177767587841', '分类栏目类型', 'eoa_cms_menu_type', '', 0, 'admin', '2019-11-27 10:47:51', 'admin', '2019-11-27 10:49:35', 0);
INSERT INTO `sys_dict` VALUES ('1199525215290306561', '日程计划状态', 'eoa_plan_status', '', 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1280401766745718786', '租户状态', 'tenant_status', '租户状态', 0, 'admin', '2020-07-07 15:22:25', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1356445645198135298', '开关', 'is_open', '', 0, 'admin', '2021-02-02 11:33:38', 'admin', '2021-02-02 15:28:12', 0);
INSERT INTO `sys_dict` VALUES ('1539525537920585730', '禁用正常状态', 'ban_normal_status', '账号启用禁用状态', 0, 'admin', '2022-06-22 16:27:46', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 0, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 0, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 0, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 0, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 0, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort_order` int NULL DEFAULT NULL COMMENT '排序',
  `status` int NULL DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id` ASC) USING BTREE,
  INDEX `index_table_sort_order`(`sort_order` ASC) USING BTREE,
  INDEX `index_table_dict_status`(`status` ASC) USING BTREE,
  INDEX `idx_sdi_role_dict_id`(`dict_id` ASC) USING BTREE,
  INDEX `idx_sdi_role_sort_order`(`sort_order` ASC) USING BTREE,
  INDEX `idx_sdi_status`(`status` ASC) USING BTREE,
  INDEX `idx_sdi_dict_val`(`dict_id` ASC, `item_value` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO `sys_dict_item` VALUES ('1174509082208395266', '1174511106530525185', '岗位', '3', '岗位', 1, 1, 'admin', '2019-09-19 10:31:16', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO `sys_dict_item` VALUES ('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO `sys_dict_item` VALUES ('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO `sys_dict_item` VALUES ('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO `sys_dict_item` VALUES ('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO `sys_dict_item` VALUES ('1174511197735665665', '1174511106530525185', '公司', '1', '公司', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174511244036587521', '1174511106530525185', '部门', '2', '部门', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO `sys_dict_item` VALUES ('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO `sys_dict_item` VALUES ('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520817285701634', '1199520177767587841', '列表', '1', '', 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520835035996161', '1199520177767587841', '链接', '2', '', 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525490575060993', '1199525215290306561', '进行中', '1', '', 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525506429530114', '1199525215290306561', '已完成', '2', '', 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02');
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1209733775114702850', '1209733563293962241', 'MySQL5.5', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 3, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 4, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1232913424813486081', '1232913193820581889', '官方示例', 'demo', '', 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO `sys_dict_item` VALUES ('1232913493717512194', '1232913193820581889', '流程表单', 'bpm', '', 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO `sys_dict_item` VALUES ('1232913605382467585', '1232913193820581889', '测试表单', 'temp', '', 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO `sys_dict_item` VALUES ('1232914232372195330', '1232913193820581889', '导入表单', 'bdfl_include', '', 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371726545010689', '4e4602b3e3686f0911384e188dc7efb4', '左模糊', 'LEFT_LIKE', '左模糊', 7, 1, 'admin', '2020-03-02 14:55:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371809495760898', '4e4602b3e3686f0911384e188dc7efb4', '右模糊', 'RIGHT_LIKE', '右模糊', 7, 1, 'admin', '2020-03-02 14:55:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, 1, 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, 1, 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401815068295170', '1280401766745718786', '正常', '1', '', 1, 1, 'admin', '2020-07-07 15:22:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401847607705602', '1280401766745718786', '冻结', '0', '', 1, 1, 'admin', '2020-07-07 15:22:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1305827309355302914', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'API', 'api', '', 3, 1, 'admin', '2020-09-15 19:14:26', 'admin', '2020-09-15 19:14:41');
INSERT INTO `sys_dict_item` VALUES ('1334440962954936321', '1209733563293962241', 'MYSQL5.7', '6', NULL, 1, 1, 'admin', '2020-12-03 18:16:02', 'admin', '2020-12-03 18:16:02');
INSERT INTO `sys_dict_item` VALUES ('1356445705549975553', '1356445645198135298', '是', 'Y', '', 1, 1, 'admin', '2021-02-02 11:33:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1356445754212290561', '1356445645198135298', '否', 'N', '', 1, 1, 'admin', '2021-02-02 11:34:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1414837074500976641', '1209733563293962241', 'Postgresql', '6', '', 5, 1, 'admin', '2021-07-13 14:40:20', 'admin', '2021-07-15 13:44:15');
INSERT INTO `sys_dict_item` VALUES ('1415547541091504129', '1209733563293962241', 'MarialDB', '5', '', 6, 1, 'admin', '2021-07-15 13:43:28', 'admin', '2021-07-15 13:44:23');
INSERT INTO `sys_dict_item` VALUES ('1418049969003089922', '1209733563293962241', '达梦', '7', '', 7, 1, 'admin', '2021-07-22 11:27:13', 'admin', '2021-07-22 11:27:30');
INSERT INTO `sys_dict_item` VALUES ('1418050017053036545', '1209733563293962241', '人大金仓', '8', '', 8, 1, 'admin', '2021-07-22 11:27:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050075555188737', '1209733563293962241', '神通', '9', '', 9, 1, 'admin', '2021-07-22 11:27:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050110669901826', '1209733563293962241', 'SQLite', '10', '', 10, 1, 'admin', '2021-07-22 11:27:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050149475602434', '1209733563293962241', 'DB2', '11', '', 11, 1, 'admin', '2021-07-22 11:27:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050209823248385', '1209733563293962241', 'Hsqldb', '12', '', 12, 1, 'admin', '2021-07-22 11:28:11', 'admin', '2021-07-22 11:28:27');
INSERT INTO `sys_dict_item` VALUES ('1418050323111399425', '1209733563293962241', 'Derby', '13', '', 13, 1, 'admin', '2021-07-22 11:28:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418117316707590146', '1209733563293962241', 'H2', '14', '', 14, 1, 'admin', '2021-07-22 15:54:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418491604048449537', '1209733563293962241', '其他数据库', '15', '', 15, 1, 'admin', '2021-07-23 16:42:07', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1539525640253214721', '1539525537920585730', '正常', '1', '账号正常使用', 1, 1, 'admin', '2022-06-22 16:28:10', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1539525709207572482', '1539525537920585730', '禁用', '0', '账号禁止使用', 1, 1, 'admin', '2022-06-22 16:28:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO `sys_dict_item` VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO `sys_dict_item` VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO `sys_dict_item` VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO `sys_dict_item` VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_fill_rule_code`(`rule_code` ASC) USING BTREE,
  UNIQUE INDEX `uk_sfr_rule_code`(`rule_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO `sys_fill_rule` VALUES ('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{\"parentId\":\"c6d7cb4deeac411cb3384b1b31278596\"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO `sys_fill_rule` VALUES ('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{\"pid\":\"\"}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');
INSERT INTO `sys_fill_rule` VALUES ('1260134137920090113', '订单流水号', 'shop_order_num', 'org.jeecg.modules.online.cgform.rule.OrderNumberRule', '{}', 'admin', '2020-12-07 18:29:50', 'admin', '2020-05-12 17:06:05');

-- ----------------------------
-- Table structure for sys_gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_gateway_route`;
CREATE TABLE `sys_gateway_route`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `router_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务地址',
  `predicates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '断言',
  `filters` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '过滤器',
  `retryable` int NULL DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int NULL DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int NULL DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int NULL DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int NULL DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_gateway_route
-- ----------------------------
INSERT INTO `sys_gateway_route` VALUES ('1331051599401857026', 'jeecg-demo-websocket', 'jeecg-demo-websocket', 'lb:ws://jeecg-demo', '[{\"args\":[\"/vxeSocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-24 09:46:46', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-cloud-websocket', 'jeecg-system-websocket', 'jeecg-system-websocket', 'lb:ws://jeecg-system', '[{\"args\":[\"/websocket/**\",\"/eoaSocket/**\",\"/newsWebsocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-demo', 'jeecg-demo', 'jeecg-demo', 'lb://jeecg-demo', '[{\"args\":[\"/mock/**\",\"/test/**\",\"/bigscreen/template1/**\",\"/bigscreen/template2/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-system', 'jeecg-system', 'jeecg-system', 'lb://jeecg-system', '[{\"args\":[\"/sys/**\",\"/eoa/**\",\"/joa/**\",\"/online/**\",\"/bigscreen/**\",\"/jmreport/**\",\"/desform/**\",\"/process/**\",\"/act/**\",\"/plug-in/***/\",\"/druid/**\",\"/generic/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` int NULL DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `operate_type` int NULL DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint NULL DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_userid`(`userid`) USING BTREE,
  INDEX `index_logt_ype`(`log_type`) USING BTREE,
  INDEX `index_operate_type`(`operate_type`) USING BTREE,
  INDEX `index_log_type`(`log_type`) USING BTREE,
  INDEX `idx_sl_userid`(`userid`) USING BTREE,
  INDEX `idx_sl_log_type`(`log_type`) USING BTREE,
  INDEX `idx_sl_operate_type`(`operate_type`) USING BTREE,
  INDEX `idx_sl_create_time`(`create_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1539504089273368578', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 15:02:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539515527329148930', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 15:47:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539524505790451713', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 51, NULL, '2022-06-22 16:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539524505811423233', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 59, NULL, '2022-06-22 16:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539524506176327681', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 31, NULL, '2022-06-22 16:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525819865894913', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 28, NULL, '2022-06-22 16:28:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525819891060738', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 32, NULL, '2022-06-22 16:28:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525820176273409', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 16, NULL, '2022-06-22 16:28:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525853403549697', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 12, NULL, '2022-06-22 16:29:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525853453881346', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 23, NULL, '2022-06-22 16:29:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525856389894146', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 16, NULL, '2022-06-22 16:29:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525914522947585', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 9, NULL, '2022-06-22 16:29:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525914548113409', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 15, NULL, '2022-06-22 16:29:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525914858491906', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 20, NULL, '2022-06-22 16:29:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525929031045121', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 7, NULL, '2022-06-22 16:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525929064599553', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 15, NULL, '2022-06-22 16:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539525929433698305', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 17, NULL, '2022-06-22 16:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526164377636865', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 26, NULL, '2022-06-22 16:30:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526164386025473', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 27, NULL, '2022-06-22 16:30:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526164683821057', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 17, NULL, '2022-06-22 16:30:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526780302790658', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 8, NULL, '2022-06-22 16:32:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526780344733697', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 14, NULL, '2022-06-22 16:32:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526780588003329', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 16, NULL, '2022-06-22 16:32:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526867644977153', 2, 'online表单加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 6, NULL, '2022-06-22 16:33:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526867678531585', 2, 'online列表加载,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 14, NULL, '2022-06-22 16:33:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539526867967938561', 2, 'online列表数据查询,表名:tb_employee,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 17, NULL, '2022-06-22 16:33:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532289017790466', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d597087', NULL, 10, NULL, '2022-06-22 16:54:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532317371285506', 2, '员工表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655888082201,\"id\":\"1539532317195124737\",\"sysOrgCode\":\"A01\"}]', NULL, 23, NULL, '2022-06-22 16:54:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532317878796289', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@55fd968d', NULL, 23, NULL, '2022-06-22 16:54:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532352767016961', 2, '员工表-通过id删除', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.delete()', NULL, '  id: 1539532317195124737', NULL, 21, NULL, '2022-06-22 16:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532352943177730', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 0  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@15b8ff23', NULL, 4, NULL, '2022-06-22 16:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532610133704705', 2, '员工表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.add()', NULL, '[{\"address\":\"110101\",\"createBy\":\"admin\",\"createTime\":1655888152025,\"dept\":\"57197590443c44f083d42ae24ef26a2c\",\"entryTime\":1655827200000,\"id\":\"1539532610049818626\",\"name\":\"张三\",\"phone\":\"15779410215\",\"resTime\":1687363200000,\"sex\":\"1\",\"status\":1,\"sysOrgCode\":\"A01\",\"username\":\"zhangsan\"}]', NULL, 20, NULL, '2022-06-22 16:55:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539532610486026242', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 0  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f158938', NULL, 29, NULL, '2022-06-22 16:55:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539533206349824001', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a8dd49e', NULL, 15, NULL, '2022-06-22 16:58:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539533448138866690', 2, '员工表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.add()', NULL, '[{\"address\":\"130202\",\"createBy\":\"admin\",\"createTime\":1655888351822,\"dept\":\"db5c531fa8d744e38965414d7a3b9253\",\"entryTime\":1655395200000,\"id\":\"1539533448054980610\",\"name\":\"李四\",\"phone\":\"12465487541\",\"resTime\":1656172800000,\"sex\":\"1\",\"status\":0,\"sysOrgCode\":\"A01\",\"username\":\"lisi\"}]', NULL, 19, NULL, '2022-06-22 16:59:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539533448671543298', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c14ab69', NULL, 22, NULL, '2022-06-22 16:59:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539534743046340610', 2, 'online列表加载,表名:tb_dept,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 18, NULL, '2022-06-22 17:04:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539534743063117825', 2, 'online表单加载,表名:tb_dept,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.b()', NULL, '', NULL, 52, NULL, '2022-06-22 17:04:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539534743537074177', 2, 'online列表数据查询,表名:tb_dept,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.c.a.a()', NULL, '', NULL, 49, NULL, '2022-06-22 17:04:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539537371876737025', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3b6982f7', NULL, 50, NULL, '2022-06-22 17:14:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539537654161784833', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@383036c9', NULL, 49, NULL, '2022-06-22 17:15:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539537978146603010', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@74da8354', NULL, 8, NULL, '2022-06-22 17:17:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538143817416706', 2, '部门表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655889471071,\"descr\":\"2020/6/3创建研发部\",\"id\":\"1539538142529765378\",\"name\":\"研发部\",\"sysOrgCode\":\"A01\"}]', NULL, 301, NULL, '2022-06-22 17:17:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538144073269250', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6d7b5643', NULL, 23, NULL, '2022-06-22 17:17:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538243239198722', 2, '部门表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655889495062,\"descr\":\"处理公司卫生问题\",\"id\":\"1539538243155312642\",\"name\":\"卫生部\",\"sysOrgCode\":\"A01\"}]', NULL, 20, NULL, '2022-06-22 17:18:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538243490856962', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1df8feaa', NULL, 7, NULL, '2022-06-22 17:18:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538315809046529', 2, '部门表-编辑', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655889471000,\"descr\":\"完成公司项目开发\",\"id\":\"1539538142529765378\",\"name\":\"研发部\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1655889512375}]', NULL, 10, NULL, '2022-06-22 17:18:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538315985207298', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6862d430', NULL, 6, NULL, '2022-06-22 17:18:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538378589388801', 2, '部门表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655889527333,\"descr\":\"处理公司业务问题\",\"id\":\"1539538378513891329\",\"name\":\"行政部\",\"sysOrgCode\":\"A01\"}]', NULL, 19, NULL, '2022-06-22 17:18:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538378815881218', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@710f3742', NULL, 6, NULL, '2022-06-22 17:18:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538470662750210', 2, '部门表-添加', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1655889549286,\"descr\":\"进行软件测试\",\"id\":\"1539538470587252738\",\"name\":\"测试部门\",\"sysOrgCode\":\"A01\"}]', NULL, 19, NULL, '2022-06-22 17:19:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538470868271106', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a64cd15', NULL, 8, NULL, '2022-06-22 17:19:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538490136903681', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@683932c1', NULL, 15, NULL, '2022-06-22 17:19:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538497166557185', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f9c2d4f', NULL, 7, NULL, '2022-06-22 17:19:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539538593392279554', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34035ac7', NULL, 14, NULL, '2022-06-22 17:19:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539771176143208450', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 08:43:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539771242560012289', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 08:44:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539771557107646465', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@111e8d61', NULL, 109, NULL, '2022-06-23 08:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539771985694212098', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@24c3777b', NULL, 37, NULL, '2022-06-23 08:47:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539772004837015553', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@146cca64', NULL, 35, NULL, '2022-06-23 08:47:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539772016052584449', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@533e333a', NULL, 11, NULL, '2022-06-23 08:47:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539772386086666241', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d9aba6f', NULL, 16, NULL, '2022-06-23 08:48:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539772431586476033', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@20949e7d', NULL, 7, NULL, '2022-06-23 08:48:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539772719517057026', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1d14f5f0', NULL, 7, NULL, '2022-06-23 08:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539773268610170881', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5d3e727b', NULL, 8, NULL, '2022-06-23 08:52:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539773729337688066', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@47a5e191', NULL, 20, NULL, '2022-06-23 08:53:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539773733364219906', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@aeca399', NULL, 7, NULL, '2022-06-23 08:54:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539773746588860418', 2, '员工表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.employeeInfo.controller.TbEmployeeController.queryPageList()', NULL, '  tbEmployee: TbEmployee(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, username=null, name=null, sex=null, dept=null, entryTime=null, resTime=null, phone=null, status=null, address=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5399386f', NULL, 16, NULL, '2022-06-23 08:54:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539774672485662721', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4cc7a323', NULL, 7, NULL, '2022-06-23 08:57:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1539775229405347841', 2, '部门表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.sanshi.deptInfo.controller.TbDeptController.queryPageList()', NULL, '  tbDept: TbDept(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, descr=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4bbcd3a3', NULL, 7, NULL, '2022-06-23 08:59:57', NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) NULL DEFAULT 1 COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int NULL DEFAULT 0 COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id` ASC) USING BTREE,
  INDEX `index_prem_is_route`(`is_route` ASC) USING BTREE,
  INDEX `index_prem_is_leaf`(`is_leaf` ASC) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no` ASC) USING BTREE,
  INDEX `index_prem_del_flag`(`del_flag` ASC) USING BTREE,
  INDEX `index_menu_type`(`menu_type` ASC) USING BTREE,
  INDEX `index_menu_hidden`(`hidden` ASC) USING BTREE,
  INDEX `index_menu_status`(`status` ASC) USING BTREE,
  INDEX `idx_sp_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `idx_sp_is_route`(`is_route` ASC) USING BTREE,
  INDEX `idx_sp_is_leaf`(`is_leaf` ASC) USING BTREE,
  INDEX `idx_sp_sort_no`(`sort_no` ASC) USING BTREE,
  INDEX `idx_sp_del_flag`(`del_flag` ASC) USING BTREE,
  INDEX `idx_sp_menu_type`(`menu_type` ASC) USING BTREE,
  INDEX `idx_sp_hidden`(`hidden` ASC) USING BTREE,
  INDEX `idx_sp_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('020b06793e4de2eee0007f603000c769', 'f0675b52d89100ee88472b6800754a08', 'ViserChartDemo', '/report/ViserChartDemo', 'jeecg/report/ViserChartDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 19:08:53', 'admin', '2019-04-03 19:08:53', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('0ac2ad938963b6c6d1af25477d5b8b51', '8d4683aacaa997ab86b966b464360338', '代码生成按钮', NULL, NULL, NULL, NULL, 2, 'online:goGenerateCode', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-06-11 14:20:09', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1174506953255182338', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '职务管理', '/isystem/position', 'system/SysPositionList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 10:14:13', 'admin', '2019-09-19 10:15:22', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1174590283938041857', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '通讯录', '/isystem/addressList', 'system/AddressList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 15:45:21', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1192318987661234177', 'e41b69c57a941a3bbcce45032fe57605', '系统编码规则', '/isystem/fillRule', 'system/SysFillRuleList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-07-10 16:55:03', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1205097455226462210', '', '报表设计', '/big/screen', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.10, 0, 'area-chart', 1, 0, 0, 0, NULL, 'admin', '2019-12-12 20:09:58', 'admin', '2021-01-22 17:18:48', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1209731624921534465', 'e41b69c57a941a3bbcce45032fe57605', '多数据源管理', '/isystem/dataSource', 'system/SysDataSourceList', NULL, NULL, 1, NULL, '1', 6.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-25 15:04:30', 'admin', '2020-02-23 22:43:37', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1224641973866467330', 'e41b69c57a941a3bbcce45032fe57605', '系统校验规则', '/isystem/checkRule', 'system/SysCheckRuleList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-07-10 16:55:12', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1229674163694841857', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单ERP', '/online/cgformErpList/:code', 'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-02-18 15:49:00', 'admin', '2020-02-18 15:52:25', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1235823781053313025', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线内嵌子表', '/online/cgformInnerTableList/:code', 'modules/online/cgform/auto/innerTable/OnlCgformInnerTableList', NULL, NULL, 1, NULL, '1', 999.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-03-06 15:05:24', 'admin', '2020-03-06 15:07:42', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260928341675982849', '3f915b2769fc80648e92d04e84ca059d', '添加按钮', NULL, NULL, NULL, NULL, 2, 'user:add', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:41:58', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260929666434318338', '3f915b2769fc80648e92d04e84ca059d', '用户编辑', NULL, NULL, NULL, NULL, 2, 'user:edit', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:47:14', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260931366557696001', '3f915b2769fc80648e92d04e84ca059d', '表单性别可见', '', NULL, NULL, NULL, 2, 'user:sex', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:53:59', 'admin', '2020-05-14 21:57:00', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260933542969458689', '3f915b2769fc80648e92d04e84ca059d', '禁用生日字段', NULL, NULL, NULL, NULL, 2, 'user:form:birthday', '2', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 22:02:38', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1280350452934307841', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '租户管理', '/isys/tenant', 'system/TenantList', NULL, NULL, 1, NULL, '1', 10.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-07-07 11:58:30', 'admin', '2020-07-10 15:46:35', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1304032910990495745', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单TAB', '/online/cgformTabList/:code', 'modules/online/cgform/auto/tab/OnlCgformTabList', NULL, NULL, 1, NULL, '1', 8.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-09-10 20:24:08', 'admin', '2020-09-10 20:36:37', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1335960713267093506', '1205097455226462210', '积木报表设计', '{{ window._CONFIG[\'domianURL\'] }}/jmreport/list?token=${token}', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 0.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-12-07 22:53:50', 'admin', '2020-12-08 09:28:06', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1539529438845603841', '', '员工管理', '/employeeSystem/employeeInfo/vue', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'team', 1, 0, 0, 0, NULL, 'admin', '2022-06-22 16:43:16', 'admin', '2022-06-22 17:11:09', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1539529789741076481', '1539529438845603841', '员工信息', '/employeeSystem/employeeInfo/vue/TbEmployeeList', 'employeeSystem/employeeInfo/vue/TbEmployeeList', NULL, NULL, 1, NULL, '1', NULL, 0, 'contacts', 1, 1, 0, 0, NULL, 'admin', '2022-06-22 16:44:40', 'admin', '2022-06-22 17:11:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1539537175948214274', '1539529438845603841', '部门设置', '/employeeSystem/deptInfo/vue/TbDeptList', 'employeeSystem/deptInfo/vue/TbDeptList', NULL, NULL, 1, NULL, '1', NULL, 0, 'setting', 1, 1, 0, 0, NULL, 'admin', '2022-06-22 17:14:01', 'admin', '2022-06-22 17:17:04', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2019-12-25 09:36:31', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '手机号禁用', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1.00, 0, NULL, 0, 1, NULL, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2019-05-11 18:00:22', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('22d6a3d39a59dd7ea9a30acfa6bfb0a5', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO动态表单', '/online/df/:table/:id', 'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 0, 1, NULL, 1, NULL, 'admin', '2019-04-22 15:15:43', 'admin', '2019-04-30 18:18:26', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 1, NULL, NULL, 1.10, 0, NULL, 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:24', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '部门管理', '/isystem/depart', 'system/DepartList', NULL, NULL, 1, NULL, NULL, 1.40, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2019-12-25 09:36:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54097c6a3cf50fad0793a34beff1efdf', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单', '/online/cgformList/:code', 'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-19 16:03:06', 'admin', '2019-04-30 18:19:03', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:39', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('5c2f42277948043026b7a14692456828', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '我的部门', '/isystem/departUserList', 'system/DepartUserList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:12:24', 'admin', '2019-12-25 09:35:26', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('8d4683aacaa997ab86b966b464360338', 'e41b69c57a941a3bbcce45032fe57605', 'Online表单开发', '/online/cgform', 'modules/online/cgform/OnlCgformHeadList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-03-12 15:48:14', 'admin', '2019-06-11 14:19:17', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/analysis', 'dashboard/Analysis', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-29 11:04:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-30 18:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 4.00, 0, 'setting', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:52', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6.00, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2019-01-02 17:23:01', NULL, '2019-01-02 17:31:23', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 2.00, 0, 'cloud', 1, 0, 0, 0, NULL, 'admin', '2019-03-08 10:43:10', 'admin', '2021-01-24 14:15:12', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('ebb9d82ea16ad864071158e0c449d186', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '分类字典', '/isys/category', 'system/SysCategoryList', NULL, NULL, 1, NULL, '1', 5.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-05-29 18:48:07', 'admin', '2020-02-23 22:45:33', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('f0675b52d89100ee88472b6800754a08', '', '统计报表', '/report', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 1.00, 0, 'bar-chart', 1, 0, NULL, 0, NULL, 'admin', '2019-04-03 18:32:02', 'admin', '2019-05-19 18:34:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2020-02-23 22:45:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f2849d3814fc97993bfc519ae6bbf049', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO复制表单', '/online/copyform/:code', 'modules/online/cgform/OnlCgformCopyList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-08-29 16:05:37', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('fba41089766888023411a978d13c0aa4', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO树表单列表', '/online/cgformTreeList/:code', 'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, 1, NULL, '1', 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-05-21 14:46:50', 'admin', '2019-06-11 13:52:52', 0, 0, '1', NULL);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_fucntionid`(`permission_id` ASC) USING BTREE,
  INDEX `idx_spdr_permission_id`(`permission_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES ('1256485574212153345', '总经理', 'laozong', '5', NULL, 'admin', '2020-05-02 15:28:00', 'admin', '2020-05-02 15:28:03', '北京国炬公司');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` int NULL DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int NULL DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', 0, 'admin', '2020-05-02 15:48:48', 'org.jeecg.modules.message.job.SendMsgJob', '0/50 * * * * ? *', NULL, NULL, -1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_role_role_code`(`role_code` ASC) USING BTREE,
  INDEX `idx_sr_role_code`(`role_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1169504891467464705', '第三方登录角色', 'third_role', '第三方登录角色', 'admin', '2019-09-05 14:57:49', 'admin', '2020-05-02 18:20:58');
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2019-05-20 11:40:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `index_group_role_id`(`role_id` ASC) USING BTREE,
  INDEX `index_group_per_id`(`permission_id` ASC) USING BTREE,
  INDEX `idx_srp_role_per_id`(`role_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `idx_srp_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_srp_permission_id`(`permission_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1440901140183322630', 'f6817f48af4fb3af11b9e8bf182f618b', '1335960713267093506', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140183322631', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140183322634', 'f6817f48af4fb3af11b9e8bf182f618b', '1260928341675982849', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140183322635', 'f6817f48af4fb3af11b9e8bf182f618b', '1260929666434318338', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140183322636', 'f6817f48af4fb3af11b9e8bf182f618b', '1260931366557696001', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140191711234', 'f6817f48af4fb3af11b9e8bf182f618b', '1260933542969458689', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140191711236', 'f6817f48af4fb3af11b9e8bf182f618b', '0ac2ad938963b6c6d1af25477d5b8b51', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140191711237', 'f6817f48af4fb3af11b9e8bf182f618b', '1a0811914300741f4e11838ff37a1d3a', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140191711242', 'f6817f48af4fb3af11b9e8bf182f618b', '8d4683aacaa997ab86b966b464360338', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099843', 'f6817f48af4fb3af11b9e8bf182f618b', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099845', 'f6817f48af4fb3af11b9e8bf182f618b', 'b6bcee2ccc854052d3cc3e9c96d90197', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099848', 'f6817f48af4fb3af11b9e8bf182f618b', 'f0675b52d89100ee88472b6800754a08', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099849', 'f6817f48af4fb3af11b9e8bf182f618b', 'f2849d3814fc97993bfc519ae6bbf049', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099851', 'f6817f48af4fb3af11b9e8bf182f618b', '1205097455226462210', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099852', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099853', 'f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099854', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140200099855', 'f6817f48af4fb3af11b9e8bf182f618b', '45c966826eeff4c99b8f8ebfe74511fc', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488449', 'f6817f48af4fb3af11b9e8bf182f618b', '1174506953255182338', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488450', 'f6817f48af4fb3af11b9e8bf182f618b', '109c78a583d4693ce2f16551b7786786', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488453', 'f6817f48af4fb3af11b9e8bf182f618b', '5c2f42277948043026b7a14692456828', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488458', 'f6817f48af4fb3af11b9e8bf182f618b', 'e41b69c57a941a3bbcce45032fe57605', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488461', 'f6817f48af4fb3af11b9e8bf182f618b', '1174590283938041857', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140208488462', 'f6817f48af4fb3af11b9e8bf182f618b', '1192318987661234177', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140216877058', 'f6817f48af4fb3af11b9e8bf182f618b', '020b06793e4de2eee0007f603000c769', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140216877073', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265667', 'f6817f48af4fb3af11b9e8bf182f618b', '1224641973866467330', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265668', 'f6817f48af4fb3af11b9e8bf182f618b', '1229674163694841857', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265669', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265670', 'f6817f48af4fb3af11b9e8bf182f618b', 'ebb9d82ea16ad864071158e0c449d186', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265671', 'f6817f48af4fb3af11b9e8bf182f618b', '1209731624921534465', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265676', 'f6817f48af4fb3af11b9e8bf182f618b', 'e08cb190ef230d5d4f03824198773950', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265681', 'f6817f48af4fb3af11b9e8bf182f618b', '1304032910990495745', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140225265683', 'f6817f48af4fb3af11b9e8bf182f618b', '22d6a3d39a59dd7ea9a30acfa6bfb0a5', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140233654274', 'f6817f48af4fb3af11b9e8bf182f618b', '54097c6a3cf50fad0793a34beff1efdf', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140233654276', 'f6817f48af4fb3af11b9e8bf182f618b', '9fe26464838de2ea5e90f2367e35efa0', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140233654277', 'f6817f48af4fb3af11b9e8bf182f618b', 'fba41089766888023411a978d13c0aa4', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140233654278', 'f6817f48af4fb3af11b9e8bf182f618b', '1280350452934307841', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1440901140233654284', 'f6817f48af4fb3af11b9e8bf182f618b', '1235823781053313025', NULL, '2021-09-23 12:49:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1539529826822918146', 'f6817f48af4fb3af11b9e8bf182f618b', '1539529438845603841', NULL, '2022-06-22 16:44:48', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1539529826822918147', 'f6817f48af4fb3af11b9e8bf182f618b', '1539529789741076481', NULL, '2022-06-22 16:44:48', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1539537221049565185', 'f6817f48af4fb3af11b9e8bf182f618b', '1539537175948214274', NULL, '2022-06-22 17:14:11', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `es_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推送内容',
  `es_send_time` datetime NULL DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int NULL DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_type`(`es_type` ASC) USING BTREE,
  INDEX `index_receiver`(`es_receiver` ASC) USING BTREE,
  INDEX `index_sendtime`(`es_send_time` ASC) USING BTREE,
  INDEX `index_status`(`es_send_status` ASC) USING BTREE,
  INDEX `idx_ss_es_type`(`es_type` ASC) USING BTREE,
  INDEX `idx_ss_es_receiver`(`es_receiver` ASC) USING BTREE,
  INDEX `idx_ss_es_send_time`(`es_send_time` ASC) USING BTREE,
  INDEX `idx_ss_es_send_status`(`es_send_status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `template_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_templatecode`(`template_code` ASC) USING BTREE,
  UNIQUE INDEX `uk_sst_template_code`(`template_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` int NOT NULL COMMENT '租户编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `status` int NULL DEFAULT NULL COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '多租户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '租户001', '2020-07-10 15:43:32', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_third_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_third_account`;
CREATE TABLE `sys_third_account`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方登录id',
  `third_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录来源',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方app用户账号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_third_account_third_type_third_user_id`(`third_type` ASC, `third_user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_third_account
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `birthday` datetime NULL DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) NULL DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) NULL DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '负责部门',
  `rel_tenant_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多租户标识',
  `client_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_user_name`(`username` ASC) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_work_no`(`work_no` ASC) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_phone`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_email`(`email` ASC) USING BTREE,
  INDEX `index_user_status`(`status` ASC) USING BTREE,
  INDEX `index_user_del_flag`(`del_flag` ASC) USING BTREE,
  INDEX `idx_su_username`(`username` ASC) USING BTREE,
  INDEX `idx_su_status`(`status` ASC) USING BTREE,
  INDEX `idx_su_del_flag`(`del_flag` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', 'http://git.sanskj.cn/ljb/admin-template-jeecg/raw/commit/743fa5557fcc1d3c9e85d2b5111c6e71d687949e/logo.jpg', '2018-12-05 00:00:00', 1, 'sanshi_lin@163.com', '18650000000', 'A01', 1, 0, NULL, NULL, 1, '00001', 'ZJL', NULL, NULL, '2019-06-21 17:54:10', 'admin', '2021-08-25 17:59:06', 2, 'c6d7cb4deeac411cb3384b1b31278596', '', NULL);

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime NULL DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`user_name` ASC) USING BTREE,
  UNIQUE INDEX `uk_sug_user_name`(`user_name` ASC) USING BTREE,
  INDEX `statux_index`(`status` ASC) USING BTREE,
  INDEX `begintime_index`(`start_time` ASC) USING BTREE,
  INDEX `endtime_index`(`end_time` ASC) USING BTREE,
  INDEX `idx_sug_status`(`status` ASC) USING BTREE,
  INDEX `idx_sug_start_time`(`start_time` ASC) USING BTREE,
  INDEX `idx_sug_end_time`(`end_time` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户代理人设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_agent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_depart_groupk_userid`(`user_id` ASC) USING BTREE,
  INDEX `index_depart_groupkorgid`(`dep_id` ASC) USING BTREE,
  INDEX `index_depart_groupk_uidanddid`(`user_id` ASC, `dep_id` ASC) USING BTREE,
  INDEX `idx_sud_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sud_dep_id`(`dep_id` ASC) USING BTREE,
  INDEX `idx_sud_user_dep_id`(`user_id` ASC, `dep_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO `sys_user_depart` VALUES ('1281490128540393474', 'e9ca23d68d884d4ebb19d07889727dae', 'c6d7cb4deeac411cb3384b1b31278596');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index2_groupuu_user_id`(`user_id` ASC) USING BTREE,
  INDEX `index2_groupuu_ole_id`(`role_id` ASC) USING BTREE,
  INDEX `index2_groupuu_useridandroleid`(`user_id` ASC, `role_id` ASC) USING BTREE,
  INDEX `idx_sur_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sur_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_sur_user_role_id`(`user_id` ASC, `role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1281490128242597889', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属部门',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `descr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1539538142529765378', 'admin', '2022-06-22 17:17:51', 'admin', '2022-06-22 17:18:32', 'A01', '研发部', '完成公司项目开发');
INSERT INTO `tb_dept` VALUES ('1539538243155312642', 'admin', '2022-06-22 17:18:15', NULL, NULL, 'A01', '卫生部', '处理公司卫生问题');
INSERT INTO `tb_dept` VALUES ('1539538378513891329', 'admin', '2022-06-22 17:18:47', NULL, NULL, 'A01', '行政部', '处理公司业务问题');
INSERT INTO `tb_dept` VALUES ('1539538470587252738', 'admin', '2022-06-22 17:19:09', NULL, NULL, 'A01', '测试部门', '进行软件测试');

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属部门',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `dept` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门',
  `entry_time` datetime NULL DEFAULT NULL COMMENT '入职时间',
  `res_time` datetime NULL DEFAULT NULL COMMENT '离职时间',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('1539532610049818626', 'admin', '2022-06-22 16:55:52', NULL, NULL, 'A01', 'zhangsan', '张三', '1', '57197590443c44f083d42ae24ef26a2c', '2022-06-22 00:00:00', '2023-06-22 00:00:00', '15779410215', 1, '110101');
INSERT INTO `tb_employee` VALUES ('1539533448054980610', 'admin', '2022-06-22 16:59:12', NULL, NULL, 'A01', 'lisi', '李四', '1', 'db5c531fa8d744e38965414d7a3b9253', '2022-06-17 00:00:00', '2022-06-26 00:00:00', '12465487541', 0, '130202');

SET FOREIGN_KEY_CHECKS = 1;
