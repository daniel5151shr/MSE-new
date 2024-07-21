/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : qst_mes

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2024-06-28 13:12:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'md_unit_measure', '单位表', null, null, 'MdUnitMeasure', 'crud', 'com.qst.mes.core.md', 'mes/md', 'unitmeasure', '单位', 'yinjinlu', '0', '/', '{}', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49', null);
INSERT INTO `gen_table` VALUES ('2', 'md_client', '客户表', null, null, 'MdClient', 'crud', 'com.qst.mes.core.md', 'mes/md', 'client', '客户', 'qst', '0', '/', '{}', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55', null);
INSERT INTO `gen_table` VALUES ('3', 'md_vendor', '供应商表', null, null, 'MdVendor', 'crud', 'com.qst.mes.core.md', 'mes/md', 'vendor', '供应商', 'qst', '0', '/', '{}', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:03', null);
INSERT INTO `gen_table` VALUES ('4', 'md_workshop', '车间表', null, null, 'MdWorkshop', 'crud', 'com.qst.mes.core.md', 'mes/md', 'workshop', '车间管理', 'yinjinlu', '0', '/', '{}', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57', null);
INSERT INTO `gen_table` VALUES ('5', 'md_workstation', '工作站表', null, null, 'MdWorkstation', 'crud', 'com.qst.mes.core.md', 'mes/md', 'workstation', '工作站管理', 'yinjinlu', '0', '/', '{}', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12', null);
INSERT INTO `gen_table` VALUES ('6', 'pro_process', '生产工序表', null, null, 'ProProcess', 'crud', 'com.qst.mes.core.md', 'mes/md', 'process', '生产工序管理', 'yinjinlu', '0', '/', '{}', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27', null);

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'measure_id', '单位ID', 'bigint(20)', 'Long', 'measureId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'measure_code', '单位编码', 'varchar(64)', 'String', 'measureCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'measure_name', '单位名称', 'varchar(255)', 'String', 'measureName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '5', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '6', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '7', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '8', 'admin', '2024-06-26 16:42:01', '', '2024-06-26 16:48:49');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'client_id', '客户ID', 'bigint(20)', 'Long', 'clientId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'client_code', '客户编码', 'varchar(64)', 'String', 'clientCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'client_name', '客户名称', 'varchar(255)', 'String', 'clientName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'client_type', '客户类型', 'varchar(64)', 'String', 'clientType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'address', '客户地址', 'varchar(500)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '5', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'contact', '客户联系人', 'varchar(40)', 'String', 'contact', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('15', '2', 'phone_number', '客户电话', 'varchar(64)', 'String', 'phoneNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'credit_code', '统一社会信用代码', 'varchar(64)', 'String', 'creditCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('17', '2', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('18', '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '10', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('19', '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '11', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('20', '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '12', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('21', '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '13', 'admin', '2024-06-26 17:41:15', '', '2024-06-26 17:41:55');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'vendor_id', '供应商ID', 'bigint(20)', 'Long', 'vendorId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'vendor_code', '供应商编码', 'varchar(64)', 'String', 'vendorCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'vendor_name', '供应商名称', 'varchar(255)', 'String', 'vendorName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'vendor_des', '供应商简介', 'varchar(500)', 'String', 'vendorDes', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'vendor_level', '供应商等级', 'varchar(64)', 'String', 'vendorLevel', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'vendor_score', '供应商评分', 'int(11)', 'Long', 'vendorScore', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('28', '3', 'address', '供应商地址', 'varchar(500)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '7', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('29', '3', 'contact', '供应商联系人', 'varchar(20)', 'String', 'contact', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('30', '3', 'phone_number', '供应商电话', 'varchar(64)', 'String', 'phoneNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('31', '3', 'credit_code', '统一社会信用代码', 'varchar(64)', 'String', 'creditCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2024-06-28 09:54:20', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('32', '3', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2024-06-28 09:54:21', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('33', '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '12', 'admin', '2024-06-28 09:54:21', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('34', '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '13', 'admin', '2024-06-28 09:54:21', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('35', '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '14', 'admin', '2024-06-28 09:54:21', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('36', '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '15', 'admin', '2024-06-28 09:54:21', '', '2024-06-28 09:55:04');
INSERT INTO `gen_table_column` VALUES ('37', '4', 'workshop_id', '车间ID', 'bigint(20)', 'Long', 'workshopId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('38', '4', 'workshop_code', '车间编码', 'varchar(64)', 'String', 'workshopCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('39', '4', 'workshop_name', '车间名称', 'varchar(255)', 'String', 'workshopName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('40', '4', 'area', '面积', 'double(12,2)', 'BigDecimal', 'area', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('41', '4', 'charge', '负责人', 'varchar(64)', 'String', 'charge', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('42', '4', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('43', '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('44', '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('45', '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('46', '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2024-06-28 11:22:33', '', '2024-06-28 11:22:57');
INSERT INTO `gen_table_column` VALUES ('47', '5', 'workstation_id', '工作站ID', 'bigint(20)', 'Long', 'workstationId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('48', '5', 'workstation_code', '工作站编码', 'varchar(64)', 'String', 'workstationCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('49', '5', 'workstation_name', '工作站名称', 'varchar(255)', 'String', 'workstationName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('50', '5', 'workshop_id', '所在车间ID', 'bigint(20)', 'Long', 'workshopId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('51', '5', 'workshop_code', '所在车间编码', 'varchar(64)', 'String', 'workshopCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('52', '5', 'workshop_name', '所在车间名称', 'varchar(255)', 'String', 'workshopName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('53', '5', 'process_id', '工序ID', 'bigint(20)', 'Long', 'processId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('54', '5', 'process_code', '工序编码', 'varchar(64)', 'String', 'processCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('55', '5', 'process_name', '工序名称', 'varchar(255)', 'String', 'processName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '9', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('56', '5', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('57', '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('58', '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '12', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('59', '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('60', '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2024-06-28 11:29:12', '', '2024-06-28 11:30:12');
INSERT INTO `gen_table_column` VALUES ('61', '6', 'process_id', '工序ID', 'bigint(20)', 'Long', 'processId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('62', '6', 'process_code', '工序编码', 'varchar(64)', 'String', 'processCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('63', '6', 'process_name', '工序名称', 'varchar(255)', 'String', 'processName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('64', '6', 'attention', '工艺要求', 'varchar(1000)', 'String', 'attention', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('65', '6', 'enable_flag', '是否启用', 'char(1)', 'String', 'enableFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('66', '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('67', '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('68', '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');
INSERT INTO `gen_table_column` VALUES ('69', '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2024-06-28 11:41:05', '', '2024-06-28 11:41:27');

-- ----------------------------
-- Table structure for `md_client`
-- ----------------------------
DROP TABLE IF EXISTS `md_client`;
CREATE TABLE `md_client` (
  `client_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户名称',
  `client_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'ENTERPRISE' COMMENT '客户类型',
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户地址',
  `contact` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户联系人',
  `phone_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户电话',
  `credit_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='客户表';

-- ----------------------------
-- Records of md_client
-- ----------------------------
INSERT INTO `md_client` VALUES ('203', 'C-HUAWEI', '华为', 'PERSON', '东莞市', '', '1895623451', '', 'N', '', '2024-05-18 12:21:32', '', '2024-06-26 17:59:53');
INSERT INTO `md_client` VALUES ('205', 'OPPO2', 'OPPO2', 'PERSON', null, null, null, '2', 'Y', '', '2024-06-14 09:47:19', '', '2024-06-26 17:55:35');
INSERT INTO `md_client` VALUES ('206', 'VIVO', 'VIVO', 'ENTERPRISE', null, null, null, null, 'Y', '', '2024-06-14 09:47:31', '', null);
INSERT INTO `md_client` VALUES ('207', 'HONOR', '荣耀', 'ENTERPRISE', '深圳市福田区香蜜湖街道东海社区红荔西路8089号深业中城6号楼A单元3401', '吴晖', null, '91440300MA5G49LC9K', 'Y', '', '2024-06-14 09:47:46', '超级管理员', '2024-06-16 10:40:48');
INSERT INTO `md_client` VALUES ('208', 'MI', '小米', 'ENTERPRISE', '北京市海淀区西二旗中路33号院6号楼6层006号', '雷军', '400-100-5678', '91110108551385082Q', 'Y', '超级管理员', '2024-06-14 15:55:23', '超级管理员', '2024-06-16 10:40:39');
INSERT INTO `md_client` VALUES ('209', 'aaaa', 'aaa', 'PERSON', '111', '1111', '111', 'aa', 'Y', '', '2024-06-26 17:57:58', '', null);

-- ----------------------------
-- Table structure for `md_item`
-- ----------------------------
DROP TABLE IF EXISTS `md_item`;
CREATE TABLE `md_item` (
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `item_type_id` bigint(20) DEFAULT '0' COMMENT '物料类型ID',
  `item_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '物料类型编码',
  `item_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '物料类型名称',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='物料产品表（需要）';

-- ----------------------------
-- Records of md_item
-- ----------------------------
INSERT INTO `md_item` VALUES ('203', 'IF2024051850', 'A01有线耳机', 'A01', '副', 'PRODUCT', '205', 'ITEM_TYPE_0100', '有线耳机', 'Y', 'admin', '2024-05-18 12:38:17', 'admin', '2024-05-18 12:45:38');
INSERT INTO `md_item` VALUES ('204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', '片', 'ITEM', '215', 'ITEM_TYPE_0110', '耳机电路板', 'Y', 'admin', '2024-05-18 12:40:50', '', null);
INSERT INTO `md_item` VALUES ('205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', '套', 'ITEM', '216', 'ITEM_TYPE_0111', '扬声器单元', 'Y', 'admin', '2024-05-18 12:43:16', '', null);
INSERT INTO `md_item` VALUES ('206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', '套', 'ITEM', '217', 'ITEM_TYPE_0112', '耳机外壳', 'Y', 'admin', '2024-05-18 12:43:43', '', null);
INSERT INTO `md_item` VALUES ('207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', '套', 'ITEM', '219', 'ITEM_TYPE_0114', '线缆', 'Y', 'admin', '2024-05-18 12:44:20', 'admin', '2024-05-18 13:48:34');
INSERT INTO `md_item` VALUES ('208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', '套', 'ITEM', '220', 'ITEM_TYPE_0115', '耳机头带', 'Y', 'admin', '2024-05-18 12:44:45', '', null);
INSERT INTO `md_item` VALUES ('209', 'IF2024051820', 'A01耳机线绝缘层', 'EJXJYC-A01', '套', 'ITEM', '207', 'ITEM_TYPE_0102', '塑料材料', 'Y', 'admin', '2024-05-18 13:46:10', '', null);
INSERT INTO `md_item` VALUES ('210', 'IF2024051816', 'A01耳机线铜芯', 'TX-A01', '套', 'ITEM', '208', 'ITEM_TYPE_0103', '金属材料', 'Y', 'admin', '2024-05-18 13:46:57', '', null);
INSERT INTO `md_item` VALUES ('211', 'IF2024051841', '有线耳机电容', 'DR', '套', 'ITEM', '209', 'ITEM_TYPE_0104', '电子元件', 'Y', 'admin', '2024-05-18 15:32:50', 'admin', '2024-05-18 15:33:53');
INSERT INTO `md_item` VALUES ('212', '454655sdfksjdf4566', 'A02无线耳机', 'A02', 'MEASUR69219894', 'PRODUCT', '206', 'ITEM_TYPE_0101', '无线耳机', 'Y', 'admin', '2024-06-14 09:51:13', '超级管理员', '2024-06-16 10:50:27');
INSERT INTO `md_item` VALUES ('214', 'ITEM13300474', 'sdfsfsdfsf', 'sdfsfsfsd', 'MEASUR96691223', 'PRODUCT', '205', 'ITEM_TYPE_0100', '有线耳机', 'Y', '超级管理员', '2024-06-19 12:39:21', '', null);

-- ----------------------------
-- Table structure for `md_item_type`
-- ----------------------------
DROP TABLE IF EXISTS `md_item_type`;
CREATE TABLE `md_item_type` (
  `item_type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '产品物料类型ID',
  `item_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料类型编码',
  `item_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料类型名称',
  `parent_type_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父类型ID',
  `ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所有层级父节点',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`item_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='物料产品分类表(需要)';

-- ----------------------------
-- Records of md_item_type
-- ----------------------------
INSERT INTO `md_item_type` VALUES ('200', 'ITEM_TYPE_0000', '所有分类', '0', '0', 'ITEM', 'Y', '', null, 'admin', '2024-05-14 16:19:30');
INSERT INTO `md_item_type` VALUES ('201', 'ITEM_TYPE_0096', '所有物料', '200', '0,200', 'ITEM', 'Y', 'admin', '2024-05-14 16:19:43', '', null);
INSERT INTO `md_item_type` VALUES ('202', 'ITEM_TYPE_0097', '所有产品', '200', '0,200', 'PRODUCT', 'Y', 'admin', '2024-05-14 16:19:54', '', null);
INSERT INTO `md_item_type` VALUES ('203', 'ITEM_TYPE_0098', '耳机原材料', '201', '0,200,201', 'ITEM', 'Y', 'admin', '2024-05-14 16:20:12', 'admin', '2024-05-18 12:31:10');
INSERT INTO `md_item_type` VALUES ('204', 'ITEM_TYPE_0099', '耳机半成品', '201', '0,200,201', 'ITEM', 'Y', 'admin', '2024-05-14 16:20:22', 'admin', '2024-05-18 12:31:30');
INSERT INTO `md_item_type` VALUES ('205', 'ITEM_TYPE_0100', '有线耳机', '202', '0,200,202', 'PRODUCT', 'Y', 'admin', '2024-05-14 16:20:35', '', null);
INSERT INTO `md_item_type` VALUES ('206', 'ITEM_TYPE_0101', '无线耳机', '202', '0,200,202', 'PRODUCT', 'Y', 'admin', '2024-05-14 16:20:43', '', null);
INSERT INTO `md_item_type` VALUES ('207', 'ITEM_TYPE_0102', '塑料材料', '203', '0,200,201,203', 'PRODUCT', 'Y', 'admin', '2024-05-18 12:31:49', 'admin', '2024-06-14 09:08:59');
INSERT INTO `md_item_type` VALUES ('208', 'ITEM_TYPE_0103', '金属材料', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:32:05', '', null);
INSERT INTO `md_item_type` VALUES ('209', 'ITEM_TYPE_0104', '电子元件', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:32:17', '', null);
INSERT INTO `md_item_type` VALUES ('210', 'ITEM_TYPE_0105', '电池', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:32:36', '', null);
INSERT INTO `md_item_type` VALUES ('211', 'ITEM_TYPE_0106', '音频元件', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:33:00', '', null);
INSERT INTO `md_item_type` VALUES ('213', 'ITEM_TYPE_0108', '纺织材料', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:33:46', '', null);
INSERT INTO `md_item_type` VALUES ('214', 'ITEM_TYPE_0109', '无线通讯模块', '203', '0,200,201,203', 'ITEM', 'Y', 'admin', '2024-05-18 12:34:34', '', null);
INSERT INTO `md_item_type` VALUES ('215', 'ITEM_TYPE_0110', '耳机电路板', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:35:22', '', null);
INSERT INTO `md_item_type` VALUES ('216', 'ITEM_TYPE_0111', '扬声器单元', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:35:38', '', null);
INSERT INTO `md_item_type` VALUES ('217', 'ITEM_TYPE_0112', '耳机外壳', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:35:52', '', null);
INSERT INTO `md_item_type` VALUES ('218', 'ITEM_TYPE_0113', '电池组件', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:36:04', '', null);
INSERT INTO `md_item_type` VALUES ('219', 'ITEM_TYPE_0114', '线缆', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:36:28', '', null);
INSERT INTO `md_item_type` VALUES ('220', 'ITEM_TYPE_0115', '耳机头带', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:36:46', '', null);
INSERT INTO `md_item_type` VALUES ('221', 'ITEM_TYPE_0116', '蓝牙连接器', '204', '0,200,201,204', 'ITEM', 'Y', 'admin', '2024-05-18 12:37:27', '', null);

-- ----------------------------
-- Table structure for `md_product_bom`
-- ----------------------------
DROP TABLE IF EXISTS `md_product_bom`;
CREATE TABLE `md_product_bom` (
  `bom_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `item_id` bigint(20) NOT NULL COMMENT '物料产品ID',
  `bom_item_id` bigint(20) NOT NULL COMMENT 'BOM物料ID',
  `bom_item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料编码',
  `bom_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料名称',
  `bom_item_spec` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'BOM物料规格',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `quantity` double(12,4) NOT NULL DEFAULT '0.0000' COMMENT '物料使用比例',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`bom_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='产品BOM关系表';

-- ----------------------------
-- Records of md_product_bom
-- ----------------------------
INSERT INTO `md_product_bom` VALUES ('200', '203', '204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', 'pice', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 12:44:58', '', null);
INSERT INTO `md_product_bom` VALUES ('201', '203', '205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 12:45:04', '', null);
INSERT INTO `md_product_bom` VALUES ('202', '203', '206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 12:45:12', '', null);
INSERT INTO `md_product_bom` VALUES ('203', '203', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 12:45:19', '', null);
INSERT INTO `md_product_bom` VALUES ('204', '203', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 12:45:32', '', null);
INSERT INTO `md_product_bom` VALUES ('205', '207', '209', 'IF2024051820', 'A01耳机线绝缘层', 'EJXJYC-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 13:48:27', '', null);
INSERT INTO `md_product_bom` VALUES ('206', '207', '210', 'IF2024051816', 'A01耳机线铜芯', 'TX-A01', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 13:48:33', '', null);
INSERT INTO `md_product_bom` VALUES ('207', '211', '211', 'IF2024051841', '有线耳机电容', 'DR', 'system', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-05-18 15:33:48', '', null);
INSERT INTO `md_product_bom` VALUES ('208', '206', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', '套', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-06-14 09:22:35', '', null);
INSERT INTO `md_product_bom` VALUES ('209', '206', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', '套', 'ITEM', '1.0000', 'Y', '', null, null, '0', '0', '', '2024-06-14 09:22:35', '', null);

-- ----------------------------
-- Table structure for `md_product_sip`
-- ----------------------------
DROP TABLE IF EXISTS `md_product_sip`;
CREATE TABLE `md_product_sip` (
  `sip_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `item_id` bigint(20) NOT NULL COMMENT '物料产品ID',
  `order_num` int(11) DEFAULT NULL COMMENT '排列顺序',
  `process_id` bigint(20) DEFAULT NULL COMMENT '对应的工序',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编号',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `sip_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `sip_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '详细描述',
  `sip_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片地址',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`sip_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='产品SIP表';

-- ----------------------------
-- Records of md_product_sip
-- ----------------------------

-- ----------------------------
-- Table structure for `md_product_sop`
-- ----------------------------
DROP TABLE IF EXISTS `md_product_sop`;
CREATE TABLE `md_product_sop` (
  `sop_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `item_id` bigint(20) NOT NULL COMMENT '物料产品ID',
  `order_num` int(11) DEFAULT NULL COMMENT '排列顺序',
  `process_id` bigint(20) DEFAULT NULL COMMENT '对应的工序',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编号',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `sop_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `sop_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '详细描述',
  `sop_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片地址',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`sop_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='产品SOP表';

-- ----------------------------
-- Records of md_product_sop
-- ----------------------------

-- ----------------------------
-- Table structure for `md_unit_measure`
-- ----------------------------
DROP TABLE IF EXISTS `md_unit_measure`;
CREATE TABLE `md_unit_measure` (
  `measure_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '单位ID',
  `measure_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位编码',
  `measure_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位名称',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`measure_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='单位表';

-- ----------------------------
-- Records of md_unit_measure
-- ----------------------------
INSERT INTO `md_unit_measure` VALUES ('212', 'MEASUR69219894', '套', 'Y', '', '2024-06-16 10:39:52', '', '2024-06-26 17:39:55');
INSERT INTO `md_unit_measure` VALUES ('213', 'MEASUR94201987', '个', 'Y', '', '2024-06-16 10:40:00', '', null);
INSERT INTO `md_unit_measure` VALUES ('214', 'MEASUR92522310', '套', 'Y', '', '2024-06-26 17:00:34', '', null);

-- ----------------------------
-- Table structure for `md_vendor`
-- ----------------------------
DROP TABLE IF EXISTS `md_vendor`;
CREATE TABLE `md_vendor` (
  `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商编码',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商名称',
  `vendor_des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供应商简介',
  `vendor_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供应商等级',
  `vendor_score` int(11) DEFAULT NULL COMMENT '供应商评分',
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供应商地址',
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供应商联系人',
  `phone_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供应商电话',
  `credit_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`vendor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='供应商表';

-- ----------------------------
-- Records of md_vendor
-- ----------------------------
INSERT INTO `md_vendor` VALUES ('204', '55860240-6', '浙江嘉盛塑胶有限公司', '专注于提供各种塑料原材料，广泛应用于耳机外壳等部件的制造。', 'B', '100', '诸暨市陶朱街道千禧路17号1', '王伟', '18956234512', null, 'Y', '', '2024-05-18 13:57:56', '超级管理员', '2024-06-28 11:11:28');
INSERT INTO `md_vendor` VALUES ('205', '59584135-0', '东莞市烨冠电子科技有限公司', '研发、产销、加工：电子产品及配件，电线、电缆及辅材，塑胶原料、塑胶制品；货物进出口、技术进出口。', 'B', '100', null, null, '13592727883', '914419005958413505', 'Y', '', '2024-05-18 14:11:57', '', null);
INSERT INTO `md_vendor` VALUES ('206', '33487366-1', '东莞市恩捷电子有限公司', '销售：电子元器件、电子产品、集成电路板、通讯设备；货物进出口、技术进出口。', 'B', '100', null, '刘银', '13712126682', '91441900334873661N', 'Y', '', '2024-05-18 14:13:23', '超级管理员', '2024-06-16 10:41:35');

-- ----------------------------
-- Table structure for `md_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `md_workshop`;
CREATE TABLE `md_workshop` (
  `workshop_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车间ID',
  `workshop_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车间编码',
  `workshop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车间名称',
  `area` double(12,2) DEFAULT NULL COMMENT '面积',
  `charge` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '负责人',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workshop_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='车间表';

-- ----------------------------
-- Records of md_workshop
-- ----------------------------
INSERT INTO `md_workshop` VALUES ('204', 'WORKSHOP45903359', '第一生产车间2', '333.00', '王经理', 'N', '超级管理员', '2024-06-16 10:42:06', '超级管理员', '2024-06-28 11:28:13');
INSERT INTO `md_workshop` VALUES ('205', 'WORKSHOP19094807', '第二生产车间', '400.00', '林彬', 'Y', '超级管理员', '2024-06-16 10:42:23', '超级管理员', '2024-06-16 10:42:23');
INSERT INTO `md_workshop` VALUES ('206', 'WORKSHOP56999114', '第三生产车间', '1000.00', null, 'Y', '超级管理员', '2024-06-16 10:42:37', '超级管理员', '2024-06-16 10:42:37');

-- ----------------------------
-- Table structure for `md_workstation`
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation`;
CREATE TABLE `md_workstation` (
  `workstation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站编码',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站名称',
  `workshop_id` bigint(20) DEFAULT NULL COMMENT '所在车间ID',
  `workshop_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在车间编码',
  `workshop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在车间名称',
  `process_id` bigint(20) DEFAULT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workstation_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='工作站表';

-- ----------------------------
-- Records of md_workstation
-- ----------------------------
INSERT INTO `md_workstation` VALUES ('205', 'WORKSTATION32856718', '耳机线组装工位', '204', 'WORKSHOP45903359', '第一生产车间', '209', 'PROCESS85255759', '耳机线生产工序', 'Y', '超级管理员', '2024-06-16 10:47:04', '超级管理员', '2024-06-16 10:47:04');
INSERT INTO `md_workstation` VALUES ('206', 'WORKSTATION98786383', '耳机壳生产工位', '204', 'WORKSHOP45903359', '第一生产车间', '208', 'PROCESS53386725', '耳机壳生产工序', 'Y', '超级管理员', '2024-06-16 10:47:27', '超级管理员', '2024-06-16 10:47:27');
INSERT INTO `md_workstation` VALUES ('207', 'WORKSTATION93410856', '有线耳机电路板生产工位', '204', 'WORKSHOP45903359', '第一生产车间', '211', 'PROCESS85096964', '有线耳机电路板生产工序', 'Y', '超级管理员', '2024-06-16 10:47:51', '超级管理员', '2024-06-16 10:47:51');

-- ----------------------------
-- Table structure for `md_workstation_machine`
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_machine`;
CREATE TABLE `md_workstation_machine` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `machinery_id` bigint(20) NOT NULL COMMENT '设备ID',
  `machinery_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '设备编码',
  `machinery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '设备名称',
  `quantity` int(11) DEFAULT '1' COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='设备资源表';

-- ----------------------------
-- Records of md_workstation_machine
-- ----------------------------

-- ----------------------------
-- Table structure for `md_workstation_tool`
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_tool`;
CREATE TABLE `md_workstation_tool` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `tool_type_id` bigint(20) NOT NULL COMMENT '工装夹具类型ID',
  `tool_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型编码',
  `tool_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型名称',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='工装夹具资源表';

-- ----------------------------
-- Records of md_workstation_tool
-- ----------------------------

-- ----------------------------
-- Table structure for `md_workstation_worker`
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_worker`;
CREATE TABLE `md_workstation_worker` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '岗位编码',
  `post_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '岗位名称',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='人力资源表';

-- ----------------------------
-- Records of md_workstation_worker
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `pro_feedback`;
CREATE TABLE `pro_feedback` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `feedback_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '报工类型',
  `feedback_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '报工单编号',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站名称',
  `workorder_id` bigint(20) NOT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产工单名称',
  `process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `task_id` bigint(20) DEFAULT NULL COMMENT '生产任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产任务编号',
  `item_id` bigint(20) NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '单位',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `quantity` double(14,2) DEFAULT NULL COMMENT '排产数量',
  `quantity_feedback` double(14,2) DEFAULT NULL COMMENT '本次报工数量',
  `quantity_qualified` double(14,2) DEFAULT NULL COMMENT '合格品数量',
  `quantity_unquanlified` double(14,2) DEFAULT NULL COMMENT '不良品数量',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '报工用户名',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '昵称',
  `feedback_channel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '报工途径',
  `feedback_time` datetime DEFAULT NULL COMMENT '报工时间',
  `record_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '记录人',
  `record_nick` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '记录人名称',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'PREPARE' COMMENT '状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产报工记录表';

-- ----------------------------
-- Records of pro_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_process`
-- ----------------------------
DROP TABLE IF EXISTS `pro_process`;
CREATE TABLE `pro_process` (
  `process_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工序名称',
  `attention` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工艺要求',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`process_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产工序表';

-- ----------------------------
-- Records of pro_process
-- ----------------------------
INSERT INTO `pro_process` VALUES ('208', 'PROCESS53386725', '耳机壳生产工序', null, 'Y', '超级管理员', '2024-06-16 10:44:08', '超级管理员', '2024-06-16 10:44:08');
INSERT INTO `pro_process` VALUES ('209', 'PROCESS85255759', '耳机线生产工序', null, 'Y', '超级管理员', '2024-06-16 10:44:18', '超级管理员', '2024-06-16 10:44:18');
INSERT INTO `pro_process` VALUES ('210', 'PROCESS51608055', '无线耳机电路板生产工序', null, 'Y', '超级管理员', '2024-06-16 10:44:33', '超级管理员', '2024-06-16 10:44:33');
INSERT INTO `pro_process` VALUES ('211', 'PROCESS85096964', '有线耳机电路板生产工序', null, 'Y', '超级管理员', '2024-06-16 10:44:51', '超级管理员', '2024-06-16 10:44:51');

-- ----------------------------
-- Table structure for `pro_process_content`
-- ----------------------------
DROP TABLE IF EXISTS `pro_process_content`;
CREATE TABLE `pro_process_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `order_num` int(11) DEFAULT '0' COMMENT '顺序编号',
  `content_text` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '内容说明',
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '辅助设备',
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '辅助材料',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产工序内容表';

-- ----------------------------
-- Records of pro_process_content
-- ----------------------------
INSERT INTO `pro_process_content` VALUES ('201', '202', '2', '步骤B', '设备B', '辅料B', '', '2024-05-17 18:08:31', '', null);
INSERT INTO `pro_process_content` VALUES ('206', '206', '1', '步骤1', null, null, '', '2024-06-16 09:25:07', '', null);
INSERT INTO `pro_process_content` VALUES ('207', '206', '2', '步骤2', null, null, '', '2024-06-16 09:25:14', '', null);
INSERT INTO `pro_process_content` VALUES ('208', '205', '1', '步骤1', null, null, '', '2024-06-16 09:25:32', '', null);
INSERT INTO `pro_process_content` VALUES ('209', '205', '2', '步骤2', null, null, '', '2024-06-16 09:25:39', '', null);
INSERT INTO `pro_process_content` VALUES ('210', '208', '1', '步骤1', null, null, '', '2024-06-16 10:45:11', '', null);
INSERT INTO `pro_process_content` VALUES ('211', '208', '2', '步骤2', null, null, '', '2024-06-16 10:45:17', '', null);
INSERT INTO `pro_process_content` VALUES ('212', '208', '3', '步骤3', null, null, '', '2024-06-16 10:45:23', '', null);
INSERT INTO `pro_process_content` VALUES ('213', '209', '1', '步骤A', null, null, '', '2024-06-16 10:45:41', '', null);
INSERT INTO `pro_process_content` VALUES ('214', '209', '2', '步骤B', null, null, '', '2024-06-16 10:45:47', '', null);
INSERT INTO `pro_process_content` VALUES ('215', '210', '1', '步骤AAAA', null, null, '', '2024-06-16 10:46:03', '', null);
INSERT INTO `pro_process_content` VALUES ('216', '210', '2', '步骤BBBB', null, null, '', '2024-06-16 10:46:11', '', null);
INSERT INTO `pro_process_content` VALUES ('217', '211', '1', '步骤AAAA', null, null, '', '2024-06-16 10:46:22', '', null);
INSERT INTO `pro_process_content` VALUES ('218', '211', '2', '步骤BBBB', null, null, '', '2024-06-16 10:46:28', '', null);

-- ----------------------------
-- Table structure for `pro_route`
-- ----------------------------
DROP TABLE IF EXISTS `pro_route`;
CREATE TABLE `pro_route` (
  `route_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工艺路线ID',
  `route_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工艺路线编号',
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工艺路线名称',
  `route_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工艺路线说明',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`route_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='工艺路线表';

-- ----------------------------
-- Records of pro_route
-- ----------------------------
INSERT INTO `pro_route` VALUES ('203', 'ROUTER36889504', '有线耳机生产工艺', null, 'Y', '', '2024-06-16 10:48:16', '', null);

-- ----------------------------
-- Table structure for `pro_route_process`
-- ----------------------------
DROP TABLE IF EXISTS `pro_route_process`;
CREATE TABLE `pro_route_process` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `route_id` bigint(20) NOT NULL COMMENT '工艺路线ID',
  `process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `order_num` int(11) DEFAULT '1' COMMENT '序号',
  `next_process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `next_process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编码',
  `next_process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `link_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'SS' COMMENT '与下一道工序关系',
  `default_pre_time` int(11) DEFAULT '0' COMMENT '准备时间',
  `default_suf_time` int(11) DEFAULT '0' COMMENT '等待时间',
  `color_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#00AEF3' COMMENT '甘特图显示颜色',
  `key_flag` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '关键工序',
  `is_check` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '是否检验',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='工艺组成表';

-- ----------------------------
-- Records of pro_route_process
-- ----------------------------
INSERT INTO `pro_route_process` VALUES ('203', '203', '211', 'PROCESS85096964', '有线耳机电路板生产工序', '1', '209', 'PROCESS85255759', '耳机线生产工序', 'SS', '1', '1', '#00AEF3', 'Y', 'N', '', '2024-06-16 10:48:57', '', '2024-06-16 10:49:17');
INSERT INTO `pro_route_process` VALUES ('204', '203', '209', 'PROCESS85255759', '耳机线生产工序', '2', '208', 'PROCESS53386725', '耳机壳生产工序', 'SS', '1', '1', '#24E627', 'N', 'N', '', '2024-06-16 10:49:17', '', '2024-06-16 10:49:32');
INSERT INTO `pro_route_process` VALUES ('205', '203', '208', 'PROCESS53386725', '耳机壳生产工序', '3', '0', null, '无', 'SS', '1', '1', '#00AEF3', 'N', 'N', '', '2024-06-16 10:49:32', '', null);

-- ----------------------------
-- Table structure for `pro_route_product`
-- ----------------------------
DROP TABLE IF EXISTS `pro_route_product`;
CREATE TABLE `pro_route_product` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `route_id` bigint(20) NOT NULL COMMENT '工艺路线ID',
  `item_id` bigint(20) NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` int(11) DEFAULT '1' COMMENT '生产数量',
  `production_time` double(12,2) DEFAULT '1.00' COMMENT '生产用时',
  `time_unit_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'MINUTE' COMMENT '时间单位',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='产品制程';

-- ----------------------------
-- Records of pro_route_product
-- ----------------------------
INSERT INTO `pro_route_product` VALUES ('203', '203', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '1', '1.00', 'MINUTE', '', null, null, '0', '0', '', '2024-06-16 10:51:29', '', null);

-- ----------------------------
-- Table structure for `pro_route_product_bom`
-- ----------------------------
DROP TABLE IF EXISTS `pro_route_product_bom`;
CREATE TABLE `pro_route_product_bom` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `route_id` bigint(20) NOT NULL COMMENT '工艺路线ID',
  `process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `product_id` bigint(20) NOT NULL COMMENT '产品BOM中的唯一ID',
  `item_id` bigint(20) NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` double(12,2) DEFAULT '1.00' COMMENT '用料比例',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='产品制程物料BOM表';

-- ----------------------------
-- Records of pro_route_product_bom
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_task`
-- ----------------------------
DROP TABLE IF EXISTS `pro_task`;
CREATE TABLE `pro_task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务编号',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `workorder_id` bigint(20) NOT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单名称',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站名称',
  `route_id` bigint(20) DEFAULT NULL COMMENT '工艺ID',
  `route_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工艺编号',
  `process_id` bigint(20) NOT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `item_id` bigint(20) NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` double(14,2) NOT NULL DEFAULT '1.00' COMMENT '排产数量',
  `quantity_produced` double(14,2) DEFAULT '0.00' COMMENT '已生产数量',
  `quantity_quanlify` double(14,2) DEFAULT '0.00' COMMENT '合格品数量',
  `quantity_unquanlify` double(14,2) DEFAULT '0.00' COMMENT '不良品数量',
  `quantity_changed` double(14,2) DEFAULT '0.00' COMMENT '调整数量',
  `client_id` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户名称',
  `client_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户简称',
  `start_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '开始生产时间',
  `duration` int(11) DEFAULT '1' COMMENT '生产时长',
  `end_time` datetime DEFAULT NULL COMMENT '完成生产时间',
  `color_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#00AEF3' COMMENT '甘特图显示颜色',
  `request_date` datetime DEFAULT NULL COMMENT '需求日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'NORMARL' COMMENT '生产状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产任务表';

-- ----------------------------
-- Records of pro_task
-- ----------------------------
INSERT INTO `pro_task` VALUES ('200', 'TASK20240008', 'A01有线耳机【200】副', '215', 'PWO20240616105305', '荣耀手机有线耳机生产工单', '207', 'WORKSTATION93410856', '有线耳机电路板生产工位', null, null, '211', 'PROCESS85096964', '有线耳机电路板生产工序', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '200.00', '0.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-06-16 00:00:00', '11', '2024-06-19 16:00:00', '#00AEF3', null, 'NORMARL', '', '2024-06-16 12:00:41', '', null);
INSERT INTO `pro_task` VALUES ('201', 'TASK20240009', 'A01有线耳机【500】副', '215', 'PWO20240616105305', '荣耀手机有线耳机生产工单', '207', 'WORKSTATION93410856', '有线耳机电路板生产工位', null, null, '211', 'PROCESS85096964', '有线耳机电路板生产工序', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '500.00', '0.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-06-20 00:00:00', '50', '2024-07-06 16:00:00', '#F300EF', null, 'NORMARL', '', '2024-06-16 12:04:09', '', null);
INSERT INTO `pro_task` VALUES ('202', 'TASK20240010', 'A01有线耳机【4】副', '215', 'PWO20240616105305', '荣耀手机有线耳机生产工单', '205', 'WORKSTATION32856718', '耳机线组装工位', null, null, '209', 'PROCESS85255759', '耳机线生产工序', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '4.00', '0.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-06-20 00:00:00', '6', '2024-06-22 00:00:00', '#24E627', null, 'NORMARL', '', '2024-06-16 12:06:59', '', null);
INSERT INTO `pro_task` VALUES ('203', 'TASK20240011', 'A01有线耳机【4】副', '215', 'PWO20240616105305', '荣耀手机有线耳机生产工单', '206', 'WORKSTATION98786383', '耳机壳生产工位', null, null, '208', 'PROCESS53386725', '耳机壳生产工序', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '4.00', '0.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-06-26 00:00:00', '6', '2024-06-28 00:00:00', '#00AEF3', null, 'NORMARL', '', '2024-06-16 12:07:53', '', null);

-- ----------------------------
-- Table structure for `pro_task_issue`
-- ----------------------------
DROP TABLE IF EXISTS `pro_task_issue`;
CREATE TABLE `pro_task_issue` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `task_id` bigint(20) NOT NULL COMMENT '生产任务ID',
  `workorder_id` bigint(20) DEFAULT NULL COMMENT '生产工单ID',
  `workstation_id` bigint(20) DEFAULT NULL COMMENT '工作站ID',
  `source_doc_id` bigint(20) NOT NULL COMMENT '单据ID',
  `source_doc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '单据编号',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '投料批次',
  `source_line_id` bigint(20) DEFAULT NULL COMMENT '行ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity_issued` double(12,2) DEFAULT NULL COMMENT '总的投料数量',
  `quantity_available` double(12,2) DEFAULT NULL COMMENT '当前可用数量',
  `quantity_used` double(12,2) DEFAULT NULL COMMENT '当前使用数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产任务投料表';

-- ----------------------------
-- Records of pro_task_issue
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_trans_consume`
-- ----------------------------
DROP TABLE IF EXISTS `pro_trans_consume`;
CREATE TABLE `pro_trans_consume` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `trans_order_id` bigint(20) DEFAULT NULL COMMENT '流转单ID',
  `trans_order_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '流转单编号',
  `task_id` bigint(20) NOT NULL COMMENT '生产任务ID',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `process_id` bigint(20) DEFAULT NULL COMMENT '工序ID',
  `workorder_id` bigint(20) DEFAULT NULL COMMENT '生产工单ID',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '批次号',
  `source_doc_id` bigint(20) DEFAULT NULL COMMENT '被消耗单据ID',
  `source_doc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '被消耗单据编号',
  `source_doc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '被消耗单据类型',
  `source_line_id` bigint(20) DEFAULT NULL COMMENT '被消耗单据行ID',
  `source_batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '被消耗物料批次号',
  `item_id` bigint(20) DEFAULT NULL COMMENT '被消耗产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被消耗产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被消耗产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity_consumed` double(12,2) DEFAULT NULL COMMENT '消耗数量',
  `consume_date` datetime DEFAULT NULL COMMENT '消耗时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='物料消耗记录表';

-- ----------------------------
-- Records of pro_trans_consume
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_trans_order`
-- ----------------------------
DROP TABLE IF EXISTS `pro_trans_order`;
CREATE TABLE `pro_trans_order` (
  `trans_order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流转单ID',
  `trans_order_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '流转单编号',
  `task_id` bigint(20) NOT NULL COMMENT '生产任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产任务编号',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站名称',
  `process_id` bigint(20) DEFAULT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序编号',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工序名称',
  `workorder_id` bigint(20) DEFAULT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生产工单名称',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '批次号',
  `item_id` bigint(20) DEFAULT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `barcode_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '赋码地址',
  `quantity_transfered` double(12,2) DEFAULT NULL COMMENT '流转数量',
  `produce_date` datetime DEFAULT NULL COMMENT '生产日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`trans_order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='流转单表';

-- ----------------------------
-- Records of pro_trans_order
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_user_workstation`
-- ----------------------------
DROP TABLE IF EXISTS `pro_user_workstation`;
CREATE TABLE `pro_user_workstation` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `nick_name` bigint(20) DEFAULT NULL COMMENT '名称',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站名称',
  `operation_time` datetime DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户工作站绑定关系';

-- ----------------------------
-- Records of pro_user_workstation
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_workorder`
-- ----------------------------
DROP TABLE IF EXISTS `pro_workorder`;
CREATE TABLE `pro_workorder` (
  `workorder_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单编码',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单名称',
  `order_source` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来源类型',
  `source_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '来源单据',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `product_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品编号',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品名称',
  `product_spc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` double(14,2) NOT NULL DEFAULT '0.00' COMMENT '生产数量',
  `quantity_produced` double(14,2) DEFAULT '0.00' COMMENT '已生产数量',
  `quantity_changed` double(14,2) DEFAULT '0.00' COMMENT '调整数量',
  `quantity_scheduled` double(14,2) DEFAULT '0.00' COMMENT '已排产数量',
  `client_id` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户名称',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '批次号',
  `request_date` datetime NOT NULL COMMENT '需求日期',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父工单',
  `ancestors` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所有父节点ID',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'PREPARE' COMMENT '单据状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workorder_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产工单表';

-- ----------------------------
-- Records of pro_workorder
-- ----------------------------
INSERT INTO `pro_workorder` VALUES ('215', 'PWO20240616105305', '荣耀手机有线耳机生产工单', 'ORDER', 'HONOR20240616', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '5000.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-07-31 00:00:00', '0', '0', 'CONFIRMED', '', '2024-06-16 10:53:53', '', '2024-06-16 10:54:02');
INSERT INTO `pro_workorder` VALUES ('216', 'PWO20240619113040', '测试工单', 'ORDER', '5645646545646', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '10000.00', '0.00', '0.00', '0.00', '208', 'MI', '小米', null, '2024-06-29 00:00:00', '0', '0', 'CONFIRMED', '', '2024-06-19 11:32:03', '', '2024-06-19 11:32:47');
INSERT INTO `pro_workorder` VALUES ('217', 'PWO20240619123240', '测试工单', 'STORE', null, '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', '套', '5.00', '0.00', '0.00', '0.00', null, null, null, null, '2024-06-28 00:00:00', '0', '0', 'CONFIRMED', '', '2024-06-19 12:32:57', '', '2024-06-19 12:33:04');
INSERT INTO `pro_workorder` VALUES ('219', 'PWO20240619123431', '测试工单2345', 'ORDER', '45465465456465', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '1.00', '0.00', '0.00', '0.00', '205', 'OPPO', 'OPPO', null, '2024-06-29 00:00:00', '0', '0', 'CONFIRMED', '', '2024-06-19 12:34:55', '', '2024-06-19 12:35:08');
INSERT INTO `pro_workorder` VALUES ('220', 'PWO20240619123718', '的士速递发生的', 'ORDER', '54554546546545', '203', 'IF2024051850', 'A01有线耳机', 'A01', '副', '5.00', '0.00', '0.00', '0.00', '207', 'HONOR', '荣耀', null, '2024-06-29 00:00:00', '0', '0', 'PREPARE', '', '2024-06-19 12:37:39', '', '2024-06-19 12:37:55');

-- ----------------------------
-- Table structure for `pro_workorder_bom`
-- ----------------------------
DROP TABLE IF EXISTS `pro_workorder_bom`;
CREATE TABLE `pro_workorder_bom` (
  `line_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `workorder_id` bigint(20) NOT NULL COMMENT '生产工单ID',
  `item_id` bigint(20) NOT NULL COMMENT 'BOM物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料编号',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料名称',
  `item_spc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物料产品标识',
  `quantity` double(14,2) NOT NULL DEFAULT '0.00' COMMENT '预计使用量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='生产工单BOM组成表';

-- ----------------------------
-- Records of pro_workorder_bom
-- ----------------------------
INSERT INTO `pro_workorder_bom` VALUES ('232', '215', '204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', 'pice', 'ITEM', '5000.00', '', null, null, '0', '0', '', '2024-06-16 10:53:53', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('233', '215', '205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', 'system', 'ITEM', '5000.00', '', null, null, '0', '0', '', '2024-06-16 10:53:53', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('234', '215', '206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', 'system', 'ITEM', '5000.00', '', null, null, '0', '0', '', '2024-06-16 10:53:53', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('235', '215', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', 'system', 'ITEM', '5000.00', '', null, null, '0', '0', '', '2024-06-16 10:53:53', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('236', '215', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', 'system', 'ITEM', '5000.00', '', null, null, '0', '0', '', '2024-06-16 10:53:53', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('237', '216', '204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', 'pice', 'ITEM', '10000.00', '', null, null, '0', '0', '', '2024-06-19 11:32:03', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('238', '216', '205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', 'system', 'ITEM', '10000.00', '', null, null, '0', '0', '', '2024-06-19 11:32:03', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('239', '216', '206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', 'system', 'ITEM', '10000.00', '', null, null, '0', '0', '', '2024-06-19 11:32:03', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('240', '216', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', 'system', 'ITEM', '10000.00', '', null, null, '0', '0', '', '2024-06-19 11:32:03', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('241', '216', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', 'system', 'ITEM', '10000.00', '', null, null, '0', '0', '', '2024-06-19 11:32:03', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('242', '219', '204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', 'pice', 'ITEM', '1.00', '', null, null, '0', '0', '', '2024-06-19 12:34:55', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('243', '219', '205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', 'system', 'ITEM', '1.00', '', null, null, '0', '0', '', '2024-06-19 12:34:55', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('244', '219', '206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', 'system', 'ITEM', '1.00', '', null, null, '0', '0', '', '2024-06-19 12:34:55', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('245', '219', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', 'system', 'ITEM', '1.00', '', null, null, '0', '0', '', '2024-06-19 12:34:55', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('246', '219', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', 'system', 'ITEM', '1.00', '', null, null, '0', '0', '', '2024-06-19 12:34:55', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('247', '220', '204', 'IF2024051817', 'A1有线耳机电路板', 'DLB-A01', 'pice', 'ITEM', '5.00', '', null, null, '0', '0', '', '2024-06-19 12:37:39', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('248', '220', '205', 'IF2024051801', 'A01有线耳机扬声器单元', 'YSQDY-A01', 'system', 'ITEM', '5.00', '', null, null, '0', '0', '', '2024-06-19 12:37:39', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('249', '220', '206', 'IF2024051831', 'A01有线耳机外壳', 'WK-A01', 'system', 'ITEM', '5.00', '', null, null, '0', '0', '', '2024-06-19 12:37:39', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('250', '220', '207', 'IF2024051808', 'A01有线耳机连接线', 'LJX-A01', 'system', 'ITEM', '5.00', '', null, null, '0', '0', '', '2024-06-19 12:37:39', '', null);
INSERT INTO `pro_workorder_bom` VALUES ('251', '220', '208', 'IF2024051834', 'A01有线耳机头带', 'TD-A01', 'system', 'ITEM', '5.00', '', null, null, '0', '0', '', '2024-06-19 12:37:39', '', null);

-- ----------------------------
-- Table structure for `pro_workrecord`
-- ----------------------------
DROP TABLE IF EXISTS `pro_workrecord`;
CREATE TABLE `pro_workrecord` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `nick_name` bigint(20) DEFAULT NULL COMMENT '名称',
  `workstation_id` bigint(20) NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作站名称',
  `operation_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `operation_time` datetime DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='上下工记录表';

-- ----------------------------
-- Records of pro_workrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-07-31 17:47:21', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-07-31 17:47:21', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-07-31 17:47:21', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2023-07-31 17:47:21', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-07-31 17:47:21', '', null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '哈哈电子科技', '0', '哈哈', '15888888888', 'haha@qq.com', '0', '0', 'admin', '2023-07-31 17:47:21', 'admin', '2024-05-18 17:03:06');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '信息化支持部', '1', '李伟', '15888888888', 'aaaa@qq.com', '0', '0', 'admin', '2023-07-31 17:47:21', 'admin', '2024-05-18 17:05:38');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '软件研发部', '3', '啊哈哈', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-07-31 17:47:21', 'admin', '2024-05-18 17:06:19');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-31 17:47:21', '', null);
INSERT INTO `sys_dept` VALUES ('200', '100', '0,100', '东莞分公司', '1', null, null, null, '0', '0', 'admin', '2024-05-18 17:03:25', '', null);
INSERT INTO `sys_dept` VALUES ('201', '200', '0,100,200', '消费电子生产部', '1', null, null, null, '0', '0', 'admin', '2024-05-18 17:03:51', 'admin', '2024-05-18 17:04:29');

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', 'info', 'Y', '0', 'admin', '2022-04-07 00:29:32', 'admin', '2022-08-19 20:53:31', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '1', '物料', 'ITEM', 'mes_item_product', null, 'default', 'N', '0', 'admin', '2022-04-16 16:34:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '2', '产品', 'PRODUCT', 'mes_item_product', null, 'default', 'N', '0', 'admin', '2022-04-16 16:35:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '1', '输入字符', 'INPUTCHAR', 'sys_autocode_parttype', null, 'default', 'N', '0', 'admin', '2022-04-26 15:33:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '2', '当前日期时间', 'NOWDATE', 'sys_autocode_parttype', null, 'default', 'N', '0', 'admin', '2022-04-26 15:34:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '3', '固定字符', 'FIXCHAR', 'sys_autocode_parttype', null, 'default', 'N', '0', 'admin', '2022-04-26 15:34:27', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '4', '流水号', 'SERIALNO', 'sys_autocode_parttype', null, 'default', 'N', '0', 'admin', '2022-04-26 15:34:53', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('106', '1', '按年', 'YEAR', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:35:17', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('107', '2', '按月', 'MONTH', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:35:29', 'admin', '2022-04-26 15:35:55', null);
INSERT INTO `sys_dict_data` VALUES ('108', '3', '按天', 'DAY', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:36:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('109', '4', '按小时', 'HOUR', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:36:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('110', '5', '按分钟', 'MINUTE', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:36:59', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('111', '6', '按传入字符', 'OTHER', 'sys_autocode_cyclemethod', null, 'default', 'N', '0', 'admin', '2022-04-26 15:37:19', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('112', '1', '企业客户', 'ENTERPRISE', 'mes_client_type', null, 'default', 'N', '0', 'admin', '2022-05-06 20:54:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('113', '2', '个人', 'PERSON', 'mes_client_type', null, 'default', 'N', '0', 'admin', '2022-05-06 20:55:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('114', '1', '优质供应商', 'A', 'mes_vendor_level', null, 'default', 'N', '0', 'admin', '2022-05-06 22:45:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('115', '2', '正常', 'B', 'mes_vendor_level', null, 'default', 'N', '0', 'admin', '2022-05-06 22:46:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('116', '3', '重点关注', 'C', 'mes_vendor_level', null, 'default', 'N', '0', 'admin', '2022-05-06 22:46:15', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('117', '4', '劣质供应商', 'D', 'mes_vendor_level', null, 'default', 'N', '0', 'admin', '2022-05-06 22:46:41', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('118', '5', '黑名单', 'E', 'mes_vendor_level', null, 'default', 'N', '0', 'admin', '2022-05-06 22:46:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('119', '1', '草稿', 'PREPARE', 'mes_order_status', null, 'default', 'N', '0', 'admin', '2022-05-09 10:35:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('120', '2', '已确认', 'CONFIRMED', 'mes_order_status', null, 'default', 'N', '0', 'admin', '2022-05-09 10:36:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('121', '3', '审批中', 'APPROVING', 'mes_order_status', null, 'default', 'N', '0', 'admin', '2022-05-09 10:39:30', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('122', '4', '已审批', 'APPROVED', 'mes_order_status', null, 'default', 'N', '0', 'admin', '2022-05-09 10:39:45', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('123', '5', '已完成', 'FINISHED', 'mes_order_status', null, 'default', 'N', '0', 'admin', '2022-05-09 10:40:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('124', '1', '客户订单', 'ORDER', 'mes_workorder_sourcetype', null, 'default', 'N', '0', 'admin', '2022-05-09 11:23:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('125', '2', '库存备货', 'STORE', 'mes_workorder_sourcetype', null, 'default', 'N', '0', 'admin', '2022-05-09 11:24:04', 'admin', '2022-05-09 11:24:24', null);
INSERT INTO `sys_dict_data` VALUES ('126', '1', '定期维护', 'REGULAR', 'mes_mainten_type', null, 'default', 'N', '0', 'admin', '2022-05-10 23:40:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('127', '2', '按使用次数维护', 'USAGE', 'mes_mainten_type', null, 'default', 'N', '0', 'admin', '2022-05-10 23:41:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('128', '1', '在库', 'STORE', 'mes_tool_status', null, 'default', 'N', '0', 'admin', '2022-05-11 20:51:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('129', '2', '被领用', 'ISSUE', 'mes_tool_status', null, 'default', 'N', '0', 'admin', '2022-05-11 20:51:36', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('130', '3', '报废', 'SCRAP', 'mes_tool_status', null, 'default', 'N', '0', 'admin', '2022-05-11 20:52:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('131', '4', '维修中', 'REPARE', 'mes_tool_status', null, 'default', 'N', '0', 'admin', '2022-05-11 20:52:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('132', '1', 'S-to-S', 'SS', 'mes_link_type', null, 'default', 'N', '0', 'admin', '2022-05-13 21:51:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('133', '2', 'F-to-F', 'FF', 'mes_link_type', null, 'default', 'N', '0', 'admin', '2022-05-13 21:51:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('134', '3', 'S-to-F', 'SF', 'mes_link_type', null, 'default', 'N', '0', 'admin', '2022-05-13 21:52:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('135', '4', 'F-to-S', 'FS', 'mes_link_type', null, 'default', 'N', '0', 'admin', '2022-05-13 21:52:21', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('136', '1', '秒', 'SECOND', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:41:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('137', '2', '分钟', 'MINUTE', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:41:25', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('138', '3', '小时', 'HOUR', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:41:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('139', '4', '天', 'DAY', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:41:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('140', '5', '周', 'WEEK', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:42:12', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('141', '6', '月', 'MONTH', 'mes_time_type', null, 'default', 'N', '0', 'admin', '2022-05-14 08:42:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('142', '1', '尺寸', 'SIZE', 'mes_index_type', null, 'default', 'N', '0', 'admin', '2022-05-17 21:26:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('143', '2', '外观', 'APPEARANCE', 'mes_index_type', null, 'default', 'N', '0', 'admin', '2022-05-17 21:28:19', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('144', '3', '重量', 'WEIGHT', 'mes_index_type', null, 'default', 'N', '0', 'admin', '2022-05-17 21:28:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('145', '4', '性能', 'PERFORMANCE', 'mes_index_type', null, 'default', 'N', '0', 'admin', '2022-05-17 21:29:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('146', '5', '成分', 'COMPONENT', 'mes_index_type', null, 'default', 'N', '0', 'admin', '2022-05-17 21:30:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('147', '1', '[来料检验]', 'IQC', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:38:58', 'admin', '2022-05-18 10:38:43', null);
INSERT INTO `sys_dict_data` VALUES ('148', '2', '[首检]', 'FIRST', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:39:19', 'admin', '2022-09-08 22:22:34', null);
INSERT INTO `sys_dict_data` VALUES ('149', '3', '[末检]', 'FINAL', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:39:46', 'admin', '2022-09-08 22:22:39', null);
INSERT INTO `sys_dict_data` VALUES ('150', '4', '[巡检]', 'PATROL', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:40:05', 'admin', '2022-09-08 22:22:55', null);
INSERT INTO `sys_dict_data` VALUES ('151', '5', '[成品检验]', 'FQC', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:40:27', 'admin', '2022-05-18 10:39:08', null);
INSERT INTO `sys_dict_data` VALUES ('152', '6', '[发货检验]', 'OQC', 'mes_qc_type', null, 'default', 'N', '0', 'admin', '2022-05-18 09:40:52', 'admin', '2022-05-18 10:39:14', null);
INSERT INTO `sys_dict_data` VALUES ('153', '1', '致命缺陷', 'CR', 'mes_defect_level', null, 'default', 'N', '0', 'admin', '2022-05-19 10:24:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('154', '2', '严重缺陷', 'MAJ', 'mes_defect_level', null, 'default', 'N', '0', 'admin', '2022-05-19 10:24:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('155', '3', '轻微缺陷', 'MIN', 'mes_defect_level', null, 'default', 'N', '0', 'admin', '2022-05-19 10:24:33', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('156', '1', '检验通过', 'ACCEPT', 'mes_qc_result', null, 'default', 'N', '0', 'admin', '2022-05-19 16:38:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('157', '2', '检验不通过', 'REJECT', 'mes_qc_result', null, 'default', 'N', '0', 'admin', '2022-05-19 16:38:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('159', '1', '白班', 'SINGLE', 'mes_shift_type', null, 'default', 'N', '0', 'admin', '2022-06-06 21:33:56', 'admin', '2022-06-06 21:35:05', null);
INSERT INTO `sys_dict_data` VALUES ('160', '2', '两班倒', 'SHIFT_TWO', 'mes_shift_type', null, 'default', 'N', '0', 'admin', '2022-06-06 21:34:19', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('161', '3', '三班倒', 'SHIFT_THREE', 'mes_shift_type', null, 'default', 'N', '0', 'admin', '2022-06-06 21:34:38', 'admin', '2022-06-06 21:34:45', null);
INSERT INTO `sys_dict_data` VALUES ('162', '1', '按天', 'DAY', 'mes_shift_method', null, 'default', 'N', '0', 'admin', '2022-06-06 21:39:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('163', '2', '按周', 'WEEK', 'mes_shift_method', null, 'default', 'N', '0', 'admin', '2022-06-06 21:40:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('164', '3', '按月', 'MONTH', 'mes_shift_method', null, 'default', 'N', '0', 'admin', '2022-06-06 21:40:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('165', '4', '按季度', 'QUARTER', 'mes_shift_method', null, 'default', 'N', '0', 'admin', '2022-06-06 21:40:55', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('166', '1', '注塑', 'ZS', 'mes_calendar_type', null, 'default', 'N', '0', 'admin', '2022-06-08 13:27:23', 'admin', '2022-06-11 21:05:57', null);
INSERT INTO `sys_dict_data` VALUES ('167', '2', '机加工', 'CNC', 'mes_calendar_type', null, 'default', 'N', '0', 'admin', '2022-06-08 13:27:35', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('168', '3', '组装', 'ZZ', 'mes_calendar_type', null, 'default', 'N', '0', 'admin', '2022-06-08 13:27:55', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('169', '4', '仓库', 'CK', 'mes_calendar_type', null, 'default', 'N', '0', 'admin', '2022-06-08 13:28:24', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('170', '1', '设备点检', 'CHECK', 'mes_dvsubject_type', null, 'default', 'N', '0', 'admin', '2022-06-16 16:50:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('171', '2', '设备保养', 'MAINTEN', 'mes_dvsubject_type', null, 'default', 'N', '0', 'admin', '2022-06-16 16:51:19', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('172', '1', '小时', 'HOUR', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:47:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('173', '2', '天', 'DAY', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:49:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('174', '3', '周', 'WEEK', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:49:21', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('175', '4', '月', 'MONTH', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:49:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('176', '5', '季度', 'QUARTER', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:50:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('177', '6', '年', 'YEAR', 'mes_cycle_type', null, 'default', 'N', '0', 'admin', '2022-06-16 20:50:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('178', '1', '设备点检计划', 'CHECK', 'dv_plan_type', null, 'default', 'N', '0', 'admin', '2022-06-19 17:03:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('179', '2', '设备保养计划', 'MAINTEN', 'dv_plan_type', null, 'default', 'N', '0', 'admin', '2022-06-19 17:03:56', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('180', '1', 'QR二维码', 'QR_CODE', 'mes_barcode_formart', null, 'default', 'N', '0', 'admin', '2022-08-01 11:06:50', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('181', '2', 'EAN码', 'EAN_CODE', 'mes_barcode_formart', null, 'default', 'N', '0', 'admin', '2022-08-01 11:07:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('182', '3', 'UPC码', 'UPC_CODE', 'mes_barcode_formart', null, 'default', 'N', '0', 'admin', '2022-08-01 11:07:58', 'admin', '2022-08-01 11:08:03', null);
INSERT INTO `sys_dict_data` VALUES ('183', '1', '物料产品条码', 'ITEM', 'mes_barcode_type', null, 'default', 'N', '0', 'admin', '2022-08-01 11:09:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('184', '2', '小包装条码', 'BOX_SMALL', 'mes_barcode_type', null, 'default', 'N', '0', 'admin', '2022-08-01 11:10:19', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('185', '3', '库存条码', 'STOCK', 'mes_barcode_type', null, 'default', 'N', '0', 'admin', '2022-08-01 11:10:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('186', '1', '修复成功', 'SUCCESS', 'mes_repair_result', null, 'default', 'N', '0', 'admin', '2022-08-06 11:27:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('187', '2', '报废', 'SCRAP', 'mes_repair_result', null, 'default', 'N', '0', 'admin', '2022-08-06 11:28:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('188', '0', '汉族', '0', 'nation_type', null, 'default', 'N', '0', 'admin', '2022-08-15 14:26:52', 'admin', '2022-08-15 14:27:35', null);
INSERT INTO `sys_dict_data` VALUES ('189', '1', '首检', 'FIRST', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:19:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('190', '2', '末检', 'FINAL', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:19:38', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('191', '3', '自检', 'SELF', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:19:52', 'admin', '2022-08-29 20:19:57', null);
INSERT INTO `sys_dict_data` VALUES ('192', '4', '巡检', 'PATROL', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:20:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('193', '5', '点检', 'CHECK', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:20:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('194', '6', '终检', 'FQC', 'mes_ipqc_type', null, 'default', 'N', '0', 'admin', '2022-08-29 20:20:44', 'admin', '2022-08-29 20:58:07', null);
INSERT INTO `sys_dict_data` VALUES ('195', '1', '自行报工', 'SELF', 'mes_feedback_type', null, 'default', 'N', '0', 'admin', '2022-10-02 15:52:45', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('196', '2', '统一报工', 'UNI', 'mes_feedback_type', null, 'default', 'N', '0', 'admin', '2022-10-02 15:53:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('197', '1', '停机', 'STOP', 'mes_machinery_status', null, 'default', 'N', '0', 'admin', '2022-10-09 19:24:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('198', '2', '生产中', 'WORKING', 'mes_machinery_status', null, 'default', 'N', '0', 'admin', '2022-10-09 19:24:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('199', '3', '维修中', 'REPAIR', 'mes_machinery_status', null, 'default', 'N', '0', 'admin', '2022-10-09 19:25:28', '', null, null);

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-04-07 00:29:32', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-04-07 00:29:32', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-04-07 00:29:32', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-04-07 00:29:32', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-04-07 00:29:32', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-04-07 00:29:32', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-04-07 00:29:32', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-04-07 00:29:32', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-04-07 00:29:32', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-04-07 00:29:32', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '物料or产品', 'mes_item_product', '0', 'admin', '2022-04-16 16:34:20', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '编码规则组成类型', 'sys_autocode_parttype', '0', 'admin', '2022-04-26 15:32:42', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('102', '编码规则组成循环方式', 'sys_autocode_cyclemethod', '0', 'admin', '2022-04-26 15:33:02', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('103', '客户类型', 'mes_client_type', '0', 'admin', '2022-05-06 20:53:28', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('104', '供应商级别', 'mes_vendor_level', '0', 'admin', '2022-05-06 22:44:56', 'admin', '2022-05-06 22:45:35', null);
INSERT INTO `sys_dict_type` VALUES ('105', '单据状态【通用】', 'mes_order_status', '0', 'admin', '2022-05-09 10:34:41', 'admin', '2022-05-09 10:35:10', null);
INSERT INTO `sys_dict_type` VALUES ('106', '生产工单来源', 'mes_workorder_sourcetype', '0', 'admin', '2022-05-09 11:23:22', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('107', '维护类型表', 'mes_mainten_type', '0', 'admin', '2022-05-10 23:40:36', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('108', '工装夹具状态', 'mes_tool_status', '0', 'admin', '2022-05-11 20:50:46', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('109', '工序关系类型', 'mes_link_type', '0', 'admin', '2022-05-13 21:50:44', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('110', '时间单位', 'mes_time_type', '0', 'admin', '2022-05-14 08:40:53', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('111', '检测项类型', 'mes_index_type', '0', 'admin', '2022-05-17 21:26:05', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('112', '检测类型', 'mes_qc_type', '0', 'admin', '2022-05-18 09:38:32', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('113', '缺陷等级', 'mes_defect_level', '0', 'admin', '2022-05-19 10:23:38', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('114', '检验结果', 'mes_qc_result', '0', 'admin', '2022-05-19 16:37:45', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('116', '倒班方式', 'mes_shift_type', '0', 'admin', '2022-06-06 21:33:17', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('117', '轮班方式', 'mes_shift_method', '0', 'admin', '2022-06-06 21:39:26', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('118', '排班类型', 'mes_calendar_type', '0', 'admin', '2022-06-08 13:26:56', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('119', '设备点检保养项目类型', 'mes_dvsubject_type', '0', 'admin', '2022-06-16 16:50:14', 'admin', '2022-06-16 16:50:29', null);
INSERT INTO `sys_dict_type` VALUES ('120', '设备点检频率', 'mes_cycle_type', '0', 'admin', '2022-06-16 20:47:19', 'admin', '2022-06-16 20:51:22', null);
INSERT INTO `sys_dict_type` VALUES ('121', '设备点检保养计划类型', 'dv_plan_type', '0', 'admin', '2022-06-19 17:03:18', 'admin', '2022-06-19 17:04:17', null);
INSERT INTO `sys_dict_type` VALUES ('122', '条码格式', 'mes_barcode_formart', '0', 'admin', '2022-08-01 11:05:54', 'admin', '2022-08-01 11:06:15', null);
INSERT INTO `sys_dict_type` VALUES ('123', '条码类型', 'mes_barcode_type', '0', 'admin', '2022-08-01 11:08:27', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('124', '维修结果', 'mes_repair_result', '0', 'admin', '2022-08-06 11:27:05', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('125', '民族', 'nation_type', '0', 'admin', '2022-08-15 14:25:55', 'admin', '2022-08-15 14:26:34', '民族');
INSERT INTO `sys_dict_type` VALUES ('126', '过程质量检验类型', 'mes_ipqc_type', '0', 'admin', '2022-08-29 20:18:48', 'admin', '2022-08-29 20:18:59', null);
INSERT INTO `sys_dict_type` VALUES ('127', '生产报工类型', 'mes_feedback_type', '0', 'admin', '2022-10-02 15:51:21', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('128', '设备状态', 'mes_machinery_status', '0', 'admin', '2022-10-09 19:23:54', '', null, null);

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-07-31 17:47:21', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-07-31 17:47:21', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-07-31 17:47:21', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-31 17:54:43');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-31 17:57:46');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-31 17:57:51');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-14 15:19:48');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-14 15:20:00');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 15:20:07');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 16:01:20');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 17:23:16');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-17 15:04:22');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-17 15:05:30');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-17 15:05:35');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-17 15:05:45');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-17 15:59:55');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-18 10:23:07');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-03 11:23:59');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-03 11:24:06');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-03 11:24:12');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-03 11:24:16');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-13 10:18:03');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-13 10:20:44');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-13 10:20:51');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 10:20:58');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-13 15:37:49');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-13 15:37:58');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-13 15:38:02');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 15:38:09');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-13 17:08:15');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 17:08:21');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 09:08:36');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 09:36:52');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 09:37:17');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 09:38:53');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 09:39:11');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 10:03:39');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-14 10:05:44');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 10:05:50');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 10:19:06');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-14 10:31:21');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 10:31:26');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 10:46:41');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-14 10:46:45');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 10:46:50');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-14 10:48:14');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 10:48:23');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-14 13:51:08');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-15 13:21:02');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-15 20:19:29');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-16 08:27:56');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-17 09:59:21');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-17 10:46:28');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-17 10:47:57');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-18 18:54:27');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-19 10:04:20');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-19 10:04:28');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-20 09:13:56');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-21 11:13:42');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 15:32:23');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-27 17:46:48');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-28 09:53:50');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-28 09:53:54');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-28 09:53:59');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '5', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2022-04-07 00:29:31', 'admin', '2024-06-14 10:41:21', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '6', 'monitor', null, '', '1', '0', 'M', '1', '0', '', 'monitor', 'admin', '2022-04-07 00:29:31', 'admin', '2024-06-14 10:41:15', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '7', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2022-04-07 00:29:31', 'admin', '2024-06-14 10:41:09', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '2210', '4', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-04-07 00:29:31', 'admin', '2022-08-13 21:41:42', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '2210', '3', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-04-07 00:29:31', 'admin', '2022-08-13 21:42:03', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-04-07 00:29:31', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '2210', '1', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-04-07 00:29:31', 'admin', '2022-08-13 21:42:27', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '2210', '2', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-04-07 00:29:31', 'admin', '2022-08-13 21:42:38', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-04-07 00:29:31', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-04-07 00:29:31', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-04-07 00:29:31', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2022-04-07 00:29:31', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-04-07 00:29:31', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-04-07 00:29:31', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-04-07 00:29:31', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-04-07 00:29:31', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-04-07 00:29:31', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-04-07 00:29:31', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-04-07 00:29:31', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-04-07 00:29:31', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-04-07 00:29:31', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-04-07 00:29:31', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '115', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '115', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '115', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '115', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-04-07 00:29:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '基础数据', '0', '8', 'mes/md', null, null, '1', '0', 'M', '0', '0', '', 'build', 'admin', '2022-04-16 14:41:55', 'admin', '2024-06-14 10:41:04', '');
INSERT INTO `sys_menu` VALUES ('2001', '物料和产品', '2000', '8', 'mditem', 'mes/md/mditem/index', null, '1', '0', 'C', '0', '0', 'ms:md:mditem', 'excel', 'admin', '2022-04-16 14:44:00', 'admin', '2024-06-28 13:12:21', '');
INSERT INTO `sys_menu` VALUES ('2002', '物料产品分类', '2000', '7', 'itemtype', 'mes/md/itemtype/index', null, '1', '0', 'C', '0', '0', 'mes:md:itemtype', 'nested', 'admin', '2022-04-16 16:03:18', 'admin', '2024-06-28 13:12:07', '');
INSERT INTO `sys_menu` VALUES ('2003', '编码规则', '1', '10', 'autocodeRule', 'system/autocode/index', null, '1', '0', 'C', '0', '0', 'system:autocode:rule', 'code', 'admin', '2022-04-24 21:43:28', 'admin', '2022-04-24 21:49:31', '');
INSERT INTO `sys_menu` VALUES ('2004', '编码规则查询', '2003', '1', '', null, null, '1', '0', 'F', '0', '0', 'system:autocode:rule:list', '#', 'admin', '2022-04-24 21:46:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '编码规则新增', '2003', '2', '', null, null, '1', '0', 'F', '0', '0', 'system:autocode:rule:add', '#', 'admin', '2022-04-24 21:46:30', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '编码规则更新', '2003', '3', '', null, null, '1', '0', 'F', '0', '0', 'system:autocode:rule:edit', '#', 'admin', '2022-04-24 21:46:59', 'admin', '2022-04-24 21:47:42', '');
INSERT INTO `sys_menu` VALUES ('2007', '编码规则删除', '2003', '4', '', null, null, '1', '0', 'F', '0', '0', 'system:autocode:rule:remove', '#', 'admin', '2022-04-24 21:47:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '新增物料分类', '2002', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:itemtype:add', '#', 'admin', '2022-04-27 16:46:06', 'admin', '2022-08-16 16:15:39', '');
INSERT INTO `sys_menu` VALUES ('2009', '更新物料分类', '2002', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:itemtype:edit', '#', 'admin', '2022-04-27 16:46:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '删除物料分类', '2002', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:itemtype:remove', '#', 'admin', '2022-04-27 16:47:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '新增物料产品', '2001', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:mditem:add', '#', 'admin', '2022-04-27 16:47:46', 'admin', '2022-08-17 08:56:36', '');
INSERT INTO `sys_menu` VALUES ('2012', '更新物料产品', '2001', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:mditem:edit', '#', 'admin', '2022-04-27 16:48:11', 'admin', '2022-05-04 18:05:40', '');
INSERT INTO `sys_menu` VALUES ('2013', '删除物料产品', '2001', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:mditem:remove', '#', 'admin', '2022-04-27 16:48:36', 'admin', '2022-05-04 18:05:55', '');
INSERT INTO `sys_menu` VALUES ('2014', '计量单位', '2000', '1', 'unitmeasure', 'mes/md/unitmeasure/index', null, '1', '0', 'C', '0', '0', 'mes:md:unitmeasure', 'tab', 'admin', '2022-04-27 18:08:08', 'admin', '2024-05-14 17:08:49', '');
INSERT INTO `sys_menu` VALUES ('2015', '新增单位', '2014', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:unitmeasure:add', '#', 'admin', '2022-04-27 18:14:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '更新单位', '2014', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:unitmeasure:edit', '#', 'admin', '2022-04-27 18:14:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '删除单位', '2014', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:unitmeasure:remove', '#', 'admin', '2022-04-27 18:14:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '物料明细查看', '2001', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:mditem:query', '#', 'admin', '2022-05-04 17:51:19', 'admin', '2022-05-04 18:06:04', '');
INSERT INTO `sys_menu` VALUES ('2019', '物料分类明细', '2002', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:itemtype:query', '#', 'admin', '2022-05-04 17:52:22', 'admin', '2022-08-16 16:16:59', '');
INSERT INTO `sys_menu` VALUES ('2020', '单位明细', '2014', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:unitmeasure:query', '#', 'admin', '2022-05-04 17:54:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '物料产品列表查询', '2001', '0', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:mditem:list', '#', 'admin', '2022-05-04 18:04:36', 'admin', '2022-05-04 18:05:23', '');
INSERT INTO `sys_menu` VALUES ('2022', '物料分类列表查询', '2002', '0', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:itemtype:list', '#', 'admin', '2022-05-04 18:08:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '单位列表查询', '2014', '0', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:unitmeasure:list', '#', 'admin', '2022-05-04 18:09:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '客户管理', '2000', '2', 'client', 'mes/md/client/index', null, '1', '0', 'C', '0', '0', 'mes:md:client', 'people', 'admin', '2022-05-06 20:37:28', 'admin', '2024-05-14 17:08:55', '');
INSERT INTO `sys_menu` VALUES ('2025', '客户列表查询', '2024', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:client:list', '#', 'admin', '2022-05-06 20:38:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '客户新增', '2024', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:client:add', '#', 'admin', '2022-05-06 20:38:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '客户编辑', '2024', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:client:edit', '#', 'admin', '2022-05-06 20:38:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '客户明细', '2024', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:client:query', '#', 'admin', '2022-05-06 20:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '客户删除', '2024', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:client:remove', '#', 'admin', '2022-05-06 20:39:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '供应商管理', '2000', '3', 'vendor', 'mes/md/vendor/index', null, '1', '0', 'C', '0', '0', 'mes:md:vendor', 'peoples', 'admin', '2022-05-06 22:34:09', 'admin', '2024-05-14 17:09:00', '');
INSERT INTO `sys_menu` VALUES ('2031', '供应商列表查询', '2030', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:vendor:list', '#', 'admin', '2022-05-06 22:34:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '供应商查看', '2030', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:vendor:query', '#', 'admin', '2022-05-06 22:35:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '供应商新增', '2030', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:vendor:add', '#', 'admin', '2022-05-06 22:35:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '供应商编辑', '2030', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:vendor:edit', '#', 'admin', '2022-05-06 22:35:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '供应商删除', '2030', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:vendor:remove', '#', 'admin', '2022-05-06 22:36:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '车间管理', '2000', '4', 'workshop', 'mes/md/workshop/index', null, '1', '0', 'C', '0', '0', 'mes:md:workshop', 'zip', 'admin', '2022-05-07 16:40:48', 'admin', '2024-05-17 17:30:19', '');
INSERT INTO `sys_menu` VALUES ('2037', '车间列表查询', '2036', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workshop:list', '#', 'admin', '2022-05-07 16:41:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '车间查看', '2036', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workshop:query', '#', 'admin', '2022-05-07 16:41:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '车间新增', '2036', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workshop:add', '#', 'admin', '2022-05-07 16:41:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '车间修改', '2036', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workshop:edit', '#', 'admin', '2022-05-07 16:42:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '车间删除', '2036', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workshop:remove', '#', 'admin', '2022-05-07 16:42:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '生产管理', '0', '10', 'mes/pro', null, null, '1', '0', 'M', '0', '0', '', 'switch', 'admin', '2022-05-09 10:58:07', 'admin', '2024-06-14 10:40:44', '');
INSERT INTO `sys_menu` VALUES ('2073', '生产工单', '2072', '1', 'workorder', 'mes/pro/workorder/index', null, '1', '0', 'C', '0', '0', 'mes:pro:workorder', 'log', 'admin', '2022-05-09 10:59:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '工单列表查询', '2073', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorder:list', '#', 'admin', '2022-05-09 11:00:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2075', '工单查看', '2073', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorder:query', '#', 'admin', '2022-05-09 11:00:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '工单新增', '2073', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorder:add', '#', 'admin', '2022-05-09 11:00:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '工单编辑', '2073', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorder:edit', '#', 'admin', '2022-05-09 11:01:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '工单删除', '2073', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorder:remove', '#', 'admin', '2022-05-09 11:01:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', 'BOM列表查询', '2001', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:bom:list', '#', 'admin', '2022-05-10 10:17:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', 'BOM查看', '2001', '6', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:bom:query', '#', 'admin', '2022-05-10 10:17:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', 'BOM新增', '2001', '7', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:bom:add', '#', 'admin', '2022-05-10 10:18:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', 'BOM编辑', '2001', '8', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:bom:edit', '#', 'admin', '2022-05-10 10:18:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', 'BOM删除', '2001', '9', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:bom:remove', '#', 'admin', '2022-05-10 10:19:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '工单BOM列表查询', '2073', '6', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorderbom:list', '#', 'admin', '2022-05-10 16:17:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '工单BOM查看', '2073', '7', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorderbom:query', '#', 'admin', '2022-05-10 16:17:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '工单BOM编辑', '2073', '8', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorderbom:edit', '#', 'admin', '2022-05-10 16:18:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '工单BOM删除', '2073', '9', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:workorderbom:remove', '#', 'admin', '2022-05-10 16:18:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2088', '工作站管理', '2000', '6', 'workstation', 'mes/md/workstation/index', null, '1', '0', 'C', '0', '0', 'mes:md:workstation', 'job', 'admin', '2022-05-10 21:44:36', 'admin', '2024-06-28 13:12:01', '');
INSERT INTO `sys_menu` VALUES ('2089', '工作站列表查询', '2088', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:list', '#', 'admin', '2022-05-10 21:45:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '工作站查看', '2088', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:query', '#', 'admin', '2022-05-10 21:45:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2091', '工作站新增', '2088', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:add', '#', 'admin', '2022-05-10 21:45:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2092', '工作站编辑', '2088', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:edit', '#', 'admin', '2022-05-10 21:46:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2093', '工作站删除', '2088', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:remove', '#', 'admin', '2022-05-10 21:46:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2094', '工作站导出', '2088', '6', '', null, null, '1', '0', 'F', '0', '0', 'mes:md:workstation:export', '#', 'admin', '2022-05-10 21:47:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2109', '工序设置', '2000', '5', 'process', 'mes/pro/process/index', null, '1', '0', 'C', '0', '0', 'mes:pro:process', 'druid', 'admin', '2022-05-12 00:03:58', 'admin', '2024-06-28 13:05:50', '');
INSERT INTO `sys_menu` VALUES ('2110', '工序列表查询', '2109', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:list', '#', 'admin', '2022-05-12 00:04:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2111', '工序查看', '2109', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:query', '#', 'admin', '2022-05-12 00:04:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2112', '工序新增', '2109', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:add', '#', 'admin', '2022-05-12 00:04:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2113', '工序编辑', '2109', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:edit', '#', 'admin', '2022-05-12 00:05:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2114', '工序删除', '2109', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:remove', '#', 'admin', '2022-05-12 00:05:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2115', '工序导出', '2109', '6', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:process:export', '#', 'admin', '2022-05-12 00:05:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2116', '工艺流程', '2072', '3', 'proroute', 'mes/pro/proroute/index', null, '1', '0', 'C', '0', '0', 'mes:pro:proroute', 'nested', 'admin', '2022-05-12 23:08:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2117', '工艺流程列表查询', '2116', '1', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:list', '#', 'admin', '2022-05-12 23:08:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2118', '工艺流程查看', '2116', '2', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:query', '#', 'admin', '2022-05-12 23:09:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2119', '工艺流程新增', '2116', '3', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:add', '#', 'admin', '2022-05-12 23:09:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2120', '工艺流程编辑', '2116', '4', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:edit', '#', 'admin', '2022-05-12 23:09:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2121', '工艺流程删除', '2116', '5', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:remove', '#', 'admin', '2022-05-12 23:10:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2122', '工艺流程导出', '2116', '6', '', null, null, '1', '0', 'F', '0', '0', 'mes:pro:proroute:export', '#', 'admin', '2022-05-12 23:10:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2123', '生产排产', '2072', '4', 'proschedule', 'mes/pro/schedule/index', null, '1', '0', 'C', '0', '0', 'mes:pro:schedule', 'build', 'admin', '2022-05-15 15:01:21', 'admin', '2022-05-15 15:01:36', '');
INSERT INTO `sys_menu` VALUES ('2210', '组织架构', '0', '4', 'user', null, null, '1', '0', 'M', '0', '0', '', 'tree', 'admin', '2022-08-13 21:41:16', 'admin', '2024-06-14 10:41:34', '');
INSERT INTO `sys_menu` VALUES ('2256', 'MES介绍', '0', '1', '/mesDesc', 'mes/desc/index', null, '1', '0', 'C', '0', '0', null, 'documentation', 'admin', '2024-06-14 10:40:12', '', null, '');

-- ----------------------------
-- Table structure for `sys_message`
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `message_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息类型',
  `message_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息级别',
  `message_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `message_content` longblob COMMENT '内容',
  `sender_id` bigint(20) DEFAULT NULL COMMENT '发送人ID',
  `sender_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '发送人名称',
  `sender_nick` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '发送人昵称',
  `recipient_id` bigint(20) NOT NULL COMMENT '接收人ID',
  `recipient_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '接收人名称',
  `recipient_nick` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '接收人昵称',
  `process_time` datetime DEFAULT NULL COMMENT '处理时间',
  `call_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回调地址',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'UNREAD' COMMENT '状态',
  `deleted_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否删除',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预留字段2',
  `attr3` int(11) DEFAULT '0' COMMENT '预留字段3',
  `attr4` int(11) DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='消息表';

-- ----------------------------
-- Records of sys_message
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-07-31 17:47:22', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-07-31 17:47:22', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=880 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ISSUE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ISSUE_CODE}', '\"ISSUE20230731001\"', '0', null, '2023-07-31 18:03:30');
INSERT INTO `sys_oper_log` VALUES ('101', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/TOOL_TYPE_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_TYPE_CODE}', '\"TT059\"', '0', null, '2024-05-14 15:50:39');
INSERT INTO `sys_oper_log` VALUES ('102', '工装夹具类型', '1', 'com.ktg.mes.tm.controller.TmToolTypeController.add()', 'POST', '1', 'admin', null, '/mes/tm/tooltype', '127.0.0.1', '内网IP', '{\"maintenPeriod\":1,\"codeFlag\":\"Y\",\"toolTypeId\":200,\"params\":{},\"createTime\":1715673071619,\"maintenType\":\"REGULAR\",\"toolTypeName\":\"测试工装夹具\",\"toolTypeCode\":\"TT059\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 15:51:11');
INSERT INTO `sys_oper_log` VALUES ('103', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/TOOL_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_CODE}', '\"T00060\"', '0', null, '2024-05-14 15:51:43');
INSERT INTO `sys_oper_log` VALUES ('104', '工装夹具清单', '1', 'com.ktg.mes.tm.controller.TmToolController.add()', 'POST', '1', 'admin', null, '/mes/tm/tool', '127.0.0.1', '内网IP', '{\"codeFlag\":\"Y\",\"toolTypeId\":200,\"spec\":\"1\",\"toolId\":200,\"quantityAvail\":1,\"brand\":\"哈哈哈\",\"toolTypeCode\":\"TT059\",\"toolName\":\"测试工装夹具\",\"nextMaintenDate\":1717084800000,\"quantity\":1,\"params\":{},\"toolCode\":\"T00060\",\"createTime\":1715673109161,\"maintenType\":\"REGULAR\",\"toolTypeName\":\"测试工装夹具\",\"status\":\"STORE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 15:51:49');
INSERT INTO `sys_oper_log` VALUES ('105', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WAREHOUSE_CODE', '127.0.0.1', '内网IP', '{ruleCode=WAREHOUSE_CODE}', '\"WH158\"', '0', null, '2024-05-14 15:52:09');
INSERT INTO `sys_oper_log` VALUES ('106', '仓库设置', '1', 'com.ktg.mes.wm.controller.WmWarehouseController.add()', 'POST', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"张全波\",\"params\":{},\"warehouseName\":\"张全波-测试库\",\"warehouseCode\":\"WH158\",\"createTime\":1715673143146,\"warehouseId\":201}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-14 15:52:23');
INSERT INTO `sys_oper_log` VALUES ('107', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240514001\"', '0', null, '2024-05-14 15:52:37');
INSERT INTO `sys_oper_log` VALUES ('108', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00059\"', '0', null, '2024-05-14 15:54:45');
INSERT INTO `sys_oper_log` VALUES ('109', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"vendorCode\":\"V00059\",\"vendorNick\":\"张全波测试供应商\",\"vendorEn\":\"ceshigongyingshang\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"ceshigongyingshang\",\"params\":{},\"vendorName\":\"测试供应商\",\"vendorDes\":\"ceshigongyingshang\",\"createTime\":1715673320732,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', '0', null, '2024-05-14 15:55:20');
INSERT INTO `sys_oper_log` VALUES ('110', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240514002\"', '0', null, '2024-05-14 15:55:32');
INSERT INTO `sys_oper_log` VALUES ('111', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/LOCATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=LOCATION_CODE}', '\"L046\"', '0', null, '2024-05-14 15:56:26');
INSERT INTO `sys_oper_log` VALUES ('112', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":100,\"locationName\":\"哈哈哈库区\",\"params\":{},\"createTime\":1715673396685,\"warehouseId\":201,\"locationId\":201,\"locationCode\":\"L046\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-14 15:56:36');
INSERT INTO `sys_oper_log` VALUES ('113', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/AREA_CODE', '127.0.0.1', '内网IP', '{ruleCode=AREA_CODE}', '\"A0035\"', '0', null, '2024-05-14 15:56:51');
INSERT INTO `sys_oper_log` VALUES ('114', '库位设置', '1', 'com.ktg.mes.wm.controller.WmStorageAreaController.add()', 'POST', '1', 'admin', null, '/mes/wm/area', '127.0.0.1', '内网IP', '{\"area\":100,\"params\":{},\"positionX\":100,\"positionY\":100,\"positionZ\":100,\"areaCode\":\"A0035\",\"areaId\":201,\"maxLoa\":100,\"areaName\":\"呵呵呵库位\",\"createTime\":1715673428754,\"locationId\":201,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-14 15:57:08');
INSERT INTO `sys_oper_log` VALUES ('115', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"C00200\"', '0', null, '2024-05-14 15:58:41');
INSERT INTO `sys_oper_log` VALUES ('116', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"clientType\":\"ENTERPRISE\",\"enableFlag\":\"Y\",\"clientId\":200,\"params\":{},\"clientEn\":\"tomcat\",\"createTime\":1715673541510,\"clientCode\":\"C00200\",\"clientNick\":\"哈哈哈\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', '0', null, '2024-05-14 15:59:01');
INSERT INTO `sys_oper_log` VALUES ('117', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240514003\"', '0', null, '2024-05-14 15:59:51');
INSERT INTO `sys_oper_log` VALUES ('118', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ISSUE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ISSUE_CODE}', '\"ISSUE20240514001\"', '0', null, '2024-05-14 16:00:26');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"time-range\",\"orderNum\":9,\"menuName\":\"质量管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/qc\",\"children\":[],\"createTime\":1652795483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2124,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:01:49');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"lock\",\"orderNum\":7,\"menuName\":\"工装夹具管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tm\",\"children\":[],\"createTime\":1652198833000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2095,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:02:06');
INSERT INTO `sys_oper_log` VALUES ('121', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405140001\"', '0', null, '2024-05-14 16:02:24');
INSERT INTO `sys_oper_log` VALUES ('122', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051453\"', '0', null, '2024-05-14 16:02:53');
INSERT INTO `sys_oper_log` VALUES ('123', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":200,\"params\":{},\"measureName\":\"个\",\"primaryFlag\":\"Y\",\"measureCode\":\"65454546456\",\"createTime\":1715673815962,\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:03:36');
INSERT INTO `sys_oper_log` VALUES ('124', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405140002\"', '0', null, '2024-05-14 16:04:00');
INSERT INTO `sys_oper_log` VALUES ('125', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051425\"', '0', null, '2024-05-14 16:04:25');
INSERT INTO `sys_oper_log` VALUES ('126', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"65454546456\",\"itemCode\":\"IF2024051425\",\"itemTypeCode\":\"ITEM_TYPE_0000\",\"params\":{},\"minStock\":100.0,\"safeStockFlag\":\"Y\",\"itemId\":200,\"createBy\":\"admin\",\"itemName\":\"原材料A\",\"maxStock\":100000.0,\"itemTypeName\":\"物料产品分类\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', '0', null, '2024-05-14 16:04:51');
INSERT INTO `sys_oper_log` VALUES ('127', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405140003\"', '0', null, '2024-05-14 16:05:13');
INSERT INTO `sys_oper_log` VALUES ('128', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"productName\":\"原材料A\",\"sourceCode\":\"56654654654645\",\"workorderId\":200,\"children\":[],\"workorderName\":\"测试工单123\",\"requestDate\":1715616000000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":1,\"productId\":200,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"654654654\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051425\",\"workorderCode\":\"MO202405140003\",\"createTime\":1715673940464,\"clientCode\":\"C00200\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', '0', null, '2024-05-14 16:05:40');
INSERT INTO `sys_oper_log` VALUES ('129', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"productName\":\"原材料A\",\"sourceCode\":\"56654654654645\",\"workorderId\":200,\"children\":[],\"workorderName\":\"测试工单123\",\"requestDate\":1715616000000,\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":1,\"productId\":200,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"654654654\",\"updateTime\":1715673948409,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051425\",\"workorderCode\":\"MO202405140003\",\"clientCode\":\"C00200\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:05:48');
INSERT INTO `sys_oper_log` VALUES ('130', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', '\"M0056\"', '0', null, '2024-05-14 16:06:36');
INSERT INTO `sys_oper_log` VALUES ('131', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKSHOP_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSHOP_CODE}', '\"WS081\"', '0', null, '2024-05-14 16:07:06');
INSERT INTO `sys_oper_log` VALUES ('132', '车间', '1', 'com.ktg.mes.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":6,\"charge\":\"张为\",\"workshopName\":\"车间AAA\",\"params\":{},\"createTime\":1715674038686,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:07:18');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"cascader\",\"orderNum\":3,\"menuName\":\"点检保养项目\",\"params\":{},\"parentId\":2059,\"isCache\":\"0\",\"path\":\"dvsubject\",\"component\":\"mes/dv/subject/index\",\"children\":[],\"createTime\":1655381857000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2185,\"menuType\":\"C\",\"perms\":\"mes:dv:dvsubject\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:11:27');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"build\",\"orderNum\":4,\"menuName\":\"点检保养计划\",\"params\":{},\"parentId\":2059,\"isCache\":\"0\",\"path\":\"checkplan\",\"component\":\"mes/dv/checkplan/index\",\"children\":[],\"createTime\":1655386531000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2191,\"menuType\":\"C\",\"perms\":\"mes:dv:checkplan\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:11:32');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"system\",\"orderNum\":5,\"menuName\":\"维修单\",\"params\":{},\"parentId\":2059,\"isCache\":\"0\",\"path\":\"repair\",\"component\":\"mes/dv/repair/index\",\"children\":[],\"createTime\":1659770366000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2205,\"menuType\":\"C\",\"perms\":\"mes:dv:repair\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:11:36');
INSERT INTO `sys_oper_log` VALUES ('136', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240514004\"', '0', null, '2024-05-14 16:12:05');
INSERT INTO `sys_oper_log` VALUES ('137', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"哈哈哈\",\"recptId\":200,\"vendorId\":200,\"warehouseName\":\"张全波-测试库\",\"warehouseCode\":\"WH158\",\"vendorCode\":\"V00059\",\"vendorNick\":\"张全波测试供应商\",\"areaName\":\"呵呵呵库位\",\"locationId\":201,\"poCode\":\"3544654654654\",\"recptDate\":1716912000000,\"recptCode\":\"R20240514004\",\"locationName\":\"哈哈哈库区\",\"params\":{},\"vendorName\":\"测试供应商\",\"areaCode\":\"A0035\",\"createBy\":\"admin\",\"areaId\":201,\"createTime\":1715674341152,\"warehouseId\":201,\"locationCode\":\"L046\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:12:21');
INSERT INTO `sys_oper_log` VALUES ('138', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/PRODUCTRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=PRODUCTRECPT_CODE}', '\"PR20240514001\"', '0', null, '2024-05-14 16:13:05');
INSERT INTO `sys_oper_log` VALUES ('139', '产品入库记录', '1', 'com.ktg.mes.wm.controller.WmProductRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/productrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"产品A\",\"itemCode\":\"IF2024051425\",\"recptId\":200,\"itemName\":\"原材料A\",\"workorderId\":200,\"workorderName\":\"测试工单123\",\"recptDate\":1715616000000,\"recptCode\":\"PR20240514001\",\"unitOfMeasure\":\"65454546456\",\"params\":{},\"itemId\":200,\"createBy\":\"admin\",\"workorderCode\":\"MO202405140003\",\"createTime\":1715674397857,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:13:17');
INSERT INTO `sys_oper_log` VALUES ('140', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/PRODUCTSALSE_CODE', '127.0.0.1', '内网IP', '{ruleCode=PRODUCTSALSE_CODE}', '\"PS20240514001\"', '0', null, '2024-05-14 16:13:39');
INSERT INTO `sys_oper_log` VALUES ('141', '销售出库单', '1', 'com.ktg.mes.wm.controller.WmProductSalseController.add()', 'POST', '1', 'admin', null, '/mes/wm/productsalse', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"soCode\":\"6546546546\",\"salseCode\":\"PS20240514001\",\"clientId\":200,\"salseDate\":1715616000000,\"params\":{},\"salseId\":200,\"createBy\":\"admin\",\"createTime\":1715674443825,\"clientCode\":\"C00200\",\"salseName\":\"出库单AAA\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:14:03');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"link\",\"orderNum\":9,\"menuName\":\"销售退货\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"rtsalse\",\"component\":\"mes/wm/rtsalse/index\",\"children\":[],\"createTime\":1665062927000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2244,\"menuType\":\"C\",\"perms\":\"mes:wm:rtsalse\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:14:34');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"barcode\",\"orderNum\":10,\"menuName\":\"条码清单\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"barcode\",\"component\":\"mes/wm/barcode/index\",\"children\":[],\"createTime\":1659323941000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2203,\"menuType\":\"C\",\"perms\":\"mes:wm:barcode\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:14:40');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"table\",\"orderNum\":11,\"menuName\":\"装箱管理\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"package\",\"component\":\"mes/wm/package/index\",\"children\":[],\"createTime\":1665377302000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2250,\"menuType\":\"C\",\"perms\":\"mes:wm:package\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:14:44');
INSERT INTO `sys_oper_log` VALUES ('145', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '200', null, '1', '事务数量不能为空', '2024-05-14 16:15:23');
INSERT INTO `sys_oper_log` VALUES ('146', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051425\",\"recptId\":200,\"warehouseName\":\"张全波-测试库\",\"quantityRecived\":1,\"warehouseCode\":\"WH158\",\"itemName\":\"原材料A\",\"areaName\":\"呵呵呵库位\",\"locationId\":201,\"locationName\":\"哈哈哈库区\",\"unitOfMeasure\":\"65454546456\",\"lineId\":200,\"params\":{},\"itemId\":200,\"areaCode\":\"A0035\",\"createBy\":\"admin\",\"areaId\":201,\"createTime\":1715674540796,\"warehouseId\":201,\"locationCode\":\"L046\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:15:40');
INSERT INTO `sys_oper_log` VALUES ('147', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"哈哈哈\",\"recptId\":200,\"vendorId\":200,\"remark\":\"\",\"warehouseName\":\"张全波-测试库\",\"warehouseCode\":\"WH158\",\"vendorCode\":\"V00059\",\"vendorNick\":\"张全波测试供应商\",\"areaName\":\"呵呵呵库位\",\"updateBy\":\"\",\"locationId\":201,\"poCode\":\"3544654654654\",\"recptDate\":1716912000000,\"recptCode\":\"R20240514004\",\"locationName\":\"哈哈哈库区\",\"updateTime\":1715674544172,\"params\":{},\"vendorName\":\"测试供应商\",\"attr4\":0,\"attr3\":0,\"areaCode\":\"A0035\",\"createBy\":\"admin\",\"areaId\":201,\"createTime\":1715674341000,\"warehouseId\":201,\"locationCode\":\"L046\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:15:44');
INSERT INTO `sys_oper_log` VALUES ('148', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:15:47');
INSERT INTO `sys_oper_log` VALUES ('149', '更新物料产品分类', '2', 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"ITEM_TYPE_0000\",\"orderNum\":1,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"children\":[],\"updateBy\":\"admin\",\"itemTypeName\":\"所有物料\",\"ancestors\":\"0\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:19:05');
INSERT INTO `sys_oper_log` VALUES ('150', '更新物料产品分类', '2', 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"ITEM_TYPE_0000\",\"orderNum\":1,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"children\":[],\"updateBy\":\"admin\",\"itemTypeName\":\"所有分类\",\"ancestors\":\"0\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:19:30');
INSERT INTO `sys_oper_log` VALUES ('151', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"itemTypeCode\":\"ITEM_TYPE_0096\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"所有物料\",\"ancestors\":\"0,200\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:19:43');
INSERT INTO `sys_oper_log` VALUES ('152', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0096\"', '0', null, '2024-05-14 16:19:43');
INSERT INTO `sys_oper_log` VALUES ('153', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0097\"', '0', null, '2024-05-14 16:19:54');
INSERT INTO `sys_oper_log` VALUES ('154', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"itemTypeCode\":\"ITEM_TYPE_0097\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"所有产品\",\"ancestors\":\"0,200\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:19:54');
INSERT INTO `sys_oper_log` VALUES ('155', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0098\"', '0', null, '2024-05-14 16:20:12');
INSERT INTO `sys_oper_log` VALUES ('156', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":201,\"itemTypeCode\":\"ITEM_TYPE_0098\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"塑料颗粒\",\"ancestors\":\"0,200,201\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:20:12');
INSERT INTO `sys_oper_log` VALUES ('157', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0099\"', '0', null, '2024-05-14 16:20:22');
INSERT INTO `sys_oper_log` VALUES ('158', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":201,\"itemTypeCode\":\"ITEM_TYPE_0099\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"粘合剂\",\"ancestors\":\"0,200,201\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:20:22');
INSERT INTO `sys_oper_log` VALUES ('159', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0100\"', '0', null, '2024-05-14 16:20:35');
INSERT INTO `sys_oper_log` VALUES ('160', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":202,\"itemTypeCode\":\"ITEM_TYPE_0100\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"有线耳机\",\"ancestors\":\"0,200,202\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:20:35');
INSERT INTO `sys_oper_log` VALUES ('161', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0101\"', '0', null, '2024-05-14 16:20:43');
INSERT INTO `sys_oper_log` VALUES ('162', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":202,\"itemTypeCode\":\"ITEM_TYPE_0101\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"无线耳机\",\"ancestors\":\"0,200,202\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-14 16:20:43');
INSERT INTO `sys_oper_log` VALUES ('163', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"link\",\"orderNum\":4,\"menuName\":\"供应商退货\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"rtvendor\",\"component\":\"mes/wm/rtvendor/index\",\"children\":[],\"createTime\":1655105383000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2179,\"menuType\":\"C\",\"perms\":\"mes:wm:rtvendor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:37:23');
INSERT INTO `sys_oper_log` VALUES ('164', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/PROCESS_CODE', '127.0.0.1', '内网IP', '{ruleCode=PROCESS_CODE}', '\"PROCESS195\"', '0', null, '2024-05-14 16:49:23');
INSERT INTO `sys_oper_log` VALUES ('165', '生产工序', '1', 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1715676578338,\"processId\":200,\"processName\":\"工序名称123\",\"processCode\":\"PROCESS195\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:49:38');
INSERT INTO `sys_oper_log` VALUES ('166', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ROUTE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ROUTE_CODE}', '\"R1123\"', '0', null, '2024-05-14 16:49:44');
INSERT INTO `sys_oper_log` VALUES ('167', '工艺路线', '1', 'com.ktg.mes.pro.controller.ProRouteController.add()', 'POST', '1', 'admin', null, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"R1123\",\"params\":{},\"routeName\":\"假按揭啊\",\"routeId\":200,\"createTime\":1715676587522,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:49:47');
INSERT INTO `sys_oper_log` VALUES ('168', '工艺组成', '1', 'com.ktg.mes.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"orderNum\":1,\"nextProcessName\":\"无\",\"recordId\":200,\"routeId\":200,\"processId\":200,\"processName\":\"工序名称123\",\"defaultPreTime\":1,\"params\":{},\"createTime\":1715676885017,\"keyFlag\":\"Y\",\"processCode\":\"PROCESS195\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"linkType\":\"SS\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:54:45');
INSERT INTO `sys_oper_log` VALUES ('169', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051411\"', '0', null, '2024-05-14 16:55:11');
INSERT INTO `sys_oper_log` VALUES ('170', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"65454546456\",\"itemCode\":\"IF2024051411\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":201,\"createBy\":\"admin\",\"itemName\":\"有线耳机AAA\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-14 16:55:26');
INSERT INTO `sys_oper_log` VALUES ('171', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051433\"', '0', null, '2024-05-14 16:55:33');
INSERT INTO `sys_oper_log` VALUES ('172', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"65454546456\",\"itemCode\":\"IF2024051433\",\"itemTypeCode\":\"ITEM_TYPE_0101\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":202,\"createBy\":\"admin\",\"itemName\":\"无线耳机AAA\",\"maxStock\":0.0,\"itemTypeName\":\"无线耳机\",\"itemTypeId\":206,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-14 16:55:42');
INSERT INTO `sys_oper_log` VALUES ('173', '产品制程', '1', 'com.ktg.mes.pro.controller.ProRouteProductController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"65454546456\",\"itemCode\":\"IF2024051411\",\"params\":{},\"recordId\":200,\"itemId\":201,\"itemName\":\"有线耳机AAA\",\"routeId\":200,\"createTime\":1715676958755}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:55:58');
INSERT INTO `sys_oper_log` VALUES ('174', '工艺路线', '2', 'com.ktg.mes.pro.controller.ProRouteController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"R1123\",\"remark\":\"\",\"updateTime\":1715676961171,\"params\":{},\"attr4\":0,\"attr3\":0,\"routeName\":\"假按揭啊\",\"createBy\":\"\",\"routeId\":200,\"createTime\":1715676588000,\"updateBy\":\"\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:56:01');
INSERT INTO `sys_oper_log` VALUES ('175', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405140004\"', '0', null, '2024-05-14 16:59:00');
INSERT INTO `sys_oper_log` VALUES ('176', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"productName\":\"有线耳机AAA\",\"sourceCode\":\" 654465464654\",\"workorderId\":201,\"children\":[],\"workorderName\":\"测试工单0514\",\"requestDate\":1717084800000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":1000,\"productId\":201,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"454545\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051411\",\"workorderCode\":\"MO202405140004\",\"createTime\":1715677170280,\"clientCode\":\"C00200\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-14 16:59:30');
INSERT INTO `sys_oper_log` VALUES ('177', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"productName\":\"有线耳机AAA\",\"sourceCode\":\" 654465464654\",\"workorderId\":201,\"children\":[],\"workorderName\":\"测试工单0514\",\"requestDate\":1717084800000,\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":1000,\"productId\":201,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"454545\",\"updateTime\":1715677185353,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051411\",\"workorderCode\":\"MO202405140004\",\"clientCode\":\"C00200\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 16:59:45');
INSERT INTO `sys_oper_log` VALUES ('178', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0119\"', '0', null, '2024-05-14 17:00:22');
INSERT INTO `sys_oper_log` VALUES ('179', '工作站', '1', 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"车间AAA\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0119\",\"areaName\":\"线边库库位-虚拟\",\"processId\":200,\"processName\":\"工序名称123\",\"locationId\":200,\"workstationId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"哈哈哈\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站123\",\"params\":{},\"areaCode\":\"XBKKW_VIRTUAL\",\"areaId\":200,\"createTime\":1715677237785,\"warehouseId\":200,\"processCode\":\"PROCESS195\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', '0', null, '2024-05-14 17:00:37');
INSERT INTO `sys_oper_log` VALUES ('180', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240001\"', '0', null, '2024-05-14 17:01:01');
INSERT INTO `sys_oper_log` VALUES ('181', '生产任务', '1', 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"测试客户AAA\",\"itemCode\":\"IF2024051411\",\"duration\":1,\"itemName\":\"有线耳机AAA\",\"workstationCode\":\"WS0119\",\"workorderId\":201,\"taskCode\":\"TASK20240001\",\"processId\":200,\"processName\":\"工序名称123\",\"workorderName\":\"测试工单0514\",\"workstationId\":200,\"startTime\":1715702400000,\"clientId\":200,\"quantity\":1,\"unitOfMeasure\":\"65454546456\",\"workstationName\":\"工作站123\",\"params\":{},\"itemId\":201,\"workorderCode\":\"MO202405140004\",\"createTime\":1715677261096,\"clientCode\":\"C00200\",\"processCode\":\"PROCESS195\",\"colorCode\":\"#00AEF3\",\"taskName\":\"有线耳机AAA【1】65454546456\",\"endTime\":1715731200000,\"taskId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:01:01');
INSERT INTO `sys_oper_log` VALUES ('182', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2095', '127.0.0.1', '内网IP', '{menuId=2095}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:04:27');
INSERT INTO `sys_oper_log` VALUES ('183', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"redis\",\"orderNum\":6,\"menuName\":\"设备管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/dv\",\"children\":[],\"createTime\":1652008232000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2059,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:05:15');
INSERT INTO `sys_oper_log` VALUES ('184', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":2,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1649262571000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:05:37');
INSERT INTO `sys_oper_log` VALUES ('185', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"peoples\",\"orderNum\":10,\"menuName\":\"排班管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cal\",\"children\":[],\"createTime\":1654437154000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2160,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:06:12');
INSERT INTO `sys_oper_log` VALUES ('186', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"peoples\",\"orderNum\":10,\"menuName\":\"排班管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cal\",\"children\":[],\"createTime\":1654437154000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2160,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:06:41');
INSERT INTO `sys_oper_log` VALUES ('187', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":4,\"menuName\":\"基础数据\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/md\",\"children\":[],\"createTime\":1650091315000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:07:09');
INSERT INTO `sys_oper_log` VALUES ('188', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"nested\",\"orderNum\":1,\"menuName\":\"物料产品分类\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"itemtype\",\"component\":\"mes/md/itemtype/index\",\"children\":[],\"createTime\":1650096198000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"mes:md:itemtype\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:07:45');
INSERT INTO `sys_oper_log` VALUES ('189', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":2,\"menuName\":\"物料产品\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"mditem\",\"component\":\"mes/md/mditem/index\",\"children\":[],\"createTime\":1650091440000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"ms:md:mditem\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:07:53');
INSERT INTO `sys_oper_log` VALUES ('190', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tab\",\"orderNum\":0,\"menuName\":\"计量单位\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"unitmeasure\",\"component\":\"mes/md/unitmeasure/index\",\"children\":[],\"createTime\":1651054088000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"mes:md:unitmeasure\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:08:24');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":1,\"menuName\":\"客户管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"client\",\"component\":\"mes/md/client/index\",\"children\":[],\"createTime\":1651840648000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"mes:md:client\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:08:30');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tab\",\"orderNum\":0,\"menuName\":\"计量单位\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"unitmeasure\",\"component\":\"mes/md/unitmeasure/index\",\"children\":[],\"createTime\":1651054088000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"mes:md:unitmeasure\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:08:43');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tab\",\"orderNum\":1,\"menuName\":\"计量单位\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"unitmeasure\",\"component\":\"mes/md/unitmeasure/index\",\"children\":[],\"createTime\":1651054088000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"mes:md:unitmeasure\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:08:49');
INSERT INTO `sys_oper_log` VALUES ('194', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":2,\"menuName\":\"客户管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"client\",\"component\":\"mes/md/client/index\",\"children\":[],\"createTime\":1651840648000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"mes:md:client\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:08:55');
INSERT INTO `sys_oper_log` VALUES ('195', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":3,\"menuName\":\"供应商管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"vendor\",\"component\":\"mes/md/vendor/index\",\"children\":[],\"createTime\":1651847649000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"mes:md:vendor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:09:00');
INSERT INTO `sys_oper_log` VALUES ('196', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"zip\",\"orderNum\":4,\"menuName\":\"车间设置\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workshop\",\"component\":\"mes/md/workshop/index\",\"children\":[],\"createTime\":1651912848000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2036,\"menuType\":\"C\",\"perms\":\"mes:md:workshop\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:09:06');
INSERT INTO `sys_oper_log` VALUES ('197', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":5,\"menuName\":\"工作站\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:09:11');
INSERT INTO `sys_oper_log` VALUES ('198', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"nested\",\"orderNum\":6,\"menuName\":\"物料产品分类\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"itemtype\",\"component\":\"mes/md/itemtype/index\",\"children\":[],\"createTime\":1650096198000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"mes:md:itemtype\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:09:18');
INSERT INTO `sys_oper_log` VALUES ('199', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":7,\"menuName\":\"物料和产品\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"mditem\",\"component\":\"mes/md/mditem/index\",\"children\":[],\"createTime\":1650091440000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"ms:md:mditem\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:09:42');
INSERT INTO `sys_oper_log` VALUES ('200', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2177', '127.0.0.1', '内网IP', '{menuId=2177}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:11:58');
INSERT INTO `sys_oper_log` VALUES ('201', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2237', '127.0.0.1', '内网IP', '{menuId=2237}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:10');
INSERT INTO `sys_oper_log` VALUES ('202', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2177', '127.0.0.1', '内网IP', '{menuId=2177}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:12:18');
INSERT INTO `sys_oper_log` VALUES ('203', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2178', '127.0.0.1', '内网IP', '{menuId=2178}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:23');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2177', '127.0.0.1', '内网IP', '{menuId=2177}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:26');
INSERT INTO `sys_oper_log` VALUES ('205', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2176', '127.0.0.1', '内网IP', '{menuId=2176}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:31');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2175', '127.0.0.1', '内网IP', '{menuId=2175}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:33');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2174', '127.0.0.1', '内网IP', '{menuId=2174}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:36');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2173', '127.0.0.1', '内网IP', '{menuId=2173}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:42');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2172', '127.0.0.1', '内网IP', '{menuId=2172}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:44');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2171', '127.0.0.1', '内网IP', '{menuId=2171}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:46');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2170', '127.0.0.1', '内网IP', '{menuId=2170}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:48');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2169', '127.0.0.1', '内网IP', '{menuId=2169}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:51');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2168', '127.0.0.1', '内网IP', '{menuId=2168}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:12:54');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2165', '127.0.0.1', '内网IP', '{menuId=2165}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:03');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2164', '127.0.0.1', '内网IP', '{menuId=2164}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:06');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2163', '127.0.0.1', '内网IP', '{menuId=2163}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:08');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2162', '127.0.0.1', '内网IP', '{menuId=2162}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:11');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2161', '127.0.0.1', '内网IP', '{menuId=2161}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:14');
INSERT INTO `sys_oper_log` VALUES ('219', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2160', '127.0.0.1', '内网IP', '{menuId=2160}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:17');
INSERT INTO `sys_oper_log` VALUES ('220', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2108', '127.0.0.1', '内网IP', '{menuId=2108}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:29');
INSERT INTO `sys_oper_log` VALUES ('221', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2107', '127.0.0.1', '内网IP', '{menuId=2107}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:31');
INSERT INTO `sys_oper_log` VALUES ('222', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2106', '127.0.0.1', '内网IP', '{menuId=2106}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:34');
INSERT INTO `sys_oper_log` VALUES ('223', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2105', '127.0.0.1', '内网IP', '{menuId=2105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:36');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2104', '127.0.0.1', '内网IP', '{menuId=2104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:39');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2103', '127.0.0.1', '内网IP', '{menuId=2103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:41');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2102', '127.0.0.1', '内网IP', '{menuId=2102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:44');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2101', '127.0.0.1', '内网IP', '{menuId=2101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:49');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2100', '127.0.0.1', '内网IP', '{menuId=2100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:54');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2099', '127.0.0.1', '内网IP', '{menuId=2099}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:56');
INSERT INTO `sys_oper_log` VALUES ('230', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2098', '127.0.0.1', '内网IP', '{menuId=2098}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:13:59');
INSERT INTO `sys_oper_log` VALUES ('231', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2097', '127.0.0.1', '内网IP', '{menuId=2097}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:01');
INSERT INTO `sys_oper_log` VALUES ('232', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2096', '127.0.0.1', '内网IP', '{menuId=2096}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:04');
INSERT INTO `sys_oper_log` VALUES ('233', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2095', '127.0.0.1', '内网IP', '{menuId=2095}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:07');
INSERT INTO `sys_oper_log` VALUES ('234', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2220', '127.0.0.1', '内网IP', '{menuId=2220}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:14:13');
INSERT INTO `sys_oper_log` VALUES ('235', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2225', '127.0.0.1', '内网IP', '{menuId=2225}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:18');
INSERT INTO `sys_oper_log` VALUES ('236', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2224', '127.0.0.1', '内网IP', '{menuId=2224}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:20');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2223', '127.0.0.1', '内网IP', '{menuId=2223}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:22');
INSERT INTO `sys_oper_log` VALUES ('238', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2222', '127.0.0.1', '内网IP', '{menuId=2222}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:24');
INSERT INTO `sys_oper_log` VALUES ('239', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2221', '127.0.0.1', '内网IP', '{menuId=2221}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:26');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2220', '127.0.0.1', '内网IP', '{menuId=2220}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:28');
INSERT INTO `sys_oper_log` VALUES ('241', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2219', '127.0.0.1', '内网IP', '{menuId=2219}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:34');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2218', '127.0.0.1', '内网IP', '{menuId=2218}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:36');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2217', '127.0.0.1', '内网IP', '{menuId=2217}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:38');
INSERT INTO `sys_oper_log` VALUES ('244', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2216', '127.0.0.1', '内网IP', '{menuId=2216}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:40');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2215', '127.0.0.1', '内网IP', '{menuId=2215}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:42');
INSERT INTO `sys_oper_log` VALUES ('246', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2214', '127.0.0.1', '内网IP', '{menuId=2214}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:14:45');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2144', '127.0.0.1', '内网IP', '{menuId=2144}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:14:59');
INSERT INTO `sys_oper_log` VALUES ('248', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"time-range\",\"orderNum\":9,\"menuName\":\"质量管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/qc\",\"children\":[],\"createTime\":1652795483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2124,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:15:15');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"time-range\",\"orderNum\":9,\"menuName\":\"质量管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/qc\",\"children\":[],\"createTime\":1652795483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2124,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:15:51');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2144', '127.0.0.1', '内网IP', '{menuId=2144}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:15:56');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2150', '127.0.0.1', '内网IP', '{menuId=2150}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:00');
INSERT INTO `sys_oper_log` VALUES ('252', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2149', '127.0.0.1', '内网IP', '{menuId=2149}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:02');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2148', '127.0.0.1', '内网IP', '{menuId=2148}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:04');
INSERT INTO `sys_oper_log` VALUES ('254', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2147', '127.0.0.1', '内网IP', '{menuId=2147}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:06');
INSERT INTO `sys_oper_log` VALUES ('255', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2146', '127.0.0.1', '内网IP', '{menuId=2146}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:08');
INSERT INTO `sys_oper_log` VALUES ('256', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2145', '127.0.0.1', '内网IP', '{menuId=2145}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:11');
INSERT INTO `sys_oper_log` VALUES ('257', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2144', '127.0.0.1', '内网IP', '{menuId=2144}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:13');
INSERT INTO `sys_oper_log` VALUES ('258', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2137', '127.0.0.1', '内网IP', '{menuId=2137}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:17');
INSERT INTO `sys_oper_log` VALUES ('259', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2136', '127.0.0.1', '内网IP', '{menuId=2136}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:19');
INSERT INTO `sys_oper_log` VALUES ('260', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2135', '127.0.0.1', '内网IP', '{menuId=2135}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:21');
INSERT INTO `sys_oper_log` VALUES ('261', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2134', '127.0.0.1', '内网IP', '{menuId=2134}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:23');
INSERT INTO `sys_oper_log` VALUES ('262', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2133', '127.0.0.1', '内网IP', '{menuId=2133}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:25');
INSERT INTO `sys_oper_log` VALUES ('263', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2132', '127.0.0.1', '内网IP', '{menuId=2132}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:28');
INSERT INTO `sys_oper_log` VALUES ('264', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2131', '127.0.0.1', '内网IP', '{menuId=2131}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:34');
INSERT INTO `sys_oper_log` VALUES ('265', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2130', '127.0.0.1', '内网IP', '{menuId=2130}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:37');
INSERT INTO `sys_oper_log` VALUES ('266', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2129', '127.0.0.1', '内网IP', '{menuId=2129}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:39');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2128', '127.0.0.1', '内网IP', '{menuId=2128}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:41');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2127', '127.0.0.1', '内网IP', '{menuId=2127}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:43');
INSERT INTO `sys_oper_log` VALUES ('269', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2126', '127.0.0.1', '内网IP', '{menuId=2126}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:45');
INSERT INTO `sys_oper_log` VALUES ('270', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2125', '127.0.0.1', '内网IP', '{menuId=2125}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:48');
INSERT INTO `sys_oper_log` VALUES ('271', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2143', '127.0.0.1', '内网IP', '{menuId=2143}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:51');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2142', '127.0.0.1', '内网IP', '{menuId=2142}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:53');
INSERT INTO `sys_oper_log` VALUES ('273', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2141', '127.0.0.1', '内网IP', '{menuId=2141}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:55');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2140', '127.0.0.1', '内网IP', '{menuId=2140}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:16:57');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2139', '127.0.0.1', '内网IP', '{menuId=2139}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:00');
INSERT INTO `sys_oper_log` VALUES ('276', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2138', '127.0.0.1', '内网IP', '{menuId=2138}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:02');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2124', '127.0.0.1', '内网IP', '{menuId=2124}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:05');
INSERT INTO `sys_oper_log` VALUES ('278', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2205', '127.0.0.1', '内网IP', '{menuId=2205}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-05-14 17:17:12');
INSERT INTO `sys_oper_log` VALUES ('279', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2209', '127.0.0.1', '内网IP', '{menuId=2209}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:16');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2208', '127.0.0.1', '内网IP', '{menuId=2208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:29');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2207', '127.0.0.1', '内网IP', '{menuId=2207}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:31');
INSERT INTO `sys_oper_log` VALUES ('282', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2206', '127.0.0.1', '内网IP', '{menuId=2206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:35');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2205', '127.0.0.1', '内网IP', '{menuId=2205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:38');
INSERT INTO `sys_oper_log` VALUES ('284', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2196', '127.0.0.1', '内网IP', '{menuId=2196}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:42');
INSERT INTO `sys_oper_log` VALUES ('285', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2195', '127.0.0.1', '内网IP', '{menuId=2195}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:44');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2194', '127.0.0.1', '内网IP', '{menuId=2194}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:46');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2193', '127.0.0.1', '内网IP', '{menuId=2193}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:48');
INSERT INTO `sys_oper_log` VALUES ('288', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2192', '127.0.0.1', '内网IP', '{menuId=2192}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:50');
INSERT INTO `sys_oper_log` VALUES ('289', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2191', '127.0.0.1', '内网IP', '{menuId=2191}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:53');
INSERT INTO `sys_oper_log` VALUES ('290', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2190', '127.0.0.1', '内网IP', '{menuId=2190}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:17:58');
INSERT INTO `sys_oper_log` VALUES ('291', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2189', '127.0.0.1', '内网IP', '{menuId=2189}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:00');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2188', '127.0.0.1', '内网IP', '{menuId=2188}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:02');
INSERT INTO `sys_oper_log` VALUES ('293', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2187', '127.0.0.1', '内网IP', '{menuId=2187}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:05');
INSERT INTO `sys_oper_log` VALUES ('294', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2186', '127.0.0.1', '内网IP', '{menuId=2186}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:08');
INSERT INTO `sys_oper_log` VALUES ('295', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2185', '127.0.0.1', '内网IP', '{menuId=2185}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:10');
INSERT INTO `sys_oper_log` VALUES ('296', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2071', '127.0.0.1', '内网IP', '{menuId=2071}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:15');
INSERT INTO `sys_oper_log` VALUES ('297', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2070', '127.0.0.1', '内网IP', '{menuId=2070}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:18');
INSERT INTO `sys_oper_log` VALUES ('298', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2069', '127.0.0.1', '内网IP', '{menuId=2069}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:20');
INSERT INTO `sys_oper_log` VALUES ('299', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2068', '127.0.0.1', '内网IP', '{menuId=2068}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:22');
INSERT INTO `sys_oper_log` VALUES ('300', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2067', '127.0.0.1', '内网IP', '{menuId=2067}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:24');
INSERT INTO `sys_oper_log` VALUES ('301', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2066', '127.0.0.1', '内网IP', '{menuId=2066}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:27');
INSERT INTO `sys_oper_log` VALUES ('302', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2065', '127.0.0.1', '内网IP', '{menuId=2065}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:32');
INSERT INTO `sys_oper_log` VALUES ('303', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2064', '127.0.0.1', '内网IP', '{menuId=2064}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:34');
INSERT INTO `sys_oper_log` VALUES ('304', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2063', '127.0.0.1', '内网IP', '{menuId=2063}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:36');
INSERT INTO `sys_oper_log` VALUES ('305', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2062', '127.0.0.1', '内网IP', '{menuId=2062}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:38');
INSERT INTO `sys_oper_log` VALUES ('306', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2061', '127.0.0.1', '内网IP', '{menuId=2061}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:42');
INSERT INTO `sys_oper_log` VALUES ('307', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2060', '127.0.0.1', '内网IP', '{menuId=2060}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:44');
INSERT INTO `sys_oper_log` VALUES ('308', '菜单管理', '3', 'com.ktg.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2059', '127.0.0.1', '内网IP', '{menuId=2059}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-14 17:18:47');
INSERT INTO `sys_oper_log` VALUES ('309', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":201,\"remark\":\"测试数据\",\"params\":{},\"measureName\":\"吨\",\"primaryFlag\":\"Y\",\"measureCode\":\"123564546465\",\"createTime\":1715929753151,\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:09:13');
INSERT INTO `sys_oper_log` VALUES ('310', '单位', '2', 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":200,\"remark\":\"\",\"updateTime\":1715929815314,\"params\":{},\"measureName\":\"个\",\"primaryFlag\":\"Y\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"ge\",\"createTime\":1715673816000,\"updateBy\":\"\",\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:10:15');
INSERT INTO `sys_oper_log` VALUES ('311', '单位', '2', 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":200,\"remark\":\"\",\"updateTime\":1715929833662,\"params\":{},\"measureName\":\"个\",\"primaryFlag\":\"Y\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"one\",\"createTime\":1715673816000,\"updateBy\":\"\",\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:10:33');
INSERT INTO `sys_oper_log` VALUES ('312', '单位', '2', 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":201,\"remark\":\"基本单位、千克\",\"updateTime\":1715929962677,\"params\":{},\"measureName\":\"千克\",\"primaryFlag\":\"Y\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"kilogram\",\"createTime\":1715929753000,\"updateBy\":\"\",\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:12:42');
INSERT INTO `sys_oper_log` VALUES ('313', '单位', '3', 'com.ktg.mes.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/200', '127.0.0.1', '内网IP', '{measureIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:12:47');
INSERT INTO `sys_oper_log` VALUES ('314', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":202,\"params\":{},\"primaryId\":201,\"measureName\":\"吨\",\"primaryFlag\":\"N\",\"measureCode\":\"ton\",\"createTime\":1715930012853,\"changeRate\":1000,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:13:32');
INSERT INTO `sys_oper_log` VALUES ('315', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":203,\"remark\":\"基本长度单位\",\"params\":{},\"measureName\":\"米\",\"primaryFlag\":\"Y\",\"measureCode\":\"metre\",\"createTime\":1715930114718,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:15:14');
INSERT INTO `sys_oper_log` VALUES ('316', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":204,\"remark\":\"千米\",\"params\":{},\"primaryId\":203,\"measureName\":\"千米\",\"primaryFlag\":\"N\",\"measureCode\":\"kilometers\",\"createTime\":1715930166269,\"changeRate\":1000,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:16:06');
INSERT INTO `sys_oper_log` VALUES ('317', '单位', '2', 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":201,\"remark\":\"基本单位千克\",\"updateTime\":1715930181926,\"params\":{},\"measureName\":\"千克\",\"primaryFlag\":\"Y\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"kilogram\",\"createTime\":1715929753000,\"updateBy\":\"\",\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:16:21');
INSERT INTO `sys_oper_log` VALUES ('318', '单位', '2', 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":202,\"remark\":\"质量单位吨\",\"updateTime\":1715930194746,\"params\":{},\"primaryId\":201,\"measureName\":\"吨\",\"primaryFlag\":\"N\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"ton\",\"createTime\":1715930013000,\"updateBy\":\"\",\"changeRate\":1000,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 15:16:34');
INSERT INTO `sys_oper_log` VALUES ('319', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"海尔集团\",\"clientDes\":\"海尔集团\",\"clientType\":\"ENTERPRISE\",\"contact1Tel\":\"18978451245\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\",\"email\":\"123456789@163.com\",\"website\":\"测试地址\",\"address\":\"测试地址\",\"clientId\":201,\"clientLogo\":\"LOGO\",\"params\":{},\"clientEn\":\"Haier\",\"createTime\":1715934683649,\"clientCode\":\"C001\",\"contact1Email\":\"123456@163.com\",\"contact1\":\"李先生\",\"clientNick\":\"Haier\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-17 16:31:23');
INSERT INTO `sys_oper_log` VALUES ('320', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"海信集团\",\"clientDes\":\"海信集团\",\"clientType\":\"ENTERPRISE\",\"enableFlag\":\"Y\",\"email\":\"sdssdssdsd@163.com\",\"website\":\"http://www.asas.dfdf.fgfg.com\",\"address\":\"青岛市XX区\",\"clientId\":202,\"params\":{},\"clientEn\":\"haixin\",\"createTime\":1715935547072,\"clientCode\":\"C00300\",\"clientNick\":\"海信\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-17 16:45:47');
INSERT INTO `sys_oper_log` VALUES ('321', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00059\",\"vendorNick\":\"测试简称\",\"updateBy\":\"\",\"vendorEn\":\"sdklskfdjasd\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"测试地址\",\"updateTime\":1715937198866,\"params\":{},\"vendorName\":\"测试供应商\",\"attr4\":0,\"attr3\":0,\"vendorDes\":\"测试简介\",\"createBy\":\"\",\"createTime\":1715673321000,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:13:18');
INSERT INTO `sys_oper_log` VALUES ('322', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":201,\"vendorCode\":\"sdfjjsdfhaskjf\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"params\":{},\"vendorName\":\"供应商123\",\"createTime\":1715937213975,\"vendorScore\":0}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-17 17:13:34');
INSERT INTO `sys_oper_log` VALUES ('323', '供应商', '3', 'com.ktg.mes.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/201', '127.0.0.1', '内网IP', '{vendorIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:17:45');
INSERT INTO `sys_oper_log` VALUES ('324', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":202,\"vendorCode\":\"V00060\",\"vendorNick\":\"山东港口\",\"vendorEn\":\"SDGK\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"青岛市市南区\",\"params\":{},\"vendorName\":\"山东港口\",\"vendorDes\":\"海运供应商\",\"createTime\":1715937526501,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-17 17:18:46');
INSERT INTO `sys_oper_log` VALUES ('325', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"updateBy\":\"\",\"vendorEn\":\"SLJT\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"测试地址\",\"updateTime\":1715937570753,\"params\":{},\"vendorName\":\"赛轮集团\",\"attr4\":0,\"attr3\":0,\"vendorDes\":\"测试简介\",\"createBy\":\"\",\"createTime\":1715673321000,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:19:30');
INSERT INTO `sys_oper_log` VALUES ('326', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"updateBy\":\"\",\"tel\":\"18945127845\",\"vendorEn\":\"SLJT\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"测试地址\",\"updateTime\":1715937582704,\"params\":{},\"vendorName\":\"赛轮集团\",\"attr4\":0,\"attr3\":0,\"vendorDes\":\"测试简介\",\"createBy\":\"\",\"createTime\":1715673321000,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:19:42');
INSERT INTO `sys_oper_log` VALUES ('327', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":202,\"remark\":\"\",\"vendorCode\":\"V00060\",\"vendorNick\":\"山东港口\",\"updateBy\":\"\",\"tel\":\"17865451256\",\"vendorEn\":\"SDGK\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"青岛市市南区\",\"updateTime\":1715937592404,\"params\":{},\"vendorName\":\"山东港口\",\"attr4\":0,\"attr3\":0,\"vendorDes\":\"海运供应商\",\"createBy\":\"\",\"createTime\":1715937527000,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:19:52');
INSERT INTO `sys_oper_log` VALUES ('328', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"zip\",\"orderNum\":4,\"menuName\":\"车间管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workshop\",\"component\":\"mes/md/workshop/index\",\"children\":[],\"createTime\":1651912848000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2036,\"menuType\":\"C\",\"perms\":\"mes:md:workshop\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:30:19');
INSERT INTO `sys_oper_log` VALUES ('329', '车间', '2', 'com.ktg.mes.md.controller.MdWorkshopController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":6,\"charge\":\"张大伟\",\"workshopName\":\"第一生产车间\",\"remark\":\"\",\"updateTime\":1715938418068,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1715674039000,\"updateBy\":\"\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:33:38');
INSERT INTO `sys_oper_log` VALUES ('330', '车间', '1', 'com.ktg.mes.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"李红\",\"workshopName\":\"第二生产车间\",\"params\":{},\"createTime\":1715938440749,\"workshopId\":201,\"workshopCode\":\"WS082\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:34:00');
INSERT INTO `sys_oper_log` VALUES ('331', '车间', '2', 'com.ktg.mes.md.controller.MdWorkshopController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":200,\"charge\":\"张大伟\",\"workshopName\":\"第一生产车间\",\"remark\":\"\",\"updateTime\":1715938450372,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1715674039000,\"updateBy\":\"\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 17:34:10');
INSERT INTO `sys_oper_log` VALUES ('332', '生产工序', '2', 'com.ktg.mes.pro.controller.ProProcessController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"工序A\",\"updateTime\":1715940391725,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1715676578000,\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"processCode\":\"PROCESS195\",\"attention\":\"工序A\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:06:31');
INSERT INTO `sys_oper_log` VALUES ('333', '生产工序', '1', 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"工序B\",\"params\":{},\"processName\":\"工序B\",\"processCode\":\"PROCESS195\",\"attention\":\"工序B\",\"enableFlag\":\"Y\"}', '{\"msg\":\"工序编码已存在！\",\"code\":500}', '0', null, '2024-05-17 18:06:50');
INSERT INTO `sys_oper_log` VALUES ('334', '生产工序', '1', 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"工序B\",\"params\":{},\"createTime\":1715940414195,\"processId\":201,\"processName\":\"工序B\",\"processCode\":\"PROCESS196\",\"attention\":\"工序B\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:06:54');
INSERT INTO `sys_oper_log` VALUES ('335', '生产工序', '1', 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"工序C\",\"params\":{},\"createTime\":1715940445210,\"processId\":202,\"processName\":\"工序C\",\"processCode\":\"PROCESS197\",\"attention\":\"工序C\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:07:25');
INSERT INTO `sys_oper_log` VALUES ('336', '生产工序内容', '1', 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":200,\"contentText\":\"步骤A\",\"orderNum\":1,\"params\":{},\"material\":\"辅料A\",\"createTime\":1715940485377,\"processId\":202,\"docUrl\":\"材料A\",\"device\":\"设备A\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:08:05');
INSERT INTO `sys_oper_log` VALUES ('337', '生产工序内容', '1', 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":201,\"contentText\":\"步骤B\",\"orderNum\":2,\"params\":{},\"material\":\"辅料B\",\"createTime\":1715940510678,\"processId\":202,\"docUrl\":\"材料B\",\"device\":\"设备B\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:08:30');
INSERT INTO `sys_oper_log` VALUES ('338', '生产工序', '2', 'com.ktg.mes.pro.controller.ProProcessController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"工序C\",\"updateTime\":1715940513028,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1715940445000,\"processId\":202,\"processName\":\"工序C\",\"updateBy\":\"\",\"processCode\":\"PROCESS197\",\"attention\":\"工序C\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:08:33');
INSERT INTO `sys_oper_log` VALUES ('339', '生产工序内容', '1', 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":202,\"orderNum\":3,\"params\":{},\"material\":\"材料C\",\"createTime\":1715941177908,\"processId\":202,\"docUrl\":\"材料C\",\"device\":\"材料C\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:19:37');
INSERT INTO `sys_oper_log` VALUES ('340', '生产工序内容', '2', 'com.ktg.mes.pro.controller.ProProcessContentController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":202,\"contentText\":\"步骤C\",\"orderNum\":3,\"remark\":\"\",\"updateTime\":1715941185666,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"material\":\"材料C\",\"createTime\":1715941178000,\"processId\":202,\"updateBy\":\"\",\"docUrl\":\"材料C\",\"device\":\"材料C\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:19:45');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":2,\"menuName\":\"（5）工序设置\",\"params\":{},\"parentId\":2072,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"mes/pro/process/index\",\"children\":[],\"createTime\":1652285038000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2109,\"menuType\":\"C\",\"perms\":\"mes:pro:process\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:23:31');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":2,\"menuName\":\"工序设置\",\"params\":{},\"parentId\":2072,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"mes/pro/process/index\",\"children\":[],\"createTime\":1652285038000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2109,\"menuType\":\"C\",\"perms\":\"mes:pro:process\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-17 18:35:34');
INSERT INTO `sys_oper_log` VALUES ('343', '工作站', '2', 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"remark\":\"\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0119\",\"areaName\":\"线边库库位-虚拟\",\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"locationId\":200,\"workstationId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"哈哈哈\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站A01\",\"updateTime\":1715999685741,\"params\":{},\"attr4\":0,\"attr3\":0,\"areaCode\":\"XBKKW_VIRTUAL\",\"createBy\":\"\",\"areaId\":200,\"createTime\":1715677238000,\"warehouseId\":200,\"processCode\":\"PROCESS195\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:34:45');
INSERT INTO `sys_oper_log` VALUES ('344', '工作站', '1', 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0120\",\"areaName\":\"线边库库位-虚拟\",\"processId\":201,\"processName\":\"工序B\",\"locationId\":200,\"workstationId\":201,\"enableFlag\":\"Y\",\"workstationAddress\":\"工作站B所在地址\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站B\",\"params\":{},\"areaCode\":\"XBKKW_VIRTUAL\",\"areaId\":200,\"createTime\":1715999724942,\"warehouseId\":200,\"processCode\":\"PROCESS196\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":201}', '0', null, '2024-05-18 10:35:24');
INSERT INTO `sys_oper_log` VALUES ('345', '工作站', '2', 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"remark\":\"\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0119\",\"areaName\":\"线边库库位-虚拟\",\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"locationId\":200,\"workstationId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"工作站A所在地址\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站A01\",\"updateTime\":1715999743916,\"params\":{},\"attr4\":0,\"attr3\":0,\"areaCode\":\"XBKKW_VIRTUAL\",\"createBy\":\"\",\"areaId\":200,\"createTime\":1715677238000,\"warehouseId\":200,\"processCode\":\"PROCESS195\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:35:43');
INSERT INTO `sys_oper_log` VALUES ('346', '工作站', '2', 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"remark\":\"\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0120\",\"areaName\":\"线边库库位-虚拟\",\"processId\":201,\"processName\":\"工序B\",\"updateBy\":\"\",\"locationId\":200,\"workstationId\":201,\"enableFlag\":\"Y\",\"workstationAddress\":\"工作站B所在地址\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站A02\",\"updateTime\":1715999757508,\"params\":{},\"attr4\":0,\"attr3\":0,\"areaCode\":\"XBKKW_VIRTUAL\",\"createBy\":\"\",\"areaId\":200,\"createTime\":1715999725000,\"warehouseId\":200,\"processCode\":\"PROCESS196\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:35:57');
INSERT INTO `sys_oper_log` VALUES ('347', '工作站', '1', 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"warehouseName\":\"线边库-虚拟\",\"warehouseCode\":\"XBK_VIRTUAL\",\"workstationCode\":\"WS0121\",\"areaName\":\"线边库库位-虚拟\",\"processId\":202,\"processName\":\"工序C\",\"locationId\":200,\"workstationId\":202,\"enableFlag\":\"Y\",\"workstationAddress\":\"工作站A03所在地址\",\"locationName\":\"线边库库区-虚拟\",\"workstationName\":\"工作站A03\",\"params\":{},\"areaCode\":\"XBKKW_VIRTUAL\",\"areaId\":200,\"createTime\":1715999790481,\"warehouseId\":200,\"processCode\":\"PROCESS197\",\"workshopId\":200,\"workshopCode\":\"WS081\",\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-18 10:36:30');
INSERT INTO `sys_oper_log` VALUES ('348', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":5,\"remark\":\"\",\"updateTime\":1716000626182,\"params\":{},\"warehouseName\":\"线边库-虚拟\",\"attr4\":0,\"warehouseCode\":\"XBK_VIRTUAL\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":-1,\"params\":{},\"children\":[{\"area\":-1,\"params\":{}}],\"warehouseId\":200}],\"updateBy\":\"\",\"warehouseId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:50:26');
INSERT INTO `sys_oper_log` VALUES ('349', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"张全波\",\"remark\":\"\",\"updateTime\":1716000647714,\"params\":{},\"warehouseName\":\"张全波-测试库\",\"attr4\":0,\"warehouseCode\":\"WH00001\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":100,\"params\":{},\"children\":[{\"area\":100,\"params\":{}}],\"warehouseId\":201}],\"createTime\":1715673143000,\"updateBy\":\"\",\"warehouseId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:50:47');
INSERT INTO `sys_oper_log` VALUES ('350', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":5,\"remark\":\"\",\"updateTime\":1716000656417,\"params\":{},\"warehouseName\":\"线边库-虚拟\",\"attr4\":0,\"warehouseCode\":\"WH00002\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":5,\"params\":{},\"children\":[{\"area\":5,\"params\":{}}],\"warehouseId\":200}],\"updateBy\":\"\",\"warehouseId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:50:56');
INSERT INTO `sys_oper_log` VALUES ('351', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"张伟\",\"remark\":\"\",\"updateTime\":1716000777145,\"params\":{},\"warehouseName\":\"仓库A\",\"attr4\":0,\"warehouseCode\":\"WH00002\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":5,\"params\":{},\"children\":[{\"area\":5,\"params\":{}}],\"warehouseId\":200}],\"updateBy\":\"\",\"warehouseId\":200,\"location\":\"位置A\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:52:57');
INSERT INTO `sys_oper_log` VALUES ('352', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"李刚\",\"remark\":\"\",\"updateTime\":1716000797965,\"params\":{},\"warehouseName\":\"仓库B\",\"attr4\":0,\"warehouseCode\":\"WH00001\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":100,\"params\":{},\"children\":[{\"area\":100,\"params\":{}}],\"warehouseId\":201}],\"createTime\":1715673143000,\"updateBy\":\"\",\"warehouseId\":201,\"location\":\"仓库B位置\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:53:17');
INSERT INTO `sys_oper_log` VALUES ('353', '仓库设置', '2', 'com.ktg.mes.wm.controller.WmWarehouseController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"张伟\",\"remark\":\"\",\"updateTime\":1716000808506,\"params\":{},\"warehouseName\":\"仓库A\",\"attr4\":0,\"warehouseCode\":\"WH00002\",\"attr3\":0,\"createBy\":\"\",\"children\":[{\"area\":100,\"params\":{},\"children\":[{\"area\":100,\"params\":{}}],\"warehouseId\":200}],\"updateBy\":\"\",\"warehouseId\":200,\"location\":\"仓库A位置\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 10:53:28');
INSERT INTO `sys_oper_log` VALUES ('354', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"dict\",\"orderNum\":1,\"menuName\":\"仓库管理\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"warehouse\",\"component\":\"mes/wm/warehouse/index\",\"children\":[],\"createTime\":1651928876000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2043,\"menuType\":\"C\",\"perms\":\"mes:wm:warehouse\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 11:06:32');
INSERT INTO `sys_oper_log` VALUES ('355', '库区设置', '2', 'com.ktg.mes.wm.controller.WmStorageLocationController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":100,\"locationName\":\"库区1\",\"remark\":\"\",\"updateTime\":1716002633185,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"areaFlag\":\"Y\",\"createTime\":1715673397000,\"updateBy\":\"\",\"warehouseId\":201,\"locationId\":201,\"locationCode\":\"L046\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 11:23:53');
INSERT INTO `sys_oper_log` VALUES ('356', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区1\",\"params\":{},\"warehouseId\":201,\"locationCode\":\"L047\"}', '{\"msg\":\"库区名称已存在!\",\"code\":500}', '0', null, '2024-05-18 11:26:30');
INSERT INTO `sys_oper_log` VALUES ('357', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区2\",\"params\":{},\"createTime\":1716002794727,\"warehouseId\":201,\"locationId\":202,\"locationCode\":\"L047\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-18 11:26:34');
INSERT INTO `sys_oper_log` VALUES ('358', '库区设置', '2', 'com.ktg.mes.wm.controller.WmStorageLocationController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区1\",\"remark\":\"\",\"updateTime\":1716002801105,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"areaFlag\":\"Y\",\"createTime\":1715673397000,\"updateBy\":\"\",\"warehouseId\":201,\"locationId\":201,\"locationCode\":\"L046\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 11:26:41');
INSERT INTO `sys_oper_log` VALUES ('359', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区3\",\"params\":{},\"createTime\":1716002817599,\"warehouseId\":201,\"locationId\":203,\"locationCode\":\"L048\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 11:26:57');
INSERT INTO `sys_oper_log` VALUES ('360', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区4\",\"params\":{},\"createTime\":1716002832232,\"warehouseId\":201,\"locationId\":204,\"locationCode\":\"L049\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-05-18 11:27:12');
INSERT INTO `sys_oper_log` VALUES ('361', '库区设置', '1', 'com.ktg.mes.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":20,\"locationName\":\"库区5\",\"params\":{},\"createTime\":1716002844834,\"warehouseId\":201,\"locationId\":205,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-05-18 11:27:24');
INSERT INTO `sys_oper_log` VALUES ('362', '库位设置', '1', 'com.ktg.mes.wm.controller.WmStorageAreaController.add()', 'POST', '1', 'admin', null, '/mes/wm/area', '127.0.0.1', '内网IP', '{\"area\":5,\"params\":{},\"positionX\":124,\"positionY\":562,\"positionZ\":452,\"areaCode\":\"KW001\",\"areaId\":202,\"maxLoa\":200,\"areaName\":\"1号库位\",\"createTime\":1716003711286,\"locationId\":205,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-18 11:41:51');
INSERT INTO `sys_oper_log` VALUES ('363', '库位设置', '1', 'com.ktg.mes.wm.controller.WmStorageAreaController.add()', 'POST', '1', 'admin', null, '/mes/wm/area', '127.0.0.1', '内网IP', '{\"area\":5,\"params\":{},\"positionX\":45,\"positionY\":56,\"positionZ\":78,\"areaCode\":\"KW002\",\"areaId\":203,\"maxLoa\":300,\"areaName\":\"2号库位\",\"createTime\":1716003751786,\"locationId\":205,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 11:42:31');
INSERT INTO `sys_oper_log` VALUES ('364', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180001\"', '0', null, '2024-05-18 12:04:12');
INSERT INTO `sys_oper_log` VALUES ('365', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180002\"', '0', null, '2024-05-18 12:05:07');
INSERT INTO `sys_oper_log` VALUES ('366', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180003\"', '0', null, '2024-05-18 12:05:40');
INSERT INTO `sys_oper_log` VALUES ('367', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180004\"', '0', null, '2024-05-18 12:06:17');
INSERT INTO `sys_oper_log` VALUES ('368', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180005\"', '0', null, '2024-05-18 12:06:23');
INSERT INTO `sys_oper_log` VALUES ('369', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180006\"', '0', null, '2024-05-18 12:07:22');
INSERT INTO `sys_oper_log` VALUES ('370', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180007\"', '0', null, '2024-05-18 12:08:20');
INSERT INTO `sys_oper_log` VALUES ('371', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180008\"', '0', null, '2024-05-18 12:09:10');
INSERT INTO `sys_oper_log` VALUES ('372', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180009\"', '0', null, '2024-05-18 12:09:42');
INSERT INTO `sys_oper_log` VALUES ('373', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180010\"', '0', null, '2024-05-18 12:09:47');
INSERT INTO `sys_oper_log` VALUES ('374', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180011\"', '0', null, '2024-05-18 12:10:41');
INSERT INTO `sys_oper_log` VALUES ('375', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180012\"', '0', null, '2024-05-18 12:11:37');
INSERT INTO `sys_oper_log` VALUES ('376', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180013\"', '0', null, '2024-05-18 12:11:45');
INSERT INTO `sys_oper_log` VALUES ('377', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180014\"', '0', null, '2024-05-18 12:12:31');
INSERT INTO `sys_oper_log` VALUES ('378', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180015\"', '0', null, '2024-05-18 12:14:09');
INSERT INTO `sys_oper_log` VALUES ('379', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"海尔集团\",\"productName\":\"有线耳机AAA\",\"sourceCode\":\"WO000001\",\"workorderId\":202,\"children\":[],\"workorderName\":\"华为耳机订单\",\"requestDate\":1717084800000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":201,\"quantity\":1,\"productId\":201,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"B00001\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051411\",\"workorderCode\":\"MO202405180015\",\"createTime\":1716005708079,\"clientCode\":\"C001\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-05-18 12:15:08');
INSERT INTO `sys_oper_log` VALUES ('380', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"海尔集团\",\"productName\":\"有线耳机AAA\",\"sourceCode\":\"WO000001\",\"workorderId\":202,\"children\":[],\"workorderName\":\"华为耳机订单\",\"requestDate\":1717084800000,\"orderSource\":\"ORDER\",\"clientId\":201,\"quantity\":1,\"productId\":201,\"unitOfMeasure\":\"65454546456\",\"batchCode\":\"B00001\",\"updateTime\":1716005718005,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051411\",\"workorderCode\":\"MO202405180015\",\"clientCode\":\"C001\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:15:18');
INSERT INTO `sys_oper_log` VALUES ('381', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":205,\"remark\":\"电子元器件生产计量单位，例如一副耳机，一副充电设备\",\"params\":{},\"measureName\":\"副\",\"primaryFlag\":\"Y\",\"measureCode\":\"set\",\"createTime\":1716005921165,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:18:41');
INSERT INTO `sys_oper_log` VALUES ('382', '物料管理', '2', 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"set\",\"itemCode\":\"IF2024051411\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"specification\":\"01A01\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":201,\"createBy\":\"admin\",\"itemName\":\"01型有线耳机\",\"createTime\":1715676926000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:19:24');
INSERT INTO `sys_oper_log` VALUES ('383', '物料管理', '2', 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"set\",\"itemCode\":\"IF2024051433\",\"itemTypeCode\":\"ITEM_TYPE_0101\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":202,\"createBy\":\"admin\",\"itemName\":\"01型无线耳机\",\"createTime\":1715676942000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"无线耳机\",\"itemTypeId\":206,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:19:44');
INSERT INTO `sys_oper_log` VALUES ('384', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180016\"', '0', null, '2024-05-18 12:20:30');
INSERT INTO `sys_oper_log` VALUES ('385', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"clientDes\":\"华为\",\"clientType\":\"ENTERPRISE\",\"enableFlag\":\"Y\",\"address\":\"东莞市\",\"clientId\":203,\"params\":{},\"clientEn\":\"HUAWEI\",\"createTime\":1716006091891,\"clientCode\":\"C-HUAWEI\",\"clientNick\":\"华为\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 12:21:31');
INSERT INTO `sys_oper_log` VALUES ('386', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180017\"', '0', null, '2024-05-18 12:22:25');
INSERT INTO `sys_oper_log` VALUES ('387', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"华为无线耳机生产工单\",\"productName\":\"01型无线耳机\",\"sourceCode\":\"HUWEI-20240518\",\"workorderId\":203,\"children\":[],\"workorderName\":\"华为无线耳机生产工单\",\"requestDate\":1719676800000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":203,\"quantity\":2000,\"productId\":202,\"unitOfMeasure\":\"set\",\"batchCode\":\"B-0518\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051433\",\"workorderCode\":\"MO202405180017\",\"createTime\":1716006205926,\"clientCode\":\"C-HUAWEI\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 12:23:25');
INSERT INTO `sys_oper_log` VALUES ('388', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"华为无线耳机生产工单\",\"productName\":\"01型无线耳机\",\"sourceCode\":\"HUWEI-20240518\",\"workorderId\":203,\"children\":[],\"workorderName\":\"华为无线耳机生产工单\",\"requestDate\":1719676800000,\"orderSource\":\"ORDER\",\"clientId\":203,\"quantity\":2000,\"productId\":202,\"unitOfMeasure\":\"set\",\"batchCode\":\"B-0518\",\"updateTime\":1716006215594,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051433\",\"workorderCode\":\"MO202405180017\",\"clientCode\":\"C-HUAWEI\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:23:35');
INSERT INTO `sys_oper_log` VALUES ('389', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"华为无线耳机生产工单\",\"productName\":\"01型无线耳机\",\"sourceCode\":\"HUWEI-20240518\",\"workorderId\":203,\"children\":[],\"workorderName\":\"华为无线耳机生产工单\",\"requestDate\":1719676800000,\"orderSource\":\"ORDER\",\"clientId\":203,\"quantity\":2000,\"productId\":202,\"unitOfMeasure\":\"set\",\"batchCode\":\"B-0518\",\"updateTime\":1716006220235,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051433\",\"workorderCode\":\"MO202405180017\",\"clientCode\":\"C-HUAWEI\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:23:40');
INSERT INTO `sys_oper_log` VALUES ('390', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180018\"', '0', null, '2024-05-18 12:28:27');
INSERT INTO `sys_oper_log` VALUES ('391', '更新物料产品分类', '2', 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":201,\"itemTypeCode\":\"ITEM_TYPE_0098\",\"orderNum\":1,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1715674812000,\"updateBy\":\"admin\",\"itemTypeName\":\"耳机原材料\",\"ancestors\":\"0,200,201\",\"itemTypeId\":203,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:31:10');
INSERT INTO `sys_oper_log` VALUES ('392', '更新物料产品分类', '2', 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":201,\"itemTypeCode\":\"ITEM_TYPE_0099\",\"orderNum\":2,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1715674822000,\"updateBy\":\"admin\",\"itemTypeName\":\"耳机半成品\",\"ancestors\":\"0,200,201\",\"itemTypeId\":204,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:31:30');
INSERT INTO `sys_oper_log` VALUES ('393', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0102\"', '0', null, '2024-05-18 12:31:49');
INSERT INTO `sys_oper_log` VALUES ('394', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0102\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"塑料材料\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:31:49');
INSERT INTO `sys_oper_log` VALUES ('395', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0103\"', '0', null, '2024-05-18 12:32:05');
INSERT INTO `sys_oper_log` VALUES ('396', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0103\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"金属材料\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:32:05');
INSERT INTO `sys_oper_log` VALUES ('397', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0104\"', '0', null, '2024-05-18 12:32:17');
INSERT INTO `sys_oper_log` VALUES ('398', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0104\",\"orderNum\":3,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"电子元件\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:32:17');
INSERT INTO `sys_oper_log` VALUES ('399', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0105\"', '0', null, '2024-05-18 12:32:36');
INSERT INTO `sys_oper_log` VALUES ('400', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0105\",\"orderNum\":4,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"电池\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:32:36');
INSERT INTO `sys_oper_log` VALUES ('401', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0106\"', '0', null, '2024-05-18 12:33:00');
INSERT INTO `sys_oper_log` VALUES ('402', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0106\",\"orderNum\":5,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"音频元件\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:33:00');
INSERT INTO `sys_oper_log` VALUES ('403', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0107\"', '0', null, '2024-05-18 12:33:28');
INSERT INTO `sys_oper_log` VALUES ('404', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":201,\"itemTypeCode\":\"ITEM_TYPE_0107\",\"orderNum\":6,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"无线通讯模块\",\"ancestors\":\"0,200,201\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:33:28');
INSERT INTO `sys_oper_log` VALUES ('405', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0108\"', '0', null, '2024-05-18 12:33:46');
INSERT INTO `sys_oper_log` VALUES ('406', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0108\",\"orderNum\":7,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"纺织材料\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:33:46');
INSERT INTO `sys_oper_log` VALUES ('407', '删除物料产品分类', '3', 'com.ktg.mes.md.controller.ItemTypeController.del()', 'DELETE', '1', 'admin', null, '/mes/md/itemtype/212', '127.0.0.1', '内网IP', '{itemTypeId=212}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:33:57');
INSERT INTO `sys_oper_log` VALUES ('408', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0109\"', '0', null, '2024-05-18 12:34:34');
INSERT INTO `sys_oper_log` VALUES ('409', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0109\",\"orderNum\":6,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"无线通讯模块\",\"ancestors\":\"0,200,201,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:34:34');
INSERT INTO `sys_oper_log` VALUES ('410', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0110\"', '0', null, '2024-05-18 12:35:22');
INSERT INTO `sys_oper_log` VALUES ('411', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0110\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"耳机电路板\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:35:22');
INSERT INTO `sys_oper_log` VALUES ('412', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0111\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"扬声器单元\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:35:38');
INSERT INTO `sys_oper_log` VALUES ('413', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0111\"', '0', null, '2024-05-18 12:35:38');
INSERT INTO `sys_oper_log` VALUES ('414', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0112\"', '0', null, '2024-05-18 12:35:52');
INSERT INTO `sys_oper_log` VALUES ('415', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0112\",\"orderNum\":3,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"耳机外壳\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:35:52');
INSERT INTO `sys_oper_log` VALUES ('416', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0113\"', '0', null, '2024-05-18 12:36:04');
INSERT INTO `sys_oper_log` VALUES ('417', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0113\",\"orderNum\":4,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"电池组件\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:36:04');
INSERT INTO `sys_oper_log` VALUES ('418', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0114\"', '0', null, '2024-05-18 12:36:28');
INSERT INTO `sys_oper_log` VALUES ('419', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0114\",\"orderNum\":5,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"线缆\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:36:28');
INSERT INTO `sys_oper_log` VALUES ('420', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0115\"', '0', null, '2024-05-18 12:36:46');
INSERT INTO `sys_oper_log` VALUES ('421', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0115\",\"orderNum\":6,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"耳机头带\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:36:46');
INSERT INTO `sys_oper_log` VALUES ('422', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0116\"', '0', null, '2024-05-18 12:37:27');
INSERT INTO `sys_oper_log` VALUES ('423', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":204,\"itemTypeCode\":\"ITEM_TYPE_0116\",\"orderNum\":7,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"蓝牙连接器\",\"ancestors\":\"0,200,201,204\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-05-18 12:37:27');
INSERT INTO `sys_oper_log` VALUES ('424', '物料管理', '3', 'com.ktg.mes.md.controller.MdItemController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/mditem/200', '127.0.0.1', '内网IP', '{itemIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:37:39');
INSERT INTO `sys_oper_log` VALUES ('425', '物料管理', '3', 'com.ktg.mes.md.controller.MdItemController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/mditem/202', '127.0.0.1', '内网IP', '{itemIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:37:42');
INSERT INTO `sys_oper_log` VALUES ('426', '物料管理', '3', 'com.ktg.mes.md.controller.MdItemController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/mditem/201', '127.0.0.1', '内网IP', '{itemIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:37:44');
INSERT INTO `sys_oper_log` VALUES ('427', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051850\"', '0', null, '2024-05-18 12:37:50');
INSERT INTO `sys_oper_log` VALUES ('428', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"set\",\"itemCode\":\"IF2024051850\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"specification\":\"A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":203,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 12:38:17');
INSERT INTO `sys_oper_log` VALUES ('429', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051805\"', '0', null, '2024-05-18 12:39:06');
INSERT INTO `sys_oper_log` VALUES ('430', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":206,\"params\":{},\"measureName\":\"片\",\"primaryFlag\":\"Y\",\"measureCode\":\"pice\",\"createTime\":1716007209009,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:40:09');
INSERT INTO `sys_oper_log` VALUES ('431', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051817\"', '0', null, '2024-05-18 12:40:17');
INSERT INTO `sys_oper_log` VALUES ('432', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"pice\",\"itemCode\":\"IF2024051817\",\"itemTypeCode\":\"ITEM_TYPE_0110\",\"specification\":\"DLB-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":204,\"createBy\":\"admin\",\"itemName\":\"A1有线耳机电路板\",\"maxStock\":0.0,\"itemTypeName\":\"耳机电路板\",\"itemTypeId\":215,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-05-18 12:40:50');
INSERT INTO `sys_oper_log` VALUES ('433', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051858\"', '0', null, '2024-05-18 12:40:58');
INSERT INTO `sys_oper_log` VALUES ('434', '单位', '1', 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":207,\"params\":{},\"measureName\":\"套\",\"primaryFlag\":\"Y\",\"measureCode\":\"system\",\"createTime\":1716007310044,\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:41:50');
INSERT INTO `sys_oper_log` VALUES ('435', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051829\"', '0', null, '2024-05-18 12:42:29');
INSERT INTO `sys_oper_log` VALUES ('436', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051801\"', '0', null, '2024-05-18 12:43:01');
INSERT INTO `sys_oper_log` VALUES ('437', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051801\",\"itemTypeCode\":\"ITEM_TYPE_0111\",\"specification\":\"YSQDY-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":205,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机扬声器单元\",\"maxStock\":0.0,\"itemTypeName\":\"扬声器单元\",\"itemTypeId\":216,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-05-18 12:43:16');
INSERT INTO `sys_oper_log` VALUES ('438', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051831\"', '0', null, '2024-05-18 12:43:32');
INSERT INTO `sys_oper_log` VALUES ('439', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051831\",\"itemTypeCode\":\"ITEM_TYPE_0112\",\"specification\":\"WK-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":206,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机外壳\",\"maxStock\":0.0,\"itemTypeName\":\"耳机外壳\",\"itemTypeId\":217,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-05-18 12:43:43');
INSERT INTO `sys_oper_log` VALUES ('440', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051848\"', '0', null, '2024-05-18 12:43:48');
INSERT INTO `sys_oper_log` VALUES ('441', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051808\"', '0', null, '2024-05-18 12:44:08');
INSERT INTO `sys_oper_log` VALUES ('442', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051808\",\"itemTypeCode\":\"ITEM_TYPE_0114\",\"specification\":\"LJX-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":207,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机连接线\",\"maxStock\":0.0,\"itemTypeName\":\"线缆\",\"itemTypeId\":219,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-05-18 12:44:20');
INSERT INTO `sys_oper_log` VALUES ('443', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051834\"', '0', null, '2024-05-18 12:44:34');
INSERT INTO `sys_oper_log` VALUES ('444', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051834\",\"itemTypeCode\":\"ITEM_TYPE_0115\",\"specification\":\"TD-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":208,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机头带\",\"maxStock\":0.0,\"itemTypeName\":\"耳机头带\",\"itemTypeId\":220,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":208}', '0', null, '2024-05-18 12:44:45');
INSERT INTO `sys_oper_log` VALUES ('445', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":200,\"quantity\":1,\"unitOfMeasure\":\"pice\",\"bomItemCode\":\"IF2024051817\",\"params\":{},\"bomItemId\":204,\"bomItemName\":\"A1有线耳机电路板\",\"itemId\":203,\"createTime\":1716007497968,\"enableFlag\":\"Y\",\"bomItemSpec\":\"DLB-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:44:58');
INSERT INTO `sys_oper_log` VALUES ('446', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":201,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051801\",\"params\":{},\"bomItemId\":205,\"bomItemName\":\"A01有线耳机扬声器单元\",\"itemId\":203,\"createTime\":1716007503730,\"enableFlag\":\"Y\",\"bomItemSpec\":\"YSQDY-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:45:03');
INSERT INTO `sys_oper_log` VALUES ('447', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":202,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051831\",\"params\":{},\"bomItemId\":206,\"bomItemName\":\"A01有线耳机外壳\",\"itemId\":203,\"createTime\":1716007512366,\"enableFlag\":\"Y\",\"bomItemSpec\":\"WK-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:45:12');
INSERT INTO `sys_oper_log` VALUES ('448', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":203,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051808\",\"params\":{},\"bomItemId\":207,\"bomItemName\":\"A01有线耳机连接线\",\"itemId\":203,\"createTime\":1716007518538,\"enableFlag\":\"Y\",\"bomItemSpec\":\"LJX-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:45:18');
INSERT INTO `sys_oper_log` VALUES ('449', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":204,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051834\",\"params\":{},\"bomItemId\":208,\"bomItemName\":\"A01有线耳机头带\",\"itemId\":203,\"createTime\":1716007531641,\"enableFlag\":\"Y\",\"bomItemSpec\":\"TD-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:45:31');
INSERT INTO `sys_oper_log` VALUES ('450', '物料管理', '2', 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"set\",\"itemCode\":\"IF2024051850\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"specification\":\"A01\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":203,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机\",\"createTime\":1716007097000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:45:38');
INSERT INTO `sys_oper_log` VALUES ('451', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180019\"', '0', null, '2024-05-18 12:45:58');
INSERT INTO `sys_oper_log` VALUES ('452', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":204,\"children\":[],\"workorderName\":\"A01有线耳机备货单\",\"requestDate\":1717776000000,\"ancestors\":\"0\",\"orderSource\":\"STORE\",\"quantity\":1000,\"productId\":203,\"unitOfMeasure\":\"set\",\"batchCode\":\"B202501\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180019\",\"createTime\":1716007607897,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-05-18 12:46:47');
INSERT INTO `sys_oper_log` VALUES ('453', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":204,\"children\":[],\"workorderName\":\"A01有线耳机备货单\",\"requestDate\":1717776000000,\"orderSource\":\"STORE\",\"quantity\":1000,\"productId\":203,\"unitOfMeasure\":\"set\",\"batchCode\":\"B202501\",\"updateTime\":1716007623023,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180019\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:47:03');
INSERT INTO `sys_oper_log` VALUES ('454', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":204,\"children\":[],\"workorderName\":\"A01有线耳机备货单\",\"requestDate\":1717776000000,\"orderSource\":\"STORE\",\"quantity\":1000,\"productId\":203,\"unitOfMeasure\":\"set\",\"batchCode\":\"B202501\",\"updateTime\":1716007626579,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180019\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:47:06');
INSERT INTO `sys_oper_log` VALUES ('455', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '{recptIds=200}', '{\"msg\":\"只能删除草稿状态的单据!\",\"code\":500}', '0', null, '2024-05-18 12:48:34');
INSERT INTO `sys_oper_log` VALUES ('456', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518001\"', '0', null, '2024-05-18 12:48:40');
INSERT INTO `sys_oper_log` VALUES ('457', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"A01连接线入库\",\"recptId\":201,\"vendorId\":200,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"areaName\":\"1号库位\",\"locationId\":205,\"poCode\":\"121212121\",\"recptDate\":1714233600000,\"recptCode\":\"R20240518001\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"赛轮集团\",\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716007758199,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:49:18');
INSERT INTO `sys_oper_log` VALUES ('458', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 12:49:41');
INSERT INTO `sys_oper_log` VALUES ('459', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"A01连接线入库\",\"recptId\":201,\"vendorId\":200,\"remark\":\"\",\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"areaName\":\"1号库位\",\"updateBy\":\"\",\"locationId\":205,\"poCode\":\"121212121\",\"recptDate\":1714233600000,\"recptCode\":\"R20240518001\",\"locationName\":\"库区5\",\"updateTime\":1716007799678,\"params\":{},\"vendorName\":\"赛轮集团\",\"attr4\":0,\"attr3\":0,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716007758000,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:49:59');
INSERT INTO `sys_oper_log` VALUES ('460', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 12:50:02');
INSERT INTO `sys_oper_log` VALUES ('461', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 12:51:33');
INSERT INTO `sys_oper_log` VALUES ('462', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"A01连接线入库\",\"recptId\":201,\"vendorId\":200,\"remark\":\"是的是的\",\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"areaName\":\"1号库位\",\"updateBy\":\"\",\"locationId\":205,\"poCode\":\"121212121\",\"recptDate\":1714233600000,\"recptCode\":\"R20240518001\",\"locationName\":\"库区5\",\"updateTime\":1716007909260,\"params\":{},\"vendorName\":\"赛轮集团\",\"attr4\":0,\"attr3\":0,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716007758000,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 12:51:49');
INSERT INTO `sys_oper_log` VALUES ('463', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 12:51:52');
INSERT INTO `sys_oper_log` VALUES ('464', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 12:53:40');
INSERT INTO `sys_oper_log` VALUES ('465', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', null, '1', '事务数量不能为空', '2024-05-18 13:00:16');
INSERT INTO `sys_oper_log` VALUES ('466', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '{recptIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:04:34');
INSERT INTO `sys_oper_log` VALUES ('467', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518002\"', '0', null, '2024-05-18 13:04:37');
INSERT INTO `sys_oper_log` VALUES ('468', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"A01耳机线入库单0518\",\"recptId\":202,\"vendorId\":200,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00059\",\"vendorNick\":\"橡胶材质供应商\",\"areaName\":\"1号库位\",\"locationId\":205,\"poCode\":\"0518\",\"recptDate\":1715961600000,\"recptCode\":\"R20240518002\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"赛轮集团\",\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716008717150,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:05:17');
INSERT INTO `sys_oper_log` VALUES ('469', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/202', '127.0.0.1', '内网IP', '202', null, '1', '事务数量不能为空', '2024-05-18 13:05:20');
INSERT INTO `sys_oper_log` VALUES ('470', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/PRODUCTRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=PRODUCTRECPT_CODE}', '\"PR20240518001\"', '0', null, '2024-05-18 13:18:03');
INSERT INTO `sys_oper_log` VALUES ('471', '产品入库记录', '1', 'com.ktg.mes.wm.controller.WmProductRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/productrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"入库单123\",\"itemCode\":\"IF2024051850\",\"recptId\":201,\"itemName\":\"A01有线耳机\",\"workorderId\":204,\"workorderName\":\"A01有线耳机备货单\",\"recptDate\":1715961600000,\"recptCode\":\"PR20240518001\",\"unitOfMeasure\":\"set\",\"params\":{},\"itemId\":203,\"createBy\":\"admin\",\"workorderCode\":\"MO202405180019\",\"createTime\":1716009496314,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:18:16');
INSERT INTO `sys_oper_log` VALUES ('472', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/202', '127.0.0.1', '内网IP', '202', null, '1', '事务数量不能为空', '2024-05-18 13:18:29');
INSERT INTO `sys_oper_log` VALUES ('473', '产品入库记录', '2', 'com.ktg.mes.wm.controller.WmProductRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/productrecpt/201', '127.0.0.1', '内网IP', '201', '{\"msg\":\"请添加要入库的产品\",\"code\":500}', '0', null, '2024-05-18 13:18:42');
INSERT INTO `sys_oper_log` VALUES ('474', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/202', '127.0.0.1', '内网IP', '202', null, '1', '事务数量不能为空', '2024-05-18 13:19:34');
INSERT INTO `sys_oper_log` VALUES ('475', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518003\"', '0', null, '2024-05-18 13:20:23');
INSERT INTO `sys_oper_log` VALUES ('476', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/202', '127.0.0.1', '内网IP', '{recptIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:20:31');
INSERT INTO `sys_oper_log` VALUES ('477', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":203,\"vendorCode\":\"V00061\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"params\":{},\"vendorName\":\"耳机线供应商001\",\"createTime\":1716009655661,\"vendorScore\":0}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-05-18 13:20:55');
INSERT INTO `sys_oper_log` VALUES ('478', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518004\"', '0', null, '2024-05-18 13:21:07');
INSERT INTO `sys_oper_log` VALUES ('479', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"耳机线入库单001\",\"recptId\":203,\"vendorId\":203,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00061\",\"areaName\":\"1号库位\",\"locationId\":205,\"poCode\":\"00001\",\"recptDate\":1715961600000,\"recptCode\":\"R20240518004\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"耳机线供应商001\",\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716009690505,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:21:30');
INSERT INTO `sys_oper_log` VALUES ('480', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518005\"', '0', null, '2024-05-18 13:23:03');
INSERT INTO `sys_oper_log` VALUES ('481', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"耳机线入库002\",\"recptId\":204,\"vendorId\":203,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00061\",\"areaName\":\"2号库位\",\"locationId\":205,\"poCode\":\"45454545\",\"recptDate\":1715875200000,\"recptCode\":\"R20240518005\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"耳机线供应商001\",\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1716009805820,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:23:25');
INSERT INTO `sys_oper_log` VALUES ('482', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518006\"', '0', null, '2024-05-18 13:25:29');
INSERT INTO `sys_oper_log` VALUES ('483', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"测试入库单AAAA\",\"recptId\":205,\"vendorId\":203,\"warehouseName\":\"仓库A\",\"warehouseCode\":\"WH00002\",\"vendorCode\":\"V00061\",\"areaName\":\"线边库库位-虚拟\",\"locationId\":200,\"poCode\":\"5665465456\",\"recptDate\":1715788800000,\"recptCode\":\"R20240518006\",\"locationName\":\"线边库库区-虚拟\",\"params\":{},\"vendorName\":\"耳机线供应商001\",\"areaCode\":\"XBKKW_VIRTUAL\",\"createBy\":\"admin\",\"areaId\":200,\"createTime\":1716009948141,\"warehouseId\":200,\"locationCode\":\"XBKKQ_VIRTUAL\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:25:48');
INSERT INTO `sys_oper_log` VALUES ('484', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/205', '127.0.0.1', '内网IP', '{recptIds=205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:26:05');
INSERT INTO `sys_oper_log` VALUES ('485', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/204', '127.0.0.1', '内网IP', '{recptIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:26:08');
INSERT INTO `sys_oper_log` VALUES ('486', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20240518007\"', '0', null, '2024-05-18 13:26:11');
INSERT INTO `sys_oper_log` VALUES ('487', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"测试单子\",\"recptId\":206,\"vendorId\":203,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00061\",\"areaName\":\"2号库位\",\"locationId\":205,\"poCode\":\"65465456546\",\"recptDate\":1715875200000,\"recptCode\":\"R20240518007\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"耳机线供应商001\",\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1716009991703,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:26:31');
INSERT INTO `sys_oper_log` VALUES ('488', '物料入库单', '3', 'com.ktg.mes.wm.controller.WmItemRecptController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecpt/206', '127.0.0.1', '内网IP', '{recptIds=206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:32:14');
INSERT INTO `sys_oper_log` VALUES ('489', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051808\",\"recptId\":203,\"warehouseName\":\"仓库B\",\"quantityRecived\":200,\"warehouseCode\":\"WH00001\",\"itemName\":\"A01有线耳机连接线\",\"areaName\":\"1号库位\",\"locationId\":205,\"expireDate\":1717084800000,\"locationName\":\"库区5\",\"unitOfMeasure\":\"system\",\"batchCode\":\"02222\",\"lineId\":201,\"specification\":\"LJX-A01\",\"params\":{},\"itemId\":207,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716010367171,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:32:47');
INSERT INTO `sys_oper_log` VALUES ('490', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"耳机线入库单001\",\"recptId\":203,\"vendorId\":203,\"remark\":\"\",\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"V00061\",\"areaName\":\"1号库位\",\"updateBy\":\"\",\"locationId\":205,\"poCode\":\"00001\",\"recptDate\":1715961600000,\"recptCode\":\"R20240518004\",\"locationName\":\"库区5\",\"updateTime\":1716010371583,\"params\":{},\"vendorName\":\"耳机线供应商001\",\"attr4\":0,\"attr3\":0,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716009691000,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:32:51');
INSERT INTO `sys_oper_log` VALUES ('491', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/203', '127.0.0.1', '内网IP', '203', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:32:55');
INSERT INTO `sys_oper_log` VALUES ('492', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180020\"', '0', null, '2024-05-18 13:41:24');
INSERT INTO `sys_oper_log` VALUES ('493', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180021\"', '0', null, '2024-05-18 13:41:40');
INSERT INTO `sys_oper_log` VALUES ('494', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180022\"', '0', null, '2024-05-18 13:41:55');
INSERT INTO `sys_oper_log` VALUES ('495', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":205,\"children\":[],\"workorderName\":\"测试订单\",\"requestDate\":1717084800000,\"ancestors\":\"0,0\",\"orderSource\":\"STORE\",\"quantity\":200,\"productId\":203,\"unitOfMeasure\":\"set\",\"params\":{},\"parentId\":204,\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180022\",\"createTime\":1716010935869,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-05-18 13:42:15');
INSERT INTO `sys_oper_log` VALUES ('496', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":205,\"children\":[],\"workorderName\":\"测试订单\",\"requestDate\":1717084800000,\"orderSource\":\"STORE\",\"quantity\":200,\"productId\":203,\"unitOfMeasure\":\"set\",\"updateTime\":1716010940638,\"params\":{},\"parentId\":204,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180022\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:42:20');
INSERT INTO `sys_oper_log` VALUES ('497', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"workorderId\":205,\"children\":[],\"workorderName\":\"测试订单\",\"requestDate\":1717084800000,\"orderSource\":\"STORE\",\"quantity\":200,\"productId\":203,\"unitOfMeasure\":\"set\",\"updateTime\":1716010942498,\"params\":{},\"parentId\":204,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202405180022\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:42:22');
INSERT INTO `sys_oper_log` VALUES ('498', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180023\"', '0', null, '2024-05-18 13:43:57');
INSERT INTO `sys_oper_log` VALUES ('499', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"LJX-A01\",\"productName\":\"A01有线耳机连接线\",\"workorderId\":206,\"children\":[],\"workorderName\":\"有线耳机线备货单\",\"requestDate\":1716566400000,\"ancestors\":\"0,0\",\"orderSource\":\"STORE\",\"quantity\":200,\"productId\":207,\"unitOfMeasure\":\"system\",\"batchCode\":\"B0518\",\"params\":{},\"parentId\":204,\"createBy\":\"admin\",\"productCode\":\"IF2024051808\",\"workorderCode\":\"MO202405180023\",\"createTime\":1716011070269,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-05-18 13:44:30');
INSERT INTO `sys_oper_log` VALUES ('500', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051802\"', '0', null, '2024-05-18 13:45:02');
INSERT INTO `sys_oper_log` VALUES ('501', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051820\"', '0', null, '2024-05-18 13:45:20');
INSERT INTO `sys_oper_log` VALUES ('502', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051820\",\"itemTypeCode\":\"ITEM_TYPE_0102\",\"specification\":\"EJXJYC-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":209,\"createBy\":\"admin\",\"itemName\":\"A01耳机线绝缘层\",\"maxStock\":0.0,\"itemTypeName\":\"塑料材料\",\"itemTypeId\":207,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":209}', '0', null, '2024-05-18 13:46:11');
INSERT INTO `sys_oper_log` VALUES ('503', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051816\"', '0', null, '2024-05-18 13:46:16');
INSERT INTO `sys_oper_log` VALUES ('504', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051816\",\"itemTypeCode\":\"ITEM_TYPE_0103\",\"specification\":\"TX-A01\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":210,\"createBy\":\"admin\",\"itemName\":\"A01耳机线铜芯\",\"maxStock\":0.0,\"itemTypeName\":\"金属材料\",\"itemTypeId\":208,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":210}', '0', null, '2024-05-18 13:46:57');
INSERT INTO `sys_oper_log` VALUES ('505', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"productSpc\":\"LJX-A01\",\"productName\":\"A01有线耳机连接线\",\"workorderId\":206,\"children\":[],\"updateBy\":\"\",\"workorderName\":\"有线耳机线备货单\",\"requestDate\":1716566400000,\"ancestors\":\"0,0\",\"quantityProduced\":0,\"orderSource\":\"STORE\",\"quantity\":200,\"productId\":207,\"unitOfMeasure\":\"system\",\"batchCode\":\"B0518\",\"updateTime\":1716011258010,\"params\":{},\"attr4\":0,\"parentId\":204,\"attr3\":0,\"createBy\":\"\",\"productCode\":\"IF2024051808\",\"workorderCode\":\"MO202405180023\",\"createTime\":1716011070000,\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:47:38');
INSERT INTO `sys_oper_log` VALUES ('506', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":205,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051820\",\"params\":{},\"bomItemId\":209,\"bomItemName\":\"A01耳机线绝缘层\",\"itemId\":207,\"createTime\":1716011307420,\"enableFlag\":\"Y\",\"bomItemSpec\":\"EJXJYC-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:48:27');
INSERT INTO `sys_oper_log` VALUES ('507', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":206,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051816\",\"params\":{},\"bomItemId\":210,\"bomItemName\":\"A01耳机线铜芯\",\"itemId\":207,\"createTime\":1716011312767,\"enableFlag\":\"Y\",\"bomItemSpec\":\"TX-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:48:32');
INSERT INTO `sys_oper_log` VALUES ('508', '物料管理', '2', 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051808\",\"itemTypeCode\":\"ITEM_TYPE_0114\",\"specification\":\"LJX-A01\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":207,\"createBy\":\"admin\",\"itemName\":\"A01有线耳机连接线\",\"createTime\":1716007460000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"线缆\",\"itemTypeId\":219,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:48:34');
INSERT INTO `sys_oper_log` VALUES ('509', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180024\"', '0', null, '2024-05-18 13:48:46');
INSERT INTO `sys_oper_log` VALUES ('510', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"LJX-A01\",\"productName\":\"A01有线耳机连接线\",\"workorderId\":207,\"children\":[],\"workorderName\":\"A01有线耳机线备货单\",\"requestDate\":1716480000000,\"ancestors\":\"0,0\",\"orderSource\":\"STORE\",\"quantity\":500,\"productId\":207,\"unitOfMeasure\":\"system\",\"params\":{},\"parentId\":204,\"createBy\":\"admin\",\"productCode\":\"IF2024051808\",\"workorderCode\":\"MO202405180024\",\"createTime\":1716011358970,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-05-18 13:49:19');
INSERT INTO `sys_oper_log` VALUES ('511', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"LJX-A01\",\"productName\":\"A01有线耳机连接线\",\"workorderId\":207,\"children\":[],\"workorderName\":\"A01有线耳机线备货单\",\"requestDate\":1716480000000,\"orderSource\":\"STORE\",\"quantity\":500,\"productId\":207,\"unitOfMeasure\":\"system\",\"updateTime\":1716011366920,\"params\":{},\"parentId\":204,\"productCode\":\"IF2024051808\",\"workorderCode\":\"MO202405180024\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:49:26');
INSERT INTO `sys_oper_log` VALUES ('512', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":5,\"menuName\":\"生产工位\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:50:27');
INSERT INTO `sys_oper_log` VALUES ('513', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":204,\"vendorCode\":\"55860240-6\",\"vendorNick\":\"嘉盛塑胶\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号\",\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"vendorDes\":\"专注于提供各种塑料原材料，广泛应用于耳机外壳等部件的制造。\",\"createTime\":1716011875854,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-05-18 13:57:55');
INSERT INTO `sys_oper_log` VALUES ('514', '供应商', '3', 'com.ktg.mes.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/203', '127.0.0.1', '内网IP', '{vendorIds=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:58:12');
INSERT INTO `sys_oper_log` VALUES ('515', '供应商', '3', 'com.ktg.mes.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/202', '127.0.0.1', '内网IP', '{vendorIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:58:14');
INSERT INTO `sys_oper_log` VALUES ('516', '供应商', '3', 'com.ktg.mes.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/200', '127.0.0.1', '内网IP', '{vendorIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:58:17');
INSERT INTO `sys_oper_log` VALUES ('517', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":204,\"remark\":\"\",\"vendorCode\":\"55860240-6\",\"vendorNick\":\"嘉盛塑胶\",\"updateBy\":\"\",\"tel\":\"0575-87543333\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号\",\"updateTime\":1716011911687,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"attr4\":0,\"attr3\":0,\"vendorDes\":\"专注于提供各种塑料原材料，广泛应用于耳机外壳等部件的制造。\",\"createBy\":\"\",\"createTime\":1716011876000,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 13:58:31');
INSERT INTO `sys_oper_log` VALUES ('518', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":205,\"vendorCode\":\"59584135-0\",\"creditCode\":\"914419005958413505\",\"tel\":\"13592727883\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"params\":{},\"vendorName\":\"东莞市烨冠电子科技有限公司\",\"vendorDes\":\"研发、产销、加工：电子产品及配件，电线、电缆及辅材，塑胶原料、塑胶制品；货物进出口、技术进出口。\",\"createTime\":1716012717261,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-05-18 14:11:57');
INSERT INTO `sys_oper_log` VALUES ('519', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":206,\"vendorCode\":\"33487366-1\",\"creditCode\":\"91441900334873661N\",\"tel\":\"13712126682\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"params\":{},\"vendorName\":\"东莞市恩捷电子有限公司\",\"vendorDes\":\"销售：电子元器件、电子产品、集成电路板、通讯设备；货物进出口、技术进出口。\",\"createTime\":1716012803413,\"vendorScore\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-05-18 14:13:23');
INSERT INTO `sys_oper_log` VALUES ('520', '客户', '3', 'com.ktg.mes.md.controller.MdClientController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/client/200', '127.0.0.1', '内网IP', '{clientIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 14:13:32');
INSERT INTO `sys_oper_log` VALUES ('521', '客户', '3', 'com.ktg.mes.md.controller.MdClientController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/client/201', '127.0.0.1', '内网IP', '{clientIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 14:13:36');
INSERT INTO `sys_oper_log` VALUES ('522', '客户', '3', 'com.ktg.mes.md.controller.MdClientController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/client/202', '127.0.0.1', '内网IP', '{clientIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 14:13:38');
INSERT INTO `sys_oper_log` VALUES ('523', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180025\"', '0', null, '2024-05-18 14:23:26');
INSERT INTO `sys_oper_log` VALUES ('524', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180026\"', '0', null, '2024-05-18 14:25:36');
INSERT INTO `sys_oper_log` VALUES ('525', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180027\"', '0', null, '2024-05-18 14:30:35');
INSERT INTO `sys_oper_log` VALUES ('526', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180028\"', '0', null, '2024-05-18 14:31:34');
INSERT INTO `sys_oper_log` VALUES ('527', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180029\"', '0', null, '2024-05-18 14:32:21');
INSERT INTO `sys_oper_log` VALUES ('528', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180030\"', '0', null, '2024-05-18 14:34:37');
INSERT INTO `sys_oper_log` VALUES ('529', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180031\"', '0', null, '2024-05-18 14:34:43');
INSERT INTO `sys_oper_log` VALUES ('530', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180032\"', '0', null, '2024-05-18 14:34:46');
INSERT INTO `sys_oper_log` VALUES ('531', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180033\"', '0', null, '2024-05-18 14:52:13');
INSERT INTO `sys_oper_log` VALUES ('532', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180034\"', '0', null, '2024-05-18 14:54:38');
INSERT INTO `sys_oper_log` VALUES ('533', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180035\"', '0', null, '2024-05-18 14:56:28');
INSERT INTO `sys_oper_log` VALUES ('534', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180036\"', '0', null, '2024-05-18 14:57:19');
INSERT INTO `sys_oper_log` VALUES ('535', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180037\"', '0', null, '2024-05-18 14:57:35');
INSERT INTO `sys_oper_log` VALUES ('536', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202405180038\"', '0', null, '2024-05-18 14:57:47');
INSERT INTO `sys_oper_log` VALUES ('537', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":3,\"menuName\":\"物料入库\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"itemrecpt\",\"component\":\"mes/wm/itemrecpt/index\",\"children\":[],\"createTime\":1653212111000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2151,\"menuType\":\"C\",\"perms\":\"mes:wm:itemrecpt\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:13:04');
INSERT INTO `sys_oper_log` VALUES ('538', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":2,\"menuName\":\"现有库存\",\"params\":{},\"parentId\":2042,\"isCache\":\"0\",\"path\":\"wmstock\",\"component\":\"mes/wm/wmstock/index\",\"children\":[],\"createTime\":1653925000000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2157,\"menuType\":\"C\",\"perms\":\"mes:wm:wmstock\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:13:22');
INSERT INTO `sys_oper_log` VALUES ('539', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"测试入库单\",\"recptId\":207,\"vendorId\":205,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"59584135-0\",\"areaName\":\"1号库位\",\"locationId\":205,\"poCode\":\"001\",\"recptDate\":1715961600000,\"recptCode\":\"WE-20240518152614\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"东莞市烨冠电子科技有限公司\",\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716017224222,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:27:04');
INSERT INTO `sys_oper_log` VALUES ('540', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/207', '127.0.0.1', '内网IP', '207', null, '1', '事务数量不能为空', '2024-05-18 15:27:44');
INSERT INTO `sys_oper_log` VALUES ('541', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051803\"', '0', null, '2024-05-18 15:32:03');
INSERT INTO `sys_oper_log` VALUES ('542', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051816\"', '0', null, '2024-05-18 15:32:16');
INSERT INTO `sys_oper_log` VALUES ('543', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IF2024051841\"', '0', null, '2024-05-18 15:32:41');
INSERT INTO `sys_oper_log` VALUES ('544', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051841\",\"itemTypeCode\":\"ITEM_TYPE_0104\",\"specification\":\"DR\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":211,\"createBy\":\"admin\",\"itemName\":\"有线耳机电容\",\"maxStock\":0.0,\"itemTypeName\":\"电子元件\",\"itemTypeId\":209,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":211}', '0', null, '2024-05-18 15:32:50');
INSERT INTO `sys_oper_log` VALUES ('545', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":207,\"quantity\":1,\"unitOfMeasure\":\"system\",\"bomItemCode\":\"IF2024051841\",\"params\":{},\"bomItemId\":211,\"bomItemName\":\"有线耳机电容\",\"itemId\":211,\"createTime\":1716017627625,\"enableFlag\":\"Y\",\"bomItemSpec\":\"DR\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:33:47');
INSERT INTO `sys_oper_log` VALUES ('546', '物料管理', '2', 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"IF2024051841\",\"itemTypeCode\":\"ITEM_TYPE_0104\",\"specification\":\"DR\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":211,\"createBy\":\"admin\",\"itemName\":\"有线耳机电容\",\"createTime\":1716017570000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"电子元件\",\"itemTypeId\":209,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:33:53');
INSERT INTO `sys_oper_log` VALUES ('547', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051841\",\"recptId\":207,\"warehouseName\":\"仓库B\",\"quantityRecived\":200,\"warehouseCode\":\"WH00001\",\"itemName\":\"有线耳机电容\",\"areaName\":\"1号库位\",\"locationId\":205,\"expireDate\":1717084800000,\"locationName\":\"库区5\",\"unitOfMeasure\":\"system\",\"batchCode\":\"4545454545\",\"lineId\":202,\"specification\":\"DR\",\"params\":{},\"itemId\":211,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716017888194,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:38:08');
INSERT INTO `sys_oper_log` VALUES ('548', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"电容采购入库单\",\"recptId\":207,\"vendorId\":205,\"remark\":\"\",\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"59584135-0\",\"areaName\":\"1号库位\",\"updateBy\":\"\",\"locationId\":205,\"poCode\":\"001\",\"recptDate\":1715961600000,\"recptCode\":\"WE-20240518152614\",\"locationName\":\"库区5\",\"updateTime\":1716017895030,\"params\":{},\"vendorName\":\"东莞市烨冠电子科技有限公司\",\"attr4\":0,\"attr3\":0,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716017224000,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:38:15');
INSERT INTO `sys_oper_log` VALUES ('549', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/207', '127.0.0.1', '内网IP', '207', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:38:27');
INSERT INTO `sys_oper_log` VALUES ('550', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"测试单据\",\"recptId\":208,\"vendorId\":206,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"33487366-1\",\"areaName\":\"1号库位\",\"locationId\":205,\"poCode\":\"4546545\",\"recptDate\":1716480000000,\"recptCode\":\"WE-20240518155449\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"东莞市恩捷电子有限公司\",\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716018912534,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 15:55:12');
INSERT INTO `sys_oper_log` VALUES ('551', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051841\",\"recptId\":208,\"warehouseName\":\"仓库B\",\"quantityRecived\":1,\"warehouseCode\":\"WH00001\",\"itemName\":\"有线耳机电容\",\"areaName\":\"1号库位\",\"locationId\":205,\"expireDate\":1717084800000,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240518161527\",\"lineId\":203,\"specification\":\"DR\",\"params\":{},\"itemId\":211,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1716020138750,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:15:38');
INSERT INTO `sys_oper_log` VALUES ('552', '物料入库单', '2', 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/208', '127.0.0.1', '内网IP', '208', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:20:55');
INSERT INTO `sys_oper_log` VALUES ('553', '物料入库单', '1', 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"测试123\",\"recptId\":209,\"vendorId\":206,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"vendorCode\":\"33487366-1\",\"areaName\":\"2号库位\",\"locationId\":205,\"poCode\":\"ewewqeqweqw\",\"recptDate\":1715875200000,\"recptCode\":\"WE-20240518162102\",\"locationName\":\"库区5\",\"params\":{},\"vendorName\":\"东莞市恩捷电子有限公司\",\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1716020485080,\"warehouseId\":201,\"locationCode\":\"L050\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:21:25');
INSERT INTO `sys_oper_log` VALUES ('554', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051841\",\"recptId\":209,\"warehouseName\":\"仓库B\",\"quantityRecived\":1,\"warehouseCode\":\"WH00001\",\"itemName\":\"有线耳机电容\",\"areaName\":\"2号库位\",\"locationId\":205,\"expireDate\":1716480000000,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240518162232\",\"lineId\":204,\"specification\":\"DR\",\"params\":{},\"itemId\":211,\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1716020562021,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:22:42');
INSERT INTO `sys_oper_log` VALUES ('555', '物料入库单行', '3', 'com.ktg.mes.wm.controller.WmItemRecptLineController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/itemrecptline/204', '127.0.0.1', '内网IP', '{lineIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:24:11');
INSERT INTO `sys_oper_log` VALUES ('556', '物料入库单行', '1', 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051841\",\"recptId\":209,\"warehouseName\":\"仓库B\",\"quantityRecived\":200,\"warehouseCode\":\"WH00001\",\"itemName\":\"有线耳机电容\",\"areaName\":\"2号库位\",\"locationId\":205,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240518164509\",\"lineId\":205,\"specification\":\"DR\",\"params\":{},\"itemId\":211,\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1716022080704,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 16:48:00');
INSERT INTO `sys_oper_log` VALUES ('557', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:21');
INSERT INTO `sys_oper_log` VALUES ('558', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:23');
INSERT INTO `sys_oper_log` VALUES ('559', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:25');
INSERT INTO `sys_oper_log` VALUES ('560', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:30');
INSERT INTO `sys_oper_log` VALUES ('561', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:32');
INSERT INTO `sys_oper_log` VALUES ('562', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2024-05-18 17:02:38');
INSERT INTO `sys_oper_log` VALUES ('563', '部门管理', '3', 'com.ktg.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:02:41');
INSERT INTO `sys_oper_log` VALUES ('564', '部门管理', '2', 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"哈哈电子科技\",\"leader\":\"哈哈\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1690796841000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"haha@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:03:06');
INSERT INTO `sys_oper_log` VALUES ('565', '部门管理', '1', 'com.ktg.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"东莞分公司\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:03:25');
INSERT INTO `sys_oper_log` VALUES ('566', '部门管理', '1', 'com.ktg.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"耳机生产业务部\",\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:03:51');
INSERT INTO `sys_oper_log` VALUES ('567', '部门管理', '2', 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"消费电子生产部\",\"deptId\":201,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"createTime\":1716023031000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,200\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:04:29');
INSERT INTO `sys_oper_log` VALUES ('568', '部门管理', '2', 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息化支持部\",\"leader\":\"李伟\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1690796841000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"aaaa@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:05:38');
INSERT INTO `sys_oper_log` VALUES ('569', '部门管理', '2', 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"软件研发部\",\"leader\":\"啊哈哈\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1690796841000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-18 17:06:19');
INSERT INTO `sys_oper_log` VALUES ('570', '个人信息', '2', 'com.ktg.web.controller.system.SysProfileController.updatePwd()', 'PUT', '1', 'admin', null, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'admin123 123456', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 15:38:28');
INSERT INTO `sys_oper_log` VALUES ('571', '个人信息', '2', 'com.ktg.web.controller.system.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1718245258000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息化支持部\",\"leader\":\"李伟\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1690796841000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 15:38:35');
INSERT INTO `sys_oper_log` VALUES ('572', '用户头像', '2', 'com.ktg.web.controller.system.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/13/blob_20240613153913A001.jpeg\",\"code\":200}', '0', null, '2024-06-13 15:39:13');
INSERT INTO `sys_oper_log` VALUES ('573', '个人信息', '2', 'com.ktg.web.controller.system.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15012345678\",\"admin\":true,\"loginDate\":1718245258000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"admin@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息化支持部\",\"leader\":\"李伟\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1690796841000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 15:39:26');
INSERT INTO `sys_oper_log` VALUES ('574', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"clientType\":\"ENTERPRISE\",\"updateBy\":\"\",\"tel\":\"18956124578\",\"enableFlag\":\"Y\",\"address\":\"东莞市\",\"clientId\":203,\"params\":{},\"createBy\":\"\",\"createTime\":1716006092000,\"clientCode\":\"C-HUAWEI\"}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\r\n### The error may exist in file [D:\\政企资源研发中心项目库\\制造执行系统\\SimpleMES-Server\\ktg-mes\\target\\classes\\mapper\\md\\MdClientMapper.xml]\r\n### The error may involve com.ktg.mes.md.mapper.MdClientMapper.checkClientNickUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         client_id,         client_code,         client_name,         client_type,         address,         tel,         credit_code,         enable_flag,         remark,         create_by,         create_time,         update_by,         update_time         from md_client               where client_nick = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'', '2024-06-13 15:54:44');
INSERT INTO `sys_oper_log` VALUES ('575', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"clientType\":\"ENTERPRISE\",\"updateBy\":\"\",\"tel\":\"18956124578\",\"enableFlag\":\"Y\",\"address\":\"东莞市\",\"clientId\":203,\"params\":{},\"createBy\":\"\",\"createTime\":1716006092000,\"clientCode\":\"C-HUAWEI\"}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\r\n### The error may exist in file [D:\\政企资源研发中心项目库\\制造执行系统\\SimpleMES-Server\\ktg-mes\\target\\classes\\mapper\\md\\MdClientMapper.xml]\r\n### The error may involve com.ktg.mes.md.mapper.MdClientMapper.checkClientNickUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         client_id,         client_code,         client_name,         client_type,         address,         tel,         credit_code,         enable_flag,         remark,         create_by,         create_time,         update_by,         update_time         from md_client               where client_nick = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'', '2024-06-13 15:54:48');
INSERT INTO `sys_oper_log` VALUES ('576', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"clientType\":\"ENTERPRISE\",\"updateBy\":\"\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\",\"address\":\"东莞市\",\"clientId\":203,\"params\":{},\"createBy\":\"\",\"createTime\":1716006092000,\"clientCode\":\"C-HUAWEI\"}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\r\n### The error may exist in file [D:\\政企资源研发中心项目库\\制造执行系统\\SimpleMES-Server\\ktg-mes\\target\\classes\\mapper\\md\\MdClientMapper.xml]\r\n### The error may involve com.ktg.mes.md.mapper.MdClientMapper.checkClientNickUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         client_id,         client_code,         client_name,         client_type,         address,         tel,         credit_code,         enable_flag,         remark,         create_by,         create_time,         update_by,         update_time         from md_client               where client_nick = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'client_nick\' in \'where clause\'', '2024-06-13 15:56:56');
INSERT INTO `sys_oper_log` VALUES ('577', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'clientNick\' in \'class com.ktg.mes.md.domain.MdClient\'', '2024-06-13 16:01:32');
INSERT INTO `sys_oper_log` VALUES ('578', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"updateTime\":1718265791766,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:03:11');
INSERT INTO `sys_oper_log` VALUES ('579', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"updateTime\":1718265800626,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:03:20');
INSERT INTO `sys_oper_log` VALUES ('580', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"updateTime\":1718265854676,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:04:14');
INSERT INTO `sys_oper_log` VALUES ('581', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"updateTime\":1718266070253,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:07:50');
INSERT INTO `sys_oper_log` VALUES ('582', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为消费者事业部\",\"remark\":\"\",\"updateTime\":1718266089862,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"tel\":\"18956234512\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:08:09');
INSERT INTO `sys_oper_log` VALUES ('583', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"测试地址\",\"clientId\":204,\"clientName\":\"测试客户\",\"params\":{},\"clientType\":\"ENTERPRISE\",\"creditCode\":\"djsfadaljfasflkasfd\",\"createTime\":1718266678634,\"clientCode\":\"asdlksalfjdasdf\",\"tel\":\"18945127845\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-06-13 16:17:58');
INSERT INTO `sys_oper_log` VALUES ('584', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"测试地址\",\"clientId\":204,\"clientName\":\"测试客户\",\"remark\":\"\",\"updateTime\":1718266828059,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"djsfadaljfasflkasfd\",\"createTime\":1718266679000,\"updateBy\":\"\",\"clientCode\":\"asdlksalfjdasdf\",\"tel\":\"18945127845\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:20:28');
INSERT INTO `sys_oper_log` VALUES ('585', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"测试地址\",\"clientId\":204,\"clientName\":\"测试客户\",\"remark\":\"测试测试\",\"updateTime\":1718266947678,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"djsfadaljfasflkasfd\",\"createTime\":1718266679000,\"updateBy\":\"\",\"clientCode\":\"asdlksalfjdasdf\",\"tel\":\"18945127845\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:22:27');
INSERT INTO `sys_oper_log` VALUES ('586', '客户', '2', 'com.ktg.mes.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"测试地址\",\"clientId\":204,\"clientName\":\"测试客户\",\"remark\":\"测试测试\",\"updateTime\":1718267063924,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"djsfadaljfasflkasfd\",\"createTime\":1718266679000,\"updateBy\":\"\",\"clientCode\":\"asdlksalfjdasdf\",\"tel\":\"18945127845\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:24:23');
INSERT INTO `sys_oper_log` VALUES ('587', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"A\",\"params\":{},\"vendorName\":\"测试122323\",\"vendorCode\":\"fsadfjaskf\",\"vendorDes\":\"jjjsad \",\"creditCode\":\"sdlkfjsafdjalskdfjkl\",\"vendorScore\":100,\"tel\":\"18956124578\",\"enableFlag\":\"Y\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'vendorNick\' in \'class com.ktg.mes.md.domain.MdVendor\'', '2024-06-13 16:42:30');
INSERT INTO `sys_oper_log` VALUES ('588', '供应商', '1', 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"A\",\"vendorId\":207,\"params\":{},\"vendorName\":\"测试122323\",\"vendorCode\":\"fsadfjaskf\",\"vendorDes\":\"jjjsad \",\"creditCode\":\"sdlkfjsafdjalskdfjkl\",\"createTime\":1718268475632,\"vendorScore\":100,\"tel\":\"18956124578\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-06-13 16:47:55');
INSERT INTO `sys_oper_log` VALUES ('589', '供应商', '2', 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"A\",\"vendorId\":207,\"updateTime\":1718268482174,\"params\":{},\"vendorName\":\"测试122323\",\"vendorCode\":\"fsadfjaskf\",\"vendorDes\":\"jjjsad sdasd\",\"createBy\":\"\",\"creditCode\":\"sdlkfjsafdjalskdfjkl\",\"createTime\":1718268476000,\"updateBy\":\"\",\"vendorScore\":100,\"tel\":\"18956124578\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:48:02');
INSERT INTO `sys_oper_log` VALUES ('590', '供应商', '3', 'com.ktg.mes.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/207', '127.0.0.1', '内网IP', '{vendorIds=207}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 16:48:05');
INSERT INTO `sys_oper_log` VALUES ('591', '用户管理', '3', 'com.ktg.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:11:59');
INSERT INTO `sys_oper_log` VALUES ('592', '角色管理', '1', 'com.ktg.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chejianguanliyuan\",\"roleName\":\"车间管理员\",\"deptIds\":[],\"menuIds\":[3,114,115,1055,1056,1058,1057,1059,1060,116,2000,2014,2023,2015,2016,2017,2020,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2088,2089,2090,2091,2092,2093,2094,2002,2022,2008,2009,2010,2019,2001,2021,2011,2012,2013,2018,2079,2080,2081,2082,2083,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2157,2158,2159,2151,2152,2153,2154,2155,2156,2179,2180,2181,2182,2183,2184,2197,2198,2199,2200,2201,2202,2226,2227,2228,2229,2230,2231,2232,2233,2234,2235,2236,2238,2239,2240,2241,2242,2243,2244,2245,2246,2247,2248,2249,2203,2204,2250,2251,2252,2253,2254,2255,2072,2073,2074,2075,2076,2077,2078,2084,2085,2086,2087,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:12:34');
INSERT INTO `sys_oper_log` VALUES ('593', '车间', '1', 'com.ktg.mes.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"李伟\",\"workshopName\":\"测试车间\",\"params\":{},\"createTime\":1718270373658,\"workshopId\":202,\"workshopCode\":\"WORKSHOP-20240613171914\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:19:33');
INSERT INTO `sys_oper_log` VALUES ('594', '车间', '2', 'com.ktg.mes.md.controller.MdWorkshopController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"王红\",\"workshopName\":\"测试车间\",\"updateTime\":1718270382388,\"params\":{},\"createBy\":\"\",\"createTime\":1718270374000,\"updateBy\":\"\",\"workshopId\":202,\"workshopCode\":\"WORKSHOP-20240613171914\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:19:42');
INSERT INTO `sys_oper_log` VALUES ('595', '车间', '3', 'com.ktg.mes.md.controller.MdWorkshopController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workshop/202', '127.0.0.1', '内网IP', '{workshopIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:20:44');
INSERT INTO `sys_oper_log` VALUES ('596', '工作站', '1', 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"哈哈哈哈\",\"params\":{},\"workstationCode\":\"WORKSTATION-20240613174450\",\"createTime\":1718271901656,\"processId\":200,\"processName\":\"工序A\",\"processCode\":\"PROCESS195\",\"workstationId\":203,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":203}', '0', null, '2024-06-13 17:45:01');
INSERT INTO `sys_oper_log` VALUES ('597', '工作站', '2', 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"哈哈哈哈\",\"updateTime\":1718272245587,\"params\":{},\"createBy\":\"\",\"workstationCode\":\"WORKSTATION-20240613174450\",\"createTime\":1718271902000,\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"processCode\":\"PROCESS195\",\"workstationId\":203,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:50:45');
INSERT INTO `sys_oper_log` VALUES ('598', '工作站', '3', 'com.ktg.mes.md.controller.MdWorkstationController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workstation/203', '127.0.0.1', '内网IP', '{workstationIds=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 17:50:51');
INSERT INTO `sys_oper_log` VALUES ('599', '生产工序', '1', 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createTime\":1718273025006,\"processId\":203,\"processName\":\"测试工序\",\"processCode\":\"PROCESS-20240613180335\",\"attention\":\"哈哈哈\",\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 18:03:45');
INSERT INTO `sys_oper_log` VALUES ('600', '生产工序内容', '1', 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":203,\"contentText\":\"哈哈哈\",\"orderNum\":4,\"params\":{},\"material\":\"哈哈哈\",\"createTime\":1718275017082,\"processId\":202,\"device\":\"哈哈哈\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 18:36:57');
INSERT INTO `sys_oper_log` VALUES ('601', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0117\"', '0', null, '2024-06-13 19:00:47');
INSERT INTO `sys_oper_log` VALUES ('602', '新增物料产品分类信息', '1', 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":207,\"itemTypeCode\":\"ITEM_TYPE_0117\",\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"哈哈哈\",\"ancestors\":\"0,200,201,203,207\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-13 19:00:47');
INSERT INTO `sys_oper_log` VALUES ('603', '删除物料产品分类', '3', 'com.ktg.mes.md.controller.ItemTypeController.del()', 'DELETE', '1', 'admin', null, '/mes/md/itemtype/222', '127.0.0.1', '内网IP', '{itemTypeId=222}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-13 19:00:52');
INSERT INTO `sys_oper_log` VALUES ('604', '更新物料产品分类', '2', 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"ITEM_TYPE_0102\",\"params\":{},\"createBy\":\"admin\",\"children\":[],\"createTime\":1716006709000,\"updateBy\":\"admin\",\"itemTypeName\":\"塑料材料\",\"ancestors\":\"0,200,201,203\",\"itemTypeId\":207,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-14 09:08:59');
INSERT INTO `sys_oper_log` VALUES ('605', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":208,\"quantity\":1,\"unitOfMeasure\":\"套\",\"bomItemCode\":\"IF2024051834\",\"params\":{},\"bomItemId\":208,\"bomItemName\":\"A01有线耳机头带\",\"itemId\":206,\"createTime\":1718328155333,\"enableFlag\":\"Y\",\"bomItemSpec\":\"TD-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:22:35');
INSERT INTO `sys_oper_log` VALUES ('606', '产品BOM关系', '1', 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', '1', 'admin', null, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":209,\"quantity\":1,\"unitOfMeasure\":\"套\",\"bomItemCode\":\"IF2024051808\",\"params\":{},\"bomItemId\":207,\"bomItemName\":\"A01有线耳机连接线\",\"itemId\":206,\"createTime\":1718328155333,\"enableFlag\":\"Y\",\"bomItemSpec\":\"LJX-A01\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:22:35');
INSERT INTO `sys_oper_log` VALUES ('607', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406140001\"', '0', null, '2024-06-14 09:45:40');
INSERT INTO `sys_oper_log` VALUES ('608', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"0154621545544\",\"workorderId\":208,\"children\":[],\"workorderName\":\"新工单0614\",\"requestDate\":1724947200000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":203,\"quantity\":100000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094540\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140001\",\"createTime\":1718329589467,\"clientCode\":\"C-HUAWEI\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":208}', '0', null, '2024-06-14 09:46:29');
INSERT INTO `sys_oper_log` VALUES ('609', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"华为消费者事业部\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"0154621545544\",\"workorderId\":208,\"children\":[],\"workorderName\":\"新工单0614\",\"requestDate\":1724947200000,\"orderSource\":\"ORDER\",\"clientId\":203,\"quantity\":100000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094540\",\"updateTime\":1718329594193,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140001\",\"clientCode\":\"C-HUAWEI\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:46:34');
INSERT INTO `sys_oper_log` VALUES ('610', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406140002\"', '0', null, '2024-06-14 09:46:53');
INSERT INTO `sys_oper_log` VALUES ('611', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientId\":205,\"clientName\":\"OPPO\",\"params\":{},\"clientType\":\"ENTERPRISE\",\"createTime\":1718329638707,\"clientCode\":\"OPPO\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-06-14 09:47:18');
INSERT INTO `sys_oper_log` VALUES ('612', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientId\":206,\"clientName\":\"VIVO\",\"params\":{},\"clientType\":\"ENTERPRISE\",\"createTime\":1718329651048,\"clientCode\":\"VIVO\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-06-14 09:47:31');
INSERT INTO `sys_oper_log` VALUES ('613', '客户', '1', 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientId\":207,\"clientName\":\"荣耀\",\"params\":{},\"clientType\":\"ENTERPRISE\",\"createTime\":1718329666468,\"clientCode\":\"HONOR\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-06-14 09:47:46');
INSERT INTO `sys_oper_log` VALUES ('614', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406140003\"', '0', null, '2024-06-14 09:47:52');
INSERT INTO `sys_oper_log` VALUES ('615', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"OPPO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"BATCH-20240614094752\",\"workorderId\":209,\"children\":[],\"workorderName\":\"OPPO无线耳机7月份订单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":205,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094752\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140003\",\"createTime\":1718329737868,\"clientCode\":\"OPPO\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":209}', '0', null, '2024-06-14 09:48:57');
INSERT INTO `sys_oper_log` VALUES ('616', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"OPPO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"BATCH-20240614094752\",\"workorderId\":209,\"children\":[],\"workorderName\":\"OPPO无线耳机7月份订单\",\"requestDate\":1719590400000,\"orderSource\":\"ORDER\",\"clientId\":205,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094752\",\"updateTime\":1718329742486,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140003\",\"clientCode\":\"OPPO\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:49:02');
INSERT INTO `sys_oper_log` VALUES ('617', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406140004\"', '0', null, '2024-06-14 09:49:07');
INSERT INTO `sys_oper_log` VALUES ('618', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"VIVO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"VIVO-20240614094907\",\"workorderId\":210,\"children\":[],\"workorderName\":\"VIVO耳机订单\",\"requestDate\":1719676800000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":206,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094907\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140004\",\"createTime\":1718329801684,\"clientCode\":\"VIVO\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":210}', '0', null, '2024-06-14 09:50:01');
INSERT INTO `sys_oper_log` VALUES ('619', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"VIVO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"VIVO-20240614094907\",\"workorderId\":210,\"children\":[],\"workorderName\":\"VIVO耳机订单\",\"requestDate\":1719676800000,\"orderSource\":\"ORDER\",\"clientId\":206,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"batchCode\":\"BATCH-20240614094907\",\"updateTime\":1718329807087,\"params\":{},\"parentId\":0,\"productCode\":\"IF2024051850\",\"workorderCode\":\"MO202406140004\",\"clientCode\":\"VIVO\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:50:07');
INSERT INTO `sys_oper_log` VALUES ('620', '物料管理', '1', 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"454655sdfksjdf4566\",\"itemTypeCode\":\"ITEM_TYPE_0101\",\"specification\":\"A02\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":212,\"createBy\":\"admin\",\"itemName\":\"A02无线耳机\",\"maxStock\":0.0,\"itemTypeName\":\"无线耳机\",\"itemTypeId\":206,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":212}', '0', null, '2024-06-14 09:51:13');
INSERT INTO `sys_oper_log` VALUES ('621', '生成业务编号', '1', 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406140005\"', '0', null, '2024-06-14 09:51:18');
INSERT INTO `sys_oper_log` VALUES ('622', '生产工单', '1', 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"54656546556465\",\"workorderId\":211,\"children\":[],\"workorderName\":\"HONOR-202406140005\",\"requestDate\":1719676800000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":8000,\"productId\":212,\"unitOfMeasure\":\"system\",\"batchCode\":\"BATCH-20240614095118\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"MO202406140005\",\"createTime\":1718329913575,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":211}', '0', null, '2024-06-14 09:51:53');
INSERT INTO `sys_oper_log` VALUES ('623', '生产工单', '2', 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"54656546556465\",\"workorderId\":211,\"children\":[],\"workorderName\":\"HONOR-202406140005\",\"requestDate\":1719676800000,\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":8000,\"productId\":212,\"unitOfMeasure\":\"system\",\"batchCode\":\"BATCH-20240614095118\",\"updateTime\":1718329916888,\"params\":{},\"parentId\":0,\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"MO202406140005\",\"clientCode\":\"HONOR\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 09:51:56');
INSERT INTO `sys_oper_log` VALUES ('624', '菜单管理', '1', 'com.ktg.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":1,\"menuName\":\"MES介绍\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/mesDesc\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:40:12');
INSERT INTO `sys_oper_log` VALUES ('625', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"switch\",\"orderNum\":10,\"menuName\":\"生产管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/pro\",\"children\":[],\"createTime\":1652065087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2072,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:40:44');
INSERT INTO `sys_oper_log` VALUES ('626', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"zip\",\"orderNum\":9,\"menuName\":\"仓储管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/wm\",\"children\":[],\"createTime\":1651928788000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:40:58');
INSERT INTO `sys_oper_log` VALUES ('627', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":8,\"menuName\":\"基础数据\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"mes/md\",\"children\":[],\"createTime\":1650091315000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:41:04');
INSERT INTO `sys_oper_log` VALUES ('628', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":7,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1649262571000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:41:09');
INSERT INTO `sys_oper_log` VALUES ('629', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":6,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1649262571000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:41:15');
INSERT INTO `sys_oper_log` VALUES ('630', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"system\",\"orderNum\":5,\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1649262571000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:41:21');
INSERT INTO `sys_oper_log` VALUES ('631', '菜单管理', '2', 'com.ktg.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tree\",\"orderNum\":4,\"menuName\":\"组织架构\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"user\",\"children\":[],\"createTime\":1660398076000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2210,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 10:41:34');
INSERT INTO `sys_oper_log` VALUES ('632', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":208,\"measureCode\":\"U98986276\",\"createTime\":1718345312481,\"remark\":\"哈哈哈\",\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 14:08:32');
INSERT INTO `sys_oper_log` VALUES ('633', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":209,\"measureCode\":\"MEASUR62676063\",\"createTime\":1718345788621,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"测试单位\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 14:16:28');
INSERT INTO `sys_oper_log` VALUES ('634', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"地址哈哈哈\",\"clientId\":207,\"clientName\":\"荣耀\",\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"phoneNumber\":\"18956231452\",\"createTime\":1718329666000,\"updateBy\":\"\",\"clientCode\":\"HONOR\",\"contact\":\"李白\",\"enableFlag\":\"Y\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'clientNick\' in \'class com.qst.mes.core.md.domain.MdClient\'', '2024-06-14 15:17:10');
INSERT INTO `sys_oper_log` VALUES ('635', '客户', '3', 'com.qst.mes.core.md.controller.MdClientController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/client/204', '127.0.0.1', '内网IP', '{clientIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 15:21:41');
INSERT INTO `sys_oper_log` VALUES ('636', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为\",\"updateTime\":1718349710132,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"phoneNumber\":\"18956234512\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 15:21:50');
INSERT INTO `sys_oper_log` VALUES ('637', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"深圳市福田区香蜜湖街道东海社区红荔西路8089号深业中城6号楼A单元3401\",\"clientId\":207,\"clientName\":\"荣耀\",\"updateTime\":1718349808069,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"91440300MA5G49LC9K\",\"phoneNumber\":\"18676772236\",\"createTime\":1718329666000,\"updateBy\":\"\",\"clientCode\":\"HONOR\",\"contact\":\"吴晖\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-14 15:23:28');
INSERT INTO `sys_oper_log` VALUES ('638', '客户', '1', 'com.qst.mes.core.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"北京市海淀区西二旗中路33号院6号楼6层006号\",\"clientId\":208,\"clientName\":\"小米\",\"updateTime\":1718351722525,\"params\":{},\"createBy\":\"超级管理员\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"91110108551385082Q\",\"phoneNumber\":\"400-100-5678\",\"createTime\":1718351722525,\"updateBy\":\"超级管理员\",\"clientCode\":\"CUSTOMER80527193\",\"contact\":\"雷军\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":208}', '0', null, '2024-06-14 15:55:22');
INSERT INTO `sys_oper_log` VALUES ('639', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号\",\"vendorId\":204,\"updateTime\":1718429660838,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"vendorCode\":\"55860240-6\",\"createBy\":\"\",\"phoneNumber\":\"18956234512\",\"createTime\":1716011876000,\"updateBy\":\"\",\"contact\":\"哈哈哈\",\"vendorScore\":100,\"enableFlag\":\"Y\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'website\' in \'class com.qst.mes.core.md.domain.MdVendor\'', '2024-06-15 13:34:20');
INSERT INTO `sys_oper_log` VALUES ('640', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号\",\"vendorId\":204,\"updateTime\":1718429738796,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"vendorCode\":\"55860240-6\",\"createBy\":\"\",\"phoneNumber\":\"18956234512\",\"createTime\":1716011876000,\"updateBy\":\"\",\"contact\":\"哈哈哈\",\"vendorScore\":100,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 13:35:38');
INSERT INTO `sys_oper_log` VALUES ('641', '供应商', '1', 'com.qst.mes.core.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"vendorId\":208,\"updateTime\":1718429950351,\"params\":{},\"vendorName\":\"测试\",\"vendorCode\":\"WENDOR48559495\",\"createBy\":\"超级管理员\",\"createTime\":1718429950351,\"updateBy\":\"超级管理员\",\"vendorScore\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":208}', '0', null, '2024-06-15 13:39:10');
INSERT INTO `sys_oper_log` VALUES ('642', '车间', '1', 'com.qst.mes.core.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":100,\"charge\":\"李伟\",\"workshopName\":\"测试车间\",\"params\":{},\"createTime\":1718430526700,\"workshopId\":203,\"workshopCode\":\"WORKSHOP42706825\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 13:48:46');
INSERT INTO `sys_oper_log` VALUES ('643', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718433067640,\"processId\":204,\"processName\":\"测试名称\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS25561153\",\"attention\":\"测试工序\",\"updateTime\":1718433067640,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 14:31:07');
INSERT INTO `sys_oper_log` VALUES ('644', '生产工序', '2', 'com.qst.mes.core.pro.controller.ProProcessController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718433068000,\"processId\":204,\"processName\":\"测试名称方法\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS25561153\",\"attention\":\"测试工序\",\"updateTime\":1718433075892,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 14:31:15');
INSERT INTO `sys_oper_log` VALUES ('645', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":204,\"contentText\":\"哈哈\",\"orderNum\":1,\"params\":{},\"material\":\"哈哈\",\"createTime\":1718433103433,\"processId\":204,\"device\":\"哈哈\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 14:31:43');
INSERT INTO `sys_oper_log` VALUES ('646', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":205,\"contentText\":\"哈哈哈\",\"orderNum\":1,\"params\":{},\"material\":\"水电费\",\"createTime\":1718434410570,\"processId\":204,\"device\":\"是的撒地方\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 14:53:30');
INSERT INTO `sys_oper_log` VALUES ('647', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"ITEM_TYPE_0118\"', '0', null, '2024-06-15 15:02:16');
INSERT INTO `sys_oper_log` VALUES ('648', '新增物料产品分类信息', '1', 'com.qst.mes.core.md.controller.ItemTypeController.add()', 'POST', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":209,\"itemTypeCode\":\"ITEM_TYPE_0118\",\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"哈哈哈\",\"ancestors\":\"0,200,201,203,209\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-15 15:02:16');
INSERT INTO `sys_oper_log` VALUES ('649', '更新物料产品分类', '2', 'com.qst.mes.core.md.controller.ItemTypeController.update()', 'PUT', '1', 'admin', null, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":209,\"itemTypeCode\":\"ITEM_TYPE_0118\",\"params\":{},\"createBy\":\"admin\",\"children\":[],\"createTime\":1718434936000,\"updateBy\":\"admin\",\"itemTypeName\":\"EEEE\",\"ancestors\":\"0,200,201,203,209\",\"itemTypeId\":223,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-15 15:02:24');
INSERT INTO `sys_oper_log` VALUES ('650', '用户头像', '2', 'com.qst.mes.controller.system.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/15/blob_20240615150249A001.jpeg\",\"code\":200}', '0', null, '2024-06-15 15:02:49');
INSERT INTO `sys_oper_log` VALUES ('651', '个人信息', '2', 'com.qst.mes.controller.system.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15012345678\",\"admin\":true,\"loginDate\":1718344268000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"admin@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2024/06/13/blob_20240613153913A001.jpeg\",\"dept\":{\"deptName\":\"信息化支持部\",\"leader\":\"李伟\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1690796841000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 15:02:52');
INSERT INTO `sys_oper_log` VALUES ('652', '用户头像', '2', 'com.qst.mes.controller.system.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/15/blob_20240615150309A002.jpeg\",\"code\":200}', '0', null, '2024-06-15 15:03:09');
INSERT INTO `sys_oper_log` VALUES ('653', '用户头像', '2', 'com.qst.mes.controller.system.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/15/blob_20240615150313A003.jpeg\",\"code\":200}', '0', null, '2024-06-15 15:03:13');
INSERT INTO `sys_oper_log` VALUES ('654', '物料管理', '1', 'com.qst.mes.core.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"kilogram\",\"itemCode\":\"ITEM87652275\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"specification\":\"哈哈哈\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":213,\"createBy\":\"admin\",\"itemName\":\"测试物料\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":213}', '0', null, '2024-06-15 15:17:09');
INSERT INTO `sys_oper_log` VALUES ('655', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150001\"', '0', null, '2024-06-15 15:23:33');
INSERT INTO `sys_oper_log` VALUES ('656', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150002\"', '0', null, '2024-06-15 15:31:29');
INSERT INTO `sys_oper_log` VALUES ('657', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150003\"', '0', null, '2024-06-15 15:36:09');
INSERT INTO `sys_oper_log` VALUES ('658', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150004\"', '0', null, '2024-06-15 15:38:34');
INSERT INTO `sys_oper_log` VALUES ('659', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150005\"', '0', null, '2024-06-15 15:38:38');
INSERT INTO `sys_oper_log` VALUES ('660', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150006\"', '0', null, '2024-06-15 15:40:19');
INSERT INTO `sys_oper_log` VALUES ('661', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150007\"', '0', null, '2024-06-15 15:47:26');
INSERT INTO `sys_oper_log` VALUES ('662', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150008\"', '0', null, '2024-06-15 15:49:38');
INSERT INTO `sys_oper_log` VALUES ('663', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150009\"', '0', null, '2024-06-15 15:54:22');
INSERT INTO `sys_oper_log` VALUES ('664', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150010\"', '0', null, '2024-06-15 15:54:28');
INSERT INTO `sys_oper_log` VALUES ('665', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', '1', 'admin', null, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202406150011\"', '0', null, '2024-06-15 15:55:37');
INSERT INTO `sys_oper_log` VALUES ('666', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"sdfsklfklsdfjalskdf\",\"children\":[],\"workorderName\":\"测四工单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":4,\"productId\":212,\"unitOfMeasure\":\"system\",\"batchCode\":\"PRODUCTION_LOT:63234840\",\"params\":{},\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"WORK_ORDER:20240615164044\",\"createTime\":1718440874056,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'vendorId\' in \'class com.qst.mes.core.pro.domain.ProWorkorder\'', '2024-06-15 16:41:14');
INSERT INTO `sys_oper_log` VALUES ('667', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"sdfsklfklsdfjalskdf\",\"workorderId\":212,\"children\":[],\"workorderName\":\"测四工单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":4,\"productId\":212,\"unitOfMeasure\":\"system\",\"batchCode\":\"PRODUCTION_LOT:63234840\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"WORK_ORDER:20240615164044\",\"createTime\":1718440971202,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":212}', '0', null, '2024-06-15 16:42:51');
INSERT INTO `sys_oper_log` VALUES ('668', '生产工单', '3', 'com.qst.mes.core.pro.controller.ProWorkorderController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/workorder/212', '127.0.0.1', '内网IP', '{workorderIds=212}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 16:45:52');
INSERT INTO `sys_oper_log` VALUES ('669', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"小米\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"65564564646\",\"workorderId\":213,\"children\":[],\"workorderName\":\"测试工单1234\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":208,\"quantity\":4,\"productId\":203,\"unitOfMeasure\":\"副\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"NO.20240615164934\",\"createTime\":1718441411139,\"clientCode\":\"CUSTOMER80527193\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":213}', '0', null, '2024-06-15 16:50:11');
INSERT INTO `sys_oper_log` VALUES ('670', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"小米\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"65564564646\",\"workorderId\":213,\"children\":[],\"workorderName\":\"测试工单1234\",\"requestDate\":1719590400000,\"orderSource\":\"ORDER\",\"clientId\":208,\"quantity\":4,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718441424151,\"params\":{},\"productCode\":\"IF2024051850\",\"workorderCode\":\"NO.20240615164934\",\"clientCode\":\"CUSTOMER80527193\",\"status\":\"CONFIRMED\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'vendorId\' in \'class com.qst.mes.core.pro.domain.ProWorkorder\'', '2024-06-15 16:50:24');
INSERT INTO `sys_oper_log` VALUES ('671', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"sdfsadfsadf\",\"workorderId\":214,\"children\":[],\"workorderName\":\"kjasjasdfhjkasfhsad\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5,\"productId\":212,\"unitOfMeasure\":\"system\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"PWO20240615165558\",\"createTime\":1718441779291,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":214}', '0', null, '2024-06-15 16:56:19');
INSERT INTO `sys_oper_log` VALUES ('672', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A02\",\"productName\":\"A02无线耳机\",\"sourceCode\":\"sdfsadfsadf\",\"workorderId\":214,\"children\":[],\"updateBy\":\"\",\"workorderName\":\"kjasjasdfhjkasfhsad\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"quantityProduced\":0,\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5,\"productId\":212,\"unitOfMeasure\":\"system\",\"updateTime\":1718441812111,\"params\":{},\"parentId\":0,\"createBy\":\"\",\"productCode\":\"454655sdfksjdf4566\",\"workorderCode\":\"PWO20240615165558\",\"createTime\":1718441779000,\"clientCode\":\"HONOR\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 16:56:52');
INSERT INTO `sys_oper_log` VALUES ('673', '工艺路线', '1', 'com.qst.mes.core.pro.controller.ProRouteController.add()', 'POST', '1', 'admin', null, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"ROUTER20716834\",\"routeId\":201,\"createTime\":1718443913132,\"params\":{},\"routeDesc\":\"测试测试\",\"enableFlag\":\"Y\",\"routeName\":\" 测试测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 17:31:53');
INSERT INTO `sys_oper_log` VALUES ('674', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"orderNum\":1,\"routeId\":201,\"processId\":200,\"defaultPreTime\":0,\"params\":{},\"keyFlag\":\"N\",\"colorCode\":\"#00AEF3\",\"linkType\":\"FF\",\"defaultSufTime\":0}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProRouteProcessMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProRouteProcessMapper.checkOrderNumExists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select record_id, route_id, process_id, process_code, process_name, order_num, next_process_id, next_process_code, next_process_name, link_type, default_pre_time, default_suf_time, color_code,key_flag,is_check, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from pro_route_process               where route_id = ? and order_num = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'', '2024-06-15 18:04:28');
INSERT INTO `sys_oper_log` VALUES ('675', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"orderNum\":1,\"routeId\":201,\"processId\":200,\"defaultPreTime\":0,\"params\":{},\"keyFlag\":\"N\",\"colorCode\":\"#00AEF3\",\"linkType\":\"FF\",\"defaultSufTime\":0}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProRouteProcessMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProRouteProcessMapper.checkOrderNumExists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select record_id, route_id, process_id, process_code, process_name, order_num, next_process_id, next_process_code, next_process_name, link_type, default_pre_time, default_suf_time, color_code,key_flag,is_check, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from pro_route_process               where route_id = ? and order_num = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'', '2024-06-15 18:04:33');
INSERT INTO `sys_oper_log` VALUES ('676', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":3,\"orderNum\":1,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":200,\"routeId\":201,\"createTime\":1718446185908,\"keyFlag\":\"N\",\"processId\":200,\"processName\":\"工序A\",\"processCode\":\"PROCESS195\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"linkType\":\"FF\",\"defaultSufTime\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 18:09:46');
INSERT INTO `sys_oper_log` VALUES ('677', '产品制程', '1', 'com.qst.mes.core.pro.controller.ProRouteProductController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"套\",\"itemCode\":\"IF2024051808\",\"specification\":\"LJX-A01\",\"params\":{},\"recordId\":201,\"itemId\":207,\"itemName\":\"A01有线耳机连接线\",\"routeId\":201,\"createTime\":1718446319825}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 18:11:59');
INSERT INTO `sys_oper_log` VALUES ('678', '仓库设置', '1', 'com.qst.mes.core.wm.controller.WmWarehouseController.add()', 'POST', '1', 'admin', null, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":5,\"charge\":\"哈哈哈\",\"params\":{},\"warehouseName\":\"测试仓库\",\"warehouseCode\":\"WAREHOUSE81232257\",\"createTime\":1718455862742,\"warehouseId\":202,\"location\":\"哈哈\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":202}', '0', null, '2024-06-15 20:51:02');
INSERT INTO `sys_oper_log` VALUES ('679', '库区设置', '1', 'com.qst.mes.core.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":3,\"locationName\":\"哈哈哈\",\"params\":{},\"createTime\":1718456498741,\"warehouseId\":202,\"locationId\":206,\"locationCode\":\"LOCATION30236462\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-06-15 21:01:38');
INSERT INTO `sys_oper_log` VALUES ('680', '库区设置', '1', 'com.qst.mes.core.wm.controller.WmStorageLocationController.add()', 'POST', '1', 'admin', null, '/mes/wm/location', '127.0.0.1', '内网IP', '{\"area\":3,\"locationName\":\"就啊家家\",\"params\":{},\"createTime\":1718456957890,\"warehouseId\":202,\"locationId\":207,\"locationCode\":\"LOCATION31658921\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-06-15 21:09:18');
INSERT INTO `sys_oper_log` VALUES ('681', '库区设置', '3', 'com.qst.mes.core.wm.controller.WmStorageLocationController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/location/200', '127.0.0.1', '内网IP', '{locationIds=200}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 200\' at line 1\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmStorageAreaMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmStorageAreaMapper.deleteByLocationId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete form wm_storage_area where location_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 200\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 200\' at line 1', '2024-06-15 21:09:29');
INSERT INTO `sys_oper_log` VALUES ('682', '库区设置', '3', 'com.qst.mes.core.wm.controller.WmStorageLocationController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/location/201', '127.0.0.1', '内网IP', '{locationIds=201}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 201\' at line 1\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmStorageAreaMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmStorageAreaMapper.deleteByLocationId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete form wm_storage_area where location_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 201\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wm_storage_area where location_id = 201\' at line 1', '2024-06-15 21:09:32');
INSERT INTO `sys_oper_log` VALUES ('683', '库位设置', '3', 'com.qst.mes.core.wm.controller.WmStorageAreaController.remove()', 'DELETE', '1', 'admin', null, '/mes/wm/area/200', '127.0.0.1', '内网IP', '{areaIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 21:21:35');
INSERT INTO `sys_oper_log` VALUES ('684', '库位设置', '1', 'com.qst.mes.core.wm.controller.WmStorageAreaController.add()', 'POST', '1', 'admin', null, '/mes/wm/area', '127.0.0.1', '内网IP', '{\"area\":3,\"params\":{},\"positionX\":2,\"positionY\":2,\"positionZ\":1,\"areaCode\":\"AREA50266655\",\"areaId\":204,\"maxLoa\":2,\"areaName\":\"测试\",\"createTime\":1718457881505,\"locationId\":200,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-06-15 21:24:41');
INSERT INTO `sys_oper_log` VALUES ('685', '物料入库单', '1', 'com.qst.mes.core.wm.controller.WmItemRecptController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"哈哈哈\",\"recptId\":210,\"vendorId\":206,\"warehouseName\":\"仓库A\",\"warehouseCode\":\"WH00002\",\"vendorCode\":\"33487366-1\",\"areaName\":\"测试\",\"locationId\":200,\"poCode\":\"5646545646546\",\"recptDate\":1719590400000,\"recptCode\":\"WE20240615215008\",\"locationName\":\"线边库库区-虚拟\",\"params\":{},\"vendorName\":\"东莞市恩捷电子有限公司\",\"areaCode\":\"AREA50266655\",\"createBy\":\"admin\",\"areaId\":204,\"createTime\":1718459422168,\"warehouseId\":200,\"locationCode\":\"XBKKQ_VIRTUAL\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 21:50:22');
INSERT INTO `sys_oper_log` VALUES ('686', '物料入库单', '2', 'com.qst.mes.core.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/210', '127.0.0.1', '内网IP', '210', null, '1', '事务数量不能为空', '2024-06-15 21:51:51');
INSERT INTO `sys_oper_log` VALUES ('687', '物料入库单行', '1', 'com.qst.mes.core.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051841\",\"recptId\":210,\"warehouseName\":\"仓库A\",\"quantityRecived\":6,\"warehouseCode\":\"WH00002\",\"itemName\":\"有线耳机电容\",\"areaName\":\"测试\",\"locationId\":200,\"expireDate\":1718380800000,\"locationName\":\"线边库库区-虚拟\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240615215159\",\"lineId\":206,\"specification\":\"DR\",\"params\":{},\"itemId\":211,\"areaCode\":\"AREA50266655\",\"createBy\":\"admin\",\"areaId\":204,\"createTime\":1718459528454,\"warehouseId\":200,\"locationCode\":\"XBKKQ_VIRTUAL\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 21:52:08');
INSERT INTO `sys_oper_log` VALUES ('688', '物料入库单', '2', 'com.qst.mes.core.wm.controller.WmItemRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/itemrecpt/210', '127.0.0.1', '内网IP', '210', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 22:01:17');
INSERT INTO `sys_oper_log` VALUES ('689', '生产领料单头', '1', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.add()', 'POST', '1', 'admin', null, '/mes/wm/issueheader', '127.0.0.1', '内网IP', '{\"issueName\":\"sadfasdfasdf\",\"clientName\":\"荣耀\",\"workorderId\":214,\"locationId\":200,\"issueDate\":1718380800000,\"issueCode\":\"sdfjhasjkdfhasdf\",\"clientId\":207,\"params\":{},\"areaId\":204,\"workorderCode\":\"PWO20240615165558\",\"warehouseId\":200,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmIssueHeaderMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmIssueHeaderMapper.checkIssueCodeUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select issue_id, issue_code, issue_name, workstation_id, workstation_code,workstation_name, workorder_id, workorder_code, task_id, task_code, client_id, client_code, client_name, client_nick, warehouse_id, warehouse_code, warehouse_name, location_id, location_code, location_name, area_id, area_code, area_name, issue_date, status, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from wm_issue_header               where issue_code = ? limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'', '2024-06-15 22:16:50');
INSERT INTO `sys_oper_log` VALUES ('690', '生产领料单头', '1', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.add()', 'POST', '1', 'admin', null, '/mes/wm/issueheader', '127.0.0.1', '内网IP', '{\"issueName\":\"sadfasdfasdf\",\"clientName\":\"荣耀\",\"warehouseName\":\"仓库A\",\"warehouseCode\":\"WH00002\",\"workorderId\":214,\"areaName\":\"测试\",\"locationId\":200,\"issueDate\":1718380800000,\"issueCode\":\"sdfjhasjkdfhasdf\",\"issueId\":200,\"clientId\":207,\"locationName\":\"线边库库区-虚拟\",\"params\":{},\"areaCode\":\"AREA50266655\",\"createBy\":\"admin\",\"areaId\":204,\"workorderCode\":\"PWO20240615165558\",\"createTime\":1718461101112,\"warehouseId\":200,\"clientCode\":\"HONOR\",\"locationCode\":\"XBKKQ_VIRTUAL\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 22:18:21');
INSERT INTO `sys_oper_log` VALUES ('691', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"请指定领出的物资\",\"code\":500}', '0', null, '2024-06-15 22:20:58');
INSERT INTO `sys_oper_log` VALUES ('692', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"请指定领出的物资\",\"code\":500}', '0', null, '2024-06-15 22:21:02');
INSERT INTO `sys_oper_log` VALUES ('693', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"请指定领出的物资\",\"code\":500}', '0', null, '2024-06-15 22:21:09');
INSERT INTO `sys_oper_log` VALUES ('694', '生产领料单行', '1', 'com.qst.mes.core.wm.controller.WmIssueLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/issueline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051808\",\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"itemName\":\"A01有线耳机连接线\",\"areaName\":\"1号库位\",\"locationId\":205,\"materialStockId\":201,\"issueId\":200,\"locationName\":\"库区5\",\"unitOfMeasure\":\"system\",\"batchCode\":\"02222\",\"lineId\":200,\"specification\":\"LJX-A01\",\"params\":{},\"itemId\":207,\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"createTime\":1718461488199,\"warehouseId\":201,\"locationCode\":\"L050\",\"quantityIssued\":200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-15 22:24:48');
INSERT INTO `sys_oper_log` VALUES ('695', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', null, '1', 'Cannot invoke \"com.qst.mes.core.wm.domain.WmWarehouse.getWarehouseId()\" because \"warehouse\" is null', '2024-06-15 22:35:26');
INSERT INTO `sys_oper_log` VALUES ('696', '物料入库单行', '1', 'com.qst.mes.core.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051831\",\"recptId\":209,\"warehouseName\":\"仓库B\",\"quantityRecived\":1,\"warehouseCode\":\"WH00001\",\"itemName\":\"A01有线耳机外壳\",\"areaName\":\"2号库位\",\"locationId\":205,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240616083422\",\"specification\":\"WK-A01\",\"params\":{},\"itemId\":206,\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1718498070799,\"warehouseId\":201,\"locationCode\":\"L050\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'iqcCheck\' in \'class com.qst.mes.core.wm.domain.WmItemRecptLine\'', '2024-06-16 08:34:30');
INSERT INTO `sys_oper_log` VALUES ('697', '物料入库单行', '1', 'com.qst.mes.core.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051831\",\"recptId\":209,\"warehouseName\":\"仓库B\",\"quantityRecived\":1,\"warehouseCode\":\"WH00001\",\"itemName\":\"A01有线耳机外壳\",\"areaName\":\"2号库位\",\"locationId\":205,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240616083422\",\"specification\":\"WK-A01\",\"params\":{},\"itemId\":206,\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1718498075065,\"warehouseId\":201,\"locationCode\":\"L050\"}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'iqcCheck\' in \'class com.qst.mes.core.wm.domain.WmItemRecptLine\'', '2024-06-16 08:34:35');
INSERT INTO `sys_oper_log` VALUES ('698', '物料入库单行', '1', 'com.qst.mes.core.wm.controller.WmItemRecptLineController.add()', 'POST', '1', 'admin', null, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IF2024051831\",\"recptId\":209,\"warehouseName\":\"仓库B\",\"quantityRecived\":1,\"warehouseCode\":\"WH00001\",\"itemName\":\"A01有线耳机外壳\",\"areaName\":\"2号库位\",\"locationId\":205,\"locationName\":\"库区5\",\"unitOfMeasure\":\"套\",\"batchCode\":\"WE-L-20240616083422\",\"lineId\":207,\"specification\":\"WK-A01\",\"params\":{},\"itemId\":206,\"areaCode\":\"KW002\",\"createBy\":\"admin\",\"areaId\":203,\"createTime\":1718498363350,\"warehouseId\":201,\"locationCode\":\"L050\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 08:39:23');
INSERT INTO `sys_oper_log` VALUES ('699', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', null, '1', 'Cannot invoke \"com.qst.mes.core.wm.domain.WmWarehouse.getWarehouseId()\" because \"warehouse\" is null', '2024-06-16 08:56:16');
INSERT INTO `sys_oper_log` VALUES ('700', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', null, '1', 'Cannot invoke \"com.qst.mes.core.wm.domain.WmWarehouse.getWarehouseId()\" because \"warehouse\" is null', '2024-06-16 08:56:45');
INSERT INTO `sys_oper_log` VALUES ('701', '生产领料单头', '2', 'com.qst.mes.core.wm.controller.WmIssueHeaderController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/issueheader/200', '127.0.0.1', '内网IP', '200', null, '1', 'Cannot invoke \"com.qst.mes.core.wm.domain.WmWarehouse.getWarehouseId()\" because \"warehouse\" is null', '2024-06-16 09:07:51');
INSERT INTO `sys_oper_log` VALUES ('702', '生产退料单头', '1', 'com.qst.mes.core.wm.controller.WmRtIssueController.add()', 'POST', '1', 'admin', null, '/mes/wm/rtissue', '127.0.0.1', '内网IP', '{\"rtCode\":\"RT-20240616090915\",\"workorderId\":211,\"locationId\":205,\"rtDate\":1718467200000,\"params\":{},\"areaId\":202,\"workorderCode\":\"MO202406140005\",\"warehouseId\":201,\"rtName\":\"生产退料单-20240616090915\",\"status\":\"PREPARE\"}', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmRtIssueMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmRtIssueMapper.checkUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select rt_id, rt_code, rt_name, workorder_id, workorder_code, warehouse_id, warehouse_code, warehouse_name, location_id, location_code, location_name, area_id, area_code, area_name, rt_date, status, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from wm_rt_issue               where rt_code = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'', '2024-06-16 09:09:25');
INSERT INTO `sys_oper_log` VALUES ('703', '生产退料单头', '1', 'com.qst.mes.core.wm.controller.WmRtIssueController.add()', 'POST', '1', 'admin', null, '/mes/wm/rtissue', '127.0.0.1', '内网IP', '{\"rtCode\":\"RT-20240616090915\",\"rtId\":200,\"warehouseName\":\"仓库B\",\"warehouseCode\":\"WH00001\",\"workorderId\":211,\"areaName\":\"1号库位\",\"locationId\":205,\"rtDate\":1718467200000,\"locationName\":\"库区5\",\"params\":{},\"areaCode\":\"KW001\",\"createBy\":\"admin\",\"areaId\":202,\"workorderCode\":\"MO202406140005\",\"createTime\":1718500382146,\"warehouseId\":201,\"locationCode\":\"L050\",\"rtName\":\"生产退料单-20240616090915\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:13:02');
INSERT INTO `sys_oper_log` VALUES ('704', '生产退料单头', '2', 'com.qst.mes.core.wm.controller.WmRtIssueController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/rtissue/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"请选择要退料的物资\",\"code\":500}', '0', null, '2024-06-16 09:13:10');
INSERT INTO `sys_oper_log` VALUES ('705', '产品入库记录', '2', 'com.qst.mes.core.wm.controller.WmProductRecptController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/productrecpt/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"请添加要入库的产品\",\"code\":500}', '0', null, '2024-06-16 09:14:31');
INSERT INTO `sys_oper_log` VALUES ('706', '销售出库单', '2', 'com.qst.mes.core.wm.controller.WmProductSalseController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/productsalse/200', '127.0.0.1', '内网IP', '200', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmProductSalseLineMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmProductSalseLineMapper.selectWmProductSalseLineList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select line_id, salse_id, material_stock_id, item_id, item_code, item_name, specification, unit_of_measure, quantity_salse, batch_code, warehouse_id, warehouse_code, warehouse_name, location_id, location_code, location_name, area_id, area_code, area_name, oqc_check,oqc_id,oqc_code, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from wm_product_salse_line                WHERE  salse_id = ?          order by create_time desc\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'', '2024-06-16 09:14:43');
INSERT INTO `sys_oper_log` VALUES ('707', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/200', '127.0.0.1', '内网IP', '{processIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:22:14');
INSERT INTO `sys_oper_log` VALUES ('708', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/201', '127.0.0.1', '内网IP', '{processIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:22:16');
INSERT INTO `sys_oper_log` VALUES ('709', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/202', '127.0.0.1', '内网IP', '{processIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:22:18');
INSERT INTO `sys_oper_log` VALUES ('710', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/203', '127.0.0.1', '内网IP', '{processIds=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:22:20');
INSERT INTO `sys_oper_log` VALUES ('711', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/204', '127.0.0.1', '内网IP', '{processIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:22:22');
INSERT INTO `sys_oper_log` VALUES ('712', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718501078940,\"processId\":205,\"processName\":\"无线耳机生产工序1\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS47601081\",\"attention\":\"无线耳机生产工序1\",\"updateTime\":1718501078940,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:24:38');
INSERT INTO `sys_oper_log` VALUES ('713', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718501087185,\"processId\":206,\"processName\":\"无线耳机生产工序2\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS48635623\",\"attention\":\"无线耳机生产工序2\",\"updateTime\":1718501087185,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:24:47');
INSERT INTO `sys_oper_log` VALUES ('714', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":206,\"contentText\":\"步骤1\",\"orderNum\":1,\"params\":{},\"createTime\":1718501107485,\"processId\":206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:07');
INSERT INTO `sys_oper_log` VALUES ('715', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":207,\"contentText\":\"步骤2\",\"orderNum\":2,\"params\":{},\"createTime\":1718501113780,\"processId\":206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:13');
INSERT INTO `sys_oper_log` VALUES ('716', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":208,\"contentText\":\"步骤1\",\"orderNum\":1,\"params\":{},\"createTime\":1718501132285,\"processId\":205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:32');
INSERT INTO `sys_oper_log` VALUES ('717', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":209,\"contentText\":\"步骤2\",\"orderNum\":2,\"params\":{},\"createTime\":1718501138515,\"processId\":205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:38');
INSERT INTO `sys_oper_log` VALUES ('718', '工艺路线', '3', 'com.qst.mes.core.pro.controller.ProRouteController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/proroute/200', '127.0.0.1', '内网IP', '{routeIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:54');
INSERT INTO `sys_oper_log` VALUES ('719', '工艺路线', '3', 'com.qst.mes.core.pro.controller.ProRouteController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/proroute/201', '127.0.0.1', '内网IP', '{routeIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:25:56');
INSERT INTO `sys_oper_log` VALUES ('720', '工艺路线', '1', 'com.qst.mes.core.pro.controller.ProRouteController.add()', 'POST', '1', 'admin', null, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"ROUTER34500422\",\"routeId\":202,\"createTime\":1718501174799,\"params\":{},\"routeDesc\":\"无线耳机生产工艺\",\"enableFlag\":\"Y\",\"routeName\":\"无线耳机生产工艺\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:26:14');
INSERT INTO `sys_oper_log` VALUES ('721', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":2,\"orderNum\":1,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":201,\"routeId\":202,\"createTime\":1718501190635,\"keyFlag\":\"Y\",\"processId\":205,\"processName\":\"无线耳机生产工序1\",\"processCode\":\"PROCESS47601081\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"linkType\":\"SS\",\"defaultSufTime\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:26:30');
INSERT INTO `sys_oper_log` VALUES ('722', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":2,\"orderNum\":2,\"params\":{},\"routeId\":202,\"keyFlag\":\"Y\",\"processId\":206,\"colorCode\":\"#00AEF3\",\"linkType\":\"SS\",\"defaultSufTime\":2}', '{\"msg\":\"当前工艺路线已经指定过关键工序\",\"code\":500}', '0', null, '2024-06-16 09:26:45');
INSERT INTO `sys_oper_log` VALUES ('723', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":2,\"orderNum\":2,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":202,\"routeId\":202,\"createTime\":1718501210055,\"keyFlag\":\"N\",\"processId\":206,\"processName\":\"无线耳机生产工序2\",\"processCode\":\"PROCESS48635623\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"linkType\":\"SS\",\"defaultSufTime\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:26:50');
INSERT INTO `sys_oper_log` VALUES ('724', '产品制程', '1', 'com.qst.mes.core.pro.controller.ProRouteProductController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"system\",\"itemCode\":\"454655sdfksjdf4566\",\"specification\":\"A02\",\"params\":{},\"recordId\":202,\"itemId\":212,\"itemName\":\"A02无线耳机\",\"routeId\":202,\"createTime\":1718501224431}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:27:04');
INSERT INTO `sys_oper_log` VALUES ('725', '工作站', '2', 'com.qst.mes.core.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"工作站A01\",\"updateTime\":1715999744000,\"params\":{},\"createBy\":\"\",\"workstationCode\":\"WS0119\",\"createTime\":1715677238000,\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"processCode\":\"PROCESS195\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"工序不存在！\",\"code\":500}', '0', null, '2024-06-16 09:28:12');
INSERT INTO `sys_oper_log` VALUES ('726', '工作站', '2', 'com.qst.mes.core.md.controller.MdWorkstationController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"工作站A01\",\"updateTime\":1715999744000,\"params\":{},\"createBy\":\"\",\"workstationCode\":\"WS0119\",\"createTime\":1715677238000,\"processId\":200,\"processName\":\"工序A\",\"updateBy\":\"\",\"processCode\":\"PROCESS195\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"工序不存在！\",\"code\":500}', '0', null, '2024-06-16 09:28:14');
INSERT INTO `sys_oper_log` VALUES ('727', '工作站', '3', 'com.qst.mes.core.md.controller.MdWorkstationController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workstation/202', '127.0.0.1', '内网IP', '{workstationIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:28:20');
INSERT INTO `sys_oper_log` VALUES ('728', '工作站', '3', 'com.qst.mes.core.md.controller.MdWorkstationController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workstation/201', '127.0.0.1', '内网IP', '{workstationIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:28:22');
INSERT INTO `sys_oper_log` VALUES ('729', '工作站', '3', 'com.qst.mes.core.md.controller.MdWorkstationController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workstation/200', '127.0.0.1', '内网IP', '{workstationIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 09:28:23');
INSERT INTO `sys_oper_log` VALUES ('730', '工作站', '1', 'com.qst.mes.core.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"工位A\",\"updateTime\":1718501316764,\"params\":{},\"createBy\":\"超级管理员\",\"workstationCode\":\"WORKSTATION98783788\",\"createTime\":1718501316764,\"processId\":205,\"processName\":\"无线耳机生产工序1\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS47601081\",\"workstationId\":204,\"workshopId\":200,\"workshopCode\":\"WS081\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":204}', '0', null, '2024-06-16 09:28:36');
INSERT INTO `sys_oper_log` VALUES ('731', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240002\"', '0', null, '2024-06-16 09:29:15');
INSERT INTO `sys_oper_log` VALUES ('732', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"454655sdfksjdf4566\",\"duration\":3,\"itemName\":\"A02无线耳机\",\"workstationCode\":\"WORKSTATION98783788\",\"workorderId\":214,\"taskCode\":\"TASK20240002\",\"processId\":205,\"processName\":\"无线耳机生产工序1\",\"workorderName\":\"kjasjasdfhjkasfhsad\",\"workstationId\":204,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":3,\"unitOfMeasure\":\"system\",\"specification\":\"A02\",\"workstationName\":\"工位A\",\"params\":{},\"itemId\":212,\"workorderCode\":\"PWO20240615165558\",\"createTime\":1718501355539,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS47601081\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A02无线耳机【3】system\",\"endTime\":1718553600000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 09:29:15');
INSERT INTO `sys_oper_log` VALUES ('733', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240003\"', '0', null, '2024-06-16 09:29:20');
INSERT INTO `sys_oper_log` VALUES ('734', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"454655sdfksjdf4566\",\"duration\":3,\"itemName\":\"A02无线耳机\",\"workstationCode\":\"WORKSTATION98783788\",\"workorderId\":214,\"taskCode\":\"TASK20240003\",\"processId\":205,\"processName\":\"无线耳机生产工序1\",\"workorderName\":\"kjasjasdfhjkasfhsad\",\"workstationId\":204,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":3,\"unitOfMeasure\":\"system\",\"specification\":\"A02\",\"workstationName\":\"工位A\",\"params\":{},\"itemId\":212,\"workorderCode\":\"PWO20240615165558\",\"createTime\":1718501360199,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS47601081\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A02无线耳机【3】system\",\"endTime\":1718553600000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 09:29:20');
INSERT INTO `sys_oper_log` VALUES ('735', '销售出库单', '2', 'com.qst.mes.core.wm.controller.WmProductSalseController.execute()', 'PUT', '1', 'admin', null, '/mes/wm/productsalse/200', '127.0.0.1', '内网IP', '200', null, '1', '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\wm\\WmProductSalseLineMapper.xml]\r\n### The error may involve com.qst.mes.core.wm.mapper.WmProductSalseLineMapper.selectWmProductSalseLineList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select line_id, salse_id, material_stock_id, item_id, item_code, item_name, specification, unit_of_measure, quantity_salse, batch_code, warehouse_id, warehouse_code, warehouse_name, location_id, location_code, location_name, area_id, area_code, area_name, oqc_check,oqc_id,oqc_code, remark, attr1, attr2, attr3, attr4, create_by, create_time, update_by, update_time from wm_product_salse_line                WHERE  salse_id = ?          order by create_time desc\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'oqc_check\' in \'field list\'', '2024-06-16 10:02:10');
INSERT INTO `sys_oper_log` VALUES ('736', '销售出库单', '1', 'com.qst.mes.core.wm.controller.WmProductSalseController.add()', 'POST', '1', 'admin', null, '/mes/wm/productsalse', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"soCode\":\"sdfkalsjfdasf\",\"salseCode\":\"SALES20240616103435\",\"clientId\":207,\"salseDate\":1718467200000,\"params\":{},\"salseId\":201,\"createBy\":\"admin\",\"createTime\":1718505288296,\"clientCode\":\"HONOR\",\"salseName\":\"哈哈哈哈\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:34:48');
INSERT INTO `sys_oper_log` VALUES ('737', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/209', '127.0.0.1', '内网IP', '{measureIds=209}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:03');
INSERT INTO `sys_oper_log` VALUES ('738', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/208', '127.0.0.1', '内网IP', '{measureIds=208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:07');
INSERT INTO `sys_oper_log` VALUES ('739', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/207', '127.0.0.1', '内网IP', '{measureIds=207}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:10');
INSERT INTO `sys_oper_log` VALUES ('740', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/206', '127.0.0.1', '内网IP', '{measureIds=206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:12');
INSERT INTO `sys_oper_log` VALUES ('741', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/205', '127.0.0.1', '内网IP', '{measureIds=205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:13');
INSERT INTO `sys_oper_log` VALUES ('742', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/204', '127.0.0.1', '内网IP', '{measureIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:14');
INSERT INTO `sys_oper_log` VALUES ('743', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/203', '127.0.0.1', '内网IP', '{measureIds=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:17');
INSERT INTO `sys_oper_log` VALUES ('744', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/202', '127.0.0.1', '内网IP', '{measureIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:19');
INSERT INTO `sys_oper_log` VALUES ('745', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/201', '127.0.0.1', '内网IP', '{measureIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:20');
INSERT INTO `sys_oper_log` VALUES ('746', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":210,\"measureCode\":\"MEASUR96691223\",\"createTime\":1718505568991,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:29');
INSERT INTO `sys_oper_log` VALUES ('747', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":211,\"measureCode\":\"MEASUR45517769\",\"createTime\":1718505576319,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"条\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:36');
INSERT INTO `sys_oper_log` VALUES ('748', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"measureCode\":\"MEASUR69219894\",\"createTime\":1718505591972,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"副\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:39:51');
INSERT INTO `sys_oper_log` VALUES ('749', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":213,\"measureCode\":\"MEASUR94201987\",\"createTime\":1718505600069,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:40:00');
INSERT INTO `sys_oper_log` VALUES ('750', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"北京市海淀区西二旗中路33号院6号楼6层006号\",\"clientId\":208,\"clientName\":\"小米\",\"updateTime\":1718505639195,\"params\":{},\"createBy\":\"超级管理员\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"91110108551385082Q\",\"phoneNumber\":\"400-100-5678\",\"createTime\":1718351723000,\"updateBy\":\"超级管理员\",\"clientCode\":\"MI\",\"contact\":\"雷军\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:40:39');
INSERT INTO `sys_oper_log` VALUES ('751', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"深圳市福田区香蜜湖街道东海社区红荔西路8089号深业中城6号楼A单元3401\",\"clientId\":207,\"clientName\":\"荣耀\",\"updateTime\":1718505647904,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"91440300MA5G49LC9K\",\"phoneNumber\":\"18956124578\",\"createTime\":1718329666000,\"updateBy\":\"超级管理员\",\"clientCode\":\"HONOR\",\"contact\":\"吴晖\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:40:47');
INSERT INTO `sys_oper_log` VALUES ('752', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"vendorId\":208,\"updateTime\":1718505676522,\"params\":{},\"vendorName\":\"测试\",\"vendorCode\":\"WENDOR48559495\",\"createBy\":\"超级管理员\",\"createTime\":1718429950000,\"updateBy\":\"超级管理员\",\"vendorScore\":5,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:16');
INSERT INTO `sys_oper_log` VALUES ('753', '供应商', '3', 'com.qst.mes.core.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/208', '127.0.0.1', '内网IP', '{vendorIds=208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:19');
INSERT INTO `sys_oper_log` VALUES ('754', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号\",\"vendorId\":204,\"updateTime\":1718505687566,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"vendorCode\":\"55860240-6\",\"createBy\":\"\",\"phoneNumber\":\"18956234512\",\"createTime\":1716011876000,\"updateBy\":\"超级管理员\",\"contact\":\"王伟\",\"vendorScore\":100,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:27');
INSERT INTO `sys_oper_log` VALUES ('755', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"vendorId\":206,\"updateTime\":1718505694623,\"params\":{},\"vendorName\":\"东莞市恩捷电子有限公司\",\"vendorCode\":\"33487366-1\",\"createBy\":\"\",\"creditCode\":\"91441900334873661N\",\"phoneNumber\":\"13712126682\",\"createTime\":1716012803000,\"updateBy\":\"超级管理员\",\"contact\":\"刘银\",\"vendorScore\":100,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:34');
INSERT INTO `sys_oper_log` VALUES ('756', '车间', '3', 'com.qst.mes.core.md.controller.MdWorkshopController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workshop/203', '127.0.0.1', '内网IP', '{workshopIds=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:43');
INSERT INTO `sys_oper_log` VALUES ('757', '车间', '3', 'com.qst.mes.core.md.controller.MdWorkshopController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workshop/201', '127.0.0.1', '内网IP', '{workshopIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:45');
INSERT INTO `sys_oper_log` VALUES ('758', '车间', '3', 'com.qst.mes.core.md.controller.MdWorkshopController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workshop/200', '127.0.0.1', '内网IP', '{workshopIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:41:47');
INSERT INTO `sys_oper_log` VALUES ('759', '车间', '1', 'com.qst.mes.core.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":400,\"charge\":\"王经理\",\"workshopName\":\"第一生产车间\",\"updateTime\":1718505725620,\"params\":{},\"createBy\":\"超级管理员\",\"createTime\":1718505725620,\"updateBy\":\"超级管理员\",\"workshopId\":204,\"workshopCode\":\"WORKSHOP45903359\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:42:05');
INSERT INTO `sys_oper_log` VALUES ('760', '车间', '1', 'com.qst.mes.core.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":400,\"charge\":\"林彬\",\"workshopName\":\"第二生产车间\",\"updateTime\":1718505743335,\"params\":{},\"createBy\":\"超级管理员\",\"createTime\":1718505743335,\"updateBy\":\"超级管理员\",\"workshopId\":205,\"workshopCode\":\"WORKSHOP19094807\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:42:23');
INSERT INTO `sys_oper_log` VALUES ('761', '车间', '1', 'com.qst.mes.core.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":1000,\"workshopName\":\"第三生产车间\",\"updateTime\":1718505757030,\"params\":{},\"createBy\":\"超级管理员\",\"createTime\":1718505757030,\"updateBy\":\"超级管理员\",\"workshopId\":206,\"workshopCode\":\"WORKSHOP56999114\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:42:37');
INSERT INTO `sys_oper_log` VALUES ('762', '工作站', '3', 'com.qst.mes.core.md.controller.MdWorkstationController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workstation/204', '127.0.0.1', '内网IP', '{workstationIds=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:42:45');
INSERT INTO `sys_oper_log` VALUES ('763', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/205', '127.0.0.1', '内网IP', '{processIds=205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:43:36');
INSERT INTO `sys_oper_log` VALUES ('764', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/206', '127.0.0.1', '内网IP', '{processIds=206}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:43:38');
INSERT INTO `sys_oper_log` VALUES ('765', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718505832879,\"processId\":207,\"processName\":\"耳机壳组装工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS57800390\",\"updateTime\":1718505832879,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:43:52');
INSERT INTO `sys_oper_log` VALUES ('766', '生产工序', '3', 'com.qst.mes.core.pro.controller.ProProcessController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/process/207', '127.0.0.1', '内网IP', '{processIds=207}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:44:00');
INSERT INTO `sys_oper_log` VALUES ('767', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718505848399,\"processId\":208,\"processName\":\"耳机壳生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS53386725\",\"updateTime\":1718505848399,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:44:08');
INSERT INTO `sys_oper_log` VALUES ('768', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718505857959,\"processId\":209,\"processName\":\"耳机线生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS85255759\",\"updateTime\":1718505857959,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:44:17');
INSERT INTO `sys_oper_log` VALUES ('769', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718505873289,\"processId\":210,\"processName\":\"无线耳机电路板生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS51608055\",\"updateTime\":1718505873289,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:44:33');
INSERT INTO `sys_oper_log` VALUES ('770', '生产工序', '1', 'com.qst.mes.core.pro.controller.ProProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"createBy\":\"超级管理员\",\"createTime\":1718505890688,\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS85096964\",\"updateTime\":1718505890688,\"params\":{},\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:44:50');
INSERT INTO `sys_oper_log` VALUES ('771', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":210,\"contentText\":\"步骤1\",\"orderNum\":1,\"params\":{},\"createTime\":1718505910725,\"processId\":208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:45:10');
INSERT INTO `sys_oper_log` VALUES ('772', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":211,\"contentText\":\"步骤2\",\"orderNum\":2,\"params\":{},\"createTime\":1718505916947,\"processId\":208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:45:16');
INSERT INTO `sys_oper_log` VALUES ('773', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":212,\"contentText\":\"步骤3\",\"orderNum\":3,\"params\":{},\"createTime\":1718505923267,\"processId\":208}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:45:23');
INSERT INTO `sys_oper_log` VALUES ('774', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":213,\"contentText\":\"步骤A\",\"orderNum\":1,\"params\":{},\"createTime\":1718505940828,\"processId\":209}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:45:40');
INSERT INTO `sys_oper_log` VALUES ('775', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":214,\"contentText\":\"步骤B\",\"orderNum\":2,\"params\":{},\"createTime\":1718505947387,\"processId\":209}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:45:47');
INSERT INTO `sys_oper_log` VALUES ('776', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":215,\"contentText\":\"步骤AAAA\",\"orderNum\":1,\"params\":{},\"createTime\":1718505962596,\"processId\":210}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:46:02');
INSERT INTO `sys_oper_log` VALUES ('777', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":216,\"contentText\":\"步骤BBBB\",\"orderNum\":2,\"params\":{},\"createTime\":1718505970707,\"processId\":210}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:46:10');
INSERT INTO `sys_oper_log` VALUES ('778', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":217,\"contentText\":\"步骤AAAA\",\"orderNum\":1,\"params\":{},\"createTime\":1718505981821,\"processId\":211}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:46:21');
INSERT INTO `sys_oper_log` VALUES ('779', '生产工序内容', '1', 'com.qst.mes.core.pro.controller.ProProcessContentController.add()', 'POST', '1', 'admin', null, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":218,\"contentText\":\"步骤BBBB\",\"orderNum\":2,\"params\":{},\"createTime\":1718505988076,\"processId\":211}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:46:28');
INSERT INTO `sys_oper_log` VALUES ('780', '工作站', '1', 'com.qst.mes.core.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"耳机线组装工位\",\"updateTime\":1718506024411,\"params\":{},\"createBy\":\"超级管理员\",\"workstationCode\":\"WORKSTATION32856718\",\"createTime\":1718506024411,\"processId\":209,\"processName\":\"耳机线生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS85255759\",\"workstationId\":205,\"workshopId\":204,\"workshopCode\":\"WORKSHOP45903359\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":205}', '0', null, '2024-06-16 10:47:04');
INSERT INTO `sys_oper_log` VALUES ('781', '工作站', '1', 'com.qst.mes.core.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"耳机壳生产工位\",\"updateTime\":1718506047049,\"params\":{},\"createBy\":\"超级管理员\",\"workstationCode\":\"WORKSTATION98786383\",\"createTime\":1718506047049,\"processId\":208,\"processName\":\"耳机壳生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS53386725\",\"workstationId\":206,\"workshopId\":204,\"workshopCode\":\"WORKSHOP45903359\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":206}', '0', null, '2024-06-16 10:47:27');
INSERT INTO `sys_oper_log` VALUES ('782', '工作站', '1', 'com.qst.mes.core.md.controller.MdWorkstationController.add()', 'POST', '1', 'admin', null, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"第一生产车间\",\"workstationName\":\"有线耳机电路板生产工位\",\"updateTime\":1718506071226,\"params\":{},\"createBy\":\"超级管理员\",\"workstationCode\":\"WORKSTATION93410856\",\"createTime\":1718506071226,\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"updateBy\":\"超级管理员\",\"processCode\":\"PROCESS85096964\",\"workstationId\":207,\"workshopId\":204,\"workshopCode\":\"WORKSHOP45903359\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":207}', '0', null, '2024-06-16 10:47:51');
INSERT INTO `sys_oper_log` VALUES ('783', '工艺路线', '3', 'com.qst.mes.core.pro.controller.ProRouteController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/proroute/202', '127.0.0.1', '内网IP', '{routeIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:48:03');
INSERT INTO `sys_oper_log` VALUES ('784', '工艺路线', '1', 'com.qst.mes.core.pro.controller.ProRouteController.add()', 'POST', '1', 'admin', null, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"ROUTER36889504\",\"routeId\":203,\"createTime\":1718506095981,\"params\":{},\"enableFlag\":\"Y\",\"routeName\":\"有线耳机生产工艺\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:48:16');
INSERT INTO `sys_oper_log` VALUES ('785', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":1,\"orderNum\":1,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":203,\"routeId\":203,\"createTime\":1718506137191,\"keyFlag\":\"Y\",\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"processCode\":\"PROCESS85096964\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:48:57');
INSERT INTO `sys_oper_log` VALUES ('786', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":1,\"orderNum\":2,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":204,\"routeId\":203,\"createTime\":1718506157278,\"keyFlag\":\"N\",\"processId\":209,\"processName\":\"耳机线生产工序\",\"processCode\":\"PROCESS85255759\",\"nextProcessId\":0,\"colorCode\":\"#24E627\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:49:17');
INSERT INTO `sys_oper_log` VALUES ('787', '工艺组成', '1', 'com.qst.mes.core.pro.controller.ProRouteProcessController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":1,\"orderNum\":3,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":205,\"routeId\":203,\"createTime\":1718506171918,\"keyFlag\":\"N\",\"processId\":208,\"processName\":\"耳机壳生产工序\",\"processCode\":\"PROCESS53386725\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:49:31');
INSERT INTO `sys_oper_log` VALUES ('788', '删除物料产品分类', '3', 'com.qst.mes.core.md.controller.ItemTypeController.del()', 'DELETE', '1', 'admin', null, '/mes/md/itemtype/223', '127.0.0.1', '内网IP', '{itemTypeId=223}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', '0', null, '2024-06-16 10:49:53');
INSERT INTO `sys_oper_log` VALUES ('789', '物料管理', '3', 'com.qst.mes.core.md.controller.MdItemController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/mditem/213', '127.0.0.1', '内网IP', '{itemIds=213}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:50:11');
INSERT INTO `sys_oper_log` VALUES ('790', '物料管理', '2', 'com.qst.mes.core.md.controller.MdItemController.edit()', 'PUT', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"MEASUR69219894\",\"itemCode\":\"454655sdfksjdf4566\",\"itemTypeCode\":\"ITEM_TYPE_0101\",\"specification\":\"A02\",\"updateTime\":1718506227653,\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":212,\"createBy\":\"admin\",\"itemName\":\"A02无线耳机\",\"createTime\":1718329873000,\"updateBy\":\"超级管理员\",\"maxStock\":0.0,\"itemTypeName\":\"无线耳机\",\"itemTypeId\":206,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:50:27');
INSERT INTO `sys_oper_log` VALUES ('791', '产品制程', '1', 'com.qst.mes.core.pro.controller.ProRouteProductController.add()', 'POST', '1', 'admin', null, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"副\",\"itemCode\":\"IF2024051850\",\"specification\":\"A01\",\"params\":{},\"recordId\":203,\"itemId\":203,\"itemName\":\"A01有线耳机\",\"routeId\":203,\"createTime\":1718506289070}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:51:29');
INSERT INTO `sys_oper_log` VALUES ('792', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"HONOR20240616\",\"workorderId\":215,\"children\":[],\"workorderName\":\"荣耀手机有线耳机生产工单\",\"requestDate\":1722355200000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718506432527,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":215}', '0', null, '2024-06-16 10:53:52');
INSERT INTO `sys_oper_log` VALUES ('793', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"HONOR20240616\",\"workorderId\":215,\"children\":[],\"workorderName\":\"荣耀手机有线耳机生产工单\",\"requestDate\":1722355200000,\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5000,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718506442155,\"params\":{},\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240616105305\",\"clientCode\":\"HONOR\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 10:54:02');
INSERT INTO `sys_oper_log` VALUES ('794', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240004\"', '0', null, '2024-06-16 10:54:40');
INSERT INTO `sys_oper_log` VALUES ('795', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":9,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION93410856\",\"workorderId\":215,\"taskCode\":\"TASK20240004\",\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":207,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":1,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"有线耳机电路板生产工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718506480014,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85096964\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A01有线耳机【1】副\",\"endTime\":1718726400000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 10:54:40');
INSERT INTO `sys_oper_log` VALUES ('796', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":9,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION93410856\",\"workorderId\":215,\"taskCode\":\"TASK20240005\",\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":207,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":1,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"有线耳机电路板生产工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718506556702,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85096964\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A01有线耳机【1】副\",\"endTime\":1718726400000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 10:55:56');
INSERT INTO `sys_oper_log` VALUES ('797', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240005\"', '0', null, '2024-06-16 10:55:56');
INSERT INTO `sys_oper_log` VALUES ('798', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240006\"', '0', null, '2024-06-16 10:57:04');
INSERT INTO `sys_oper_log` VALUES ('799', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":5,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION32856718\",\"workorderId\":215,\"taskCode\":\"TASK20240006\",\"processId\":209,\"processName\":\"耳机线生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":205,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":1,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"耳机线组装工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718506624620,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85255759\",\"colorCode\":\"#24E627\",\"taskName\":\"A01有线耳机【1】副\",\"endTime\":1718611200000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 10:57:04');
INSERT INTO `sys_oper_log` VALUES ('800', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240007\"', '0', null, '2024-06-16 10:58:35');
INSERT INTO `sys_oper_log` VALUES ('801', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":1,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION32856718\",\"workorderId\":215,\"taskCode\":\"TASK20240007\",\"processId\":209,\"processName\":\"耳机线生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":205,\"startTime\":1718812800000,\"clientId\":207,\"quantity\":5,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"耳机线组装工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718506715387,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85255759\",\"colorCode\":\"#24E627\",\"taskName\":\"A01有线耳机【5】副\",\"endTime\":1718841600000}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\实习生计划实训项目\\qst-mes-server\\mes-core\\target\\classes\\mapper\\pro\\ProTaskMapper.xml]\r\n### The error may involve com.qst.mes.core.pro.mapper.ProTaskMapper.insertProTask-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_task          ( task_code,             task_name,             workorder_id,             workorder_code,             workorder_name,             workstation_id,             workstation_code,             workstation_name,                                       process_id,             process_code,             process_name,             item_id,             item_code,             item_name,             specification,             unit_of_measure,             quantity,                                                                 client_id,             client_code,             client_name,                          start_time,             duration,             end_time,             color_code,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                 ?,             ?,             ?,                          ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'route_id\' doesn\'t have a default value\n; Field \'route_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'route_id\' doesn\'t have a default value', '2024-06-16 10:58:35');
INSERT INTO `sys_oper_log` VALUES ('802', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":11,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION93410856\",\"workorderId\":215,\"taskCode\":\"TASK20240008\",\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":207,\"startTime\":1718467200000,\"clientId\":207,\"quantity\":200,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"有线耳机电路板生产工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718510440856,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85096964\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A01有线耳机【200】副\",\"endTime\":1718784000000,\"taskId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 12:00:40');
INSERT INTO `sys_oper_log` VALUES ('803', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240008\"', '0', null, '2024-06-16 12:00:40');
INSERT INTO `sys_oper_log` VALUES ('804', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":50,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION93410856\",\"workorderId\":215,\"taskCode\":\"TASK20240009\",\"processId\":211,\"processName\":\"有线耳机电路板生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":207,\"startTime\":1718812800000,\"clientId\":207,\"quantity\":500,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"有线耳机电路板生产工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718510648572,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85096964\",\"colorCode\":\"#F300EF\",\"taskName\":\"A01有线耳机【500】副\",\"endTime\":1720252800000,\"taskId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 12:04:08');
INSERT INTO `sys_oper_log` VALUES ('805', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240009\"', '0', null, '2024-06-16 12:04:08');
INSERT INTO `sys_oper_log` VALUES ('806', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240010\"', '0', null, '2024-06-16 12:06:59');
INSERT INTO `sys_oper_log` VALUES ('807', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":6,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION32856718\",\"workorderId\":215,\"taskCode\":\"TASK20240010\",\"processId\":209,\"processName\":\"耳机线生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":205,\"startTime\":1718812800000,\"clientId\":207,\"quantity\":4,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"耳机线组装工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718510819490,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS85255759\",\"colorCode\":\"#24E627\",\"taskName\":\"A01有线耳机【4】副\",\"endTime\":1718985600000,\"taskId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 12:06:59');
INSERT INTO `sys_oper_log` VALUES ('808', '生产任务', '1', 'com.qst.mes.core.pro.controller.ProTaskController.add()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"itemCode\":\"IF2024051850\",\"duration\":6,\"itemName\":\"A01有线耳机\",\"workstationCode\":\"WORKSTATION98786383\",\"workorderId\":215,\"taskCode\":\"TASK20240011\",\"processId\":208,\"processName\":\"耳机壳生产工序\",\"workorderName\":\"荣耀手机有线耳机生产工单\",\"workstationId\":206,\"startTime\":1719331200000,\"clientId\":207,\"quantity\":4,\"unitOfMeasure\":\"副\",\"specification\":\"A01\",\"workstationName\":\"耳机壳生产工位\",\"params\":{},\"itemId\":203,\"workorderCode\":\"PWO20240616105305\",\"createTime\":1718510873039,\"clientCode\":\"HONOR\",\"processCode\":\"PROCESS53386725\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A01有线耳机【4】副\",\"endTime\":1719504000000,\"taskId\":203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-16 12:07:53');
INSERT INTO `sys_oper_log` VALUES ('809', '生成业务编号', '1', 'com.qst.mes.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', '1', 'admin', null, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20240011\"', '0', null, '2024-06-16 12:07:53');
INSERT INTO `sys_oper_log` VALUES ('810', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":5,\"menuName\":\"工作站管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 10:14:43');
INSERT INTO `sys_oper_log` VALUES ('811', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"小米\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"5645646545646\",\"workorderId\":216,\"children\":[],\"workorderName\":\"测试工单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":208,\"quantity\":10000,\"productId\":203,\"unitOfMeasure\":\"副\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619113040\",\"createTime\":1718767922564,\"clientCode\":\"MI\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":216}', '0', null, '2024-06-19 11:32:02');
INSERT INTO `sys_oper_log` VALUES ('812', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"小米\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"5645646545646\",\"workorderId\":216,\"children\":[],\"updateBy\":\"\",\"workorderName\":\"测试工单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"quantityProduced\":0,\"orderSource\":\"ORDER\",\"clientId\":208,\"quantity\":10000,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718767949183,\"params\":{},\"parentId\":0,\"createBy\":\"\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619113040\",\"createTime\":1718767923000,\"clientCode\":\"MI\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 11:32:29');
INSERT INTO `sys_oper_log` VALUES ('813', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"小米\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"5645646545646\",\"workorderId\":216,\"children\":[],\"updateBy\":\"\",\"workorderName\":\"测试工单\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"quantityProduced\":0,\"orderSource\":\"ORDER\",\"clientId\":208,\"quantity\":10000,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718767966797,\"params\":{},\"parentId\":0,\"createBy\":\"\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619113040\",\"createTime\":1718767923000,\"clientCode\":\"MI\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 11:32:46');
INSERT INTO `sys_oper_log` VALUES ('814', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"TD-A01\",\"productName\":\"A01有线耳机头带\",\"workorderId\":217,\"children\":[],\"workorderName\":\"测试工单\",\"requestDate\":1719504000000,\"ancestors\":\"0\",\"orderSource\":\"STORE\",\"quantity\":5,\"productId\":208,\"unitOfMeasure\":\"套\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051834\",\"workorderCode\":\"PWO20240619123240\",\"createTime\":1718771577482,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":217}', '0', null, '2024-06-19 12:32:57');
INSERT INTO `sys_oper_log` VALUES ('815', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"productSpc\":\"TD-A01\",\"productName\":\"A01有线耳机头带\",\"workorderId\":217,\"children\":[],\"workorderName\":\"测试工单\",\"requestDate\":1719504000000,\"orderSource\":\"STORE\",\"quantity\":5,\"productId\":208,\"unitOfMeasure\":\"套\",\"updateTime\":1718771584334,\"params\":{},\"productCode\":\"IF2024051834\",\"workorderCode\":\"PWO20240619123240\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 12:33:04');
INSERT INTO `sys_oper_log` VALUES ('816', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"TD-A01\",\"productName\":\"A01有线耳机头带\",\"sourceCode\":\"46546546546465\",\"workorderId\":218,\"children\":[],\"workorderName\":\"测试12345\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":6,\"productId\":208,\"unitOfMeasure\":\"套\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051834\",\"workorderCode\":\"PWO20240619123341\",\"createTime\":1718771640098,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":218}', '0', null, '2024-06-19 12:34:00');
INSERT INTO `sys_oper_log` VALUES ('817', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"OPPO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"45465465456465\",\"workorderId\":219,\"children\":[],\"workorderName\":\"测试工单2345\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":205,\"quantity\":1,\"productId\":203,\"unitOfMeasure\":\"副\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619123431\",\"createTime\":1718771695213,\"clientCode\":\"OPPO\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":219}', '0', null, '2024-06-19 12:34:55');
INSERT INTO `sys_oper_log` VALUES ('818', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"OPPO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"45465465456465\",\"workorderId\":219,\"children\":[],\"workorderName\":\"测试工单2345\",\"requestDate\":1719590400000,\"orderSource\":\"ORDER\",\"clientId\":205,\"quantity\":1,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718771703831,\"params\":{},\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619123431\",\"clientCode\":\"OPPO\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 12:35:03');
INSERT INTO `sys_oper_log` VALUES ('819', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"OPPO\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"45465465456465\",\"workorderId\":219,\"children\":[],\"workorderName\":\"测试工单2345\",\"requestDate\":1719590400000,\"orderSource\":\"ORDER\",\"clientId\":205,\"quantity\":1,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718771707997,\"params\":{},\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619123431\",\"clientCode\":\"OPPO\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 12:35:08');
INSERT INTO `sys_oper_log` VALUES ('820', '生产工单', '3', 'com.qst.mes.core.pro.controller.ProWorkorderController.remove()', 'DELETE', '1', 'admin', null, '/mes/pro/workorder/218', '127.0.0.1', '内网IP', '{workorderIds=218}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 12:37:15');
INSERT INTO `sys_oper_log` VALUES ('821', '生产工单', '1', 'com.qst.mes.core.pro.controller.ProWorkorderController.add()', 'POST', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"54554546546545\",\"workorderId\":220,\"children\":[],\"workorderName\":\"的士速递发生的\",\"requestDate\":1719590400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5,\"productId\":203,\"unitOfMeasure\":\"副\",\"params\":{},\"createBy\":\"admin\",\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619123718\",\"createTime\":1718771858887,\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":220}', '0', null, '2024-06-19 12:37:38');
INSERT INTO `sys_oper_log` VALUES ('822', '生产工单', '2', 'com.qst.mes.core.pro.controller.ProWorkorderController.edit()', 'PUT', '1', 'admin', null, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"荣耀\",\"productSpc\":\"A01\",\"productName\":\"A01有线耳机\",\"sourceCode\":\"54554546546545\",\"workorderId\":220,\"children\":[],\"workorderName\":\"的士速递发生的\",\"requestDate\":1719590400000,\"orderSource\":\"ORDER\",\"clientId\":207,\"quantity\":5,\"productId\":203,\"unitOfMeasure\":\"副\",\"updateTime\":1718771875194,\"params\":{},\"productCode\":\"IF2024051850\",\"workorderCode\":\"PWO20240619123718\",\"clientCode\":\"HONOR\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 12:37:55');
INSERT INTO `sys_oper_log` VALUES ('823', '物料管理', '1', 'com.qst.mes.core.md.controller.MdItemController.add()', 'POST', '1', 'admin', null, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"MEASUR96691223\",\"itemCode\":\"ITEM13300474\",\"itemTypeCode\":\"ITEM_TYPE_0100\",\"specification\":\"sdfsfsfsd\",\"updateTime\":1718771961025,\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":214,\"createBy\":\"超级管理员\",\"itemName\":\"sdfsfsdfsf\",\"createTime\":1718771961025,\"updateBy\":\"超级管理员\",\"maxStock\":0.0,\"itemTypeName\":\"有线耳机\",\"itemTypeId\":205,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":214}', '0', null, '2024-06-19 12:39:21');
INSERT INTO `sys_oper_log` VALUES ('824', '菜单管理', '3', 'com.qst.mes.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2250', '127.0.0.1', '内网IP', '{menuId=2250}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2024-06-21 11:14:58');
INSERT INTO `sys_oper_log` VALUES ('825', '用户头像', '2', 'com.qst.mes.controller.system.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/21/blob_20240621112639A001.jpeg\",\"code\":200}', '0', null, '2024-06-21 11:26:39');
INSERT INTO `sys_oper_log` VALUES ('826', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'md_unit_measure', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 16:42:01');
INSERT INTO `sys_oper_log` VALUES ('827', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"yinjinlu\",\"columns\":[{\"capJavaField\":\"MeasureId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"measureId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"单位ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719391321000,\"tableId\":1,\"pk\":true,\"columnName\":\"measure_id\"},{\"capJavaField\":\"MeasureCode\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"measureCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"单位编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719391321000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"measure_code\"},{\"capJavaField\":\"MeasureName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"measureName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"单位名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719391321000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"measure_name\"},{\"capJavaField\":\"EnableFlag\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"enableFlag\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否启用\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 16:48:09');
INSERT INTO `sys_oper_log` VALUES ('828', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"yinjinlu\",\"columns\":[{\"capJavaField\":\"MeasureId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"measureId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"单位ID\",\"updateTime\":1719391689000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719391321000,\"tableId\":1,\"pk\":true,\"columnName\":\"measure_id\"},{\"capJavaField\":\"MeasureCode\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"measureCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"单位编码\",\"isQuery\":\"1\",\"updateTime\":1719391689000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719391321000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"measure_code\"},{\"capJavaField\":\"MeasureName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"measureName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"单位名称\",\"isQuery\":\"1\",\"updateTime\":1719391689000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719391321000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"measure_name\"},{\"capJavaField\":\"EnableFlag\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"enableFlag\",\"htmlType\":\"input\",\"edit\":true,\"qu', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 16:48:49');
INSERT INTO `sys_oper_log` VALUES ('829', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-26 16:49:42');
INSERT INTO `sys_oper_log` VALUES ('830', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":210,\"createBy\":\"\",\"measureCode\":\"MEASUR96691223\",\"createTime\":1718505569000,\"updateBy\":\"\",\"updateTime\":1719392408238,\"params\":{},\"enableFlag\":\"N\",\"measureName\":\"套2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:00:08');
INSERT INTO `sys_oper_log` VALUES ('831', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/210', '127.0.0.1', '内网IP', '{measureIds=210}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:00:17');
INSERT INTO `sys_oper_log` VALUES ('832', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":214,\"measureCode\":\"MEASUR92522310\",\"createTime\":1719392434403,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:00:34');
INSERT INTO `sys_oper_log` VALUES ('833', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":211,\"createBy\":\"\",\"measureCode\":\"MEASUR45517769\",\"createTime\":1718505576000,\"updateBy\":\"\",\"updateTime\":1719392646543,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"条2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:04:06');
INSERT INTO `sys_oper_log` VALUES ('834', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/211', '127.0.0.1', '内网IP', '{measureIds=211}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:05:41');
INSERT INTO `sys_oper_log` VALUES ('835', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"createBy\":\"\",\"measureCode\":\"MEASUR69219894\",\"createTime\":1718505592000,\"updateBy\":\"\",\"updateTime\":1719393766858,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:22:46');
INSERT INTO `sys_oper_log` VALUES ('836', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"createBy\":\"\",\"measureCode\":\"MEASUR692198943\",\"createTime\":1718505592000,\"updateBy\":\"\",\"updateTime\":1719394779436,\"params\":{},\"enableFlag\":\"N\",\"measureName\":\"套3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:39:39');
INSERT INTO `sys_oper_log` VALUES ('837', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"createBy\":\"\",\"measureCode\":\"MEASUR69219894\",\"createTime\":1718505592000,\"updateBy\":\"\",\"updateTime\":1719394788089,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:39:48');
INSERT INTO `sys_oper_log` VALUES ('838', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"createBy\":\"\",\"measureCode\":\"MEASUR69219894\",\"createTime\":1718505592000,\"updateBy\":\"\",\"updateTime\":1719394791698,\"params\":{},\"enableFlag\":\"N\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:39:51');
INSERT INTO `sys_oper_log` VALUES ('839', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":212,\"createBy\":\"\",\"measureCode\":\"MEASUR69219894\",\"createTime\":1718505592000,\"updateBy\":\"\",\"updateTime\":1719394794931,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:39:54');
INSERT INTO `sys_oper_log` VALUES ('840', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'md_client', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:41:15');
INSERT INTO `sys_oper_log` VALUES ('841', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"qst\",\"columns\":[{\"capJavaField\":\"ClientId\",\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"clientId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"客户ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719394875000,\"tableId\":2,\"pk\":true,\"columnName\":\"client_id\"},{\"capJavaField\":\"ClientCode\",\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clientCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719394875000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"client_code\"},{\"capJavaField\":\"ClientName\",\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"clientName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719394875000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"client_name\"},{\"capJavaField\":\"ClientType\",\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"clientType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"客户类型\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryT', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:41:55');
INSERT INTO `sys_oper_log` VALUES ('842', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-26 17:41:59');
INSERT INTO `sys_oper_log` VALUES ('843', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市2\",\"clientId\":203,\"clientName\":\"华为2\",\"updateTime\":1719395700339,\"params\":{},\"createBy\":\"\",\"clientType\":\"PERSON\",\"creditCode\":\"2\",\"phoneNumber\":\"18956234512\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI2\",\"contact\":\"2\",\"enableFlag\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:55:00');
INSERT INTO `sys_oper_log` VALUES ('844', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientId\":205,\"clientName\":\"OPPO2\",\"updateTime\":1719395720539,\"params\":{},\"createBy\":\"\",\"clientType\":\"ENTERPRISE\",\"createTime\":1718329639000,\"updateBy\":\"\",\"clientCode\":\"OPPO2\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:55:20');
INSERT INTO `sys_oper_log` VALUES ('845', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientId\":205,\"clientName\":\"OPPO2\",\"updateTime\":1719395734524,\"params\":{},\"createBy\":\"\",\"clientType\":\"PERSON\",\"creditCode\":\"2\",\"createTime\":1718329639000,\"updateBy\":\"\",\"clientCode\":\"OPPO2\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:55:34');
INSERT INTO `sys_oper_log` VALUES ('846', '客户', '1', 'com.qst.mes.core.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"111\",\"clientId\":209,\"clientName\":\"aaa\",\"params\":{},\"clientType\":\"PERSON\",\"creditCode\":\"aa\",\"phoneNumber\":\"111\",\"createTime\":1719395878050,\"clientCode\":\"aaaa\",\"contact\":\"1111\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:57:58');
INSERT INTO `sys_oper_log` VALUES ('847', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"东莞市\",\"clientId\":203,\"clientName\":\"华为\",\"updateTime\":1719395993346,\"params\":{},\"createBy\":\"\",\"clientType\":\"PERSON\",\"creditCode\":\"\",\"phoneNumber\":\"1895623451\",\"createTime\":1716006092000,\"updateBy\":\"\",\"clientCode\":\"C-HUAWEI\",\"contact\":\"\",\"enableFlag\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 17:59:53');
INSERT INTO `sys_oper_log` VALUES ('848', '单位', '1', 'com.qst.mes.core.md.controller.MdUnitMeasureController.add()', 'POST', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":215,\"measureCode\":\"aaa\",\"createTime\":1719482171047,\"params\":{},\"enableFlag\":\"N\",\"measureName\":\"aa\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:56:11');
INSERT INTO `sys_oper_log` VALUES ('849', '单位', '2', 'com.qst.mes.core.md.controller.MdUnitMeasureController.edit()', 'PUT', '1', 'admin', null, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":215,\"createBy\":\"\",\"measureCode\":\"bb\",\"createTime\":1719482171000,\"updateBy\":\"\",\"updateTime\":1719482182827,\"params\":{},\"enableFlag\":\"Y\",\"measureName\":\"bb\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:56:22');
INSERT INTO `sys_oper_log` VALUES ('850', '单位', '3', 'com.qst.mes.core.md.controller.MdUnitMeasureController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/unitmeasure/215', '127.0.0.1', '内网IP', '{measureIds=215}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:56:26');
INSERT INTO `sys_oper_log` VALUES ('851', '客户', '1', 'com.qst.mes.core.md.controller.MdClientController.add()', 'POST', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"aa\",\"clientId\":210,\"clientName\":\"aaa\",\"params\":{},\"clientType\":\"PERSON\",\"creditCode\":\"aa\",\"phoneNumber\":\"aa\",\"createTime\":1719482217947,\"clientCode\":\"CUSTOMER29247562\",\"contact\":\"aaa\",\"enableFlag\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:56:58');
INSERT INTO `sys_oper_log` VALUES ('852', '客户', '2', 'com.qst.mes.core.md.controller.MdClientController.edit()', 'PUT', '1', 'admin', null, '/mes/md/client', '127.0.0.1', '内网IP', '{\"address\":\"aa\",\"clientId\":210,\"clientName\":\"aaa\",\"updateTime\":1719482227846,\"params\":{},\"createBy\":\"\",\"clientType\":\"PERSON\",\"creditCode\":\"aa\",\"phoneNumber\":\"aa\",\"createTime\":1719482218000,\"updateBy\":\"\",\"clientCode\":\"CUSTOMER29247562\",\"contact\":\"aaa\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:57:07');
INSERT INTO `sys_oper_log` VALUES ('853', '客户', '3', 'com.qst.mes.core.md.controller.MdClientController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/client/210', '127.0.0.1', '内网IP', '{clientIds=210}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 17:57:10');
INSERT INTO `sys_oper_log` VALUES ('854', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'md_vendor', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 09:54:21');
INSERT INTO `sys_oper_log` VALUES ('855', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"qst\",\"columns\":[{\"capJavaField\":\"VendorId\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"vendorId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"供应商ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719539660000,\"tableId\":3,\"pk\":true,\"columnName\":\"vendor_id\"},{\"capJavaField\":\"VendorCode\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"vendorCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"供应商编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719539660000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"vendor_code\"},{\"capJavaField\":\"VendorName\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"vendorName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"供应商名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719539660000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"vendor_name\"},{\"capJavaField\":\"VendorDes\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"vendorDes\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"供应商简介\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"q', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 09:55:04');
INSERT INTO `sys_oper_log` VALUES ('856', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-28 09:56:53');
INSERT INTO `sys_oper_log` VALUES ('857', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"A\",\"address\":\"诸暨市陶朱街道千禧路17号1\",\"vendorId\":204,\"updateTime\":1719544276558,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司1\",\"vendorCode\":\"55860240-6\",\"vendorDes\":\"专注于提供各种塑料原材料，广泛应用于耳机外壳等部件的制造。\",\"createBy\":\"\",\"phoneNumber\":\"189562345121\",\"createTime\":1716011876000,\"updateBy\":\"超级管理员\",\"contact\":\"王伟1\",\"vendorScore\":99,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:11:16');
INSERT INTO `sys_oper_log` VALUES ('858', '供应商', '2', 'com.qst.mes.core.md.controller.MdVendorController.edit()', 'PUT', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"address\":\"诸暨市陶朱街道千禧路17号1\",\"vendorId\":204,\"updateTime\":1719544288021,\"params\":{},\"vendorName\":\"浙江嘉盛塑胶有限公司\",\"vendorCode\":\"55860240-6\",\"vendorDes\":\"专注于提供各种塑料原材料，广泛应用于耳机外壳等部件的制造。\",\"createBy\":\"\",\"phoneNumber\":\"18956234512\",\"createTime\":1716011876000,\"updateBy\":\"超级管理员\",\"contact\":\"王伟\",\"vendorScore\":100,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:11:28');
INSERT INTO `sys_oper_log` VALUES ('859', '供应商', '1', 'com.qst.mes.core.md.controller.MdVendorController.add()', 'POST', '1', 'admin', null, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorLevel\":\"B\",\"address\":\"啊多发点是否\",\"vendorId\":209,\"params\":{},\"vendorName\":\"abc\",\"vendorCode\":\"WENDOR54712078\",\"creditCode\":\"23413241\",\"phoneNumber\":\"12342314\",\"createTime\":1719544889525,\"contact\":\"214213\",\"vendorScore\":77,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:21:29');
INSERT INTO `sys_oper_log` VALUES ('860', '供应商', '3', 'com.qst.mes.core.md.controller.MdVendorController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/vendor/209', '127.0.0.1', '内网IP', '{vendorIds=209}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:21:34');
INSERT INTO `sys_oper_log` VALUES ('861', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'md_workshop', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:22:33');
INSERT INTO `sys_oper_log` VALUES ('862', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"yinjinlu\",\"columns\":[{\"capJavaField\":\"WorkshopId\",\"usableColumn\":false,\"columnId\":37,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"workshopId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"车间ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719544953000,\"tableId\":4,\"pk\":true,\"columnName\":\"workshop_id\"},{\"capJavaField\":\"WorkshopCode\",\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"workshopCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"车间编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719544953000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"workshop_code\"},{\"capJavaField\":\"WorkshopName\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"workshopName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"车间名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719544953000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"workshop_name\"},{\"capJavaField\":\"Area\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"area\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"面积\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"BigDec', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:22:57');
INSERT INTO `sys_oper_log` VALUES ('863', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-28 11:23:00');
INSERT INTO `sys_oper_log` VALUES ('864', '车间管理', '2', 'com.qst.mes.core.md.controller.MdWorkshopController.edit()', 'PUT', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":333,\"charge\":\"王经理\",\"workshopName\":\"第一生产车间2\",\"updateTime\":1719545292505,\"params\":{},\"createBy\":\"超级管理员\",\"createTime\":1718505726000,\"updateBy\":\"超级管理员\",\"workshopId\":204,\"workshopCode\":\"WORKSHOP45903359\",\"enableFlag\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:28:12');
INSERT INTO `sys_oper_log` VALUES ('865', '车间管理', '1', 'com.qst.mes.core.md.controller.MdWorkshopController.add()', 'POST', '1', 'admin', null, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":222,\"charge\":\"33\",\"workshopName\":\"大巴车\",\"params\":{},\"createTime\":1719545317657,\"workshopId\":207,\"workshopCode\":\"WORKSHOP18916828\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:28:37');
INSERT INTO `sys_oper_log` VALUES ('866', '车间管理', '3', 'com.qst.mes.core.md.controller.MdWorkshopController.remove()', 'DELETE', '1', 'admin', null, '/mes/md/workshop/207', '127.0.0.1', '内网IP', '{workshopIds=207}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:28:41');
INSERT INTO `sys_oper_log` VALUES ('867', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'md_workstation', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:29:12');
INSERT INTO `sys_oper_log` VALUES ('868', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"yinjinlu\",\"columns\":[{\"capJavaField\":\"WorkstationId\",\"usableColumn\":false,\"columnId\":47,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"workstationId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"工作站ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719545352000,\"tableId\":5,\"pk\":true,\"columnName\":\"workstation_id\"},{\"capJavaField\":\"WorkstationCode\",\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"workstationCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"工作站编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719545352000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"workstation_code\"},{\"capJavaField\":\"WorkstationName\",\"usableColumn\":false,\"columnId\":49,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"workstationName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"工作站名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719545352000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"workstation_name\"},{\"capJavaField\":\"WorkshopId\",\"usableColumn\":false,\"columnId\":50,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"workshopId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"所在车间ID\",\"isQuery\":\"1\",\"sort', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:30:13');
INSERT INTO `sys_oper_log` VALUES ('869', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-28 11:30:20');
INSERT INTO `sys_oper_log` VALUES ('870', '代码生成', '6', 'com.qst.mes.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'pro_process', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:41:05');
INSERT INTO `sys_oper_log` VALUES ('871', '代码生成', '2', 'com.qst.mes.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"yinjinlu\",\"columns\":[{\"capJavaField\":\"ProcessId\",\"usableColumn\":false,\"columnId\":61,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"processId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"工序ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1719546065000,\"tableId\":6,\"pk\":true,\"columnName\":\"process_id\"},{\"capJavaField\":\"ProcessCode\",\"usableColumn\":false,\"columnId\":62,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"processCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"工序编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719546065000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"process_code\"},{\"capJavaField\":\"ProcessName\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"processName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"工序名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1719546065000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"process_name\"},{\"capJavaField\":\"Attention\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"attention\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"工艺要求\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 11:41:27');
INSERT INTO `sys_oper_log` VALUES ('872', '代码生成', '8', 'com.qst.mes.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2024-06-28 11:41:30');
INSERT INTO `sys_oper_log` VALUES ('873', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":5,\"menuName\":\"工序设置\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"mes/pro/process/index\",\"children\":[],\"createTime\":1652285038000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2109,\"menuType\":\"C\",\"perms\":\"mes:pro:process\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:05:51');
INSERT INTO `sys_oper_log` VALUES ('874', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":6,\"menuName\":\"工作站管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:10:56');
INSERT INTO `sys_oper_log` VALUES ('875', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":7,\"menuName\":\"工作站管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:11:04');
INSERT INTO `sys_oper_log` VALUES ('876', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":8,\"menuName\":\"工作站管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:11:11');
INSERT INTO `sys_oper_log` VALUES ('877', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":6,\"menuName\":\"工作站管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"workstation\",\"component\":\"mes/md/workstation/index\",\"children\":[],\"createTime\":1652190276000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2088,\"menuType\":\"C\",\"perms\":\"mes:md:workstation\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:12:01');
INSERT INTO `sys_oper_log` VALUES ('878', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"nested\",\"orderNum\":7,\"menuName\":\"物料产品分类\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"itemtype\",\"component\":\"mes/md/itemtype/index\",\"children\":[],\"createTime\":1650096198000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"mes:md:itemtype\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:12:07');
INSERT INTO `sys_oper_log` VALUES ('879', '菜单管理', '2', 'com.qst.mes.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":8,\"menuName\":\"物料和产品\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"mditem\",\"component\":\"mes/md/mditem/index\",\"children\":[],\"createTime\":1650091440000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"ms:md:mditem\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-28 13:12:21');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2023-07-31 17:47:21', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2023-07-31 17:47:21', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2023-07-31 17:47:21', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2023-07-31 17:47:21', '', null, '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-07-31 17:47:21', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2023-07-31 17:47:21', '', null, '普通角色');
INSERT INTO `sys_role` VALUES ('100', '车间管理员', 'chejianguanliyuan', '3', '1', '1', '1', '0', '0', 'admin', '2024-06-13 17:12:34', '', null, null);

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('100', '3');
INSERT INTO `sys_role_menu` VALUES ('100', '114');
INSERT INTO `sys_role_menu` VALUES ('100', '115');
INSERT INTO `sys_role_menu` VALUES ('100', '116');
INSERT INTO `sys_role_menu` VALUES ('100', '1055');
INSERT INTO `sys_role_menu` VALUES ('100', '1056');
INSERT INTO `sys_role_menu` VALUES ('100', '1057');
INSERT INTO `sys_role_menu` VALUES ('100', '1058');
INSERT INTO `sys_role_menu` VALUES ('100', '1059');
INSERT INTO `sys_role_menu` VALUES ('100', '1060');
INSERT INTO `sys_role_menu` VALUES ('100', '2000');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2010');
INSERT INTO `sys_role_menu` VALUES ('100', '2011');
INSERT INTO `sys_role_menu` VALUES ('100', '2012');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2015');
INSERT INTO `sys_role_menu` VALUES ('100', '2016');
INSERT INTO `sys_role_menu` VALUES ('100', '2017');
INSERT INTO `sys_role_menu` VALUES ('100', '2018');
INSERT INTO `sys_role_menu` VALUES ('100', '2019');
INSERT INTO `sys_role_menu` VALUES ('100', '2020');
INSERT INTO `sys_role_menu` VALUES ('100', '2021');
INSERT INTO `sys_role_menu` VALUES ('100', '2022');
INSERT INTO `sys_role_menu` VALUES ('100', '2023');
INSERT INTO `sys_role_menu` VALUES ('100', '2024');
INSERT INTO `sys_role_menu` VALUES ('100', '2025');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2027');
INSERT INTO `sys_role_menu` VALUES ('100', '2028');
INSERT INTO `sys_role_menu` VALUES ('100', '2029');
INSERT INTO `sys_role_menu` VALUES ('100', '2030');
INSERT INTO `sys_role_menu` VALUES ('100', '2031');
INSERT INTO `sys_role_menu` VALUES ('100', '2032');
INSERT INTO `sys_role_menu` VALUES ('100', '2033');
INSERT INTO `sys_role_menu` VALUES ('100', '2034');
INSERT INTO `sys_role_menu` VALUES ('100', '2035');
INSERT INTO `sys_role_menu` VALUES ('100', '2036');
INSERT INTO `sys_role_menu` VALUES ('100', '2037');
INSERT INTO `sys_role_menu` VALUES ('100', '2038');
INSERT INTO `sys_role_menu` VALUES ('100', '2039');
INSERT INTO `sys_role_menu` VALUES ('100', '2040');
INSERT INTO `sys_role_menu` VALUES ('100', '2041');
INSERT INTO `sys_role_menu` VALUES ('100', '2042');
INSERT INTO `sys_role_menu` VALUES ('100', '2043');
INSERT INTO `sys_role_menu` VALUES ('100', '2044');
INSERT INTO `sys_role_menu` VALUES ('100', '2045');
INSERT INTO `sys_role_menu` VALUES ('100', '2046');
INSERT INTO `sys_role_menu` VALUES ('100', '2047');
INSERT INTO `sys_role_menu` VALUES ('100', '2048');
INSERT INTO `sys_role_menu` VALUES ('100', '2049');
INSERT INTO `sys_role_menu` VALUES ('100', '2050');
INSERT INTO `sys_role_menu` VALUES ('100', '2051');
INSERT INTO `sys_role_menu` VALUES ('100', '2052');
INSERT INTO `sys_role_menu` VALUES ('100', '2053');
INSERT INTO `sys_role_menu` VALUES ('100', '2054');
INSERT INTO `sys_role_menu` VALUES ('100', '2055');
INSERT INTO `sys_role_menu` VALUES ('100', '2056');
INSERT INTO `sys_role_menu` VALUES ('100', '2057');
INSERT INTO `sys_role_menu` VALUES ('100', '2058');
INSERT INTO `sys_role_menu` VALUES ('100', '2072');
INSERT INTO `sys_role_menu` VALUES ('100', '2073');
INSERT INTO `sys_role_menu` VALUES ('100', '2074');
INSERT INTO `sys_role_menu` VALUES ('100', '2075');
INSERT INTO `sys_role_menu` VALUES ('100', '2076');
INSERT INTO `sys_role_menu` VALUES ('100', '2077');
INSERT INTO `sys_role_menu` VALUES ('100', '2078');
INSERT INTO `sys_role_menu` VALUES ('100', '2079');
INSERT INTO `sys_role_menu` VALUES ('100', '2080');
INSERT INTO `sys_role_menu` VALUES ('100', '2081');
INSERT INTO `sys_role_menu` VALUES ('100', '2082');
INSERT INTO `sys_role_menu` VALUES ('100', '2083');
INSERT INTO `sys_role_menu` VALUES ('100', '2084');
INSERT INTO `sys_role_menu` VALUES ('100', '2085');
INSERT INTO `sys_role_menu` VALUES ('100', '2086');
INSERT INTO `sys_role_menu` VALUES ('100', '2087');
INSERT INTO `sys_role_menu` VALUES ('100', '2088');
INSERT INTO `sys_role_menu` VALUES ('100', '2089');
INSERT INTO `sys_role_menu` VALUES ('100', '2090');
INSERT INTO `sys_role_menu` VALUES ('100', '2091');
INSERT INTO `sys_role_menu` VALUES ('100', '2092');
INSERT INTO `sys_role_menu` VALUES ('100', '2093');
INSERT INTO `sys_role_menu` VALUES ('100', '2094');
INSERT INTO `sys_role_menu` VALUES ('100', '2109');
INSERT INTO `sys_role_menu` VALUES ('100', '2110');
INSERT INTO `sys_role_menu` VALUES ('100', '2111');
INSERT INTO `sys_role_menu` VALUES ('100', '2112');
INSERT INTO `sys_role_menu` VALUES ('100', '2113');
INSERT INTO `sys_role_menu` VALUES ('100', '2114');
INSERT INTO `sys_role_menu` VALUES ('100', '2115');
INSERT INTO `sys_role_menu` VALUES ('100', '2116');
INSERT INTO `sys_role_menu` VALUES ('100', '2117');
INSERT INTO `sys_role_menu` VALUES ('100', '2118');
INSERT INTO `sys_role_menu` VALUES ('100', '2119');
INSERT INTO `sys_role_menu` VALUES ('100', '2120');
INSERT INTO `sys_role_menu` VALUES ('100', '2121');
INSERT INTO `sys_role_menu` VALUES ('100', '2122');
INSERT INTO `sys_role_menu` VALUES ('100', '2123');
INSERT INTO `sys_role_menu` VALUES ('100', '2151');
INSERT INTO `sys_role_menu` VALUES ('100', '2152');
INSERT INTO `sys_role_menu` VALUES ('100', '2153');
INSERT INTO `sys_role_menu` VALUES ('100', '2154');
INSERT INTO `sys_role_menu` VALUES ('100', '2155');
INSERT INTO `sys_role_menu` VALUES ('100', '2156');
INSERT INTO `sys_role_menu` VALUES ('100', '2157');
INSERT INTO `sys_role_menu` VALUES ('100', '2158');
INSERT INTO `sys_role_menu` VALUES ('100', '2159');
INSERT INTO `sys_role_menu` VALUES ('100', '2179');
INSERT INTO `sys_role_menu` VALUES ('100', '2180');
INSERT INTO `sys_role_menu` VALUES ('100', '2181');
INSERT INTO `sys_role_menu` VALUES ('100', '2182');
INSERT INTO `sys_role_menu` VALUES ('100', '2183');
INSERT INTO `sys_role_menu` VALUES ('100', '2184');
INSERT INTO `sys_role_menu` VALUES ('100', '2197');
INSERT INTO `sys_role_menu` VALUES ('100', '2198');
INSERT INTO `sys_role_menu` VALUES ('100', '2199');
INSERT INTO `sys_role_menu` VALUES ('100', '2200');
INSERT INTO `sys_role_menu` VALUES ('100', '2201');
INSERT INTO `sys_role_menu` VALUES ('100', '2202');
INSERT INTO `sys_role_menu` VALUES ('100', '2203');
INSERT INTO `sys_role_menu` VALUES ('100', '2204');
INSERT INTO `sys_role_menu` VALUES ('100', '2226');
INSERT INTO `sys_role_menu` VALUES ('100', '2227');
INSERT INTO `sys_role_menu` VALUES ('100', '2228');
INSERT INTO `sys_role_menu` VALUES ('100', '2229');
INSERT INTO `sys_role_menu` VALUES ('100', '2230');
INSERT INTO `sys_role_menu` VALUES ('100', '2231');
INSERT INTO `sys_role_menu` VALUES ('100', '2232');
INSERT INTO `sys_role_menu` VALUES ('100', '2233');
INSERT INTO `sys_role_menu` VALUES ('100', '2234');
INSERT INTO `sys_role_menu` VALUES ('100', '2235');
INSERT INTO `sys_role_menu` VALUES ('100', '2236');
INSERT INTO `sys_role_menu` VALUES ('100', '2238');
INSERT INTO `sys_role_menu` VALUES ('100', '2239');
INSERT INTO `sys_role_menu` VALUES ('100', '2240');
INSERT INTO `sys_role_menu` VALUES ('100', '2241');
INSERT INTO `sys_role_menu` VALUES ('100', '2242');
INSERT INTO `sys_role_menu` VALUES ('100', '2243');
INSERT INTO `sys_role_menu` VALUES ('100', '2244');
INSERT INTO `sys_role_menu` VALUES ('100', '2245');
INSERT INTO `sys_role_menu` VALUES ('100', '2246');
INSERT INTO `sys_role_menu` VALUES ('100', '2247');
INSERT INTO `sys_role_menu` VALUES ('100', '2248');
INSERT INTO `sys_role_menu` VALUES ('100', '2249');
INSERT INTO `sys_role_menu` VALUES ('100', '2250');
INSERT INTO `sys_role_menu` VALUES ('100', '2251');
INSERT INTO `sys_role_menu` VALUES ('100', '2252');
INSERT INTO `sys_role_menu` VALUES ('100', '2253');
INSERT INTO `sys_role_menu` VALUES ('100', '2254');
INSERT INTO `sys_role_menu` VALUES ('100', '2255');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '超级管理员', '00', 'admin@163.com', '15012345678', '0', '/profile/avatar/2024/06/21/blob_20240621112639A001.jpeg', '$2a$10$FG.PGL/4YD88sXYeHiAkue06iYHdS/n5qELPCW2S9Po5I8QFSux3O', '0', '0', '127.0.0.1', '2024-06-28 09:53:59', 'admin', '2023-07-31 17:47:21', '', '2024-06-28 09:53:59', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-07-31 17:47:21', 'admin', '2023-07-31 17:47:21', '', null, '测试员');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
