/*
 Navicat Premium Data Transfer

 Source Server         : CSDPRD
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : csdprd

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 18:48:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_ntc_tranconfig
-- ----------------------------
DROP TABLE IF EXISTS `t_ntc_tranconfig`;
CREATE TABLE `t_ntc_tranconfig`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REMARK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATUS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CONFIG_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SEND_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`PRD_CD`, `PRD_GRP_CD`) USING BTREE,
  UNIQUE INDEX `TABLE1_PK`(`PRD_CD`, `PRD_GRP_CD`) USING BTREE,
  UNIQUE INDEX `CONFIG_NO`(`CONFIG_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_prd_acrm
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_acrm`;
CREATE TABLE `t_prd_acrm`  (
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method code',
  `ACRM_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NM|Interest calculation method name',
  `INT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_MOD|Interest calculation model',
  `YEAR_BAS_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'YEAR_BAS_TYP|Interest calculation year base flag',
  `INT_DAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_DAY_TYP|Interest period algorithm',
  `SEG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEG_FLG|Segmented interest mark',
  `HED_TAL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HED_TAL_TYP|Head and tail interest calculation method',
  `RAT_EFF_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_EFF_TYP|Interest rate effective date type',
  `INT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PRD_RAT_MIN|Minimum unit of interest-bearing base',
  `PAY_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PRD_RAT_MIN|Minimum unit of interest payment',
  `INT_RND_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_RND_TYP|Interest rounding rule',
  `INT_MTH_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_MTH_TYP|Types of interest calculation',
  `INT_AMT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_AMT_TYP|Interest amount flag',
  `RAT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_MOD|Interest rate model',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expired date',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`ACRM_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product interest calculation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_acrm
-- ----------------------------
INSERT INTO `t_prd_acrm` VALUES ('LQ001', '百三利息', ' ', '2', '2', '0', '1', '2', 0.01, 1.00, '1', '1', '6', '1', '0', '20200716', '99991231', ' ', 'keT00001', '20200529', '115711', ' ', 'keT00002', '20200716', '210053', '20200716210056+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4322000000000001', ' ', '20200716205911', ' ', '20200716210053');
INSERT INTO `t_prd_acrm` VALUES ('SGSA', 'General savings', '1', '2', '1', '0', '1', '1', 0.01, 0.01, '1', '2', '0', '2', '0', '20200528', '99991231', ' ', 'keT00001', '20200528', '194839', ' ', 'keT00002', '20200528', '194839', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4110000000000001', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_acrm` VALUES ('SLBOX', 'Lockbox savings', '1', '2', '1', '0', '1', '1', 0.01, 0.01, '1', '2', '0', '2', '0', '20200528', '99991231', ' ', 'keT00001', '20200528', '194839', ' ', 'keT00002', '20200528', '194839', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4110000000000002', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_acrm` VALUES ('SLIR', 'Lowest interest rate', '1', '2', '1', '0', '1', '1', 0.01, 0.01, '1', '2', '0', '1', '0', '20200528', '99991231', ' ', 'keT00001', '20200528', '194839', ' ', 'keT00002', '20200528', '194839', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4110000000000004', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_prd_cnllmt
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_cnllmt`;
CREATE TABLE `t_prd_cnllmt`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product Code',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `BUS_CNL` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `MIN_CNL_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance of channel',
  `MAX_CNL_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT||Maximum balance of channel',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expired date',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_CD`, `BUS_TYP`, `BUS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product channel limit config' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_prd_crmhis
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_crmhis`;
CREATE TABLE `t_prd_crmhis`  (
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method code',
  `EXP_DT_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Expired datetime',
  `ACRM_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NM|Interest calculation method name',
  `INT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_MOD|Interest calculation model',
  `YEAR_BAS_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'YEAR_BAS_TYP|Interest calculation year base flag',
  `INT_DAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_DAY_TYP|Interest period algorithm',
  `SEG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEG_FLG|Segmented interest mark',
  `HED_TAL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HED_TAL_TYP|Head and tail interest calculation method',
  `RAT_EFF_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_EFF_TYP|Interest rate effective date type',
  `INT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PRD_RAT_MIN|Minimum unit of interest-bearing base',
  `PAY_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PRD_RAT_MIN|Minimum unit of interest payment',
  `INT_RND_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_RND_TYP|Interest rounding rule',
  `INT_MTH_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_MTH_TYP|Types of interest calculation',
  `INT_AMT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_AMT_TYP|Interest amount flag',
  `RAT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_MOD|Interest rate model',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `EFF_DT_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective datetime',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`ACRM_NO`, `EXP_DT_TM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product interest calculation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_prd_cus
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_cus`;
CREATE TABLE `t_prd_cus`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `GRD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GRD_TYP|Customer grade category',
  `GRD_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GRD_CD|Customer rating',
  `MIN_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Single customer level balance lower limit',
  `MAX_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Customer level balance limit',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Status',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`, `GRD_TYP`, `GRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product customer table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_cus
-- ----------------------------
INSERT INTO `t_prd_cus` VALUES ('SAVGEN01', ' ', '0', 0.00, 100000.00, '0', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200527', '124521', '20200604105330+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4792000000000001');
INSERT INTO `t_prd_cus` VALUES ('SAVGEN01', ' ', '1', 0.00, 250000.00, '0', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200527', '124521', '20200604105330+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4792000000000001');
INSERT INTO `t_prd_cus` VALUES ('SAVGEN01', ' ', '2', 0.00, 500000.00, '0', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200527', '124521', '20200604105330+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4792000000000001');
INSERT INTO `t_prd_cus` VALUES ('SAVGEN01', ' ', '3', 0.00, 500000.00, '0', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200527', '124521', '20200604105330+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4792000000000001');

-- ----------------------------
-- Table structure for t_prd_dpacrm
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpacrm`;
CREATE TABLE `t_prd_dpacrm`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACRM_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_TYP|Interest type',
  `ACRM_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method code',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expired date',
  `FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Interest rate floating method',
  `FLT_VAL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'RAT_FLT_VAL|Product interest rate float value',
  `FLT_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PRD_FLT_VAL|Product interest rate float min value',
  `FLT_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'FLOAT_MAX|Upper limit of interest rate spread at the account level',
  `PER_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PER_MIN|Lower limit of interest rate at the account level',
  `PER_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PER_MAX|Upper limit of interest rate at the account level',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`, `ACRM_TYP`, `ACRM_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product interest calculation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpacrm
-- ----------------------------
INSERT INTO `t_prd_dpacrm` VALUES ('SAVGEN01', '1', '0', 'SGSA', '20200528', ' ', ' ', 0, 0, 0, 0, 0, ' ', 'keT00001', '20200528', '194840', ' ', 'keT00002', '20200528', '194840', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4094000000000003');
INSERT INTO `t_prd_dpacrm` VALUES ('SAVLBX01', '2', '0', 'SLIR', '20200528', ' ', ' ', 0, 0, 0, 0, 0, ' ', 'keT00001', '20200528', '194840', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpacrm` VALUES ('SAVLBX01', '3', '0', 'SLBOX', '20200528', ' ', ' ', 0, 0, 0, 0, 0, ' ', 'keT00001', '20200528', '194840', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpacrm` VALUES ('SAVLBX01', '4', '0', 'SLIR', '20200528', ' ', ' ', 0, 0, 0, 0, 0, ' ', 'keT00001', '20200528', '194840', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpacrm` VALUES ('SAVLBX01', '6', '0', 'SLIR', '20200528', ' ', ' ', 0, 0, 0, 0, 0, ' ', 'keT00001', '20200528', '194840', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');

-- ----------------------------
-- Table structure for t_prd_dpcap
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpcap`;
CREATE TABLE `t_prd_dpcap`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STL_FLG|Whether limit interest settlement',
  `STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STL_TYP|The type of interest settlement',
  `STL_PERD_UNT` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PERD_UNT|Capitalization period ',
  `STL_PERD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Number of period ',
  `STL_MON` bigint(20) NOT NULL DEFAULT 0 COMMENT 'MONTH|The month of settle',
  `STL_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|The day of settle',
  `INT_PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_TYP|Type of interest payment',
  `FST_INT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_INT_TYP|When the first time of interest',
  `ATO_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATO_STL_FLG|Auto settle flag',
  `TAX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_FLG|Collect tax flag',
  `TAX_CAL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_GEN_TYP|When to calculate the tax',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last review date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last review time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TAX_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_CD|Tax rate code',
  `VAT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VAT_FLG|Charge VAT flag',
  `VAT_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VAT_CD|VAT code',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product capital table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpcap
-- ----------------------------
INSERT INTO `t_prd_dpcap` VALUES ('SAVGEN01', 'Y', '2', 'M', 3, 1, 15, '1', '1', 'Y', 'N', '1', 'keT00001', '20200528', '194841', ' ', 'keT00002', '20200528', '194841', ' ', ' ', 'product.prd_d_5', 'completeReviewbui_d_4094000000000003', ' ', 'N', ' ');
INSERT INTO `t_prd_dpcap` VALUES ('SAVGOA01', 'N', ' ', ' ', 0, 0, 0, ' ', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194841', ' ', 'keT00002', '20200528', '194841', ' ', ' ', 'product.prd_d_5', 'completeReviewbui_d_4094000000000002', ' ', ' ', ' ');
INSERT INTO `t_prd_dpcap` VALUES ('SAVLBX01', 'Y', '2', 'M', 1, 0, 0, '1', '1', 'Y', 'N', '1', 'keT00001', '20200528', '194841', ' ', 'keT00002', '20200528', '224252', ' ', '20200528224258+08', 'product.prd_d_5', 'W!completeFirstCheckbui_d_4750000000000003', '2KES', 'N', ' ');
INSERT INTO `t_prd_dpcap` VALUES ('WALGEN01', 'N', ' ', ' ', 0, 0, 0, ' ', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194841', ' ', 'keT00002', '20200528', '194841', ' ', ' ', 'product.prd_d_5', 'completeReviewbui_d_4094000000000001', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_prd_dpctl
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpctl`;
CREATE TABLE `t_prd_dpctl`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CI_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Customer type',
  `AGE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'AGE_FLG|Customer age limit flag',
  `AGE_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AGE_MIN|Minimum customer age limit',
  `AGE_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AGE_MAX|Maximum customer  age limit',
  `KYC_STS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|KYC status limit flag',
  `MIN_KYC_LVL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'KYC_LVL|Minimum Customer KYC Level Allowed to Open Accounts',
  `KYC_BAL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|KYC balance limit flag',
  `ID_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether document id is limit ',
  `NA_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'NA_FLG|Product customer nationality flag',
  `CNL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'CNL_FLG|Product contract channel flag',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'CCY|Currency',
  `ZRO_OPN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Zero balance open account limit flag',
  `MIN_FST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance when first time save',
  `MAX_FST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum balance when first time save',
  `MIN_TGT_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum target balance',
  `MAX_ACC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum account balance',
  `CLO_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Close account balance',
  `CI_AC_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max number of account the customer can owned',
  `USR_AC_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max number of account the user can owned',
  `TRM_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRM_TYP|Deposit term structure mark',
  `TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Deposit term unit',
  `TRM_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Minimum deposit term',
  `TRM_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Maximum deposit period',
  `CLO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLO_FLG|Whether close account advanced is allowed',
  `CLO_TRF_PRD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code that the money transfer to when the account  is closed',
  `HOL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HOL_FLG|Holiday expiration processing flag',
  `HOL_FCL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HOL_FCL|Account processing rules for sunsets during holidays',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME||Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '  ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REG_PERD_TIM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Customer registered time',
  `REG_PERD_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Customer registered time unit',
  `FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether limit',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpctl
-- ----------------------------
INSERT INTO `t_prd_dpctl` VALUES ('SAVGEN01', '1', 'N', 0, 0, 'N', 0, 'Y', 'Y', 'N', 'N', 'N', 'Y', 0.00, 999999.00, 1000.00, 999999.00, 0.00, 999999, 5, '0', ' ', 0, 0, 'N', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194841', ' ', ' ', '20200528', '194841', ' ', 'product.prd_d_5', ' ', 0, 'D', 'N', 'completeReviewbui_d_4094000000000003');
INSERT INTO `t_prd_dpctl` VALUES ('SAVGOA01', '1', 'N', 0, 0, 'N', 0, 'N', 'Y', 'N', 'N', 'N', 'Y', 0.00, 999999.00, 0.00, 999999.00, 0.99, 10, 5, '1', 'M', 1, 12, 'N', ' ', '0', '2', ' ', 'keT00001', '20200528', '194841', ' ', ' ', '20200528', '194841', ' ', 'product.prd_d_5', ' ', 0, 'D', 'N', 'completeReviewbui_d_4094000000000002');
INSERT INTO `t_prd_dpctl` VALUES ('SAVLBX01', '1', 'N', 0, 0, 'N', 0, 'N', 'Y', 'N', 'N', 'N', 'Y', 0.00, 999999.00, 100.00, 999999.00, 0.00, 999999, 5, '1', 'M', 1, 12, 'Y', 'SAVGEN01', '0', '1', ' ', 'keT00001', '20200528', '194841', ' ', ' ', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 0, 'D', 'N', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpctl` VALUES ('WALGEN01', '1', 'N', 0, 0, 'N', 0, 'N', 'Y', 'N', 'N', 'N', 'Y', 0.01, 999999.00, 1.00, 999999.00, 0.99, 1, 5, '0', ' ', 0, 0, 'N', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194841', ' ', ' ', '20200528', '194841', ' ', 'product.prd_d_5', ' ', 0, 'D', 'N', 'completeReviewbui_d_4094000000000001');

-- ----------------------------
-- Table structure for t_prd_dpdep
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpdep`;
CREATE TABLE `t_prd_dpdep`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `MUL_DEP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MUL_DEP|Multiple deposits',
  `SIG_AMT_FLG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|The amount limit of single times deposit',
  `SIG_AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum amount of deposit in a single deposit',
  `SIG_AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum amount of deposit in a single deposit',
  `CYC_DEP_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Periodic renewal period unit',
  `CYC_DEP_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Deposit number',
  `CYC_AMT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CYC_AMT_TYP|Restrictions on the amount of funds deposited each time during regular renewal (zero deposit and withdrawal)',
  `ATO_TRF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'LMT_FLG|Whether limit auto transfer to other product',
  `ATO_TRF_TYP` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '3' COMMENT 'ATO_TRF_TYP|The type of  auto transfer to other product',
  `ATO_TRF_PRD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|The product code that Interest transfer to',
  `ATO_DEP_FLG` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000' COMMENT 'LMT_FLG|Whether limit auto deposit ',
  `ATO_DEP_PRD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|The product code that Interest deposit ',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE||Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME||Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `ATO_CAP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Auto deposit capital resource type flag',
  `ATO_CAP_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum amount of automatic transfer deposit',
  `ATO_CAP_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum amount of automatic transfer deposit',
  `ATO_PERD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Limit of auto deposit period',
  `ATO_PERD_WEE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'UNIT|Period unit - Week',
  `PERD_WEE_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Period unit quantity - Week',
  `ATO_PERD_MON` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'UNIT|Period unit - Month',
  `PERD_MON_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Period unit quantity - Month',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product deposit parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpdep
-- ----------------------------
INSERT INTO `t_prd_dpdep` VALUES ('SAVGEN01', '0', 'Y', 0.00, 99999999.00, ' ', 0, ' ', 'N', '1', ' ', 'N', ' ', ' ', 'keT00001', '20200528', '194842', ' ', 'keT00002', '20200528', '194842', ' ', 'product.prd_d_5', ' ', 'N', 0.00, 0.00, ' ', ' ', 0, ' ', 0, 'completeReviewbui_d_4094000000000003');
INSERT INTO `t_prd_dpdep` VALUES ('SAVGOA01', '0', 'Y', 0.00, 99999999.00, ' ', 0, ' ', 'N', '1', ' ', 'N', ' ', ' ', 'keT00001', '20200528', '194842', ' ', 'keT00002', '20200528', '194842', ' ', 'product.prd_d_5', ' ', 'N', 0.00, 0.00, ' ', ' ', 0, ' ', 0, 'completeReviewbui_d_4094000000000002');
INSERT INTO `t_prd_dpdep` VALUES ('SAVLBX01', '0', 'Y', 0.00, 99999999.00, 'D', 1, '2', 'N', '1', ' ', 'Y', 'SAVGEN01', ' ', 'keT00001', '20200528', '194842', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'N', 0.00, 0.00, ' ', ' ', 0, ' ', 0, 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpdep` VALUES ('WALGEN01', '0', 'Y', 0.00, 99999999.00, ' ', 0, ' ', 'N', '1', ' ', 'N', ' ', ' ', 'keT00001', '20200528', '194842', ' ', 'keT00002', '20200528', '194842', ' ', 'product.prd_d_5', ' ', 'N', 0.00, 0.00, ' ', ' ', 0, ' ', 0, 'completeReviewbui_d_4094000000000001');

-- ----------------------------
-- Table structure for t_prd_dpfee
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpfee`;
CREATE TABLE `t_prd_dpfee`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `FEE_CD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_CD|Fee code',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last review date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last review time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STATUS|Status',
  PRIMARY KEY (`PRD_CD`, `FEE_CD`, `TX_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product fee parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpfee
-- ----------------------------
INSERT INTO `t_prd_dpfee` VALUES ('SAVGEN01', '1', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200321', '114705', ' ', 'product.prd_d_5', '5', 'completeReviewbui_d_4103000000000004', '0');
INSERT INTO `t_prd_dpfee` VALUES ('SAVLBX01', '1', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200321', '114705', ' ', 'product.prd_d_5', '5', 'completeReviewbui_d_4105000000000001', '0');

-- ----------------------------
-- Table structure for t_prd_dpntf
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpntf`;
CREATE TABLE `t_prd_dpntf`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `DUE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DUE_FLG|Early notice flag',
  `NTF_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Advance notice days',
  `CHK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'CHK_FLG|Statement of delivery',
  `CHK_FRQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Number of billing period',
  `CHK_FRQ_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Statement delivery period unit',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `STM_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Statement number limit',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product notify parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpntf
-- ----------------------------
INSERT INTO `t_prd_dpntf` VALUES ('SAVGEN01', 'N', 0, 'N', 1, 'W', ' ', 'keT00001', '20200528', '194843', ' ', 'keT00002', '20200528', '194843', ' ', 'product.prd_d_5', ' ', 5, 'completeReviewbui_d_4094000000000003');
INSERT INTO `t_prd_dpntf` VALUES ('SAVGOA01', 'Y', 3, 'N', 0, ' ', ' ', 'keT00001', '20200528', '194843', ' ', 'keT00002', '20200528', '194843', ' ', 'product.prd_d_5', ' ', 5, 'completeReviewbui_d_4094000000000002');
INSERT INTO `t_prd_dpntf` VALUES ('SAVLBX01', 'Y', 7, 'N', 0, ' ', ' ', 'keT00001', '20200528', '194843', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 5, 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpntf` VALUES ('WALGEN01', 'N', 0, 'N', 0, ' ', ' ', 'keT00001', '20200528', '194843', ' ', 'keT00002', '20200528', '194843', ' ', 'product.prd_d_5', ' ', 5, 'completeReviewbui_d_4094000000000001');

-- ----------------------------
-- Table structure for t_prd_dprwd
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dprwd`;
CREATE TABLE `t_prd_dprwd`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RWD_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_CD|Rewards and punishments code',
  `RWD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_FLG|Reward or penalty type',
  `RWD_TYP` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_TYP|Reward and punishment conditions',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `RWD_DSC` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Description',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last review date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last review time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_CD`, `RWD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product reward and penalty  table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dprwd
-- ----------------------------
INSERT INTO `t_prd_dprwd` VALUES ('SAVGEN01', '9000001', '1', '02', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194844', ' ', 'keT00002', '20200528', '194844', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4109000000000001', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_prd_dprwdp
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dprwdp`;
CREATE TABLE `t_prd_dprwdp`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RWD_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_CD|The description about fee',
  `PRM_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NUM|Number',
  `PRM_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_PRM_TYP|Reward parameter type',
  `PRM_VAL` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RWD_PRM_VAL|Reward parameter value',
  `PRM_UNT` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RWD_PRM_UNT|Reward parameter unit',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last review date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last review time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`, `RWD_CD`, `PRM_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product reward and penalty parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dprwdp
-- ----------------------------
INSERT INTO `t_prd_dprwdp` VALUES ('SAVGEN01', '9000001', '1', '00', 1.000000, '2', ' ', ' ', 'keT00001', '20200528', '194844', ' ', 'keT00002', '20200528', '194844', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4109000000000001');
INSERT INTO `t_prd_dprwdp` VALUES ('SAVGEN01', '9000001', '2', '00', 5.000000, ' ', ' ', ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '194845', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4109000000000001');
INSERT INTO `t_prd_dprwdp` VALUES ('SAVGEN01', '9000001', '3', '02', 1.000000, ' ', ' ', ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '194845', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4109000000000001');

-- ----------------------------
-- Table structure for t_prd_dpwdr
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_dpwdr`;
CREATE TABLE `t_prd_dpwdr`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `WDR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DRAW_TYP|Restrictions on withdrawal of funds',
  `MUL_WDR_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to allow multiple withdrawals of funds after opening a product',
  `ADV_WDR_FLG` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Advance draw limit flag',
  `WDR_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Draw times limit',
  `BRK_LCK_VAL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Break  lock value',
  `BRK_LCK_UNT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Date unit',
  `NTY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Notify days',
  `AMT_LMT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether have a amount limit of signle time withdraw',
  `MIN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum amount limit for single withdraw',
  `MAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum amount of single withdraw',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving product withdraw parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_dpwdr
-- ----------------------------
INSERT INTO `t_prd_dpwdr` VALUES ('SAVGEN01', '0', 'Y', ' ', 0, 0, '1', 0, 'Y', 0.00, 99999999.00, ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '194845', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4094000000000003');
INSERT INTO `t_prd_dpwdr` VALUES ('SAVGOA01', '0', 'Y', 'Y', 999, 0, '1', 0, 'Y', 0.00, 99999999.00, ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '194845', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4094000000000002');
INSERT INTO `t_prd_dpwdr` VALUES ('SAVLBX01', '0', 'Y', 'Y', 999999, 0, '1', 0, 'Y', 0.00, 99999999.00, ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_dpwdr` VALUES ('WALGEN01', '0', 'Y', ' ', 0, 0, '1', 0, 'Y', 0.00, 99999999.00, ' ', 'keT00001', '20200528', '194845', ' ', 'keT00002', '20200528', '194845', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4094000000000001');

-- ----------------------------
-- Table structure for t_prd_group
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_group`;
CREATE TABLE `t_prd_group`  (
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PRD_GRP_NM` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_NM|Product group name',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flg',
  `PRD_GRP_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Describe',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Operator number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_GRP_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product group' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_group
-- ----------------------------
INSERT INTO `t_prd_group` VALUES ('FULIZA', 'FULIZA', '0', 'FULIZA', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000010', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_group` VALUES ('MSHWARI', 'MSHWARI', '0', 'MSHWARI', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_prd_grprel
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_grprel`;
CREATE TABLE `t_prd_grprel`  (
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_GRP_CD`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product group relation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_grprel
-- ----------------------------
INSERT INTO `t_prd_grprel` VALUES ('FULIZA', 'LONOVD01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194847', ' ', 'keT00002', '20200528', '194847', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000010');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'LONGEN01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'LONSLC01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'SAVGEN01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'SAVGOA01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'SAVLBX01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');
INSERT INTO `t_prd_grprel` VALUES ('MSHWARI', 'WALGEN01', '0', ' ', ' ', ' ', 'keT00001', '20200528', '194846', ' ', 'keT00002', '20200528', '194846', ' ', 'product.prd_d_5', 'completeFirstCheckbui_d_4098000000000009');

-- ----------------------------
-- Table structure for t_prd_intrate
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_intrate`;
CREATE TABLE `t_prd_intrate`  (
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method coding',
  `LAY_SEQ` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LAY_SEQ|Layered number',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Amount of tiered currency',
  `AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT_MIN|Amount lower limit',
  `AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT_MAX|Amount upper limit',
  `PRC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRC_TYPPricing method ',
  `BAS_RAT_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_ID|Product Interest rate id based on',
  `RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'PRD_RAT|Fixed product interest rate',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STATUS|Status',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_DT|Effective date',
  `EXT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_DT|Expiration date',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `FTL_VAL` decimal(6, 4) NOT NULL DEFAULT 0.0000 COMMENT 'RATE|Float value',
  `FTL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Floating mode',
  `RAT_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_TYP|Product rate type',
  `PRC_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Customer differentiated pricing floating mode',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`ACRM_NO`, `LAY_SEQ`, `CCY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product interest rate price table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_intrate
-- ----------------------------
INSERT INTO `t_prd_intrate` VALUES ('LQ001', '1', 'USD', 0.00, 0.00, '2', 'B02KESD01', 0.020000, '0', '20200716', ' ', ' ', 'keT00001', '20200529', '115711', ' ', 'keT00002', '20200716', '210053', '20200716210056+08', 'product.prd_d_5', ' ', 0.0200, '1', ' ', '0', 'W!completeFirstCheckbui_d_4322000000000001');
INSERT INTO `t_prd_intrate` VALUES ('SGSA', '1', 'USD', 0.00, 20000.00, '2', ' ', 0.020000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000001');
INSERT INTO `t_prd_intrate` VALUES ('SGSA', '2', 'USD', 20000.00, 50000.00, '2', ' ', 0.040000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000001');
INSERT INTO `t_prd_intrate` VALUES ('SGSA', '3', 'USD', 50000.00, 0.00, '2', ' ', 0.050000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000001');
INSERT INTO `t_prd_intrate` VALUES ('SLBOX', '1', 'USD', 0.00, 20000.00, '2', ' ', 0.030000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000002');
INSERT INTO `t_prd_intrate` VALUES ('SLBOX', '2', 'USD', 20000.00, 50000.00, '2', ' ', 0.050000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000002');
INSERT INTO `t_prd_intrate` VALUES ('SLBOX', '3', 'USD', 50000.00, 0.00, '2', ' ', 0.060000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeReviewbui_d_4110000000000002');
INSERT INTO `t_prd_intrate` VALUES ('SLIR', '1', 'USD', 0.00, 0.00, '2', ' ', 0.020000, '0', '20200528', ' ', ' ', 'keT00001', '20200528', '194847', ' ', ' ', '20200528', '194847', ' ', 'product.prd_d_5', ' ', 0.0000, ' ', ' ', ' ', 'completeFirstCheckbui_d_4110000000000004');

-- ----------------------------
-- Table structure for t_prd_irphis
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_irphis`;
CREATE TABLE `t_prd_irphis`  (
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method code',
  `LAY_SEQ` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LAY_SEQ|Layered number',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Amount of tiered currency',
  `EXP_DT_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Expiration datetime',
  `AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT_MIN|Amount lower limit',
  `AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT_MAX|Amount upper limit',
  `PRC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRC_TYPPricing method ',
  `BAS_RAT_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RAT_ID|Product Interest rate id based on',
  `RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'PRD_RAT|Fixed product interest rate',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STATUS|Status',
  `EFF_DT_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_DT|Effective date',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `FTL_VAL` decimal(6, 4) NOT NULL DEFAULT 0.0000 COMMENT 'RATE|Float value',
  `FTL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Floating mode',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`ACRM_NO`, `EXP_DT_TM`, `LAY_SEQ`, `CCY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product interest rate price table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_prd_lnacrm
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnacrm`;
CREATE TABLE `t_prd_lnacrm`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACRM_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'ACRM_TYP|Interest calculation method type',
  `ACRM_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_STS|Interest calculation method status',
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method number',
  `FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Product layer interest rate floating method',
  `FLT_MIN` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT 'FLT_MIN|Lower limit of interest rate spread at the account level',
  `FLT_MAX` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT 'FLT_MAX|Upper limit of interest rate spread at the account level',
  `PER_MIN` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PER_MIN|Lower limit of interest rate at the account level',
  `PER_MAX` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PER_MAX|Upper limit of interest rate at the account level',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TAX_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_CD|Tax rate code',
  PRIMARY KEY (`PRD_CD`, `ACRM_TYP`, `ACRM_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product rate calculation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnacrm
-- ----------------------------
INSERT INTO `t_prd_lnacrm` VALUES ('LONGEN01', '1', '0', 'LQ001', ' ', 0.0000, 0.0000, 0.0000, 0.0000, ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000001', ' ');
INSERT INTO `t_prd_lnacrm` VALUES ('LONOVD01', '0', '0', ' ', ' ', 0.0000, 0.0000, 0.0000, 0.0000, ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000002', ' ');
INSERT INTO `t_prd_lnacrm` VALUES ('LONSLC01', '0', '0', ' ', ' ', 0.0000, 0.0000, 0.0000, 0.0000, ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4098000000000004', ' ');

-- ----------------------------
-- Table structure for t_prd_lncomn
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lncomn`;
CREATE TABLE `t_prd_lncomn`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product Code',
  `COM_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COM_CODE|Commission code',
  `COM_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|The description about commssion',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  PRIMARY KEY (`PRD_CD`, `COM_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product commission table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_prd_lnctl
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnctl`;
CREATE TABLE `t_prd_lnctl`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CI_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Customer type limit flag',
  `KYC_STS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|KYC status limit flag',
  `MIN_KYC_LVL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'KYC_LVL|Minimum Customer KYC Level Allowed to Open Accounts',
  `ID_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether document id is limit ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'CCY|Currency',
  `AGE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'LMT_FLG|Applicable customer age mark',
  `AGE_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AGE|Minimum customer age limit',
  `AGE_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AGE|Customer maximum age',
  `LN_USE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_USE_TYP|Loan use type',
  `AMT_LMT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to limit the loan amount limit for a single loan contract',
  `AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum loan amount',
  `AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum loan amount',
  `OVD_AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum overdue amount',
  `OVD_AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum overdue amount',
  `TRM_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRM_TYP|Loan term structure type',
  `TRM_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TRM_VAL|Shortest loan term',
  `TRM_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TRM_VAL|Longest loan term',
  `TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Loan term unit',
  `HOL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HOL_FLG|Holiday expiration processing sign',
  `EXH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to allow extension',
  `PRT_EXH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to allow partial extension',
  `ATO_EXH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Automatic rollover flag',
  `MAX_EXH_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Maximum number of rollover',
  `MAX_EXH_PERD` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TRM_VAL|Maximum period that can be extended during the extension',
  `EXH_PERD_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Extension period unit',
  `ORG_EXH_PCT` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT 'PERCENT|Percent',
  `ADD_LON_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Loan additional allowed',
  `ADD_LON_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|The number that loan additional ',
  `REG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Register flag',
  `REG_PERD_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Date unit',
  `REG_PERD_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'REG_MAX|Customer has registered maximum time limit',
  `REG_PERD_MIN` bigint(20) NOT NULL DEFAULT 0 COMMENT 'REG_MIN|Customer has registered minimum time limit',
  `MAX_EXH_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Determination method of maximum extension period',
  `CI_AC_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max number of account the customer can owned',
  `USR_AC_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max number of account the user can owned',
  `MTG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether mortage is allowed',
  `CRB_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Credit reporting flag',
  `CRB_CNL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NUM|Credit channel',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `DSB_ACC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DSB_ACC_TYP|Disburse account type',
  `RST_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Loan restructure limit flag',
  `RST_FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Loan restructure facility fee flag',
  `MAX_RST_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max restructure number',
  `FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Charge fee flag',
  `COM_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Commission limit flag',
  `ADD_LON_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Allow first loan after N days',
  `CRB_MIN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|How many amounts in excess need CRB/KCB verification',
  `NPL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Check non-performing loan credit',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CHG_RSK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHG_RSK_FLG|Whether to change risk classification after reorganization',
  `GRACE_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Days of grace period',
  `NA_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'NA_FLG|Product customer nationality flag',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnctl
-- ----------------------------
INSERT INTO `t_prd_lnctl` VALUES ('LONGEN01', '1', 'N', 0, 'N', 'N', 'N', 18, 60, ' ', 'Y', 0.00, 999999.00, 0.00, 0.00, '1', 1, 31, 'D', '0', 'Y', ' ', 'Y', 1, 1, 'M', 0.00, 'N', 1, 'Y', 'M', 0, 0, '1', 999999, 1, 'N', 'N', ' ', ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', ' ', 'product.prd_d_5', '0', 'N', ' ', 1, 'N', ' ', 0, 0.00, 'N', 'W!completeFirstCheckmbu013000000000003', 'N', 0, 'N');
INSERT INTO `t_prd_lnctl` VALUES ('LONOVD01', '1', 'Y', 0, 'Y', 'N', 'Y', 18, 60, ' ', 'Y', 0.00, 0.00, 0.00, 99999999.00, '0', 0, 0, ' ', ' ', 'N', ' ', ' ', 0, 0, ' ', 0.00, 'N', 0, 'Y', 'M', 0, 0, ' ', 999999, 1, 'N', 'Y', ' ', ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', ' ', 'product.prd_d_5', '0', 'N', ' ', 0, 'N', ' ', 0, 0.00, 'N', 'completeReviewbui_d_4098000000000002', ' ', 0, 'N');
INSERT INTO `t_prd_lnctl` VALUES ('LONSLC01', '1', 'Y', 0, 'Y', 'N', 'Y', 18, 60, ' ', 'Y', 100.00, 50000.00, 0.00, 0.00, '1', 1, 30, 'D', '0', 'Y', ' ', 'Y', 1, 1, 'M', 0.00, 'Y', 1, 'Y', 'M', 0, 6, '0', 1, 1, 'Y', 'Y', ' ', ' ', 'keT00001', '20200528', '194848', ' ', 'keT00002', '20200528', '194848', ' ', ' ', 'product.prd_d_5', '0', 'N', ' ', 0, 'Y', ' ', 0, 0.00, 'N', 'completeFirstCheckbui_d_4098000000000004', ' ', 0, 'N');

-- ----------------------------
-- Table structure for t_prd_lnfee
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnfee`;
CREATE TABLE `t_prd_lnfee`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product Code',
  `FEE_CD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_CODE|Fee code',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Transaction type',
  `FEE_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|The description about fee',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Branch organization',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STATUS|Status',
  PRIMARY KEY (`PRD_CD`, `FEE_CD`, `TX_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product fee table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnfee
-- ----------------------------
INSERT INTO `t_prd_lnfee` VALUES ('LONGEN01', '100002', '1', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200528', '194849', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4103000000000013', '0');
INSERT INTO `t_prd_lnfee` VALUES ('LONGEN01', '200006', '4', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200528', '194849', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4103000000000013', '0');
INSERT INTO `t_prd_lnfee` VALUES ('LONSLC01', '100002', '1', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200528', '194849', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4103000000000015', '0');
INSERT INTO `t_prd_lnfee` VALUES ('LONSLC01', '200006', '4', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200528', '194849', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4103000000000015', '0');

-- ----------------------------
-- Table structure for t_prd_lnmtg
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnmtg`;
CREATE TABLE `t_prd_lnmtg`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `MTG_TYP` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRC_TYP|Mortage  type',
  `ATO_MTG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Auto mortage flag',
  `MTG_DSC` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Description',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Final maintenance agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last review operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last review date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last review time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `MTG_AMT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to use the mortgage amount',
  `MTG_ACC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_NUM_TYP|Number of mortgage accounts',
  `MTG_ORD_DIM` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MTG_ORD_TYP|Pledge order dimension',
  `MTG_PRD_TYP` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MTG_PRD_TYP|Pledge method',
  `DAY_LMT_LON` bigint(20) NOT NULL DEFAULT 0 COMMENT 'MGT_PCT|Days of loan restriction',
  `MTG_PCT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'MGT_PCT|Mortgage percent',
  `MIN_RDU_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Min reduce limit',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product mortgage table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnmtg
-- ----------------------------
INSERT INTO `t_prd_lnmtg` VALUES ('LONGEN01', ' ', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194850', ' ', ' ', '20200528', '194850', ' ', 'product.prd_d_5', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 'completeReviewbui_d_4098000000000001');
INSERT INTO `t_prd_lnmtg` VALUES ('LONOVD01', ' ', ' ', ' ', ' ', ' ', 'keT00001', '20200528', '194850', ' ', ' ', '20200528', '194850', ' ', 'product.prd_d_5', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 'completeReviewbui_d_4098000000000002');
INSERT INTO `t_prd_lnmtg` VALUES ('LONSLC01', '0', 'N', ' ', ' ', ' ', 'keT00001', '20200528', '194850', ' ', ' ', '20200528', '194850', ' ', 'product.prd_d_5', 'Y', ' ', ' ', '0', 0, 0.80, 1.00, 'completeFirstCheckbui_d_4098000000000004');

-- ----------------------------
-- Table structure for t_prd_lnpen
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnpen`;
CREATE TABLE `t_prd_lnpen`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PEN_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_MOD|Penalty method',
  `PEN_RDU_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'LMT_FLG|Whether need penalty interest ',
  `PEN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_TYP|Penalty interest rate value method',
  `PEN_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLT_FLG|Specify floating mode',
  `PEN_FLT_VAL` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty float value',
  `ACRM_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACRM_NO|Interest calculation method code',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product penalty parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnpen
-- ----------------------------
INSERT INTO `t_prd_lnpen` VALUES ('LONGEN01', '0', 'N', ' ', ' ', 0.000000, ' ', ' ', 'keT00001', '20200528', '194851', ' ', 'keT00002', '20200528', '194851', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000001');
INSERT INTO `t_prd_lnpen` VALUES ('LONOVD01', '0', 'N', ' ', ' ', 0.000000, ' ', ' ', 'keT00001', '20200528', '194851', ' ', 'keT00002', '20200528', '194851', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000002');
INSERT INTO `t_prd_lnpen` VALUES ('LONSLC01', '0', 'N', '1', '1', 0.001000, ' ', ' ', 'keT00001', '20200528', '194851', ' ', 'keT00002', '20200528', '194851', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4098000000000004');

-- ----------------------------
-- Table structure for t_prd_lnptf
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnptf`;
CREATE TABLE `t_prd_lnptf`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PTF_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_TYP|Portfolio type',
  `PTF_ACT_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_CD|Portfolio action code',
  `TRG_BEG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRG_TYP|Portfolio begin  trigger  type',
  `TRG_END_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRG_TYP|Portfolio end  trigger  type',
  `TRG_BEG_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|Advance notice days',
  `TRG_END_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PTF_ACT_TYP|The type of portfolio action parmter',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `PTF_ACT_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_TYP|Portfolio action type',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STATUS|Status',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PTF_ACT_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product portfolio table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnptf
-- ----------------------------
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000004', '1', ' ', 10, 0, ' ', ' ', 'keT00001', '20200706', '141323', ' ', 'keT00001', '20200706', '141323', '20200706141323', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000006', '1', ' ', 15, 0, ' ', ' ', 'keT00001', '20200706', '141324', ' ', 'keT00001', '20200706', '141324', '20200706141324', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000008', '1', ' ', 20, 0, ' ', ' ', 'keT00001', '20200706', '141325', ' ', 'keT00001', '20200706', '141325', '20200706141325', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000009', '1', ' ', 25, 0, ' ', ' ', 'keT00001', '20200706', '141325', ' ', 'keT00001', '20200706', '141325', '20200706141325', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000010', '1', ' ', 28, 0, ' ', ' ', 'keT00001', '20200706', '141326', ' ', 'keT00001', '20200706', '141326', '20200706141326', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000012', '1', ' ', 31, 0, ' ', ' ', 'keT00001', '20200706', '141327', ' ', 'keT00001', '20200706', '141327', '20200706141327', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000016', '1', ' ', 35, 0, ' ', ' ', 'keT00001', '20200706', '141329', ' ', 'keT00001', '20200706', '141329', '20200706141329', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000017', '1', ' ', 40, 0, ' ', ' ', 'keT00001', '20200706', '141329', ' ', 'keT00001', '20200706', '141329', '20200706141329', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000018', '1', ' ', 55, 0, ' ', ' ', 'keT00001', '20200706', '141330', ' ', 'keT00001', '20200706', '141330', '20200706141330', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000022', '1', ' ', 63, 0, ' ', ' ', 'keT00001', '20200706', '141332', ' ', 'keT00001', '20200706', '141332', '20200706141332', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000023', '1', ' ', 75, 0, ' ', ' ', 'keT00001', '20200706', '141332', ' ', 'keT00001', '20200706', '141332', '20200706141332', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000024', '1', ' ', 85, 0, ' ', ' ', 'keT00001', '20200706', '141333', ' ', 'keT00001', '20200706', '141333', '20200706141333', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000025', '1', ' ', 90, 0, ' ', ' ', 'keT00001', '20200706', '141333', ' ', 'keT00001', '20200706', '141333', '20200706141333', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000026', '1', ' ', 91, 0, ' ', ' ', 'keT00001', '20200706', '141334', ' ', 'keT00001', '20200706', '141334', '20200706141334', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000027', '1', ' ', 113, 0, ' ', ' ', 'keT00001', '20200706', '141334', ' ', 'keT00001', '20200706', '141334', '20200706141334', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9000028', '1', ' ', 120, 0, ' ', ' ', 'keT00001', '20200706', '141335', ' ', 'keT00001', '20200706', '141335', '20200706141335', 'product.product_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000051', '1', ' ', 25, 0, ' ', ' ', 'keT00001', '20200706', '141336', ' ', 'keT00002', '20200706', '141336', '20200706141336', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000052', '1', ' ', 28, 0, ' ', ' ', 'keT00001', '20200706', '141336', ' ', 'keT00002', '20200706', '141336', '20200706141336', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000053', '1', ' ', 30, 0, ' ', ' ', 'keT00001', '20200706', '141337', ' ', 'keT00002', '20200706', '141337', '20200706141337', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000054', '1', ' ', 31, 0, ' ', ' ', 'keT00001', '20200706', '141337', ' ', 'keT00002', '20200706', '141337', '20200706141337', 'product.prd_d_5', '21', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000055', '1', ' ', 35, 0, ' ', ' ', 'keT00001', '20200706', '141338', ' ', 'keT00002', '20200706', '141338', '20200706141338', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000056', '1', ' ', 40, 0, ' ', ' ', 'keT00001', '20200706', '141338', ' ', 'keT00002', '20200706', '141338', '20200706141338', 'product.prd_d_5', '22', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000057', '1', ' ', 45, 0, ' ', ' ', 'keT00001', '20200706', '141339', ' ', 'keT00002', '20200706', '141339', '20200706141339', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000058', '1', ' ', 50, 0, ' ', ' ', 'keT00001', '20200706', '141339', ' ', 'keT00002', '20200706', '141339', '20200706141339', 'product.prd_d_5', '22', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000059', '1', ' ', 55, 0, ' ', ' ', 'keT00001', '20200706', '141340', ' ', 'keT00002', '20200706', '141340', '20200706141340', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000060', '1', ' ', 58, 0, ' ', ' ', 'keT00001', '20200706', '141340', ' ', 'keT00002', '20200706', '141340', '20200706141340', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000061', '1', ' ', 60, 0, ' ', ' ', 'keT00001', '20200706', '141341', ' ', 'keT00002', '20200706', '141341', '20200706141341', 'product.prd_d_5', '22', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000062', '1', ' ', 61, 0, ' ', ' ', 'keT00001', '20200706', '141341', ' ', 'keT00002', '20200706', '141341', '20200706141341', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000063', '1', ' ', 61, 0, ' ', ' ', 'keT00001', '20200706', '141342', ' ', 'keT00002', '20200706', '141342', '20200706141342', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000064', '1', ' ', 65, 0, ' ', ' ', 'keT00001', '20200706', '141343', ' ', 'keT00002', '20200706', '141343', '20200706141343', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000065', '1', ' ', 70, 0, ' ', ' ', 'keT00001', '20200706', '141343', ' ', 'keT00002', '20200706', '141343', '20200706141343', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000066', '1', ' ', 70, 0, ' ', ' ', 'keT00001', '20200706', '141344', ' ', 'keT00002', '20200706', '141344', '20200706141344', 'product.prd_d_5', '22', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000067', '1', ' ', 75, 0, ' ', ' ', 'keT00001', '20200706', '141345', ' ', 'keT00002', '20200706', '141345', '20200706141345', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000068', '1', ' ', 80, 0, ' ', ' ', 'keT00001', '20200706', '141345', ' ', 'keT00002', '20200706', '141345', '20200706141345', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000069', '1', ' ', 80, 0, ' ', ' ', 'keT00001', '20200706', '141346', ' ', 'keT00002', '20200706', '141346', '20200706141346', 'product.prd_d_5', '22', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000070', '1', ' ', 85, 0, ' ', ' ', 'keT00001', '20200706', '141346', ' ', 'keT00002', '20200706', '141346', '20200706141346', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000071', '1', ' ', 90, 0, ' ', ' ', 'keT00001', '20200706', '141347', ' ', 'keT00002', '20200706', '141347', '20200706141347', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000072', '1', ' ', 90, 0, ' ', ' ', 'keT00001', '20200706', '141347', ' ', 'keT00002', '20200706', '141347', '20200706141347', 'product.prd_d_5', '23', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000073', '1', ' ', 91, 0, ' ', ' ', 'keT00001', '20200706', '141348', ' ', 'keT00002', '20200706', '141348', '20200706141348', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000074', '1', ' ', 95, 0, ' ', ' ', 'keT00001', '20200706', '141348', ' ', 'keT00002', '20200706', '141348', '20200706141348', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000075', '1', ' ', 100, 0, ' ', ' ', 'keT00001', '20200706', '141349', ' ', 'keT00002', '20200706', '141349', '20200706141349', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000076', '1', ' ', 105, 0, ' ', ' ', 'keT00001', '20200706', '141349', ' ', 'keT00002', '20200706', '141349', '20200706141349', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000077', '1', ' ', 110, 0, ' ', ' ', 'keT00001', '20200706', '141350', ' ', 'keT00002', '20200706', '141350', '20200706141350', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000078', '1', ' ', 115, 0, ' ', ' ', 'keT00001', '20200706', '141350', ' ', 'keT00002', '20200706', '141350', '20200706141350', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000079', '1', ' ', 120, 0, ' ', ' ', 'keT00001', '20200706', '141351', ' ', 'keT00002', '20200706', '141351', '20200706141351', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000080', '1', ' ', 121, 0, ' ', ' ', 'keT00001', '20200706', '141351', ' ', 'keT00002', '20200706', '141351', '20200706141351', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000081', '1', ' ', 122, 0, ' ', ' ', 'keT00001', '20200706', '141352', ' ', 'keT00002', '20200706', '141352', '20200706141352', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONOVD01', '0', '9000082', '1', ' ', 125, 0, ' ', ' ', 'keT00001', '20200706', '141352', ' ', 'keT00002', '20200706', '141352', '20200706141352', 'product.prd_d_5', '00', '0', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9001001', '1', ' ', 31, 0, ' ', ' ', 'keT00001', '20200611', '141528', ' ', 'keT00002', '20200611', '141528', '20200611141528', 'prd_region.prd', '11', '0', 'W!completeFirstCheckmbu002000000000001', ' ', '20200611141528', ' ', '20200611141528');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '1', '9001002', '1', ' ', 60, 0, ' ', ' ', 'keT00001', '20200611', '141528', ' ', 'keT00002', '20200611', '141528', '20200611141528', 'prd_region.prd', '25', '0', 'W!completeFirstCheckmbu002000000000002', ' ', '20200611141528', ' ', '20200611141528');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '1', '9001003', '1', ' ', 62, 0, ' ', ' ', 'keT00001', '20200611', '141529', ' ', 'keT00002', '20200611', '141529', '20200611141529', 'prd_region.prd', '11', '0', 'W!completeFirstCheckmbu002000000000003', ' ', '20200611141529', ' ', '20200611141529');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9001004', '1', ' ', 61, 0, ' ', ' ', 'keT00001', '20200611', '141529', ' ', 'keT00002', '20200611', '141529', '20200611141529', 'prd_region.prd', '03', '0', 'W!completeFirstCheckmbu002000000000004', ' ', '20200611141529', ' ', '20200611141529');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9001005', '1', ' ', 31, 0, ' ', ' ', 'keT00001', '20200611', '141529', ' ', 'keT00002', '20200611', '141529', '20200611141529', 'prd_region.prd', '10', '0', 'W!completeFirstCheckmbu002000000000005', ' ', '20200611141529', ' ', '20200611141529');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9001006', '1', ' ', 60, 0, ' ', ' ', 'keT00001', '20200611', '141529', ' ', 'keT00002', '20200611', '141529', '20200611141529', 'prd_region.prd', '22', '0', 'W!completeFirstCheckmbu002000000000006', ' ', '20200611141529', ' ', '20200611141529');
INSERT INTO `t_prd_lnptf` VALUES ('LONGEN01', '0', '9001007', '1', ' ', 90, 0, ' ', ' ', 'keT00001', '20200611', '141529', ' ', 'keT00002', '20200611', '141529', '20200611141529', 'prd_region.prd', '23', '0', 'W!completeFirstCheckmbu002000000000007', ' ', '20200611141529', ' ', '20200611141529');

-- ----------------------------
-- Table structure for t_prd_lnptfp
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnptfp`;
CREATE TABLE `t_prd_lnptfp`  (
  `PTF_ACT_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_CD|Portfolio action code',
  `PRM_SEQ` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEQ_NO|Sequence number',
  `PTF_ACT_OBJ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_TYP|Portfolio action object',
  `PRM_VAL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'PRM_VAL|Portfolio paramter value',
  `PRM_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'PTF_PRM_TYP|The parameter type of portofolio',
  `PRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_PRM_UNT|The parmter unit of portfolio ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STATUS|Status',
  PRIMARY KEY (`PTF_ACT_CD`, `PRM_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product portfolio parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnptfp
-- ----------------------------
INSERT INTO `t_prd_lnptfp` VALUES ('9000004', '1', '0', 'LNS_5112_04', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141248', ' ', 'keT00001', '20200706', '141248', '20200706141248', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000006', '1', '0', 'LNS_5112_06', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141249', ' ', 'keT00001', '20200706', '141249', '20200706141249', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000008', '1', '0', 'LNS_5112_08', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141250', ' ', 'keT00001', '20200706', '141250', '20200706141250', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000009', '1', '0', 'LNS_5112_09', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141250', ' ', 'keT00001', '20200706', '141250', '20200706141250', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000010', '1', '0', 'LNS_5112_10', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141251', ' ', 'keT00001', '20200706', '141251', '20200706141251', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000012', '1', '0', 'LNS_5112_14', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141252', ' ', 'keT00001', '20200706', '141252', '20200706141252', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000016', '1', '0', 'LNS_5112_16', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141254', ' ', 'keT00001', '20200706', '141254', '20200706141254', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000017', '1', '0', 'LNS_5112_17', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141255', ' ', 'keT00001', '20200706', '141255', '20200706141255', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000018', '1', '0', 'LNS_10E0_01', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141255', ' ', 'keT00001', '20200706', '141255', '20200706141255', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000022', '1', '0', 'LNS_10E0_04', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141259', ' ', 'keT00001', '20200706', '141259', '20200706141259', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000023', '1', '0', 'LNS_10E0_05', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141300', ' ', 'keT00001', '20200706', '141300', '20200706141300', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000024', '1', '0', 'LNS_10E0_06', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141300', ' ', 'keT00001', '20200706', '141300', '20200706141300', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000025', '1', '0', 'LNS_10E0_07', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141300', ' ', 'keT00001', '20200706', '141300', '20200706141300', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000026', '1', '0', 'LNS_10E0_08', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141301', ' ', 'keT00001', '20200706', '141301', '20200706141301', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000027', '1', '0', 'LNS_10E0_09', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141301', ' ', 'keT00001', '20200706', '141301', '20200706141301', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000028', '1', '0', 'LNS_10E0_10', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141302', ' ', 'keT00001', '20200706', '141302', '20200706141302', 'product.product_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000051', '1', '0', 'LNS_5112_19', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141303', ' ', 'keT00002', '20200706', '141303', '20200706141303', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000052', '1', '0', 'LNS_5112_20', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141303', ' ', 'keT00002', '20200706', '141303', '20200706141303', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000053', '1', '0', 'LNS_5112_21', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141304', ' ', 'keT00002', '20200706', '141304', '20200706141304', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000054', '1', ' ', 'LNS_5112_22', '08', ' ', ' ', ' ', 'keT00001', '20200706', '141304', ' ', 'keT00002', '20200706', '141304', '20200706141304', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000055', '1', '0', 'LNS_10E0_11', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141305', ' ', 'keT00002', '20200706', '141305', '20200706141305', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000056', '1', '0', 'LNS_10E0_12', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141305', ' ', 'keT00002', '20200706', '141305', '20200706141305', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000056', '2', '0', '80', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141306', ' ', 'keT00002', '20200706', '141306', '20200706141306', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000056', '3', '0', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000057', '1', '0', 'LNS_10E0_13', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141306', ' ', 'keT00002', '20200706', '141306', '20200706141306', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000058', '1', '0', 'LNS_10E0_14', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141307', ' ', 'keT00002', '20200706', '141307', '20200706141307', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000058', '2', '0', '50', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141307', ' ', 'keT00002', '20200706', '141307', '20200706141307', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000058', '3', '0', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000059', '1', '0', 'LNS_10E0_15', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141308', ' ', 'keT00002', '20200706', '141308', '20200706141308', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000060', '1', '0', 'LNS_10E0_16', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141308', ' ', 'keT00002', '20200706', '141308', '20200706141308', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000061', '1', '0', 'LNS_10E0_17', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141309', ' ', 'keT00002', '20200706', '141309', '20200706141309', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000061', '2', '0', '0', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141309', ' ', 'keT00002', '20200706', '141309', '20200706141309', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000061', '3', '0', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000062', '1', '0', 'LNS_10E0_18', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141310', ' ', 'keT00002', '20200706', '141310', '20200706141310', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000063', '1', '0', 'LNS_10E0_19', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141310', ' ', 'keT00002', '20200706', '141310', '20200706141310', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000064', '1', '0', 'LNS_5112_23', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141311', ' ', 'keT00002', '20200706', '141311', '20200706141311', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000065', '1', '0', 'LNS_5112_24', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141311', ' ', 'keT00002', '20200706', '141311', '20200706141311', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000066', '1', '1', 'LNS_10E0_20', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141312', ' ', 'keT00002', '20200706', '141312', '20200706141312', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000066', '2', '1', '80', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141312', ' ', 'keT00002', '20200706', '141312', '20200706141312', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000066', '3', '1', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000067', '1', '0', 'LNS_5112_25', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141313', ' ', 'keT00002', '20200706', '141313', '20200706141313', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000068', '1', '0', 'LNS_5112_26', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141313', ' ', 'keT00002', '20200706', '141313', '20200706141313', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000069', '1', '1', 'LNS_10E0_21', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141314', ' ', 'keT00002', '20200706', '141314', '20200706141314', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000069', '2', '1', '50', '06', ' ', ' ', ' ', 'keT00001', '20200706', '141314', ' ', 'keT00002', '20200706', '141314', '20200706141314', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000069', '3', '1', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000070', '1', '0', 'LNS_5112_27', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141315', ' ', 'keT00002', '20200706', '141315', '20200706141315', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000071', '1', '0', 'LNS_5112_28', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141316', ' ', 'keT00002', '20200706', '141316', '20200706141316', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000072', '1', '1', 'LNS_10E0_22', '07', ' ', ' ', ' ', 'keT00001', '20200706', '141316', ' ', 'keT00002', '20200706', '141316', '20200706141316', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000073', '1', '0', 'LNS_5112_29', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141317', ' ', 'keT00002', '20200706', '141317', '20200706141317', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000074', '1', '0', 'LNS_5112_30', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141317', ' ', 'keT00002', '20200706', '141317', '20200706141317', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000075', '1', '0', 'LNS_5112_31', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141318', ' ', 'keT00002', '20200706', '141318', '20200706141318', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000076', '1', '0', 'LNS_5112_32', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141318', ' ', 'keT00002', '20200706', '141318', '20200706141318', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000077', '1', '0', 'LNS_5112_33', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141318', ' ', 'keT00002', '20200706', '141318', '20200706141318', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000078', '1', '0', 'LNS_5112_34', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141319', ' ', 'keT00002', '20200706', '141319', '20200706141319', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000079', '1', '0', 'LNS_5112_35', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141319', ' ', 'keT00002', '20200706', '141319', '20200706141319', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000080', '1', '0', 'LNS_5112_36', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141320', ' ', 'keT00002', '20200706', '141320', '20200706141320', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000081', '1', '0', 'LNS_5112_37', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141320', ' ', 'keT00002', '20200706', '141320', '20200706141320', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9000082', '1', '0', 'LNS_5112_38', '0', ' ', ' ', ' ', 'keT00001', '20200706', '141321', ' ', 'keT00002', '20200706', '141321', '20200706141321', 'product.prd_d_5', ' ', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001001', '1', ' ', '0', '10', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001002', '1', 'U', 'LNS_10E0_03', '04', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000002', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001002', '2', 'U', '30', '04', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000002', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001003', '1', ' ', '0', '10', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000003', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001004', '1', ' ', '0', '01', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000004', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001005', '1', ' ', '0', '03', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000005', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001006', '1', '2', 'LNS_10E0_02', '06', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000006', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001006', '2', '2', '80', '06', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000006', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001006', '3', '2', '0', '06', ' ', ' ', ' ', 'keT00001', ' ', ' ', ' ', 'keT00002', '20200713', '165129', '20200713165130+08', 'prd_region.prd', 'W!completeFirstCheckmbu003000000000001', '0');
INSERT INTO `t_prd_lnptfp` VALUES ('9001007', '1', '2', 'LNS_10E0_08', '07', ' ', ' ', ' ', 'keT00001', '20200611', '141530', ' ', 'keT00002', '20200611', '141530', '20200611141530', 'prd_region.prd', 'W!completeFirstCheckmbu002000000000007', '0');

-- ----------------------------
-- Table structure for t_prd_lnrepay
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnrepay`;
CREATE TABLE `t_prd_lnrepay`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RPY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|The flag whether limit the repay type',
  `RPY_DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_DT_TYP|The type of repay date',
  `FST_TM_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_TM_FLG|Normal repayment parameter-first phase determination method',
  `FST_PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'FST_PAY_FLG|Normal repayment parameter-equal amount of principal and interest',
  `STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STL_TYP|Settle type',
  `OVD_PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OVD_PAY_FLG|Overdue repayment parameters-overdue payment method',
  `OVD_PRI_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OVD_PRI_FLG|Overdue repayment parameters-overdue repayment priority',
  `ADV_RPY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Overdue repayment parameters-early repayment flag',
  `CUR_AFT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CUR_AFT_FLG|Overdue repayment parameters-late period sign',
  `ADV_PAY_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Advance repay terms',
  `ADV_PAY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Advance repay days',
  `PAY_LMT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether limit the amount to  repay ',
  `AMT_MIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue repayment parameters-minimum early repayment amount',
  `AMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue repayment parameters-maximum early repayment amount',
  `PER_MIN` decimal(6, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PER_RATE|Overdue repayment parameters-minimum early repayment ratio',
  `PER_MAX` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PER_RATE|Overdue repayment parameters-maximum early repayment ratio',
  `PAY_CHG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_CHG_TYP|Repayment plan adjustment method type',
  `CUR_INT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CUR_INT_TYP|Overdue repayment parameters-current interest treatment',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `OVD_SEQ_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whethe set repay sequence',
  `OVD_STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STL_TYP|Overdue settle type',
  `ADV_STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STL_TYP|Prepayment settle type',
  `WOF_STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'STL_TYP|Write-back settle type',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan repay parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnrepay
-- ----------------------------
INSERT INTO `t_prd_lnrepay` VALUES ('LN001', 'Y', ' ', ' ', '0', '1', '2', '1', 'Y', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, '3', '0', ' ', 'keT00001', '20200617', '162000', ' ', ' ', '20200902', '153734', '20200902153734+08', 'product.prd_d_5', ' ', 'Y', '1', '1', '1', 'W!completeFirstCheckbui_d_4851000000000001');
INSERT INTO `t_prd_lnrepay` VALUES ('LONGEN01', 'Y', ' ', ' ', '0', '1', '1', '2', 'Y', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, '1', '0', ' ', 'keT00001', '20200528', '194859', ' ', ' ', '20200902', '191140', '20200902191140+08', 'product.prd_d_5', ' ', 'Y', '1', '1', '1', 'W!completeFirstCheckbui_d_4855000000000001');
INSERT INTO `t_prd_lnrepay` VALUES ('LONOVD01', 'Y', ' ', ' ', '0', '2', '2', '2', 'N', ' ', 0, 3, 'Y', 200.00, 0.00, 0.3000, 0, '3', '0', ' ', 'keT00001', '20200528', '194859', ' ', ' ', '20200817', '153911', '20200817153915+08', 'product.prd_d_5', ' ', 'Y', '1', '1', '1', 'W!completeFirstCheckbui_d_4626000000000013');
INSERT INTO `t_prd_lnrepay` VALUES ('LONSLC01', 'Y', ' ', ' ', '0', '1', '2', '1', 'Y', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, '1', '0', ' ', 'keT00001', '20200528', '194859', ' ', ' ', '20200605', '160616', '20200605160620+08', 'product.prd_d_5', ' ', 'Y', '1', '2', '2', 'W!completeFirstCheckmbu015000000000001');
INSERT INTO `t_prd_lnrepay` VALUES ('LZT001', 'N', ' ', ' ', '0', '1', '2', '1', 'Y', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, '1', '0', ' ', 'keT00001', '20200611', '154432', ' ', ' ', '20200902', '160856', '20200902160856+08', 'product.prd_d_5', ' ', 'Y', '1', '1', '1', 'W!completeFirstCheckbui_d_4851000000000006');
INSERT INTO `t_prd_lnrepay` VALUES ('STDLONGL01', 'Y', ' ', ' ', '0', '1', '2', '1', 'Y', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, '2', '0', ' ', 'keT00001', '20200529', '115358', ' ', ' ', '20200827', '153131', '20200827153135+08', 'product.prd_d_5', ' ', 'Y', '1', '1', '1', 'W!completeFirstCheckbui_d_4737000000000008');
INSERT INTO `t_prd_lnrepay` VALUES ('STDLONOD01', 'Y', ' ', ' ', '0', '1', '2', '2', 'N', ' ', 0, 0, 'Y', 0.00, 0.00, 0.0000, 0, ' ', ' ', ' ', 'keT00001', '20200604', '160203', ' ', ' ', '20200731', '102531', '20200731102535+08', 'product.prd_d_5', ' ', 'Y', '1', '0', '2', 'W!completeFirstCheckbui_d_4505000000000003');

-- ----------------------------
-- Table structure for t_prd_lnrepayp
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnrepayp`;
CREATE TABLE `t_prd_lnrepayp`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PAY_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_TYP|Optional repayment method',
  `RPY_DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_DT_TYP|The type of repay date',
  `FST_TM_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_TM_FLG|Determination method of the first phase',
  `FST_PAY_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_PAY_FLG|Initial treatment of equal principal and interest',
  `PAY_FRQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Repayment frequency',
  `PAY_FRQ_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNT|Repayment frequency unit',
  `RPY_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Repayment Date',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `RPY_MON` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PRD_MON|Repayment month',
  `RPY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PRD_DAY|Repayment day',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`, `PAY_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan repayment parameters' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnrepayp
-- ----------------------------
INSERT INTO `t_prd_lnrepayp` VALUES ('LONSLC01', '02', '1', ' ', ' ', 1, 'M', ' ', ' ', ' ', 'keT00001', '20200321', '114440', ' ', 'keT00002', '20200321', '114440', ' ', 'product.prd_d_5', 0, 0, 'completeFirstCheckbui_d_4098000000000004');
INSERT INTO `t_prd_lnrepayp` VALUES ('LONSLC01', '03', '3', ' ', ' ', 30, 'D', ' ', ' ', ' ', 'keT00001', '20200321', '114440', ' ', 'keT00002', '20200321', '114440', ' ', 'product.prd_d_5', 0, 0, 'completeFirstCheckbui_d_4098000000000004');

-- ----------------------------
-- Table structure for t_prd_lnrpc
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnrpc`;
CREATE TABLE `t_prd_lnrpc`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RPC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Whether to reprice',
  `RPC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPC_MOD|Reprice mode',
  `RPC_FRQ_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Reprice cycle unit',
  `RPC_FRQ_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Create num',
  `RPC_MON` bigint(20) NOT NULL DEFAULT 0 COMMENT 'RES_MON|The first few months of the repricing cycle',
  `RPC_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|The number of the month of the repricing cycle',
  `RPC_FLT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RES_FLT_TYP|Repricing floating direction limit',
  `RPC_ADJ_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RES_ADJ_FLG|Time to adjust interest rate when repricing',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product reprice parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnrpc
-- ----------------------------
INSERT INTO `t_prd_lnrpc` VALUES ('LONGEN01', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' ', 'keT00001', '20200528', '195854', ' ', 'keT00002', '20200528', '195854', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000001');
INSERT INTO `t_prd_lnrpc` VALUES ('LONOVD01', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' ', 'keT00001', '20200528', '195854', ' ', 'keT00002', '20200528', '195854', ' ', 'product.prd_d_5', ' ', 'completeReviewbui_d_4098000000000002');
INSERT INTO `t_prd_lnrpc` VALUES ('LONSLC01', ' ', ' ', ' ', 0, 0, 0, ' ', ' ', ' ', 'keT00001', '20200528', '195854', ' ', 'keT00002', '20200528', '195854', ' ', 'product.prd_d_5', ' ', 'completeFirstCheckbui_d_4098000000000004');

-- ----------------------------
-- Table structure for t_prd_lnrsc
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnrsc`;
CREATE TABLE `t_prd_lnrsc`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ATO_TRF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATO_TRF_FLG|Morphological transfer parameter-automatic transfer overdue',
  `PRV_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Prepare flag',
  `OVD_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OVD_MOD|Morphological transfer parameter-transfer overdue method',
  `TNSC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TNSC_FLG|Morphological transfer parameter-non-accrual flag',
  `RSK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Risk classification parameter-whether risk classification',
  `ATO_RSK_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATO_RSK_TYP|Risk classification parameter-automatic risk classification',
  `RSK_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Risk classification parameter-risk classification code',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create timed',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TRF_OVD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRF_OVD_TYP|Transfer to overdue type',
  `OVD_DAY_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|The number of days',
  `RSC_RUL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSC_RUL_TYP|Risk classify rule type',
  `SUP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FLG|Suspension Option',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `OVD_AC_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Overdue account type',
  `SUP_TRG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Suspension trigger type',
  `SUP_DAY_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'days',
  `SUP_AC_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT ' Suspension account type',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan risk classify parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnrsc
-- ----------------------------
INSERT INTO `t_prd_lnrsc` VALUES ('LONGEN01', '1', ' ', '2', ' ', ' ', '1', 'CBK', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', '1', 180, '0', '1', 'W!completeFirstCheckmbu013000000000003', '636', '1', 120, '305');
INSERT INTO `t_prd_lnrsc` VALUES ('LONOVD01', '1', ' ', '2', ' ', ' ', '1', 'FCBK', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', '0', 0, '0', '0', 'completeReviewbui_d_4098000000000002', ' ', ' ', 0, '305');
INSERT INTO `t_prd_lnrsc` VALUES ('LONSLC01', '1', ' ', '2', ' ', ' ', '1', 'CBK', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', '1', 180, '0', '1', 'completeFirstCheckbui_d_4098000000000004', '636', '3', 90, '305');

-- ----------------------------
-- Table structure for t_prd_lnstm
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_lnstm`;
CREATE TABLE `t_prd_lnstm`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CHK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'CHK_FLG|Statement of delivery',
  `CHK_FRQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Number of billing period',
  `CHK_FRQ_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Statement delivery period unit',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `STM_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Statement number limit',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan product statement table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_lnstm
-- ----------------------------
INSERT INTO `t_prd_lnstm` VALUES ('LONGEN01', 'N', 0, ' ', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', 5, 'completeReviewbui_d_4098000000000001');
INSERT INTO `t_prd_lnstm` VALUES ('LONOVD01', 'N', 0, ' ', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', 5, 'completeReviewbui_d_4098000000000002');
INSERT INTO `t_prd_lnstm` VALUES ('LONSLC01', 'N', 1, 'Q', ' ', 'keT00001', '20200528', '194901', ' ', 'keT00002', '20200528', '194901', ' ', 'product.prd_d_5', ' ', 5, 'completeFirstCheckbui_d_4098000000000004');

-- ----------------------------
-- Table structure for t_prd_master
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_master`;
CREATE TABLE `t_prd_master`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NM|Product name',
  `PRD_DSC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Product description',
  `PRD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_STS|Product status',
  `BUS_ATR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_ATTR|Business nature',
  `PRD_OWN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_OWN|Product ownership',
  `TRI_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRI_MOD|Third-party product cooperation',
  `DLV_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DLV_MOD|Product delivery model',
  `PRD_LNK_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_LNK|Product partner',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Product release time',
  `EXT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Product end date',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_CTG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_CTG|Account category',
  `PRD_CAL_CD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAL_CD|Product calendar code',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product base information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_master
-- ----------------------------
INSERT INTO `t_prd_master` VALUES ('LONGEN01', 'General loan', 'General loan', '0', '1', ' ', ' ', '1', ' ', '20200528', '20301231', '205', '3', 'KE', ' ', 'keT00001', '20200528', '194902', ' ', 'keT00002', '20200528', '194902', ' ', '20200528194902', 'product.prd_d_5', '11', 'completeReviewbui_d_4098000000000001', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_master` VALUES ('LONOVD01', 'Overdraft', 'Overdraft', '0', '1', ' ', ' ', '1', ' ', '20200528', '20301231', '206', '4', 'KE', ' ', 'keT00001', '20200528', '194902', ' ', 'keT00002', '20200528', '194902', ' ', '20200528194902', 'product.prd_d_5', '13', 'completeReviewbui_d_4098000000000002', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_master` VALUES ('LONSLC01', 'Saving linked credit', 'Saving linked credit', '0', '1', ' ', ' ', '1', ' ', '20200528', '20301231', '201', '3', 'KE', ' ', 'keT00001', '20200528', '194902', ' ', 'keT00002', '20200528', '194902', ' ', '20200528194902', 'product.prd_d_5', '12', 'completeFirstCheckbui_d_4098000000000004', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_master` VALUES ('SAVGEN01', 'General saving', 'General saving', '0', '2', ' ', ' ', '1', ' ', '20200528', '20301231', '106', '2', 'KE', ' ', 'keT00001', '20200528', '194902', ' ', 'keT00002', '20200528', '194902', ' ', '20200528194902', 'product.prd_d_5', '01', 'completeReviewbui_d_4094000000000003', 'keT00002', ' ', ' ', ' ');
INSERT INTO `t_prd_master` VALUES ('SAVLBX01', 'Lockbox', 'Lockbox', '0', '2', ' ', ' ', '1', ' ', '20200528', '20301231', '107', '2', 'KE', ' ', 'keT00001', '20200528', '194902', ' ', 'keT00002', '20200528', '224252', ' ', '20200528224258+08', 'product.prd_d_5', '02', 'W!completeFirstCheckbui_d_4750000000000003', 'keT00002', '20200528224226', ' ', '20200528224252');

-- ----------------------------
-- Table structure for t_prd_oth
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_oth`;
CREATE TABLE `t_prd_oth`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `OBJ_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OBJ_TYP|Applicable object type',
  `OBJ_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OBJ_CD|Applicable object code',
  `OBJ_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|The sequence number of the object',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Status',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`PRD_CD`, `OBJ_TYP`, `OBJ_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product other parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_oth
-- ----------------------------
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '005', '1', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '00', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '01', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '02', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '03', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '04', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '006', '99', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '007', '02', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '104', '01', 0, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '108', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '108', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '108', '90', 3, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '109', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '109', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '109', '90', 3, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '110', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '110', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '110', '90', 3, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '111', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '111', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '111', '90', 3, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '501', '0', 1, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '503', '1', 1, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONGEN01', '503', '2', 2, '0', ' ', ' ', '20200528', '194903', ' ', 'keT00002', '20200528', '194903', '20200528194903', 'product.prd_d_5', ' ', 'W!completeFirstCheckmbu013000000000003');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '005', '1', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '00', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '01', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '02', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '03', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '04', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '006', '99', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '007', '02', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '008', '1', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '104', '05', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '109', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '109', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '109', '90', 3, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '111', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '111', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '111', '90', 3, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '501', '0', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '503', ' ', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONOVD01', '503', '1', 1, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000006');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '005', '1', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '00', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '01', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '02', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '03', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '04', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '006', '99', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '007', '02', 0, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '008', '1', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '104', '01', 0, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '108', '1', 1, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '108', '2', 2, '0', ' ', ' ', '20200528', '194904', ' ', 'keT00002', '20200528', '194904', '20200528194904', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '108', '90', 3, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '109', '1', 1, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '109', '2', 2, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '109', '90', 3, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '501', '0', 1, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '501', '3', 2, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '502', '1', 1, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '502', '2', 2, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '503', '1', 1, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('LONSLC01', '503', '2', 2, '0', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000008');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '005', '1', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '00', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '01', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '02', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '03', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '04', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '006', '99', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '301', '01', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '301', '03', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '302', '1', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGEN01', '302', '2', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4743000000000013');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '005', '1', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '00', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '01', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '02', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '03', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '04', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '006', '99', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '301', '01', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '301', '02', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '301', '03', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '302', '1', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVGOA01', '302', '2', 0, ' ', ' ', ' ', '20200528', '194905', ' ', 'keT00002', '20200528', '194905', '20200528194905', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000002');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '005', '1', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '00', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '01', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '02', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '03', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '04', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '006', '99', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '301', '01', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '301', '02', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '301', '03', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '302', '1', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('SAVLBX01', '302', '2', 0, ' ', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200528', '224252', '20200528224258+08', 'product.prd_d_5', ' ', 'W!completeFirstCheckbui_d_4750000000000003');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '005', '1', 0, ' ', ' ', ' ', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', '20200528194907', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '00', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '01', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '02', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '03', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '04', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '05', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '06', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '07', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '08', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '11', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '12', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '13', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '14', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '006', '99', 0, ' ', ' ', ' ', '20200528', '194906', ' ', 'keT00002', '20200528', '194906', '20200528194906', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '301', '01', 0, ' ', ' ', ' ', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', '20200528194907', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '301', '02', 0, ' ', ' ', ' ', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', '20200528194907', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '302', '1', 0, ' ', ' ', ' ', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', '20200528194907', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');
INSERT INTO `t_prd_oth` VALUES ('WALGEN01', '302', '2', 0, ' ', ' ', ' ', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', '20200528194907', 'prd_region.prd', ' ', 'W!completeFirstCheckmbu006000000000001');

-- ----------------------------
-- Table structure for t_prd_rskcls
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_rskcls`;
CREATE TABLE `t_prd_rskcls`  (
  `RSK_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Risk classification code',
  `RSK_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_NM|Risk classification name',
  `RSK_DSC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Risk classification description',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|inputer',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|checker',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `RSK_AGE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_AGE_TYP|Risk day type',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `RSC_RUL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSC_RUL_TYP|Risk classify rule type',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`RSK_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product risk level table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_rskcls
-- ----------------------------
INSERT INTO `t_prd_rskcls` VALUES ('CBK', 'CBK classification', ' ', ' ', 'keT00001', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', ' ', 'product.prd_d_5', ' ', '0', '0', '0', 'completeFirstCheckbui_d_4097000000000001', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskcls` VALUES ('FCBK', 'Fuliza CBK', ' ', ' ', 'keT00001', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', ' ', 'product.prd_d_5', ' ', '0', '0', '0', 'completeFirstCheckbui_d_4097000000000001', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskcls` VALUES ('IFRS', 'IFRS9 classification', ' ', ' ', 'keT00001', '20200528', '194907', ' ', 'keT00002', '20200528', '194907', ' ', 'product.prd_d_5', ' ', '0', '0', '1', 'completeFirstCheckbui_d_4097000000000002', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_prd_rskgrd
-- ----------------------------
DROP TABLE IF EXISTS `t_prd_rskgrd`;
CREATE TABLE `t_prd_rskgrd`  (
  `RSK_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Risk classification code',
  `GRD_CD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GRD_CD|Risk classification level code',
  `GRD_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GRD_NM|Risk classification level name',
  `OVD_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Days overdue',
  `PRV_PER` decimal(6, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PER_RATE|General reserve ratio',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Status',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `MAX_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Max day number',
  `MIN_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Min day number',
  `IFR_STG_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFR_STG_TYP|IFRS stage type',
  `PRD_STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_STL_TYP|Product settle type',
  `RPY_RSK_STS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_STS|Risk status after repay',
  `RPY_RSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_RSK_TYP|Risk type after repay',
  `AFT_MON_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Number of month',
  `AFT_MON_STS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_STS|Risk status after N monthes',
  `AFT_MON_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_TYP|Risk type after N monthes',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PD_MIN` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PD_MIN|Min PD',
  `PD_MAX` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'PD_MAX|Max PD',
  `LGD_MIN` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'LGD_MIN|Min LGD',
  `LGD_MAX` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'LGD_MAX|Max LGD',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MO_OF_PD` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'MO_OF_PD|MO of PD',
  `MO_OF_LGD` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'MO_OF_LGD|MO of LGD',
  `CCF` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'CCF|CCF',
  `MO_OF_CCF` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'MO_OF_CCF|MO of CCF',
  `SUB_GRD_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'SUB_GRD_CD|Risk classification sublevel code',
  `RPY_SUB_STS` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_SUB_STS|Risk sub level after repay',
  `AFT_MON_SUB_STS` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AFT_MON_SUB_STS|Risk sub level after N months',
  `SUB_GRD_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SUB_GRD_NM|Risk classification sub level name',
  `MO_PD_RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks on MO of PD',
  `MO_LGD_RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks on Mo of LGD',
  `MO_CCF_RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks on Mo of CCF',
  PRIMARY KEY (`RSK_CD`, `GRD_CD`, `SUB_GRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product risk level parameter table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_prd_rskgrd
-- ----------------------------
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '00', ' ', 0, 0.0100, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 60, 1, ' ', '0', '00', ' ', 0, '00', ' ', '300', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'normal(1~60)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '01', ' ', 0, 0.0300, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 90, 61, ' ', '0', '00', ' ', 0, '00', ' ', '301', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'watch(61~90)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '02', ' ', 0, 0.2000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 120, 91, ' ', '0', '00', ' ', 0, '00', ' ', '302', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'substandard(91~120)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '03', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 150, 121, ' ', '0', '00', ' ', 0, '00', ' ', '303', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'doubtfull(121~150)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '04', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 180, 151, ' ', '0', '00', ' ', 0, '00', ' ', '304', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'loss(151~180)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('CBK', '04', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 0, 181, ' ', '0', '00', ' ', 0, '00', ' ', '305', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '2', '1', '1', 'loss(>=181)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '00', ' ', 0, 0.0100, '0', ' ', 'keT00001', '20200604', '102424', ' ', 'keT00002', '20200604', '102424', '20200604102424+03', 'product.prd.b_2_162', ' ', 30, 0, ' ', '0', '00', ' ', 0, '00', ' ', '300', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckbui.b_2_162043000000000007', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'Normal(0~30)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '01', ' ', 0, 0.0300, '0', ' ', 'keT00001', '20200604', '102424', ' ', 'keT00002', '20200604', '102424', '20200604102424+03', 'product.prd.b_2_162', ' ', 60, 31, ' ', '0', '00', ' ', 0, '00', ' ', '301', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckbui.b_2_162043000000000007', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'Watch(31~60)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '02', ' ', 0, 0.2000, '0', ' ', 'keT00001', '20200604', '102424', ' ', 'keT00002', '20200604', '102424', '20200604102424+03', 'product.prd.b_2_162', ' ', 70, 61, ' ', '0', '00', ' ', 0, '00', ' ', '302', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckbui.b_2_162043000000000007', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'Sub-standard(61~70)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '03', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200604', '102424', ' ', 'keT00002', '20200604', '102424', '20200604102424+03', 'product.prd.b_2_162', ' ', 80, 71, ' ', '0', '00', ' ', 0, '00', ' ', '303', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckbui.b_2_162043000000000007', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'Doubtful(71~80)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '04', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200604', '102424', ' ', 'keT00002', '20200604', '102424', '20200604102424+03', 'product.prd.b_2_162', ' ', 90, 81, ' ', '0', '00', ' ', 0, '00', ' ', '304', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckbui.b_2_162043000000000007', 0.0000, 0.0000, 0.0000, 0.0000, '1', '1', '1', 'loss(81~90)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('FCBK', '04', ' ', 0, 1.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 0, 91, ' ', '0', '00', ' ', 0, '00', ' ', '305', 0.0000, 0.0000, 0.0000, 0.0000, 'W!completeFirstCheckmbu005000000000001', 0.0000, 0.0000, 0.0000, 0.0000, '2', '1', '1', 'loss(>=91)', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '00', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 30, 1, '11', '0', ' ', '11', 6, ' ', '11', '300', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '01', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 90, 31, '12', '0', ' ', '12', 6, ' ', '11', '301', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '02', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 180, 91, '13', '0', ' ', '12', 6, ' ', '11', '302', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '03', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 360, 181, '14', '0', ' ', '12', 6, ' ', '11', '303', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '04', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 0, 361, '15', '0', ' ', '12', 6, ' ', '11', '304', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_prd_rskgrd` VALUES ('IFRS', '10', ' ', 0, 0.0000, '0', ' ', 'keT00001', '20200528', '194908', ' ', 'keT00002', '20200528', '194908', '20200528194908', 'product.prd_d_5', ' ', 0, 0, '10', ' ', ' ', ' ', 0, ' ', ' ', '300', 0.0350, 0.0000, 0.8000, 0.0000, 'W!completeFirstCheckmbu005000000000002', 0.0000, 0.0000, 0.0005, 0.0000, '1', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_pub_sequence
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_sequence`;
CREATE TABLE `t_pub_sequence`  (
  `ORG_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构号',
  `SEQ_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号名称',
  `CUR_VAL` bigint(20) NOT NULL DEFAULT 1 COMMENT '当前值',
  `MAX_VAL` bigint(20) NOT NULL DEFAULT 999999999999 COMMENT '最大值',
  `MIN_VAL` bigint(20) NOT NULL DEFAULT 1 COMMENT '最小值',
  `INC_VAL` bigint(20) NOT NULL DEFAULT 1000 COMMENT '步增值',
  `CYC_FLG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否循环',
  `TM_SMP` char(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '时间戳',
  `NOD_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '请求ID',
  PRIMARY KEY (`ORG_NO`, `SEQ_NM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '序列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_sequence
-- ----------------------------
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PRD_PTF_ID', 1, 99999999, 1, 1, 'N', '', ' ', ' ');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PRD_RAP_ID', 1, 99999999, 1, 1, 'N', '', ' ', ' ');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 4024, 9999999999, 0, 1, 'Y', '20200911184700+08', ' ', 'prd_region.prd');

SET FOREIGN_KEY_CHECKS = 1;
