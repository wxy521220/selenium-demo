/*
 Navicat Premium Data Transfer

 Source Server         : CSDLNS
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : csdlns

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 18:48:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_col_class
-- ----------------------------
DROP TABLE IF EXISTS `t_col_class`;
CREATE TABLE `t_col_class`  (
  `CLS_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NO|Collateral type number',
  `CLS_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NM|Collateral type name',
  `CLS_LVL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'COL_CLS_LVL|Collateral type level',
  `UP_CLS_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NO|Upper collateral type number',
  `LEAF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LEAF_FLG|Leaf node flg',
  `COL_ATTR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_ATTR|Collateral attribute',
  `MAX_LTV` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'COL_MAX_LTV|Max mortgage rate',
  `AUTO_VAL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_UPD_FLG|Automatic updating of recognized value',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effect status',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`CLS_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Collatera type table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_col_class
-- ----------------------------
INSERT INTO `t_col_class` VALUES ('CLS_01', 'Default', 1, ' ', '1', '1', 1.000000, 'Y', 'Y', '20200321', '99991231', ' ', ' ', ' ', ' ', ' ', ' ', '20200321115006', ' ', ' ');

-- ----------------------------
-- Table structure for t_col_coljnl
-- ----------------------------
DROP TABLE IF EXISTS `t_col_coljnl`;
CREATE TABLE `t_col_coljnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Limit number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `COL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NO|Collateral number',
  `SEQ_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Sequence number',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TRAN_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `TRAN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `TRAN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  `TRAN_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_TX_TYP|Transaction type',
  `TRAN_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Transaction currency',
  `TRAN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `ACT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction state',
  `RVS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_FLG|Reversal flag',
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Reversal journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `IPN_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Impawn journal number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`, `IPN_JRN_NO`) USING BTREE,
  INDEX `NI5_T_COL_COLJNL`(`COL_NO`) USING BTREE,
  INDEX `NI4_T_COL_COLJNL`(`TX_STS`) USING BTREE,
  INDEX `NI3_T_COL_COLJNL`(`TRAN_TYP`) USING BTREE,
  INDEX `NI2_T_COL_COLJNL`(`AC_NO`) USING BTREE,
  INDEX `NI1_T_COL_COLJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Collateral use details table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_col_collation
-- ----------------------------
DROP TABLE IF EXISTS `t_col_collation`;
CREATE TABLE `t_col_collation`  (
  `COL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NO|Collateral number',
  `CLS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NO|Collateral type number',
  `COL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NM|Collateral name',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `AGR_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AGR_NO|Collateral contract number',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Transaction currency',
  `DOC_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WAR_NO|Warrant number',
  `REG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WAR_REG_TYP|Warrant register type',
  `REG_ORG` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|register organ',
  `REG_SCP` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WAR_REG_SCP|Scope of registration rights',
  `REG_VAL` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'WAR_REG_VAL|Value of registration right',
  `REG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Register date',
  `NTZ_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|notarization',
  `COL_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Collateral value',
  `EXT_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Effective value',
  `IPN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IPN_TYP|Impawn type',
  `AGR_SIGN` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contract signing date',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `AGR_EFF` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `AGR_EXT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_STS|Collateral status',
  `FREE_RES` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_FREE_RES|Collateral free reason',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `IPN_DTL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IPN_DTL_TYP|Amount impawn(10:Auto impawn 11:Manual impawn)',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`COL_NO`) USING BTREE,
  INDEX `NI1_T_COL_COLLATION`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Collatera base information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_col_depval
-- ----------------------------
DROP TABLE IF EXISTS `t_col_depval`;
CREATE TABLE `t_col_depval`  (
  `COL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NO|Collateral number',
  `SEQ_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Sequence number',
  `CLS_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NO|Collateral type number',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Collateral currency',
  `VCH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Deposit receipt amount',
  `MAX_LTV` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'COL_MAX_LTV|Max mortgage rate',
  `COL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Collateral amount',
  `AVA_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available amount',
  `USE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Used collateral amount',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`COL_NO`, `SEQ_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Deposit collateral amount details table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_col_tmdeposit
-- ----------------------------
DROP TABLE IF EXISTS `t_col_tmdeposit`;
CREATE TABLE `t_col_tmdeposit`  (
  `COL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NO|Collateral number',
  `SEQ_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Sequence number',
  `COL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NM|Collateral name',
  `CLS_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_CLS_NO|Collateral type number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `CI_NM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_MASK|Customer name',
  `CI_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Customer name',
  `ID_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_TYP|Credentials type',
  `ID_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_CIPHER|ID number cipher',
  `ID_NO_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_MASK|ID number mask',
  `ORG_NO` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_ORG_NO|Third institution number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_CD_NO|Deposit receipt number',
  `CD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_CD_STS|Deposit receipt status',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Collateral currency',
  `VCH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Deposit receipt amount',
  `OPN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Open account date',
  `RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|rate',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Collateral status',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`COL_NO`, `SEQ_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_COL_TMDEPOSIT`(`USR_NO`, `AC_NO`) USING BTREE,
  INDEX `NI2_T_COL_TMDEPOSIT`(`CI_NO`) USING BTREE,
  INDEX `NI1_T_COL_TMDEPOSIT`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Deposit collateral details table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lmt_cddt
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_cddt`;
CREATE TABLE `t_lmt_cddt`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `FST_USR_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0,
  `CI_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TRAN_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_MNG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`, `TRAN_TYP`) USING BTREE,
  INDEX `NI4_T_LMT_CDDT`(`LMT_NO`) USING BTREE,
  INDEX `N3_T_LMT_CDDT`(`TRAN_DT`) USING BTREE,
  INDEX `N1_T_LMT_CDDT`(`CI_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_cddt
-- ----------------------------
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200903000000000000000072', 'LNS0020200903000000000000000073', '20200903000000000000000131', 'loanLmtQry', '20200903', '201417', ' ', '20200903', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200903000000000000000131', 'LONOVD01', 110000000000011, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200903201514+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200904000000000000000086', 'LNS0020200904000000000000000087', '20200904000000000000000138', 'loanLmtQry', '20200904', '181650', ' ', '20200904', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200904000000000000000138', 'LONGEN01', 110000000000011, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200904181700+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200904000000000000000095', 'LNS0020200904000000000000000096', '20200904000000000000000145', 'loanLmtQry', '20200904', '193344', ' ', '20200904', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200904000000000000000145', 'LONSLC01', 110000000000011, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200904193351+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200907000000000000000315', 'LNS0020200907000000000000000317', '20200907000000000000000356', 'loanLmtQry', '20200907', '172510', ' ', '20200907', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200907000000000000000356', 'LONGEN01', 110000000000021, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200907172520+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000484', 'LNS0020200908000000000000000485', ' ', 'lmtReview', '20200908', '152512', ' ', '20200908', 'MCA', '13', ' ', 0.00, 0.00, ' ', ' ', ' ', 'LONGEN01', 110000000000038, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908152523+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000016', 'CPS0020200908000000000000110023', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000486', 'LNS0020200908000000000000000487', ' ', 'lmtReview', '20200908', '152827', ' ', '20200908', 'MCA', '13', ' ', 0.00, 0.00, ' ', ' ', ' ', 'LONGEN01', 110000000000039, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908152834+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000020', 'CPS0020200908000000000000110029', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000523', 'LNS0020200908000000000000000488', '20200908000000000000000585', 'loanLmtQry', '20200908', '195732', ' ', '20200908', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200908000000000000000585', 'LONOVD01', 110000000000039, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908195738+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000524', 'LNS0020200908000000000000000525', '20200908000000000000000586', 'loanLmtQry', '20200908', '195740', ' ', '20200908', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200908000000000000000586', 'LONSLC01', 110000000000039, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908195745+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000546', 'LNS0020200908000000000000000526', '20200908000000000000000627', 'loanLmtQry', '20200908', '205535', ' ', '20200908', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200908000000000000000627', 'LONGEN01', 110000000000028, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205540+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000547', 'LNS0020200908000000000000000549', '20200908000000000000000628', 'loanLmtQry', '20200908', '205541', ' ', '20200908', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200908000000000000000628', 'LONOVD01', 110000000000028, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205546+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200908000000000000000548', 'LNS0020200908000000000000000550', '20200908000000000000000629', 'loanLmtQry', '20200908', '205548', ' ', '20200908', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200908000000000000000629', 'LONSLC01', 110000000000028, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205552+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000000562', 'LNS0020200909000000000000000563', ' ', 'lmtReview', '20200909', '101208', ' ', '20200909', 'MCA', '13', ' ', 0.00, 0.00, ' ', ' ', ' ', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909101232+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca048000000000001', 'CPS0020200909000000000000112006', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000000566', 'LNS0020200909000000000000000564', '20200909000000000000000649', 'loanLmtQry', '20200909', '102706', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000649', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909102718+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000000567', 'LNS0020200909000000000000000569', '20200909000000000000000650', 'loanLmtQry', '20200909', '102721', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000650', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909102729+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001281', 'LNS0020200909000000000000001282', '20200909000000000000000646', 'lmtReview', '20200909', '180159', ' ', '20200909', 'MCA', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180208+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000001', 'CPS0020200909000000000000112171', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001299', 'LNS0020200909000000000000001283', '20200909000000000000000905', 'loanLmtQry', '20200909', '180526', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000905', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001300', 'LNS0020200909000000000000001302', '20200909000000000000000906', 'loanLmtQry', '20200909', '180542', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000906', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180549+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001303', 'LNS0020200909000000000000001330', '20200909000000000000000646', 'lmtReview', '20200909', '181136', ' ', '20200909', 'MCA', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181142+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000002', 'CPS0020200909000000000000112185', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001347', 'LNS0020200909000000000000001331', '20200909000000000000000913', 'loanLmtQry', '20200909', '181519', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000913', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181523+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001348', 'LNS0020200909000000000000001350', '20200909000000000000000914', 'loanLmtQry', '20200909', '181526', ' ', '20200909', 'IAS', '13', ' ', 0.00, 0.00, ' ', ' ', '20200909000000000000000914', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181532+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001600', 'LNS0020200909000000000000001601', '20200909000000000000000646', 'lmtReview', '20200909', '193048', ' ', '20200909', 'MCA', '13', ' ', 0.00, 10000.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193057+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca050000000000001', 'CPS0020200909000000000000112198', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001604', 'LNS0020200909000000000000001602', '20200909000000000000000918', 'loanLmtQry', '20200909', '193159', ' ', '20200909', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200909000000000000000918', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193203+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200909000000000000001612', 'LNS0020200909000000000000001613', '20200909000000000000000919', 'loanLmtQry', '20200909', '193206', ' ', '20200909', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200909000000000000000919', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193212+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000002150', 'LNS0020200910000000000000002151', ' ', 'lmtReview', '20200910', '102956', ' ', '20200910', 'MCA', '13', ' ', 0.00, 10000.00, ' ', ' ', ' ', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910103009+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca141000000000005', 'CPS0020200910000000000000113030', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003184', 'LNS0020200910000000000000002152', '20200910000000000000001022', 'loanLmtQry', '20200910', '144830', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001022', 'LONOVD01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910144836+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003185', 'LNS0020200910000000000000003187', '20200910000000000000001023', 'loanLmtQry', '20200910', '144839', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001023', 'LONSLC01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910144845+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003312', 'LNS0020200910000000000000003188', '20200910000000000000001052', 'loanLmtQry', '20200910', '151410', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001052', 'LONGEN01', 110000000000026, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151424+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003313', 'LNS0020200910000000000000003315', '20200910000000000000001053', 'loanLmtQry', '20200910', '151426', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001053', 'LONOVD01', 110000000000026, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151432+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003314', 'LNS0020200910000000000000003316', '20200910000000000000001054', 'loanLmtQry', '20200910', '151434', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001054', 'LONSLC01', 110000000000026, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151439+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003353', 'LNS0020200910000000000000003354', '20200909000000000000000646', 'lmtReview', '20200910', '152325', ' ', '20200910', 'MCA', '13', ' ', 0.00, 10000.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152333+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca063000000000001', 'CPS0020200910000000000000113070', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003366', 'LNS0020200910000000000000003367', '20200910000000000000001063', 'loanLmtQry', '20200910', '152528', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001063', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003370', 'LNS0020200910000000000000003368', '20200910000000000000001064', 'loanLmtQry', '20200910', '152539', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001064', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152543+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003622', 'LNS0020200910000000000000003623', '20200909000000000000000646', 'lmtReview', '20200910', '162339', ' ', '20200910', 'MCA', '13', ' ', 0.00, 10000.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910162347+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca064000000000001', 'CPS0020200910000000000000113085', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003664', 'LNS0020200910000000000000003624', '20200910000000000000001114', 'loanLmtQry', '20200910', '163143', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001114', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163149+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000003665', 'LNS0020200910000000000000003667', '20200910000000000000001115', 'loanLmtQry', '20200910', '163152', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001115', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163158+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004034', 'LNS0020200910000000000000004035', '20200909000000000000000646', 'lmtReview', '20200910', '175007', ' ', '20200910', 'MCA', '13', ' ', 0.00, 10000000.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175024+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca066000000000001', 'CPS0020200910000000000000113116', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004046', 'LNS0020200910000000000000004036', '20200910000000000000001187', 'loanLmtQry', '20200910', '175132', ' ', '20200910', 'IAS', '13', ' ', 0.00, 5000000.00, ' ', ' ', '20200910000000000000001187', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175141+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004047', 'LNS0020200910000000000000004049', '20200910000000000000001188', 'loanLmtQry', '20200910', '175144', ' ', '20200910', 'IAS', '13', ' ', 0.00, 5000000.00, ' ', ' ', '20200910000000000000001188', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175153+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004856', 'LNS0020200910000000000000004857', '20200909000000000000000646', 'lmtReview', '20200910', '210111', ' ', '20200910', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200909000000000000000646', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210118+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca077000000000001', 'CPS0020200910000000000000113149', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004867', 'LNS0020200910000000000000004858', '20200910000000000000001278', 'loanLmtQry', '20200910', '210336', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001278', 'LONOVD01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210342+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200910000000000000004868', 'LNS0020200910000000000000004869', '20200910000000000000001279', 'loanLmtQry', '20200910', '210344', ' ', '20200910', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200910000000000000001279', 'LONSLC01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210349+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005491', 'LNS0020200911000000000000005492', '20200910000000000000000978', 'lmtReview', '20200911', '164656', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200910000000000000000978', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164707+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000001', 'CPS0020200911000000000000114024', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005495', 'LNS0020200911000000000000005493', '20200911000000000000001388', 'loanLmtQry', '20200911', '164835', ' ', '20200911', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200911000000000000001388', 'LONOVD01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164841+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005504', 'LNS0020200911000000000000005506', '20200911000000000000001389', 'loanLmtQry', '20200911', '164845', ' ', '20200911', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200911000000000000001389', 'LONSLC01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164849+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005507', 'LNS0020200911000000000000005510', ' ', 'lmtReview', '20200911', '164943', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', ' ', 'LONGEN01', 110000000000043, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164950+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000002', 'CPS0020200911000000000000114030', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005569', 'LNS0020200911000000000000005570', '20200910000000000000000978', 'lmtReview', '20200911', '170323', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200910000000000000000978', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170330+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000003', 'CPS0020200911000000000000114056', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005571', 'LNS0020200911000000000000005580', '20200911000000000000001391', 'lmtReview', '20200911', '170352', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200911000000000000001391', 'LONGEN01', 110000000000043, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170400+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000004', 'CPS0020200911000000000000114057', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005592', 'LNS0020200911000000000000005581', '20200911000000000000001401', 'loanLmtQry', '20200911', '170630', ' ', '20200911', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200911000000000000001401', 'LONOVD01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170637+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005594', 'LNS0020200911000000000000005595', '20200911000000000000001391', 'lmtReview', '20200911', '170632', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200911000000000000001391', 'LONGEN01', 110000000000043, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170640+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000006', 'CPS0020200911000000000000114069', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005596', 'LNS0020200911000000000000005598', '20200911000000000000001403', 'loanLmtQry', '20200911', '170640', ' ', '20200911', 'IAS', '13', ' ', 0.00, 50000.00, ' ', ' ', '20200911000000000000001403', 'LONSLC01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170645+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005599', 'LNS0020200911000000000000005612', '20200911000000000000001391', 'lmtReview', '20200911', '170811', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200911000000000000001391', 'LONGEN01', 110000000000043, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000001', 'CPS0020200911000000000000114076', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS0020200911000000000000005633', 'LNS0020200911000000000000005634', '20200911000000000000001391', 'lmtReview', '20200911', '171209', ' ', '20200911', 'MCA', '13', ' ', 0.00, 100000.00, ' ', ' ', '20200911000000000000001391', 'LONGEN01', 110000000000043, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911171216+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000002', 'CPS0020200911000000000000114088', ' ');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200909000000000000001856', 'LNS0020200909000000000000001601', ' ', 'loanRequest', '20200909', '203409', '2050000000000015', ' ', ' ', '01', 'KES', 1.00, 10000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200909203430+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000003', '20200909000000000000282062', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200910000000000000003459', 'LNS0020200910000000000000003354', ' ', 'loanRequest', '20200910', '154700', '2050000000000022', ' ', ' ', '01', 'KES', 20.00, 10000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910154721+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000005', '20200910000000000000304100', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200910000000000000003505', 'LNS0020200910000000000000002151', ' ', 'loanRequest', '20200910', '155624', '2050000000000039', ' ', ' ', '01', 'KES', 100.00, 10000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910155641+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000001', '20200910000000000000307021', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200910000000000000003561', 'LNS0020200910000000000000003188', ' ', 'loanRequest', '20200910', '160742', '2050000000000046', ' ', ' ', '01', 'KES', 200.00, 50000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000026, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910160801+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca064000000000001', '20200910000000000000308016', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200910000000000000003669', 'LNS0020200910000000000000003623', ' ', 'loanRequest', '20200910', '163228', '2050000000000052', ' ', ' ', '01', 'KES', 2000.00, 10000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163247+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca065000000000001', '20200910000000000000309027', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200910000000000000004895', 'LNS0020200910000000000000004857', ' ', 'loanRequest', '20200910', '210751', '2050000000000069', ' ', ' ', '01', 'KES', 50000.00, 100000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000041, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210809+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca078000000000001', '20200910000000000000328017', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200911000000000000005508', 'LNS0020200911000000000000005492', ' ', 'loanRequest', '20200911', '164927', '2050000000000076', ' ', ' ', '01', 'KES', 100000.00, 100000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164945+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca088000000000001', '20200911000000000000343033', 'MSHWARI');
INSERT INTO `t_lmt_cddt` VALUES ('LNS7220200911000000000000005617', 'LNS0020200911000000000000005570', ' ', 'loanRequest', '20200911', '171039', '2050000000000083', ' ', ' ', '01', 'KES', 100000.00, 100000.00, 'Y', ' ', ' ', 'LONGEN01', 110000000000042, ' ', 'S', ' ', ' ', ' ', ' ', ' ', ' ', '20200911171100+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca089000000000002', '20200911000000000000344036', 'MSHWARI');

-- ----------------------------
-- Table structure for t_lmt_colrelation
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_colrelation`;
CREATE TABLE `t_lmt_colrelation`  (
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `COL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_NO|Collateral number',
  `GUR_PERC` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Collateral percent',
  `GUR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Collateral amount',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Collateral status',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`LMT_NO`, `COL_NO`) USING BTREE,
  INDEX `NI2_T_LMT_COLRELATION`(`EFF_DT`, `STATUS`) USING BTREE,
  INDEX `N1_T_LMT_COLRELATION`(`COL_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Collateral related information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lmt_credscojnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_credscojnl`;
CREATE TABLE `t_lmt_credscojnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUSS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LMT_UPD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRED_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LST_CRED_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI2_T_LMT_CREDSCOJNL`(`LMT_NO`) USING BTREE,
  INDEX `NI1_T_LMT_CREDSCOJNL`(`USR_NO`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_credscojnl
-- ----------------------------
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000002', 1100000000002, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '102348', ' ', '20200819102401+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca002000000000006', 'CPS0020200819000000000000002017', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000006', 1100000000004, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '105905', ' ', '20200819110001+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca002000000000007', 'CPS0020200819000000000000003004', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000007', 1100000000005, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '110814', ' ', '20200819110829+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000001', 'CPS0020200819000000000000003008', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000008', 1100000000006, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '112738', ' ', '20200819112751+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000002', 'CPS0020200819000000000000003015', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000013', 1100000000007, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '120105', '20200819000000000000000004', '20200819120116+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000003', 'CPS0020200819000000000000003022', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000016', 1100000000009, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '142125', ' ', '20200819142146+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000006', 'CPS0020200819000000000000004006', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200819000000000000000019', 1100000000010, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'U', 'SSWR', 'MCA', '20200819', '143814', ' ', '20200819143827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000007', 'CPS0020200819000000000000004011', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200908000000000000000484', 1100000000041, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'Y', 'SSWR', 'MCA', '20200908', '152512', ' ', '20200908152522+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000016', 'CPS0020200908000000000000110023', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200908000000000000000486', 1100000000042, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'Y', 'SSWR', 'MCA', '20200908', '152827', ' ', '20200908152833+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000020', 'CPS0020200908000000000000110029', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200909000000000000000562', 1100000000044, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'Y', 'SSWR', 'MCA', '20200909', '101208', ' ', '20200909101230+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca048000000000001', 'CPS0020200909000000000000112006', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200909000000000000001281', 1100000000045, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'Y', 'SSWR', 'MCA', '20200909', '180159', '20200909000000000000000646', '20200909180208+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000001', 'CPS0020200909000000000000112171', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200909000000000000001303', 1100000000046, 'LONGEN01', ' ', ' ', '01', 0.00, 0.00, 'Y', 'SSWR', 'MCA', '20200909', '181136', '20200909000000000000000646', '20200909181141+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000002', 'CPS0020200909000000000000112185', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200909000000000000001600', 1100000000047, 'LONGEN01', ' ', ' ', '01', 10000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200909', '193048', '20200909000000000000000646', '20200909193056+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca050000000000001', 'CPS0020200909000000000000112198', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200910000000000000002150', 1100000000049, 'LONGEN01', ' ', ' ', '01', 10000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200910', '102956', ' ', '20200910103007+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca141000000000005', 'CPS0020200910000000000000113030', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200910000000000000003353', 1100000000050, 'LONGEN01', ' ', ' ', '01', 10000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200910', '152325', '20200909000000000000000646', '20200910152332+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca063000000000001', 'CPS0020200910000000000000113070', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200910000000000000003622', 1100000000052, 'LONGEN01', ' ', ' ', '01', 10000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200910', '162339', '20200909000000000000000646', '20200910162346+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca064000000000001', 'CPS0020200910000000000000113085', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200910000000000000004034', 1100000000053, 'LONGEN01', ' ', ' ', '01', 10000000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200910', '175007', '20200909000000000000000646', '20200910175023+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca066000000000001', 'CPS0020200910000000000000113116', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200910000000000000004856', 1100000000054, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200910', '210111', '20200909000000000000000646', '20200910210117+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca077000000000001', 'CPS0020200910000000000000113149', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005491', 1100000000055, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '164656', '20200910000000000000000978', '20200911164706+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000001', 'CPS0020200911000000000000114024', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005507', 1100000000056, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '164943', ' ', '20200911164949+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000002', 'CPS0020200911000000000000114030', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005569', 1100000000057, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '170323', '20200910000000000000000978', '20200911170329+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000003', 'CPS0020200911000000000000114056', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005571', 1100000000058, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '170352', '20200911000000000000001391', '20200911170359+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000004', 'CPS0020200911000000000000114057', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005594', 1100000000059, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '170632', '20200911000000000000001391', '20200911170640+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000006', 'CPS0020200911000000000000114069', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005599', 1100000000060, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '170811', '20200911000000000000001391', '20200911170826+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000001', 'CPS0020200911000000000000114076', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_credscojnl` VALUES ('LNS0020200911000000000000005633', 1100000000061, 'LONGEN01', ' ', ' ', '01', 100000.00, 0.00, 'Y', 'SSWR', 'MCA', '20200911', '171209', '20200911000000000000001391', '20200911171215+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000002', 'CPS0020200911000000000000114088', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_lmt_dyn
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_dyn`;
CREATE TABLE `t_lmt_dyn`  (
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `LVL_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LVL_FLG|Level flag',
  `LMT_LVL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_LVL|Limit level',
  `LVL_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Level number',
  `UP_LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Upper limit number',
  `TOP_LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Top limit number',
  `USE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'USE_MOD|Use mode',
  `RUL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_RUL_TYP|Rule type',
  `LMT_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Limit currency',
  `CR_LMT_MAX` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum credit limit',
  `USE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Used amount',
  `NON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Can not use amount',
  `TMP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Temp limit',
  `AVA_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available amount',
  `LMT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual limit',
  `OUT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OUT_FLG|Out type',
  `OUT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Out amount',
  `OUT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Out date',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REF_INS_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Reference instance number',
  `RMK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK | Remark',
  PRIMARY KEY (`LMT_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LMT_DYN`(`REF_INS_NO`, `LVL_FLG`, `LVL_NO`) USING BTREE,
  INDEX `N1_T_LMT_DYN`(`LMT_NO`, `LVL_NO`, `LVL_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_dyn
-- ----------------------------
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200903000000000000000073', '01', ' ', 'LONOVD01', 'LNS0020200903000000000000000073', 'LNS0020200903000000000000000073', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200903201514+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000021', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200904000000000000000087', '01', ' ', 'LONGEN01', 'LNS0020200904000000000000000087', 'LNS0020200904000000000000000087', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200904181700+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000021', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200904000000000000000096', '01', ' ', 'LONSLC01', 'LNS0020200904000000000000000096', 'LNS0020200904000000000000000096', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200904193351+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000021', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200907000000000000000317', '01', ' ', 'LONGEN01', 'LNS0020200907000000000000000317', 'LNS0020200907000000000000000317', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200907172520+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000023', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000485', '01', ' ', 'LONGEN01', 'LNS0020200908000000000000000485', 'LNS0020200908000000000000000485', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908152523+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000016', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000041', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000487', '01', ' ', 'LONGEN01', 'LNS0020200908000000000000000487', 'LNS0020200908000000000000000487', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908152834+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000020', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000042', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000488', '01', ' ', 'LONOVD01', 'LNS0020200908000000000000000488', 'LNS0020200908000000000000000488', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908195738+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000042', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000525', '01', ' ', 'LONSLC01', 'LNS0020200908000000000000000525', 'LNS0020200908000000000000000525', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908195745+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000042', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000526', '01', ' ', 'LONGEN01', 'LNS0020200908000000000000000526', 'LNS0020200908000000000000000526', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908205539+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000031', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000549', '01', ' ', 'LONOVD01', 'LNS0020200908000000000000000549', 'LNS0020200908000000000000000549', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908205546+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000031', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200908000000000000000550', '01', ' ', 'LONSLC01', 'LNS0020200908000000000000000550', 'LNS0020200908000000000000000550', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200908205551+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000031', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000000563', '01', ' ', 'LONGEN01', 'LNS0020200909000000000000000563', 'LNS0020200909000000000000000563', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909101231+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca048000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000044', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000000564', '01', ' ', 'LONOVD01', 'LNS0020200909000000000000000564', 'LNS0020200909000000000000000564', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909102717+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000044', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000000569', '01', ' ', 'LONSLC01', 'LNS0020200909000000000000000569', 'LNS0020200909000000000000000569', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909102728+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000044', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001282', '01', ' ', 'LONGEN01', 'LNS0020200909000000000000001282', 'LNS0020200909000000000000001282', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909180208+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000045', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001283', '01', ' ', 'LONOVD01', 'LNS0020200909000000000000001283', 'LNS0020200909000000000000001283', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909180536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000045', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001302', '01', ' ', 'LONSLC01', 'LNS0020200909000000000000001302', 'LNS0020200909000000000000001302', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909180548+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000045', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001330', '01', ' ', 'LONGEN01', 'LNS0020200909000000000000001330', 'LNS0020200909000000000000001330', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909181142+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000046', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001331', '01', ' ', 'LONOVD01', 'LNS0020200909000000000000001331', 'LNS0020200909000000000000001331', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909181523+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000046', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001350', '01', ' ', 'LONSLC01', 'LNS0020200909000000000000001350', 'LNS0020200909000000000000001350', 'R', 'S', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', ' ', '20200909181532+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000046', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001601', '01', ' ', 'LONGEN01', 'LNS0020200909000000000000001601', 'LNS0020200909000000000000001601', 'R', 'S', ' ', 10000.00, 1.00, 0.00, 0.00, 9999.00, 10000.00, ' ', 0.00, ' ', ' ', '20200909203429+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000003', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000047', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001602', '01', ' ', 'LONOVD01', 'LNS0020200909000000000000001602', 'LNS0020200909000000000000001602', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200909193203+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000047', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200909000000000000001613', '01', ' ', 'LONSLC01', 'LNS0020200909000000000000001613', 'LNS0020200909000000000000001613', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200909193212+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000047', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000002151', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000002151', 'LNS0020200910000000000000002151', 'R', 'S', ' ', 10000.00, 100.00, 0.00, 0.00, 9900.00, 10000.00, ' ', 0.00, ' ', ' ', '20200910155641+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000049', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000002152', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000002152', 'LNS0020200910000000000000002152', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910144836+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000049', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003187', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000003187', 'LNS0020200910000000000000003187', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910144844+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000049', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003188', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000003188', 'LNS0020200910000000000000003188', 'R', 'S', ' ', 50000.00, 200.00, 0.00, 0.00, 49800.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910160801+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca064000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000028', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003315', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000003315', 'LNS0020200910000000000000003315', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910151432+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000028', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003316', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000003316', 'LNS0020200910000000000000003316', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910151439+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000028', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003354', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000003354', 'LNS0020200910000000000000003354', 'R', 'S', ' ', 10000.00, 20.00, 0.00, 0.00, 9980.00, 10000.00, ' ', 0.00, ' ', ' ', '20200910154721+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000005', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000050', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003367', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000003367', 'LNS0020200910000000000000003367', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910152536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000050', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003368', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000003368', 'LNS0020200910000000000000003368', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910152543+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000050', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003623', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000003623', 'LNS0020200910000000000000003623', 'R', 'S', ' ', 10000.00, 2000.00, 0.00, 0.00, 8000.00, 10000.00, ' ', 0.00, ' ', ' ', '20200910163247+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca065000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000052', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003624', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000003624', 'LNS0020200910000000000000003624', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910163149+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000052', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000003667', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000003667', 'LNS0020200910000000000000003667', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910163157+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000052', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004035', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000004035', 'LNS0020200910000000000000004035', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200910175024+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca066000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000053', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004036', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000004036', 'LNS0020200910000000000000004036', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910175140+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000053', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004049', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000004049', 'LNS0020200910000000000000004049', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910175152+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000053', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004857', '01', ' ', 'LONGEN01', 'LNS0020200910000000000000004857', 'LNS0020200910000000000000004857', 'R', 'S', ' ', 100000.00, 50000.00, 0.00, 0.00, 50000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200910210809+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca078000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000054', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004858', '01', ' ', 'LONOVD01', 'LNS0020200910000000000000004858', 'LNS0020200910000000000000004858', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910210342+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000054', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200910000000000000004869', '01', ' ', 'LONSLC01', 'LNS0020200910000000000000004869', 'LNS0020200910000000000000004869', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200910210348+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000054', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005492', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005492', 'LNS0020200911000000000000005492', 'R', 'S', ' ', 100000.00, 100000.00, 0.00, 0.00, 0.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911164945+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca088000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000055', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005493', '01', ' ', 'LONOVD01', 'LNS0020200911000000000000005493', 'LNS0020200911000000000000005493', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200911164841+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000055', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005506', '01', ' ', 'LONSLC01', 'LNS0020200911000000000000005506', 'LNS0020200911000000000000005506', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200911164849+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000055', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005510', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005510', 'LNS0020200911000000000000005510', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911164950+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000056', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005570', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005570', 'LNS0020200911000000000000005570', 'R', 'S', ' ', 100000.00, 100000.00, 0.00, 0.00, 0.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911171100+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca089000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000057', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005580', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005580', 'LNS0020200911000000000000005580', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911170400+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000004', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000058', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005581', '01', ' ', 'LONOVD01', 'LNS0020200911000000000000005581', 'LNS0020200911000000000000005581', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200911170637+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000057', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005595', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005595', 'LNS0020200911000000000000005595', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911170640+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000006', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000059', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005598', '01', ' ', 'LONSLC01', 'LNS0020200911000000000000005598', 'LNS0020200911000000000000005598', 'R', 'S', ' ', 50000.00, 0.00, 0.00, 0.00, 50000.00, 50000.00, ' ', 0.00, ' ', ' ', '20200911170644+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000057', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005612', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005612', 'LNS0020200911000000000000005612', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911170827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000060', ' ');
INSERT INTO `t_lmt_dyn` VALUES ('LNS0020200911000000000000005634', '01', ' ', 'LONGEN01', 'LNS0020200911000000000000005634', 'LNS0020200911000000000000005634', 'R', 'S', ' ', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, ' ', 0.00, ' ', ' ', '20200911171216+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1100000000061', ' ');

-- ----------------------------
-- Table structure for t_lmt_hldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_hldjnl`;
CREATE TABLE `t_lmt_hldjnl`  (
  `FRZ_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Frozen number',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `FRZ_EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `FRZ_EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `FRZ_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_FRZ_TYP|Frozen type',
  `FRZ_TYP_DTL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Frozen type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `FRZ_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Frozen amount',
  `AUTO_RLS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Automatic unfreeze',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Limit effective flg',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `CHK_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Check operator number',
  `CHK_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Check organ',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check date',
  `ATH_MNG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Manager operator number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  PRIMARY KEY (`FRZ_NO`, `LMT_NO`) USING BTREE,
  INDEX `NI1_T_LMT_HLDJNL`(`AC_NO`) USING BTREE,
  INDEX `NI2_T_LMT_HLDJNL`(`FRZ_TYP`, `FRZ_TYP_DTL`) USING BTREE,
  INDEX `N1_T_LMT_HLDJNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `NI4_T_LMT_HLDJNL`(`LMT_NO`) USING BTREE,
  INDEX `NI3_T_LMT_HLDJNL`(`EFF_STS`, `AUTO_RLS`, `FRZ_EXP_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit hold journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lmt_jnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_jnl`;
CREATE TABLE `t_lmt_jnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI2_T_LMT_JNL`(`LMT_NO`, `AC_NO`, `TX_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_jnl
-- ----------------------------
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000002', ' ', ' ', 'lmtReview', '20200819', '102348', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '102348', ' ', ' ', '20200819102402+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca002000000000006', 'CPS0020200819000000000000002017', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000006', ' ', ' ', 'lmtReview', '20200819', '105905', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '105905', ' ', ' ', '20200819110002+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca002000000000007', 'CPS0020200819000000000000003004', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000007', ' ', ' ', 'lmtReview', '20200819', '110814', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '110814', ' ', ' ', '20200819110830+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000001', 'CPS0020200819000000000000003008', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000008', ' ', ' ', 'lmtReview', '20200819', '112738', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '112738', ' ', ' ', '20200819112752+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000002', 'CPS0020200819000000000000003015', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000013', ' ', '20200819000000000000000004', 'lmtReview', '20200819', '120105', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '120105', ' ', ' ', '20200819120117+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000003', 'CPS0020200819000000000000003022', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000016', ' ', ' ', 'lmtReview', '20200819', '142125', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '142125', ' ', ' ', '20200819142149+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000006', 'CPS0020200819000000000000004006', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200819000000000000000019', ' ', ' ', 'lmtReview', '20200819', '143814', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'F', 'N', ' ', 'PRDP6060', 'Product does not exist', '20200819', '143814', ' ', ' ', '20200819143827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca003000000000007', 'CPS0020200819000000000000004011', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200903000000000000000072', ' ', '20200903000000000000000131', 'loanLmtQry', '20200903', '201417', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200903', '201417', ' ', ' ', '20200903201515+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200904000000000000000086', ' ', '20200904000000000000000138', 'loanLmtQry', '20200904', '181650', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200904', '181650', ' ', ' ', '20200904181700+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200904000000000000000095', ' ', '20200904000000000000000145', 'loanLmtQry', '20200904', '193344', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200904', '193344', ' ', ' ', '20200904193351+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200907000000000000000315', ' ', '20200907000000000000000356', 'loanLmtQry', '20200907', '172510', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200907', '172510', ' ', ' ', '20200907172520+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000484', ' ', ' ', 'lmtReview', '20200908', '152512', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '152512', ' ', ' ', '20200908152523+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000016', 'CPS0020200908000000000000110023', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000486', ' ', ' ', 'lmtReview', '20200908', '152827', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '152827', ' ', ' ', '20200908152834+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000020', 'CPS0020200908000000000000110029', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000523', ' ', '20200908000000000000000585', 'loanLmtQry', '20200908', '195732', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '195732', ' ', ' ', '20200908195738+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000524', ' ', '20200908000000000000000586', 'loanLmtQry', '20200908', '195740', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '195740', ' ', ' ', '20200908195745+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000546', ' ', '20200908000000000000000627', 'loanLmtQry', '20200908', '205535', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '205535', ' ', ' ', '20200908205540+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000547', ' ', '20200908000000000000000628', 'loanLmtQry', '20200908', '205541', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '205541', ' ', ' ', '20200908205546+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200908000000000000000548', ' ', '20200908000000000000000629', 'loanLmtQry', '20200908', '205548', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200908', '205548', ' ', ' ', '20200908205552+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000000562', ' ', ' ', 'lmtReview', '20200909', '101208', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '101208', ' ', ' ', '20200909101232+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca048000000000001', 'CPS0020200909000000000000112006', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000000566', ' ', '20200909000000000000000649', 'loanLmtQry', '20200909', '102706', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '102706', ' ', ' ', '20200909102718+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000000567', ' ', '20200909000000000000000650', 'loanLmtQry', '20200909', '102721', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '102721', ' ', ' ', '20200909102729+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001281', ' ', '20200909000000000000000646', 'lmtReview', '20200909', '180159', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '180159', ' ', ' ', '20200909180209+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000001', 'CPS0020200909000000000000112171', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001299', ' ', '20200909000000000000000905', 'loanLmtQry', '20200909', '180526', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '180526', ' ', ' ', '20200909180536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001300', ' ', '20200909000000000000000906', 'loanLmtQry', '20200909', '180542', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '180542', ' ', ' ', '20200909180549+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001303', ' ', '20200909000000000000000646', 'lmtReview', '20200909', '181136', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '181136', ' ', ' ', '20200909181142+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000002', 'CPS0020200909000000000000112185', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001347', ' ', '20200909000000000000000913', 'loanLmtQry', '20200909', '181519', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '181519', ' ', ' ', '20200909181523+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001348', ' ', '20200909000000000000000914', 'loanLmtQry', '20200909', '181526', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '181526', ' ', ' ', '20200909181532+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001600', ' ', '20200909000000000000000646', 'lmtReview', '20200909', '193048', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '193048', ' ', ' ', '20200909193057+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca050000000000001', 'CPS0020200909000000000000112198', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001604', ' ', '20200909000000000000000918', 'loanLmtQry', '20200909', '193159', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '193159', ' ', ' ', '20200909193203+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200909000000000000001612', ' ', '20200909000000000000000919', 'loanLmtQry', '20200909', '193206', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '193206', ' ', ' ', '20200909193212+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200909000000000000001856', 'LNS0020200909000000000000001601', ' ', 'loanRequest', '20200909', '203409', '2050000000000015', ' ', '01', 'KES', 1.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200909', '203409', ' ', ' ', '20200909203430+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000003', '20200909000000000000282062', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000002150', ' ', ' ', 'lmtReview', '20200910', '102956', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '102956', ' ', ' ', '20200910103009+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca141000000000005', 'CPS0020200910000000000000113030', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003184', ' ', '20200910000000000000001022', 'loanLmtQry', '20200910', '144830', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '144830', ' ', ' ', '20200910144837+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003185', ' ', '20200910000000000000001023', 'loanLmtQry', '20200910', '144839', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '144839', ' ', ' ', '20200910144845+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003312', ' ', '20200910000000000000001052', 'loanLmtQry', '20200910', '151410', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '151410', ' ', ' ', '20200910151424+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003313', ' ', '20200910000000000000001053', 'loanLmtQry', '20200910', '151426', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '151426', ' ', ' ', '20200910151432+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003314', ' ', '20200910000000000000001054', 'loanLmtQry', '20200910', '151434', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '151434', ' ', ' ', '20200910151439+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003353', ' ', '20200909000000000000000646', 'lmtReview', '20200910', '152325', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '152325', ' ', ' ', '20200910152333+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca063000000000001', 'CPS0020200910000000000000113070', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003366', ' ', '20200910000000000000001063', 'loanLmtQry', '20200910', '152528', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '152528', ' ', ' ', '20200910152536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003370', ' ', '20200910000000000000001064', 'loanLmtQry', '20200910', '152539', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '152539', ' ', ' ', '20200910152543+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200910000000000000003459', 'LNS0020200910000000000000003354', ' ', 'loanRequest', '20200910', '154700', '2050000000000022', ' ', '01', 'KES', 20.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '154700', ' ', ' ', '20200910154722+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000005', '20200910000000000000304100', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200910000000000000003505', 'LNS0020200910000000000000002151', ' ', 'loanRequest', '20200910', '155624', '2050000000000039', ' ', '01', 'KES', 100.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '155624', ' ', ' ', '20200910155642+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000001', '20200910000000000000307021', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200910000000000000003561', 'LNS0020200910000000000000003188', ' ', 'loanRequest', '20200910', '160742', '2050000000000046', ' ', '01', 'KES', 200.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '160742', ' ', ' ', '20200910160801+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca064000000000001', '20200910000000000000308016', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003622', ' ', '20200909000000000000000646', 'lmtReview', '20200910', '162339', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '162339', ' ', ' ', '20200910162347+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca064000000000001', 'CPS0020200910000000000000113085', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003664', ' ', '20200910000000000000001114', 'loanLmtQry', '20200910', '163143', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '163143', ' ', ' ', '20200910163149+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000003665', ' ', '20200910000000000000001115', 'loanLmtQry', '20200910', '163152', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '163152', ' ', ' ', '20200910163158+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200910000000000000003669', 'LNS0020200910000000000000003623', ' ', 'loanRequest', '20200910', '163228', '2050000000000052', ' ', '01', 'KES', 2000.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '163228', ' ', ' ', '20200910163247+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca065000000000001', '20200910000000000000309027', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004034', ' ', '20200909000000000000000646', 'lmtReview', '20200910', '175007', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '175007', ' ', ' ', '20200910175024+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca066000000000001', 'CPS0020200910000000000000113116', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004046', ' ', '20200910000000000000001187', 'loanLmtQry', '20200910', '175132', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '175132', ' ', ' ', '20200910175141+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004047', ' ', '20200910000000000000001188', 'loanLmtQry', '20200910', '175144', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '175144', ' ', ' ', '20200910175153+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004856', ' ', '20200909000000000000000646', 'lmtReview', '20200910', '210111', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '210111', ' ', ' ', '20200910210119+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca077000000000001', 'CPS0020200910000000000000113149', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004867', ' ', '20200910000000000000001278', 'loanLmtQry', '20200910', '210336', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '210336', ' ', ' ', '20200910210342+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200910000000000000004868', ' ', '20200910000000000000001279', 'loanLmtQry', '20200910', '210344', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '210344', ' ', ' ', '20200910210349+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200910000000000000004895', 'LNS0020200910000000000000004857', ' ', 'loanRequest', '20200910', '210751', '2050000000000069', ' ', '01', 'KES', 50000.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200910', '210751', ' ', ' ', '20200910210810+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca078000000000001', '20200910000000000000328017', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005491', ' ', '20200910000000000000000978', 'lmtReview', '20200911', '164656', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '164656', ' ', ' ', '20200911164707+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000001', 'CPS0020200911000000000000114024', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005495', ' ', '20200911000000000000001388', 'loanLmtQry', '20200911', '164835', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '164835', ' ', ' ', '20200911164841+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005504', ' ', '20200911000000000000001389', 'loanLmtQry', '20200911', '164845', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '164845', ' ', ' ', '20200911164849+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200911000000000000005508', 'LNS0020200911000000000000005492', ' ', 'loanRequest', '20200911', '164927', '2050000000000076', ' ', '01', 'KES', 100000.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '164927', ' ', ' ', '20200911164945+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca088000000000001', '20200911000000000000343033', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005507', ' ', ' ', 'lmtReview', '20200911', '164943', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '164943', ' ', ' ', '20200911164950+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000002', 'CPS0020200911000000000000114030', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005569', ' ', '20200910000000000000000978', 'lmtReview', '20200911', '170323', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170323', ' ', ' ', '20200911170330+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000003', 'CPS0020200911000000000000114056', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005571', ' ', '20200911000000000000001391', 'lmtReview', '20200911', '170352', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170352', ' ', ' ', '20200911170400+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000004', 'CPS0020200911000000000000114057', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005592', ' ', '20200911000000000000001401', 'loanLmtQry', '20200911', '170630', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170630', ' ', ' ', '20200911170637+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005594', ' ', '20200911000000000000001391', 'lmtReview', '20200911', '170632', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170632', ' ', ' ', '20200911170640+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000006', 'CPS0020200911000000000000114069', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005596', ' ', '20200911000000000000001403', 'loanLmtQry', '20200911', '170640', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170640', ' ', ' ', '20200911170645+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005599', ' ', '20200911000000000000001391', 'lmtReview', '20200911', '170811', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '170811', ' ', ' ', '20200911170827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000001', 'CPS0020200911000000000000114076', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS7220200911000000000000005617', 'LNS0020200911000000000000005570', ' ', 'loanRequest', '20200911', '171039', '2050000000000083', ' ', '01', 'KES', 100000.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '171039', ' ', ' ', '20200911171100+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca089000000000002', '20200911000000000000344036', 'MSHWARI');
INSERT INTO `t_lmt_jnl` VALUES ('LNS0020200911000000000000005633', ' ', '20200911000000000000001391', 'lmtReview', '20200911', '171209', ' ', ' ', '10', ' ', 0.00, ' ', ' ', 'S', 'N', ' ', 'LNS00000', 'SUCCESS', '20200911', '171209', ' ', ' ', '20200911171216+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000002', 'CPS0020200911000000000000114088', 'MSHWARI');

-- ----------------------------
-- Table structure for t_lmt_limit
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_limit`;
CREATE TABLE `t_lmt_limit`  (
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `ORG_CD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Organ',
  `AGR_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_AGR_NO|Loan agreement number',
  `LMT_DESC` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_MIDDLE|Limit description',
  `LMT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_TYP|Limit type',
  `USE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'USE_MOD|Use mode',
  `COL_MOD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_MOD|COL_MOD',
  `LMT_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Limit currency',
  `CR_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|CR_LMT',
  `LMT_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Limit term',
  `LMT_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Limit loan term unit',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effect date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiration date',
  `FST_DRW_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First draw date',
  `DRW_BEG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of draw',
  `DRW_EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiration date of draw',
  `RVW_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_FLG|RVW_FLG',
  `RVW_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|RVW_TERM',
  `CAN_RSC_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|x days after the loan is settled can the loan restrict be lifted',
  `RVW_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|RVW_TERM_UN',
  `NXT_RVW_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|NXT_RVW_DT',
  `BUSS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business number',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Risk level',
  `RSK_WGHT` decimal(6, 2) NOT NULL DEFAULT 0.00 COMMENT 'WT|Risk weight',
  `BRC_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization number',
  `MNG_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Manage number',
  `LMT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_STS|Limit status',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_STS|Status',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Update organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `CHK_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Check organization',
  `CHK_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Check operator',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check date',
  `ATH_MNG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|ATH_MNG',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `OLD_LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|T24  limit number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `LMT_UPD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_UPD_FLG|Limit update flg',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  PRIMARY KEY (`LMT_NO`) USING BTREE,
  INDEX `N3_T_LMT_LIMIT`(`PRD_SET_CD`) USING BTREE,
  INDEX `NI2_T_LMT_LIMIT`(`CI_NO`) USING BTREE,
  INDEX `N1_T_LMT_LIMIT`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit base information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_limit
-- ----------------------------
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200903000000000000000073', 110000000000011, 1100000000021, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200903', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200903', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200903201514+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200904000000000000000087', 110000000000011, 1100000000021, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200904', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200904', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200904181700+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200904000000000000000096', 110000000000011, 1100000000021, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200904', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200904', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200904193351+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200907000000000000000317', 110000000000021, 1100000000023, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200907', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200907', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200907172520+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000485', 110000000000038, 1100000000041, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908152523+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca044000000000016', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000487', 110000000000039, 1100000000042, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908152834+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca044000000000020', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000488', 110000000000039, 1100000000042, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908195738+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000525', 110000000000039, 1100000000042, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908195745+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000526', 110000000000028, 1100000000031, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205539+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000549', 110000000000028, 1100000000031, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205546+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200908000000000000000550', 110000000000028, 1100000000031, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200908', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200908', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908205551+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000000563', 110000000000041, 1100000000044, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909101232+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca048000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000000564', 110000000000041, 1100000000044, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909102717+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000000569', 110000000000041, 1100000000044, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909102729+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001282', 110000000000041, 1100000000045, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180208+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca049000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001283', 110000000000041, 1100000000045, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180536+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001302', 110000000000041, 1100000000045, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909180548+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001330', 110000000000041, 1100000000046, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181142+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca049000000000002', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001331', 110000000000041, 1100000000046, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181523+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001350', 110000000000041, 1100000000046, ' ', ' ', ' ', '1', 'R', '100000', ' ', 0.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909181532+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001601', 110000000000041, 1100000000047, ' ', ' ', ' ', '1', 'R', '100000', ' ', 10000.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193057+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca050000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001602', 110000000000041, 1100000000047, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193203+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200909000000000000001613', 110000000000041, 1100000000047, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200909', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200909', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200909193212+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000002151', 110000000000042, 1100000000049, ' ', ' ', ' ', '1', 'R', '100000', ' ', 10000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910103008+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca141000000000005', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000002152', 110000000000042, 1100000000049, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910144836+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003187', 110000000000042, 1100000000049, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910144845+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003188', 110000000000026, 1100000000028, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151423+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003315', 110000000000026, 1100000000028, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151432+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003316', 110000000000026, 1100000000028, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910151439+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003354', 110000000000041, 1100000000050, ' ', ' ', ' ', '1', 'R', '100000', ' ', 10000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152333+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca063000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003367', 110000000000041, 1100000000050, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152536+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003368', 110000000000041, 1100000000050, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910152543+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003623', 110000000000041, 1100000000052, ' ', ' ', ' ', '1', 'R', '100000', ' ', 10000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910162347+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca064000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003624', 110000000000041, 1100000000052, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163149+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000003667', 110000000000041, 1100000000052, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163158+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004035', 110000000000041, 1100000000053, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175024+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca066000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004036', 110000000000041, 1100000000053, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175140+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004049', 110000000000041, 1100000000053, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910175153+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004857', 110000000000041, 1100000000054, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210118+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca077000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004858', 110000000000041, 1100000000054, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210342+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200910000000000000004869', 110000000000041, 1100000000054, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200910', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200910', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210349+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005492', 110000000000042, 1100000000055, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164706+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca088000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005493', 110000000000042, 1100000000055, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164841+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005506', 110000000000042, 1100000000055, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164849+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005510', 110000000000043, 1100000000056, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164950+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca088000000000002', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005570', 110000000000042, 1100000000057, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170330+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca088000000000003', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005580', 110000000000043, 1100000000058, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170400+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca088000000000004', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005581', 110000000000042, 1100000000057, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170637+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005595', 110000000000043, 1100000000059, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170640+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca088000000000006', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005598', 110000000000042, 1100000000057, ' ', ' ', ' ', '1', 'R', '100000', ' ', 50000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170644+08', 'lns_region.loan-service_1_1', ' ', 'O!IAS!', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005612', 110000000000043, 1100000000060, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911170827+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca089000000000001', ' ', 'MSHWARI', ' ');
INSERT INTO `t_lmt_limit` VALUES ('LNS0020200911000000000000005634', 110000000000043, 1100000000061, ' ', ' ', ' ', '1', 'R', '100000', ' ', 100000.00, 0, ' ', '20200911', ' ', ' ', ' ', ' ', ' ', 0, 0, ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', '0', ' ', ' ', '20200911', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911171216+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!userRegistermca089000000000002', ' ', 'MSHWARI', ' ');

-- ----------------------------
-- Table structure for t_lmt_lmtext
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_lmtext`;
CREATE TABLE `t_lmt_lmtext`  (
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `FLT_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Float rate',
  `CRED_AMT` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total credit limit',
  `CRED_USE` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Used credit limit',
  `CRED_AVA` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available credit limit',
  `CRED_NON` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non Available credit limit',
  `GTE_AMT` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total collateral limit',
  `GTE_USE` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Used collateral limit',
  `GTE_AVA` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available collateral limit',
  `GTE_NON` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non available collateral limit',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  PRIMARY KEY (`LMT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit extend information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_lmtext
-- ----------------------------
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200903000000000000000073', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200903201514+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200904000000000000000087', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200904181700+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200904000000000000000096', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200904193351+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200907000000000000000317', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200907172520+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000485', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908152523+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000016', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000487', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908152834+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca044000000000020', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000488', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908195738+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000525', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908195745+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000526', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908205540+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000549', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908205546+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200908000000000000000550', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200908205552+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000000563', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909101232+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca048000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000000564', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909102718+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000000569', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909102729+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001282', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909180208+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001283', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909180536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001302', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909180549+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001330', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909181142+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca049000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001331', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909181523+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001350', 0.000000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909181532+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001601', 0.000000, 10000.00, 1.00, 9999.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909203430+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000003', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001602', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909193203+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200909000000000000001613', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200909193212+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000002151', 0.000000, 10000.00, 100.00, 9900.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910155641+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000002152', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910144836+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003187', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910144845+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003188', 0.000000, 50000.00, 200.00, 49800.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910160801+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca064000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003315', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910151432+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003316', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910151439+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003354', 0.000000, 10000.00, 20.00, 9980.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910154721+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000005', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003367', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910152536+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003368', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910152543+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003623', 0.000000, 10000.00, 2000.00, 8000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910163247+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca065000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003624', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910163149+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000003667', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910163158+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004035', 0.000000, 10000000.00, 0.00, 10000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910175024+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca066000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004036', 0.000000, 5000000.00, 0.00, 5000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910175141+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004049', 0.000000, 5000000.00, 0.00, 5000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910175153+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004857', 0.000000, 100000.00, 50000.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910210809+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca078000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004858', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910210342+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200910000000000000004869', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200910210349+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005492', 0.000000, 100000.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911164945+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca088000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005493', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911164841+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005506', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911164849+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005510', 0.000000, 100000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911164950+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005570', 0.000000, 100000.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911171100+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca089000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005580', 0.000000, 100000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911170400+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000004', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005581', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911170637+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005595', 0.000000, 100000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911170640+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca088000000000006', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005598', 0.000000, 50000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911170645+08', 'lns_region.loan-service_1_1', 'O!IAS!', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005612', 0.000000, 100000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911170827+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_lmt_lmtext` VALUES ('LNS0020200911000000000000005634', 0.000000, 100000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', '20200911171216+08', 'lns_region.loan-service_1_1', 'O!SSWR!userRegistermca089000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_lmt_prdgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_prdgroup`;
CREATE TABLE `t_lmt_prdgroup`  (
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product group code',
  `PRD_GRP_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NM|Product group name',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flg',
  `PRD_GRP_DSC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Describe',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Operator number',
  `CRE_BRC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_BR_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_BR_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  PRIMARY KEY (`PRD_GRP_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product group base information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_prdgroup
-- ----------------------------
INSERT INTO `t_lmt_prdgroup` VALUES ('MSHWARI', '2', 'Y', ' ', ' ', ' ', ' ', ' ', 'keT00001', '20200904', '114902', ' ', 'keT00002', '20200904', '132414', '20200904132731+03', 'loan-service.lns.s_0_12', 'W!completeFirstCheckbui.s_0_15477000000000001', ' ', '20200904132414', '20200904132157', ' ', ' ');

-- ----------------------------
-- Table structure for t_lmt_prdinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_prdinfo`;
CREATE TABLE `t_lmt_prdinfo`  (
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product group code',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NM|Product name',
  `LMT_PREC` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT 'PERCENT|Limit percent',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_BR_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_BR_NO|Last update agency',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_GRP_CD`, `PRD_CD`) USING BTREE,
  UNIQUE INDEX `UI1_T_LMT_PRDINFO`(`PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Product information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_prdinfo
-- ----------------------------
INSERT INTO `t_lmt_prdinfo` VALUES ('MSHWARI', 'LONGEN01', ' ', 100.00, ' ', ' ', 'keT00002', '20200904', '132414', ' ', ' ', ' ', ' ', '20200904132731+03', 'loan-service.lns.s_0_16', 'W!completeFirstCheckbui.s_0_15477000000000001', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_lmt_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_relation`;
CREATE TABLE `t_lmt_relation`  (
  `LMT_NO1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `LMT_NO2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `REL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COL_REL_TYP|Limit relation type',
  `LMT_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `LMT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT| Limit amount',
  `LMT_PER` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Collateral ratio',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Collateral status',
  `CRT_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `CHK_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Check organ',
  `CHK_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Check operator number',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`LMT_NO1`, `LMT_NO2`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit relationship table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lmt_tmplmt
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_tmplmt`;
CREATE TABLE `t_lmt_tmplmt`  (
  `TMP_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Temp number',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TMP_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TMP_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Temp limit',
  `TMP_TM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'LMT_TRM|Temp limit term',
  `TMP_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Temp limit term unit',
  `TMP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Temp limit status',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `CRE_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Create organ',
  `CRE_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Create journal number',
  `UPD_BRC` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update organ',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator number',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check date',
  `CHK_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Check journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`TMP_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Temporary limit information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lmt_tot
-- ----------------------------
DROP TABLE IF EXISTS `t_lmt_tot`;
CREATE TABLE `t_lmt_tot`  (
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Limit number',
  `TOT_USE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total use number',
  `CNT_USE` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Use count',
  `FST_USE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First use date',
  `LST_USE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last use date',
  `TOT_RET_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|TOT_RET_AMT',
  `CNT_RET` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|CNT_RET',
  `FST_RET_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|FST_RET_DT',
  `LST_RET_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|LST_RET_DT',
  `FST_OUT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First out date',
  `OUT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Out date',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update oprator',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`LMT_NO`) USING BTREE,
  INDEX `N1_T_LMT_TOT`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Limit use/recover table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lmt_tot
-- ----------------------------
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200909000000000000001601', 1.00, 1, '20200909', '20200909', 0.00, 0, ' ', ' ', ' ', ' ', '20200909', '20200909203430+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca050000000000003', '20200909000000000000282062');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200910000000000000002151', 100.00, 1, '20200910', '20200910', 0.00, 0, ' ', ' ', ' ', ' ', '20200910', '20200910155642+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca150000000000001', '20200910000000000000307021');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200910000000000000003188', 200.00, 1, '20200910', '20200910', 0.00, 0, ' ', ' ', ' ', ' ', '20200910', '20200910160801+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca064000000000001', '20200910000000000000308016');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200910000000000000003354', 20.00, 1, '20200910', '20200910', 0.00, 0, ' ', ' ', ' ', ' ', '20200910', '20200910154721+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca063000000000005', '20200910000000000000304100');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200910000000000000003623', 2000.00, 1, '20200910', '20200910', 0.00, 0, ' ', ' ', ' ', ' ', '20200910', '20200910163247+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca065000000000001', '20200910000000000000309027');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200910000000000000004857', 50000.00, 1, '20200910', '20200910', 0.00, 0, ' ', ' ', ' ', ' ', '20200910', '20200910210810+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca078000000000001', '20200910000000000000328017');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200911000000000000005492', 100000.00, 1, '20200911', '20200911', 0.00, 0, ' ', ' ', ' ', ' ', '20200911', '20200911164945+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca088000000000001', '20200911000000000000343033');
INSERT INTO `t_lmt_tot` VALUES ('LNS0020200911000000000000005570', 100000.00, 1, '20200911', '20200911', 0.00, 0, ' ', ' ', ' ', ' ', '20200911', '20200911171100+08', 'lns_region.loan-service_1_1', ' ', 'O!SSWR!loanApplymca089000000000002', '20200911000000000000344036');

-- ----------------------------
-- Table structure for t_lns_acbaljrn
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_acbaljrn`;
CREATE TABLE `t_lns_acbaljrn`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System journal number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Overdraft journal status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Conntion',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request busness number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_CIPHER|Mobile number cipher',
  `MBL_NO_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Mobile number mask',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction date',
  `LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Account number',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `SUB_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|MPESA Subscriber ID',
  `PRINCIPAL_OSD` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account aount',
  `AVA_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account aount',
  `TOTAL_OSD` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account aount',
  `LON_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee ',
  `LON_FEE_OSD1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee outstanding',
  `LON_FEE_OSD2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee outstanding',
  `LON_FEE_OSD3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee outstanding',
  `AC_STS_DESC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Overdraft journal status',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LNS_ACBALJRN`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_adjperd
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_adjperd`;
CREATE TABLE `t_lns_adjperd`  (
  `APL_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Term adjustment journal number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `OLD_DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Original due date',
  `OLD_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Original execution rate',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan balance',
  `ADJ_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Adjustment period',
  `ADJ_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE_UNIT|Adjustment period unit',
  `NEW_DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|New due date',
  `NEW_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|New execution rate',
  `ADJ_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|New adjustment amount',
  `EXE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Execution date',
  `EXE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Execution time',
  `VCH_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VCH_NO|Voucher number',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'P' COMMENT 'TX_STS|Task status',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SET_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  PRIMARY KEY (`APL_JRN`) USING BTREE,
  INDEX `N1_T_LNS_ADJPERD`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account term adjustment table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_adjperd_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_adjperd_copy1`;
CREATE TABLE `t_lns_adjperd_copy1`  (
  `APL_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Term adjustment journal number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `OLD_DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Original due date',
  `OLD_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Original execution rate',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan balance',
  `ADJ_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Adjustment period',
  `ADJ_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE_UNIT|Adjustment period unit',
  `NEW_DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|New due date',
  `NEW_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|New execution rate',
  `ADJ_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|New adjustment amount',
  `EXE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Execution date',
  `EXE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Execution time',
  `VCH_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VCH_NO|Voucher number',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'P',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0,
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SET_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`APL_JRN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_batct
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_batct`;
CREATE TABLE `t_lns_batct`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TSK_TYP|Task type',
  `TSK_FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Task file date',
  `FIL_DT_SEQ` bigint(20) NOT NULL DEFAULT 1 COMMENT 'JRN_SEQ|Batch task files date sequence',
  `TSK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|File name of batch task',
  `FIL_RCV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Batch task file recevied date',
  `TSK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Begin time of batch time',
  `TSK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Task expected end time ',
  `FIL_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|File total number of transaction',
  `SUC_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of success',
  `FAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of failsure',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`BAT_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_BATCT`(`TSK_TYP`, `TSK_FIL_DT`) USING BTREE,
  INDEX `NI1_T_LNS_BATCT`(`BAT_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch task EOD control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_batfilct
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_batfilct`;
CREATE TABLE `t_lns_batfilct`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Batch number',
  `FIL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|Batch file type 00:refound insurance fee file',
  `FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Batch file create date',
  `BAT_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|File name of batch task',
  `PRO_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Begin time of batch time',
  `PRO_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Task expected end time',
  `FIL_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|File total number of transaction',
  `SUC_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of success',
  `FAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of failsure',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_batfildtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_batfildtl`;
CREATE TABLE `t_lns_batfildtl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `FIL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|Batch file type 00:refound insurance fee file',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JNR_NO|Unique key of task file refers to task ID',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `GL_AC` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ITM_NO|Accounting items number',
  `SAS_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|General saving acount',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction status',
  `TEM_ID` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEM_ID|Template number',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO | Customer no.',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD | Product code',
  `TOT_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT | Total limit',
  `AVA_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT | Available limit',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI2_T_LNS_BATFILDTL`(`TX_STS`) USING BTREE,
  INDEX `NI1_T_LNS_BATFILDTL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batct file detail table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_batntcct
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_batntcct`;
CREATE TABLE `t_lns_batntcct`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TSK_TYP|Task type',
  `TSK_FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Task file date',
  `FIL_DT_SEQ` bigint(20) NOT NULL DEFAULT 1 COMMENT 'JRN_SEQ|Batch task files date sequence',
  `TSK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|File name of batch task',
  `FIL_RCV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Batch task file recevied date',
  `TSK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Begin time of batch time',
  `TSK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Task expected end time ',
  `FIL_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|File total number of transaction',
  `SUC_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of success',
  `FAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of failsure',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|remark',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `EVT_CD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NTC_EVT_CD|Event ID',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`BAT_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_BATNTCCT`(`TSK_FIL_DT`, `EVT_CD`, `PRD_CD`, `TSK_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Notify batch task EOD control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_batpm
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_batpm`;
CREATE TABLE `t_lns_batpm`  (
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TSK_TYP|Task types',
  `TSK_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_LONG|Task description',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effective flag',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|the branch code created this data',
  `CRT_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Created operators',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|lastest updated branch',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|lastest updated oprator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Lastest updated date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Lastest updated time',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`TSK_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'the parameter table of batch tasks, which posts different task parameter' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_callcrdtrwd
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_callcrdtrwd`;
CREATE TABLE `t_lns_callcrdtrwd`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REG_MBL_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_CIPHER|Register mobile cipher',
  `REG_MBL_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Register mobile mask',
  `CUS_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Customer name cipher',
  `CUS_NM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_MASK|Customer name mask',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `FST_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Name cipher',
  `MID_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Name cipher',
  `LAST_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Name cipher',
  `CLR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Clear date',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FST_LON_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_AGE` bigint(20) NOT NULL DEFAULT 0,
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_LNS_CALLCRDTRWD`(`AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Table for call credit reward information' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_clractdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_clractdtl`;
CREATE TABLE `t_lns_clractdtl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Task type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `ACT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LNS_CLRACTDTL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Clear action detail table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_hldacbal
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_hldacbal`;
CREATE TABLE `t_lns_hldacbal`  (
  `SAS_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `LON_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold aomount',
  `HLD_SPS_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold surplus amount',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Inner use No',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business re No',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node name where transaction occurs',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Journal status',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction request journal number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Blocked No',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`LON_AC_NO`) USING BTREE,
  INDEX `N1_T_LNS_HLDACBAL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_hldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_hldjnl`;
CREATE TABLE `t_lns_hldjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Blocked No',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction request journal number',
  `REQ_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Request system channel',
  `REQ_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Request business channel',
  `LON_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold aomount',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Inner use No',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Unhold date',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business re No',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node name where transaction occurs',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Journal status',
  `SAS_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `HLD_SPS_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold surplus amount',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `OPP_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPP_NO|Opposite',
  `UNHLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Unhold journal number',
  `UNHLD_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Unhold transaction date',
  `UNHLD_TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Unhold transaction time',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effect flag',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI_T_LNS_HLDJNL`(`HLD_NO`) USING BTREE,
  INDEX `N2_T_LNS_HLDJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'loan service non-principal transaction journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_mngjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_mngjnl`;
CREATE TABLE `t_lns_mngjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System journal number',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|request  journal number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Account number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Overdraft journal status',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Overdraft journal status',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Partner journal number',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request busness number',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK_MIDDLE|Remark',
  `INP_DAT` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_DAT|Input data',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Parter id',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `APL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Loan application number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI2_T_LNS_MNGJNL`(`SYS_CNL`, `APL_NO`) USING BTREE,
  INDEX `N1_T_LNS_MNGJNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `UI1_T_LNS_MNGJNL`(`REQ_JRN_NO`, `SYS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_mtnfeejrn
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_mtnfeejrn`;
CREATE TABLE `t_lns_mtnfeejrn`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan balance',
  `MTN_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maintain fee',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'P' COMMENT 'TX_STS|Task status',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SET_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `MTN_EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Maintain expiry date',
  `OUTSTD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan outstanding amount',
  `MTN_STR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Maintain start date',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N2_T_LNS_MTNFEEJRN`(`USR_NO`) USING BTREE,
  INDEX `N1_T_LNS_MTNFEEJRN`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan service maintain fee table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_odtxjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_odtxjnl`;
CREATE TABLE `t_lns_odtxjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System journal number',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System journal number',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System journal number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Overdraft journal status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Conntion',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request busness number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_CIPHER|Mobile number cipher',
  `MBL_NO_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Mobile number mask',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction date',
  `PRINCIPAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account aount',
  `TOTAL_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction fee',
  `LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Account number',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `CUS_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Customer name cipher',
  `CUS_NM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_MASK|Customer name mask',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `TX_TYP_DESC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Tansaction type name',
  `TX_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Tansaction type name',
  `JRN_STS_DESC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Overdraft journal status',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LNS_ODTXJNL`(`BAT_NO`) USING BTREE,
  INDEX `NI1_T_LNS_ODTXJNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `NI2_T_LNS_ODTXJNL`(`JRN_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_outtxjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_outtxjnl`;
CREATE TABLE `t_lns_outtxjnl`  (
  `LNS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Unified loan service journal No',
  `LNS_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Loan transaction date',
  `LNS_TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Loan service transaction date',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction request journal No',
  `LON_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Inner user No',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_TX_FLG|Reversal transaction flag:N Normal C:Reversal',
  `OUT_REQ_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Outter request journal No',
  `OUT_REQ_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Outter request date',
  `OUT_REQ_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Outter request time',
  `OUT_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Outter system channel',
  `OPP_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|send disburement-repayment amount',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency,	ignore RMB',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|status of return',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code of processing transaction',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Description inforamtion of transaction code',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node name where transaction occurs',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP| Timestamp',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business reference No',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`LNS_JRN_NO`, `LNS_TX_DT`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_OUTTXJNL`(`REQ_JRN_NO`, `BUS_TYP`) USING BTREE,
  INDEX `N2_T_LNS_OUTTXJNL`(`REQ_JRN_NO`) USING BTREE,
  INDEX `N1_T_LNS_OUTTXJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'loan service sent out journal number' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_rstccs
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_rstccs`;
CREATE TABLE `t_lns_rstccs`  (
  `EC_SCE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EC_SCE_ID|Campaign scene ID',
  `EC_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EC_ID|Campaign ID',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AC_NO|Account number',
  `OST_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Outstanding amount',
  `DWN_PAY_PCT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Ratio of the outstanding amount',
  `DWN_PAY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Down payment the outstanding amount in W day',
  `TOT_REPAY_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total repayment amount',
  `TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Loan term',
  `TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Loan term unit',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner id',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product info.',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT|Post date',
  `CCS_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCS_STS|Business key words description',
  `SMS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SMS_TMP_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request number',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  PRIMARY KEY (`EC_ID`, `AC_NO`) USING BTREE,
  INDEX `NI2_T_LNS_RSTCCS`(`BAT_NO`, `CCS_STS`) USING BTREE,
  INDEX `NI1_T_LNS_RSTCCS`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Targeted  customers Down payment & Restructure info.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_rstjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_rstjnl`;
CREATE TABLE `t_lns_rstjnl`  (
  `RST_APL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction request journal number',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business reference No',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Request system channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Request business channel',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product info.',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner id',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `RST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Restruct loan account number',
  `NEW_AC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Whether create new account',
  `NEW_CONT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Contract number',
  `LON_RST_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_RST_TYP|Loan restruct type',
  `DBS_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Disburse account number',
  `DBS_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Disburse account type',
  `RSK_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CLS|CUstomer risk class',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expired date',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expired time',
  `TERMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Terms',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `REPAY_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay amount',
  `TOP_UP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Top up amount',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal interest execution rate',
  `FEE_CLT_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_CLT_MTH|Loan restruct fee collect method',
  `FAC_FEE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|facility fee',
  `TOP_UP_FEE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Top up fee',
  `ADJ_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_ADJ_TYP|Adjust type',
  `RST_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Restruct fee',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `RST_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_RST_STS|Restruct status',
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty interest execution rate',
  `RST_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RST_MOD|Restruct mode',
  `REPAY_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REPAY_MOD|Repay mode',
  `FEE_JSON` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'fee json|TEXT',
  `TAX_JSON` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'tax json|TEXT',
  `LON_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Loan term unit',
  `TERM_UNIT_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Loan term unit number',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code of processing transaction',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Description inforamtion of transaction code',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  PRIMARY KEY (`RST_APL_NO`) USING BTREE,
  INDEX `NI1_T_LNS_RSTJNL`(`RST_AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_tskdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tskdtl`;
CREATE TABLE `t_lns_tskdtl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Task type',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `ACT_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_CD|portfolio action type',
  `OPP_REL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPP_AC_NO|Opposite party related No',
  `REL_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'REL_DAY|Related days',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Limit effective flg',
  `OPP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_OPP_TYP|Action object type',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `ACT_OBJ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_TYP|Portfolio action object',
  `REF_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Reference journal number',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LNS_TSKDTL`(`TSK_ID`, `BAT_NO`) USING BTREE,
  INDEX `N2_T_LNS_TSKDTL`(`TSK_TYP`, `TX_STS`, `EFF_FLG`, `AC_NO`) USING BTREE,
  INDEX `N1_T_LNS_TSKDTL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch task EOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_tskdtl_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tskdtl_copy1`;
CREATE TABLE `t_lns_tskdtl_copy1`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Task type',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `ACT_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_CD|portfolio action type',
  `OPP_REL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPP_AC_NO|Opposite party related No',
  `REL_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'REL_DAY|Related days',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Limit effective flg',
  `OPP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_OPP_TYP|Action object type',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `ACT_OBJ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_TYP|Portfolio action object',
  `REF_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Reference journal number',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch task EOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_tskntcdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tskntcdtl`;
CREATE TABLE `t_lns_tskntcdtl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Unique key of task file refers to task ID',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TSK_TYP|Task type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `EVT_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NTC_EVT_CD|Event ID',
  `SND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Send_date',
  `SND_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Send_time',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `TSK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|retries count',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `SUC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Send_success_date',
  `SUC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Send_success_time',
  `AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|amount',
  `RSV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Reserve date',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Parter id',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `ACT_OBJ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_OBJ|Portfolio action object',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD |Reserved field',
  `RSV_FLD2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD |Reserved field',
  `SMS_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TMP_ID|SMS template number',
  `SND_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SND_TYP|Send_type',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `MBL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO |Mobile number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LNS_TSKNTCDTL`(`TSK_ID`, `ACT_OBJ`, `BAT_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_TSKNTCDTL`(`BAT_NO`, `TSK_ID`) USING BTREE,
  INDEX `NI1_T_LNS_TSKNTCDTL`(`SND_DT`, `TSK_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch notice task EOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lns_tskntcdtl
-- ----------------------------
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200909000000000000001856', '2050000000000015', '00', '2050000000000015', 1100000000047, 'LNS_7102_01', '20200909', '203442', '20180618', ' ', 'I', ' ', '20200909', '203442', '20200909203442+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200909000000000000001856', 'LONGEN01', 1.00, ' ', ' ', 0.00, ' ', 'O!SSWR!loanApplymca050000000000003', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200910000000000000003459', '2050000000000022', '00', '2050000000000022', 1100000000050, 'LNS_7102_01', '20200910', '154732', '20180618', ' ', 'I', ' ', '20200910', '154732', '20200910154732+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200910000000000000003459', 'LONGEN01', 20.00, ' ', ' ', 0.00, ' ', 'O!SSWR!loanApplymca063000000000005', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200910000000000000003505', '2050000000000039', '00', '2050000000000039', 1100000000049, 'LNS_7102_01', '20200910', '155652', '20180618', ' ', 'I', ' ', '20200910', '155652', '20200910155652+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200910000000000000003505', 'LONGEN01', 100.00, ' ', ' ', 0.00, ' ', 'O!SSWR!loanApplymca150000000000001', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200910000000000000003561', '2050000000000046', '00', '2050000000000046', 1100000000028, 'LNS_7102_01', '20200910', '160810', '20180618', ' ', 'I', ' ', '20200910', '160810', '20200910160810+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200910000000000000003561', 'LONGEN01', 200.00, ' ', ' ', 0.00, ' ', 'O!SSWR!loanApplymca064000000000001', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200910000000000000003669', '2050000000000052', '00', '2050000000000052', 1100000000052, 'LNS_7102_01', '20200910', '163257', '20180618', ' ', 'I', ' ', '20200910', '163257', '20200910163257+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200910000000000000003669', 'LONGEN01', 2000.00, ' ', ' ', 0.00, ' ', 'O!SSWR!loanApplymca065000000000001', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200910000000000000004895', '2050000000000069', '00', '2050000000000069', 1100000000054, 'LNS_7102_01', '20200910', '210818', '20180618', ' ', 'I', ' ', '20200910', '210818', '20200910210818+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200910000000000000004895', 'LONGEN01', 50085.00, ' ', ' ', 85.00, ' ', 'O!SSWR!loanApplymca078000000000001', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200911000000000000005508', '2050000000000076', '00', '2050000000000076', 1100000000055, 'LNS_7102_01', '20200911', '164956', '20180618', ' ', 'I', ' ', '20200911', '164956', '20200911164956+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200911000000000000005508', 'LONGEN01', 100170.00, ' ', ' ', 170.00, ' ', 'O!SSWR!loanApplymca088000000000001', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');
INSERT INTO `t_lns_tskntcdtl` VALUES ('LNS7220200911000000000000005617', '2050000000000083', '00', '2050000000000083', 1100000000057, 'LNS_7102_01', '20200911', '171111', '20180618', ' ', 'I', ' ', '20200911', '171111', '20200911171111+08', 'lns_region.loan-service_1_1', 0, 'LNS7220200911000000000000005617', 'LONGEN01', 100170.00, ' ', ' ', 170.00, ' ', 'O!SSWR!loanApplymca089000000000002', 'SFC', 'MSHWARI', ' ', ' ', ' ', ' ', '0', 0, ' ', '72');

-- ----------------------------
-- Table structure for t_lns_tskoutdadadtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tskoutdadadtl`;
CREATE TABLE `t_lns_tskoutdadadtl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Unique key of task file refers to task ID',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Task type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `SND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|SND_date',
  `SND_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|SND_time',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `TSK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|retries count',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|product code',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch task\r\nEOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_tsksasdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tsksasdtl`;
CREATE TABLE `t_lns_tsksasdtl`  (
  `TSK_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Unique key of task file refers to task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `ATO_ACT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Automatic amount',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `TSK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Batch task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|retries count',
  `TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TSK_TYP|Task type',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `OPP_REL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPP_AC_NO|Opposite party related No',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `ACT_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTF_ACT_CD|portfolio action type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`TSK_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_TSKSASDTL`(`TSK_ID`, `BAT_NO`) USING BTREE,
  INDEX `NI2_T_LNS_TSKSASDTL`(`TSK_STS`, `BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch repayment task EOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_tsksassubdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_tsksassubdtl`;
CREATE TABLE `t_lns_tsksassubdtl`  (
  `TSK_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `OPP_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|retries count',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `REQ_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Request date',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Withdraw amount',
  `REL_TSK_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `OPP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_OPP_TYP|Opposite type',
  `TSK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Batch task status',
  `ATO_ACT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Automatic amount',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`TSK_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LNS_TSKSASSUBDTL`(`REQ_DT`, `REQ_JRN_NO`, `OPP_NO`) USING BTREE,
  INDEX `NI2_T_LNS_TSKSASSUBDTL`(`REL_TSK_NO`) USING BTREE,
  INDEX `NI1_T_LNS_TSKSASSUBDTL`(`OPP_NO`, `REL_TSK_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch repayment task EOD detailed table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lns_txjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_txjnl`;
CREATE TABLE `t_lns_txjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `USR_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CAP_SRC` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRC_STS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MBL_NO_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0,
  `LNS_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRZ_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRZ_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD1` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD2` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD3` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD4` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD5` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_DAT` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD6` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEE_CD7` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `COL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ACT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `REPAY_AMT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_PRIN` decimal(18, 2) NULL DEFAULT NULL,
  `TX_INT` decimal(18, 2) NULL DEFAULT NULL,
  `AC_STS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ',
  `TX_PEN` decimal(18, 2) NULL DEFAULT NULL,
  `TX_COMP` decimal(18, 2) NULL DEFAULT NULL,
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXC_RDF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OUT_STANDING_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TOT_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TOT_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TOT_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TOT_LMT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LON_USE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_LNS_TXJNL`(`RVS_TX_FLG`, `REQ_JRN_NO`, `SYS_CNL`) USING BTREE,
  INDEX `N5_T_LNS_TXJNL`(`TX_TYP`) USING BTREE,
  INDEX `N2_T_LNS_JNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `N3_T_LNS_TXJNL`(`USR_NO`) USING BTREE,
  INDEX `N4_T_LNS_TXJNL`(`AC_NO`) USING BTREE,
  INDEX `NI1_T_LNS_TXJNL`(`JRN_STS`, `PRC_STS`, `JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lns_txjnl
-- ----------------------------
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000692', '20200909', '143208', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258334', '20200909143439+08', 'lns_region.loan-service_1_1', 'O!SSWR!O!IAS!txnmng_iasCompensateIAS029000000000008', 'IAS7220200909000000000000000797', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258334', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000692\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258334\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000692\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258334\",\"reqId\":\"O!SSWR!O!IAS!txnmng_iasCompensateIAS029000000000008\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"143208\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258334\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000803\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258334\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000797\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000692\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258334', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000694', '20200909', '143506', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258338', '20200909143517+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000015', 'IAS7220200909000000000000000804', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258338', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000694\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258338\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258338\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000694\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258338\",\"reqId\":\"O!SSWR!loanApplymca049000000000015\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"143506\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258338\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000804\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258338\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000804\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000694\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258338', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000720', '20200909', '145230', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258354', '20200909145242+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000017', 'IAS7220200909000000000000000820', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258354', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000720\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258354\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258354\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000720\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"NativeMethodAccessorImpl.java:-2\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258354\",\"reqId\":\"O!SSWR!loanApplymca049000000000017\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"145230\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258354\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000820\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258354\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000820\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000720\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258354', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000794', '20200909', '153628', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1023', 'The age of customer  is illegal', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258393', '20200909153642+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000018', 'IAS7220200909000000000000000835', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258393', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000794\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258393\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258393\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000794\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258393\",\"reqId\":\"O!SSWR!loanApplymca049000000000018\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"153628\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258393\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000835\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258393\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000835\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000794\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258393', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000814', '20200909', '154812', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258410', '20200909154822+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000020', 'IAS7220200909000000000000000837', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258410', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000814\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258410\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258410\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000814\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"NativeMethodAccessorImpl.java:-2\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258410\",\"reqId\":\"O!SSWR!loanApplymca049000000000020\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"154812\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258410\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000837\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258410\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000837\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000814\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258410', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000842', '20200909', '155848', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258414', '20200909155901+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000021', 'IAS7220200909000000000000000846', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258414', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000842\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258414\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258414\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000842\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258414\",\"reqId\":\"O!SSWR!loanApplymca049000000000021\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"155848\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258414\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000846\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258414\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000846\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000842\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258414', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000858', '20200909', '160425', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258418', '20200909160435+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000022', 'IAS7220200909000000000000000855', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258418', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000858\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258418\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258418\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000858\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258418\",\"reqId\":\"O!SSWR!loanApplymca049000000000022\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"160425\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258418\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000855\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258418\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000855\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000858\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258418', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000893', '20200909', '161244', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000258437', '20200909161253+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000026', 'IAS7220200909000000000000000872', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258437', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000893\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258437\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258437\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000893\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258437\",\"reqId\":\"O!SSWR!loanApplymca049000000000026\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"161244\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258437\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000872\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258437\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000872\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000893\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258437', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000913', '20200909', '161635', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258441', '20200909161649+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000027', 'IAS7220200909000000000000000881', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258441', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000913\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258441\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258441\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000913\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258441\",\"reqId\":\"O!SSWR!loanApplymca049000000000027\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"161635\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258441\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000881\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258441\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000881\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000913\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258441', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000974', '20200909', '163408', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258445', '20200909163420+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000028', 'IAS7220200909000000000000000889', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258445', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000974\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258445\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258445\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000974\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258445\",\"reqId\":\"O!SSWR!loanApplymca049000000000028\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"163408\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258445\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000889\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258445\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000889\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000974\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258445', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000000990', '20200909', '163806', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258449', '20200909163818+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000029', 'IAS7220200909000000000000000890', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258449', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000000990\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258449\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258449\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000000990\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258449\",\"reqId\":\"O!SSWR!loanApplymca049000000000029\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"163806\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258449\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000890\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258449\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000890\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000000990\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258449', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001070', '20200909', '170257', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258454', '20200909170308+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000030', 'IAS7220200909000000000000000893', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258454', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001070\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258454\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258454\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001070\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258454\",\"reqId\":\"O!SSWR!loanApplymca049000000000030\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"170257\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258454\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000893\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258454\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000893\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001070\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258454', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001100', '20200909', '170953', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258458', '20200909171008+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000031', 'IAS7220200909000000000000000894', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258458', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001100\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258458\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258458\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001100\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258458\",\"reqId\":\"O!SSWR!loanApplymca049000000000031\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"170953\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258458\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000894\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258458\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000894\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001100\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258458', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001164', '20200909', '172635', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258475', '20200909172647+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000032', 'IAS7220200909000000000000000901', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258475', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001164\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258475\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258475\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001164\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258475\",\"reqId\":\"O!SSWR!loanApplymca049000000000032\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"172635\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258475\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000901\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258475\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000901\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001164\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258475', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001215', '20200909', '174307', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000021, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP6109', 'Not credit limit', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258479', '20200909174320+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000033', 'IAS7220200909000000000000000902', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258479', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001215\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258479\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13611134463\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258479\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001215\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258479\",\"reqId\":\"O!SSWR!loanApplymca049000000000033\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"174307\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258479\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000902\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258479\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000902\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001215\",\"txTyp\":\"72\",\"usrNo\":1100000000021}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258479', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001314', '20200909', '180755', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000045, ' ', ' ', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1041', 'The user is in loan restrict', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000258538', '20200909180806+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca049000000000034', 'IAS7220200909000000000000000910', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000258538', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001314\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000258538\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"15245573799\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000258538\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001314\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000258538\",\"reqId\":\"O!SSWR!loanApplymca049000000000034\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"180755\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000258538\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000910\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000258538\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000910\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001314\",\"txTyp\":\"72\",\"usrNo\":1100000000045}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000258538', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001616', '20200909', '193252', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000047, ' ', ' ', 'KES', 11.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1041', 'The user is in loan restrict', ' ', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000282017', '20200909193301+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000001', 'IAS7220200909000000000000000920', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000282017', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001616\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000282017\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"15945548278\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000282017\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001616\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000282017\",\"reqId\":\"O!SSWR!loanApplymca050000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"193252\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000282017\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":11.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000920\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000282017\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000920\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001616\",\"txTyp\":\"72\",\"usrNo\":1100000000047}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000282017', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001647', '20200909', '194137', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000047, ' ', ' ', 'KES', 11.00, 0.00, '0', ' ', '72', '7102', 'P', 'LA', ' ', ' ', ' ', ' ', ' ', 1, 'ApplyLoan', '20200909000000000000282021', '20200909194146+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000002', 'IAS7220200909000000000000000921', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000282021', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001647\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000282021\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"15945548278\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000282021\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001647\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000282021\",\"reqId\":\"O!SSWR!loanApplymca050000000000002\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"194137\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000282021\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":11.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000921\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000282021\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000921\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001647\",\"txTyp\":\"72\",\"usrNo\":1100000000047}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200909000000000000282021', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200909000000000000001856', '20200909', '203409', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000015', 1100000000047, '03FF99E19D9E61EE81A572DC68913464', '**y', 'KES', 1.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', 'AC7BC0909DCE03D1EAC9FE141D05F4C8', ' ', ' ', 2, 'ApplyLoan', '20200909000000000000282062', '20200909203442+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca050000000000003', 'IAS7220200909000000000000000954', '20200909', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909000000000000282062', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200909\",\"aplDt\":\"20200909\",\"aplNo\":\"LNS7220200909000000000000001856\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200909\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200909000000000000282062\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"15945548278\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200909000000000000282062\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200909\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200909000000000000001856\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200909000000000000282062\",\"reqId\":\"O!SSWR!loanApplymca050000000000003\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200909\",\"txTm\":\"203409\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200909000000000000282062\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":1.00,\"loanApplyContCO\":{\"contNo\":\"20200909000000000000000954\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200909000000000000282062\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200909000000000000000954\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200909000000000000001856\",\"txTyp\":\"72\",\"usrNo\":1100000000047}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 1.00, ' ', NULL, 0.00, 'CURRENT', NULL, NULL, '20200909000000000000282062', ' ', ' ', ' ', ' ', 1.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003213', '20200910', '145303', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000049, ' ', ' ', 'KES', 50.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1041', 'The user is in loan restrict', ' ', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000303035', '20200910145318+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca147000000000001', 'IAS7220200910000000000000001031', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000303035', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003213\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000303035\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13521699306\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000303035\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003213\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000303035\",\"reqId\":\"O!SSWR!loanApplymca147000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"145303\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000303035\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":50.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001031\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000303035\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001031\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003213\",\"txTyp\":\"72\",\"usrNo\":1100000000049}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000303035', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003334', '20200910', '151856', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000028, ' ', ' ', 'KES', 200.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1041', 'The user is in loan restrict', ' ', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000304059', '20200910151907+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000002', 'IAS7220200910000000000000001056', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000304059', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003334\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000304059\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18814720161\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000304059\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003334\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000304059\",\"reqId\":\"O!SSWR!loanApplymca063000000000002\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"151856\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000304059\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":200.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001056\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000304059\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001056\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003334\",\"txTyp\":\"72\",\"usrNo\":1100000000028}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000304059', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003382', '20200910', '152607', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000050, ' ', ' ', 'KES', 20.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1041', 'The user is in loan restrict', ' ', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000304083', '20200910152619+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000003', 'IAS7220200910000000000000001068', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000304083', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003382\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000304083\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111111\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000304083\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003382\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000304083\",\"reqId\":\"O!SSWR!loanApplymca063000000000003\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"152607\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000304083\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":20.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001068\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000304083\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001068\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003382\",\"txTyp\":\"72\",\"usrNo\":1100000000050}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000304083', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003459', '20200910', '154700', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000022', 1100000000050, '03FF99E19D9E61EE81A572DC68913464', '**y', 'KES', 20.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '132931245A4E74949391A6C064D54352', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000304100', '20200910154733+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000005', 'IAS7220200910000000000000001076', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000304100', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003459\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000304100\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111111\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000304100\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003459\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000304100\",\"reqId\":\"O!SSWR!loanApplymca063000000000005\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"154700\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000304100\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":20.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001076\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000304100\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001076\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003459\",\"txTyp\":\"72\",\"usrNo\":1100000000050}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 20.00, ' ', NULL, 0.00, 'CURRENT', NULL, NULL, '20200910000000000000304100', ' ', ' ', ' ', ' ', 20.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003494', '20200910', '155254', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000050, '03FF99E19D9E61EE81A572DC68913464', '**y', 'KES', 15.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LONP0001', 'Transaction failed', '132931245A4E74949391A6C064D54352', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000304112', '20200910155311+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca063000000000006', 'IAS7220200910000000000000001088', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000304112', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003494\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000304112\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111111\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000304112\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003494\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000304112\",\"reqId\":\"O!SSWR!loanApplymca063000000000006\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"155254\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000304112\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":15.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001088\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000304112\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001088\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003494\",\"txTyp\":\"72\",\"usrNo\":1100000000050}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000304112', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003505', '20200910', '155624', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000039', 1100000000049, 'BA148F5F71C63421293877E1E0F3883A', '********u', 'KES', 100.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '73E8869ECB690EE7CC6C53266032254C', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000307021', '20200910155652+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000001', 'IAS7220200910000000000000001091', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000307021', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003505\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000307021\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13521699306\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000307021\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003505\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000307021\",\"reqId\":\"O!SSWR!loanApplymca150000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"155624\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000307021\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":100.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001091\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000307021\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001091\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003505\",\"txTyp\":\"72\",\"usrNo\":1100000000049}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 100.00, ' ', NULL, 0.00, 'CURRENT', NULL, NULL, '20200910000000000000307021', ' ', ' ', ' ', ' ', 100.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003561', '20200910', '160742', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000046', 1100000000028, '6FFB4919EE050B65BFFC25A88FFC7013', '6FFB4919EE050B65BFFC25A88FFC7013', 'KES', 200.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', 'AB8220733EA0DAB51268F49CCBDBE9C1', '188****61', ' ', 2, 'ApplyLoan', '20200910000000000000308016', '20200910160811+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca064000000000001', 'IAS7220200910000000000000001099', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000308016', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003561\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000308016\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18814720161\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000308016\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003561\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000308016\",\"reqId\":\"O!SSWR!loanApplymca064000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"160742\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000308016\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":200.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001099\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000308016\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001099\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003561\",\"txTyp\":\"72\",\"usrNo\":1100000000028}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 200.00, ' ', NULL, 0.00, 'CURRENT', NULL, NULL, '20200910000000000000308016', ' ', ' ', ' ', ' ', 200.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003669', '20200910', '163228', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000052', 1100000000052, '03FF99E19D9E61EE81A572DC68913464', '**y', 'KES', 2000.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '00C818D9A15329CE119EB472CB2EB007', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000309027', '20200910163257+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca065000000000001', 'IAS7220200910000000000000001116', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000309027', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003669\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000309027\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111112\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000309027\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003669\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000309027\",\"reqId\":\"O!SSWR!loanApplymca065000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"163228\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000309027\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":2000,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001116\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000309027\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001116\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003669\",\"txTyp\":\"72\",\"usrNo\":1100000000052}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 2000.00, ' ', NULL, 0.00, 'CURRENT', NULL, NULL, '20200910000000000000309027', ' ', ' ', ' ', ' ', 2000.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000003712', '20200910', '164052', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000049, 'BA148F5F71C63421293877E1E0F3883A', '********u', 'KES', 99.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LONP0001', 'Transaction failed', '73E8869ECB690EE7CC6C53266032254C', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000307093', '20200910164111+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca150000000000002', 'IAS7220200910000000000000001126', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000307093', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000003712\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000307093\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13521699306\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000307093\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000003712\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000307093\",\"reqId\":\"O!SSWR!loanApplymca150000000000002\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"164052\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000307093\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":99.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001126\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000307093\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001126\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000003712\",\"txTyp\":\"72\",\"usrNo\":1100000000049}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000307093', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000004754', '20200910', '203841', 'N', 'N', 'SFC', 'SSWR', 'IAS', ' ', 1100000000053, ' ', ' ', 'KES', 5000000.00, 0.00, '0', ' ', '72', '7102', 'F', 'LF', 'LNSP1007', 'The loan amt  is illegal', ' ', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000323015', '20200910203853+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca076000000000001', 'IAS7220200910000000000000001262', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000323015', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000004754\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000323015\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111113\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000323015\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000004754\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000323015\",\"reqId\":\"O!SSWR!loanApplymca076000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"203841\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000323015\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":5000000,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001262\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000323015\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001262\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000004754\",\"txTyp\":\"72\",\"usrNo\":1100000000053}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, ' ', NULL, NULL, ' ', NULL, NULL, '20200910000000000000323015', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200910000000000000004895', '20200910', '210751', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000069', 1100000000054, '03FF99E19D9E61EE81A572DC68913464', '**y', 'KES', 50000.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '67E8DCA1247CEA8FB5F0C511E09DD6B5', ' ', ' ', 2, 'ApplyLoan', '20200910000000000000328017', '20200910210819+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca078000000000001', 'IAS7220200910000000000000001287', '20200910', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910000000000000328017', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200910\",\"aplDt\":\"20200910\",\"aplNo\":\"LNS7220200910000000000000004895\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200910\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200910000000000000328017\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111114\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200910000000000000328017\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200910\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200910000000000000004895\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200910000000000000328017\",\"reqId\":\"O!SSWR!loanApplymca078000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200910\",\"txTm\":\"210751\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200910000000000000328017\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":50000.00,\"loanApplyContCO\":{\"contNo\":\"20200910000000000000001287\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200910000000000000328017\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200910000000000000001287\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200910000000000000004895\",\"txTyp\":\"72\",\"usrNo\":1100000000054}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 50000.00, ' ', NULL, 85.00, 'CURRENT', NULL, NULL, '20200910000000000000328017', ' ', ' ', ' ', ' ', 50085.00, ' ', ' ', ' ', 0.00, 0.00, 85.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200911000000000000005508', '20200911', '164927', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000076', 1100000000055, 'BA148F5F71C63421293877E1E0F3883A', '********u', 'KES', 100000.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '6235AA70A31DB92470436AF63D25FD46', ' ', ' ', 2, 'ApplyLoan', '20200911000000000000343033', '20200911164956+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca088000000000001', 'IAS7220200911000000000000001390', '20200911', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200911000000000000343033', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200911\",\"aplDt\":\"20200911\",\"aplNo\":\"LNS7220200911000000000000005508\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200911\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200911000000000000343033\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"18811111115\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200911000000000000343033\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200911\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200911000000000000005508\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"null:-1\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200911000000000000343033\",\"reqId\":\"O!SSWR!loanApplymca088000000000001\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200911\",\"txTm\":\"164927\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200911000000000000343033\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":100000.00,\"loanApplyContCO\":{\"contNo\":\"20200911000000000000001390\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200911000000000000343033\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200911000000000000001390\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200911000000000000005508\",\"txTyp\":\"72\",\"usrNo\":1100000000055}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 100000.00, ' ', NULL, 170.00, 'CURRENT', NULL, NULL, '20200911000000000000343033', ' ', ' ', ' ', ' ', 100170.00, ' ', ' ', ' ', 0.00, 0.00, 170.00, 0.00, ' ');
INSERT INTO `t_lns_txjnl` VALUES ('LNS7220200911000000000000005617', '20200911', '171039', 'N', 'N', 'SFC', 'SSWR', 'IAS', '2050000000000083', 1100000000057, 'BA148F5F71C63421293877E1E0F3883A', '********u', 'KES', 100000.00, 0.00, '0', ' ', '72', '7102', 'S', 'LS', 'LNS00000', 'SUCCESS', '9751A6FEA5849C2986E27A3F23071DBD', ' ', ' ', 2, 'ApplyLoan', '20200911000000000000344036', '20200911171112+08', 'lns_region.loan-service_1_1', 'O!SSWR!loanApplymca089000000000002', 'IAS7220200911000000000000001413', '20200911', 'LONGEN01', ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200911000000000000344036', 0, 'MSHWARI', ' ', ' ', ' ', ' ', ' ', '{\"advDt\":\"20200911\",\"aplDt\":\"20200911\",\"aplNo\":\"LNS7220200911000000000000005617\",\"busTyp\":\"7102\",\"capTgt\":\"0\",\"ccy\":\"KES\",\"gda\":{\"acDt\":\"20200911\",\"apCd\":\"\",\"busCnl\":\"SSWR\",\"busKey\":\"{\\\"busOrdNo\\\":\\\"\\\",\\\"nodId\\\":\\\"IAS\\\",\\\"reqBusNo\\\":\\\"20200911000000000000344036\\\",\\\"rmk\\\":\\\"\\\",\\\"usrIdCipher\\\":\\\"13521699386\\\",\\\"usrIdMask\\\":\\\"\\\",\\\"usrNo\\\":\\\"\\\",\\\"vchNo\\\":\\\"20200911000000000000344036\\\"}\",\"busTyp\":\"7102\",\"canFlg\":\"\",\"chkFlg\":\"\",\"cnlTxCd\":\"\",\"commSts\":\"I\",\"curAcDt\":\"20200911\",\"curAcDtFlg\":\"\",\"errSysCnl\":\"\",\"inpOpr\":\"\",\"jrnNo\":\"LNS7220200911000000000000005617\",\"jrnSeq\":\"1\",\"lastAcDt\":\"\",\"lastAcDt2\":\"\",\"lastAcDt2Flg\":\"\",\"lastAcDtFlg\":\"\",\"msgCd\":\"SCM60004\",\"msgDat\":\"NativeMethodAccessorImpl.java:-2\",\"msgInf\":\"\",\"msgTyp\":\"E\",\"nextAcDt\":\"\",\"nextAcDtFlg\":\"\",\"oldJrnNo\":\"\",\"oprId\":\"\",\"prdCd\":\"LONGEN01\",\"reqBusNo\":\"20200911000000000000344036\",\"reqId\":\"O!SSWR!loanApplymca089000000000002\",\"reqJrnNo\":\"\",\"rvsFlg\":\"\",\"sysCnl\":\"MCA\",\"trmId\":\"\",\"txCd\":\"loanRequest\",\"txDt\":\"20200911\",\"txTm\":\"171039\",\"txTyp\":\"72\",\"txnMod\":\"O\",\"vchNo\":\"20200911000000000000344036\",\"verNo\":\"1.0.0\",\"wffFlg\":\"\",\"wffJrnNo\":\"\",\"winBegTm\":\"\",\"winDt1\":\"\",\"winDt2\":\"\",\"winEndTm\":\"\",\"winMod\":\"\",\"winSts\":\"\",\"winStsTm\":\"\"},\"loanAmt\":100000.00,\"loanApplyContCO\":{\"contNo\":\"20200911000000000000001413\",\"expDt\":\"99991230\"},\"loanDesc\":\"ApplyLoan\",\"norFltFlg\":\"2\",\"norRateTyp\":\"2\",\"oppNo\":\"\",\"penFltFlg\":\"2\",\"penRateTyp\":\"1\",\"prcSts\":\"LA\",\"prdCd\":\"LONGEN01\",\"prdGrp\":\"MSHWARI\",\"ptrId\":\"SFC\",\"ptrJrnNo\":\"20200911000000000000344036\",\"repayDay\":\"\",\"repayMod\":\"01\",\"repayMonth\":\"\",\"repayPeriodNum\":31,\"repayPeriodUnt\":\"D\",\"reqBusCnl\":\"SSWR\",\"reqJrnNo\":\"IAS7220200911000000000000001413\",\"reqSysCnl\":\"IAS\",\"terms\":1,\"txJrnNo\":\"LNS7220200911000000000000005617\",\"txTyp\":\"72\",\"usrNo\":1100000000057}', ' ', ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 100000.00, ' ', NULL, 170.00, 'CURRENT', NULL, NULL, '20200911000000000000344036', ' ', ' ', ' ', ' ', 100170.00, ' ', ' ', ' ', 0.00, 0.00, 170.00, 0.00, ' ');

-- ----------------------------
-- Table structure for t_lns_unhldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lns_unhldjnl`;
CREATE TABLE `t_lns_unhldjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `UNHLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction request journal number',
  `REQ_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Request system channel',
  `REQ_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Request business channel',
  `LON_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `UNHLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold aomount',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Inner use No',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Unhold date',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business re No',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node name where transaction occurs',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Journal status',
  `SAS_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LNS_UNHLDJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'loan service non-principal transaction journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_baterrjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_baterrjnl`;
CREATE TABLE `t_pub_baterrjnl`  (
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'date',
  `JRN_NO` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'journal no.',
  `TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'type',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'name',
  `BUS_KEY` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'business key',
  `MSG_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'message code',
  `MSG_INF` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'message info',
  `REMARK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'remark',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'request id',
  `NOD_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'node',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'timestamp',
  INDEX `NI2_T_PUB_BATERRJNL`(`BUS_KEY`) USING BTREE,
  INDEX `NI1_T_PUB_BATERRJNL`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'batch execute error journal' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf`;
CREATE TABLE `t_pub_btpinf`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TASK_NM|Task name',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SQL_TEXT|Sql',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SVR_NM|Object service name',
  `OBJ_TXNCD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Object transaction code',
  `INTERVAL` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ITV|Interval',
  `LAST_TIM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last time',
  `MAX_TMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'MAX_TMS|Max count',
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000' COMMENT 'TIME|Begin time',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '235959' COMMENT 'TIME|End time',
  `CONC_NUM` bigint(20) NOT NULL DEFAULT 1 COMMENT 'MAX_TMS|Task count',
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'DEL_FLG|Status',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Status',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'APP_NM|Application name',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'ype (N-normal, T-temporary)',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'parameter',
  PRIMARY KEY (`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Timing online batch configuration table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_btpinf
-- ----------------------------
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_COMPENSATION', 'select jrn_no from T_LNS_TXJNL where jrn_sts=\'P\'', 'loantransaction', 'loancompensation', 120, '1599821259', 3, '000000', '235959', 3, '1', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200911184739+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_NOR', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'11\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'11\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'autoRepayment', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_NOR_SUB', 'select dtl.* from T_LNS_TSKSASSUBDTL dtl,(select jnl.*, bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'11\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'11\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT) pay where REL_TSK_NO=pay.tsk_no', 'portfoliotime', 'autoRepaymentSub', 120, '114953', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114953', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_NOR_SUB_TEMP', 'select TSK_NO tsk_no,dtl.* from T_LNS_TSKSASSUBDTL dtl where  TSK_NO=\'${tsk_no}\'', 'portfoliotime', 'autoRepaymentSub', 0, '1584942502', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200323084822+03', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_OVERDUE', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'13\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'13\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'autoRepayment', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_OVERDUE_SUB', 'select dtl.* from T_LNS_TSKSASSUBDTL dtl,(select jnl.*, bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'13\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'13\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT) pay where REL_TSK_NO=pay.tsk_no', 'portfoliotime', 'autoRepaymentSub', 120, '114953', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114953', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_TEMP', 'select dtl.* from T_LNS_TSKSASDTL dtl,T_LNS_BATCT ctl where dtl.TSK_STS in(\'I\',\'P\') and ctl.BAT_NO=dtl.BAT_NO and ctl.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'autoRepayment', 0, '1586598645', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200411125045+03', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_PAY_TRIGGER_WALLET', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'33\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'33\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'autoRepaymentTrigger', 120, '114953', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114953', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_REPAYMENT_PARSE_FILE', 'select 11 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BATCH_TASK_STATISTIC', 'select * from t_lns_batct where bat_sts = \'P\'', 'portfoliotime', 'batchTaskStatistic', 120, '114950', 1, '000000', '235959', 1, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BATCH_TASK_STATISTIC_TEMP', 'select * from t_lns_batct where bat_sts = \'P\' and bat_no=\'${bat_no}\'', 'portfoliotime', 'batchTaskStatistic', 0, '1584942499', 1, '000000', '235959', 1, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200323084819+03', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BLOCK_OJ_TEMP', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'36\' AND jnl.TX_STS in (\'I\',\'F \') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'blockOj', 0, '1597743920', 3, '000000', '235959', 3, '0', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200818174520+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'T', '{\"bat_no\":\"2019012421\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('CALL_TEMP_BTP', 'select 1 from dual', 'portfoliotime', 'callTempBtp', 3600, '1599821312', 3, '000000', '235959', 3, '1', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200911184832+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CAMPAIGN_AUTO_RESTRUCT_TEMP', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_RSTCCS jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.CCS_STS =\'0\'  and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'campaignAutoRestructSms', 5, '1591179478', 1000, '000000', '235959', 1, '0', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200603181758+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('COLLATERAL_BASE_EFFECT', 'select \'06\' exp_typ, tmd.col_no, rel.gur_amt  from T_COL_TMDEPOSIT tmd, T_LMT_COLRELATION rel  where tmd.status = \'U\' and tmd.col_no = rel.col_no and rel.status = \'Y\' and to_char(sysdate,\'yyyymmdd\') >= tmd.eff_dt', 'limittime', 'lmtExpTime', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('COLLATERAL_EFFECT', 'select \'05\' exp_typ, lmt_no, col_no, gur_perc, gur_amt from T_LMT_COLRELATION where status = \'U\' and to_char(sysdate,\'yyyymmdd\') >= eff_dt', 'limittime', 'lmtExpTime', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_DISBURSE_JOURNAL', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_ODTXJNL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'50\' ) act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.JRN_STS != \'S\' and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'odsync', 'differentProcess', 120, '114951', 1000, '000000', '235959', 1, '1', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_PARSE_DISBURSE_FILE', 'select 50 TSK_TYP from  dual', 'odsync', 'overdraftParseFile', 120, '114950', 1000, '000000', '235959', 1, '0', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_PARSE_REPAYMENT_FILE', 'select 51 TSK_TYP from  dual', 'odsync', 'overdraftParseFile', 120, '114950', 1000, '000000', '235959', 1, '0', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_PARSE_UPDATE_BALANCE', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_ACBALJRN jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'52\' ) act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.JRN_STS = \'P\' and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'odsync', 'updateOdAcbl', 120, '114950', 1000, '000000', '235959', 1, '1', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_PARSE_UPDATE_BAL_FILE', 'select 52 TSK_TYP from  dual', 'odsync', 'overdraftParseFile', 120, '114950', 1000, '000000', '235959', 1, '0', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('FULIZA_REPAYMENT_JOURNAL', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_ODTXJNL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'51\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.JRN_STS != \'S\' and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'odsync', 'differentProcess', 120, '114950', 1000, '000000', '235959', 1, '1', 'loan-service.lns_u_12', 'SYS', 'Fuliza', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('INSURANCE_RETURN', 'select jrn_no, tx_sts from T_LNS_BATFILDTL where tx_sts != \'S\'', 'loantransaction', 'insuranceReturn', 120, '114951', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('INSURANCE_RETURN_TEMP', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_BATFILDTL jnl,T_LNS_BATFILCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\'  AND jnl.TX_STS in (\'U\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'loantransaction', 'insuranceReturn', 2, '1585728369', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200401160609+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_CANCLE', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'23\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'23\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'limitCancle', 120, '114952', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_CANCLE_PARSE_FILE', 'select 23 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_CANCLE_TEMP', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP IN (\'23\',\'56\') AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'limitCancle', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200330112518+08', 'U', 'PUB', ' ', 'T', '{\"bat_no\":\"2018060623\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_FREEZE', 'SELECT jnl.jrn_no tsk_no,jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'21\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'21\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'limitFreeze', 120, '114951', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_FREEZE_PARSE_FILE', 'select 21 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_FREEZE_TEMP', 'SELECT jnl.jrn_no tsk_no,jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP IN (\'21\',\'54\') AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'limitFreeze', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200330112518+08', 'U', 'PUB', ' ', 'T', '{\"bat_no\":\"2018060621\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_REDUCE', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'22\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'22\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'limitReduce', 120, '114951', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_REDUCE_PARSE_FILE', 'select 22 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_REDUCE_TEMP', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP IN (\'22\',\'55\') AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'limitReduce', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200330112518+08', 'U', 'PUB', ' ', 'T', '{\"bat_no\":\"2018060622\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_REJECT_REVIEW_PARSE_FILE', 'select 24 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114950', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_REJECT_REVIEW_TEMP', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP IN (\'24\',\'57\') AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'rejectLimitReview', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200325203021+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_RESTRICT', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'25\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'25\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'loanRestrict', 120, '114952', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_RESTRICT_CANCLE_TEMP', 'SELECT tsk.JRN_NO,clr.JRN_NO tsk_no FROM T_LNS_TSKDTL tsk,T_LNS_CLRACTDTL clr WHERE tsk.AC_NO = clr.AC_NO AND tsk.TSK_TYP = \'25\' AND tsk.TX_STS = \'S\' AND tsk.EFF_FLG = \'Y\' AND clr.TSK_TYP = \'91\' AND clr.JRN_NO = \'${jrn_no}\'', 'portfoliotime', 'loanRestrictCancle', 120, '1586590719', 3, '000000', '235959', 3, '0', ' ', 'SYS', ' ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_RESTRICT_FILE', 'select 25 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_RESTRICT_RELEASE_TEMP', 'select FRZ_NO, LMT_NO from T_LMT_HLDJNL where EFF_STS = \'Y\' and AUTO_RLS = \'Y\'  and FRZ_EXP_DT = \'${ac_dt}\' and frz_typ = \'0\' and frz_typ_dtl = \'25\'', 'limitmanage', 'lmtEnable', 60, '1599821323', 1, '000000', '235959', 1, '0', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200911184843+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'T', '{\"req_id\":\"O!LNS!btp_CALL_TEMP_BTPloan-service_1_1040000000000001\",\"ac_dt\":\"20180518\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_RESTRICT_TEMP', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'25\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'loanRestrict', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200330112520+08', 'U', 'PUB', ' ', 'T', '{\"bat_no\":\"2018060625\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_UNFREEZE_TEMP', 'select \'04\' EXP_TYP, FRZ_NO, LMT_NO from T_LMT_HLDJNL where EFF_STS = \'Y\' and AUTO_RLS = \'Y\'  and  FRZ_EXP_DT = \'${ac_dt}\' and  frz_typ_dtl = \'21\'', 'limittime', 'lmtExpTime', 120, '1599821323', 3, '000000', '235959', 3, '0', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200911184843+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'T', '{\"req_id\":\"O!LNS!btp_CALL_TEMP_BTPloan-service_1_1040000000000001\",\"ac_dt\":\"20180518\"}');
INSERT INTO `t_pub_btpinf` VALUES ('LIMIT_UNFREEZE_TIMER', 'select \'04\' EXP_TYP, FRZ_NO, LMT_NO from T_LMT_HLDJNL where EFF_STS = \'Y\' and AUTO_RLS = \'Y\'  and to_char(sysdate,\'yyyymmdd\') = FRZ_EXP_DT and frz_typ = \'1\'', 'limittime', 'lmtExpTime', 120, '114950', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114950', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('OVERDUE_AUTO_PAY_PARSE_FILE', 'select 13 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('OVERDUE_AUTO_REPAYMENT', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_ODTXJNL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'13\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.JRN_STS = \'I\' and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'autoRepayment', 120, '114952', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('REJECT_LIMIT_REVIEW', 'SELECT jnl.jrn_no tsk_no, jnl.*,bat.BAT_STS FROM T_LNS_TSKDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'24\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND bat.TSK_TYP = \'24\' AND jnl.TX_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'rejectLimitReview', 120, '114952', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('ROLLOVER_TEMP', 'SELECT APL_JRN req_jrn_no,ac_no,ADJ_TERM rol_term,ADJ_TERM_UN rol_term_un FROM T_LNS_ADJPERD jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'portfoliotime', 'singleRollover', 2, '1593438227', 3, '000000', '235959', 3, '0', 'loan-service.lns_d_5', 'SYS', 'Rollover process', '20200629214347+08', 'U', 'PUB', 'loan-service.lns_d_5', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SAVING_FREEZE', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat,(SELECT MAX(TSK_FIL_DT) TSK_FIL_DT FROM T_LNS_BATCT where TSK_TYP = \'10\') act WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.TSK_FIL_DT = act.TSK_FIL_DT', 'portfoliotime', 'savingFreeze', 120, '114952', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114952', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SAVING_FREEZE_PARSE_FILE', 'select 10 TSK_TYP from  dual', 'portfoliotime', 'parseFile', 120, '114951', 3, '000000', '235959', 3, '1', 'loan-service.lns_u_12', 'SYS', ' ', '20200321114951', 'U', 'PUB', ' ', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SAVING_FREEZE_TEMP', 'SELECT jnl.*,bat.BAT_STS FROM T_LNS_TSKSASDTL jnl,T_LNS_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_STS = \'P\' AND jnl.TSK_STS in (\'I\',\'F\') and jnl.RTY_CNT<=3 and bat.BAT_NO=\'${bat_no}\'', 'portfoliotime', 'savingFreeze', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200330112519+08', 'U', 'PUB', ' ', 'T', '{\"bat_no\":\"2018060610\",\"afterTxnCod\":\"batchTaskStatistic\",\"afterObjSvr\":\"portforliotime\"}');
INSERT INTO `t_pub_btpinf` VALUES ('SAVING_UNFREEZE_TEMP', 'select JRN_NO tsk_no,dtl.* from T_LNS_CLRACTDTL dtl where TSK_TYP=\'90\' and  JRN_NO=\'${jrn_no}\'', 'portfoliotime', 'savingUnFreeze', 2, '1586275594', 3, '000000', '235959', 3, '0', ' ', 'SYS', ' ', '20200408000638+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SEND_NTC', 'SELECT BAT_NO,TSK_ID,JRN_NO FROM T_LNS_TSKNTCDTL WHERE SND_DT = TO_CHAR(SYSDATE,\'YYYYMMDD\') AND TSK_STS = \'I\'', 'portfoliotime', 'sendNotice', 10, '1599821323', 3, '000000', '235959', 3, '1', 'lns_region.loan-service_1_1', 'SYS', ' ', '20200911184843+08', 'U', 'PUB', 'lns_region.loan-service_1_1', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SEND_NTC_TEMP', 'SELECT BAT_NO,TSK_ID FROM T_LNS_TSKNTCDTL WHERE SND_DT = TO_CHAR(SYSDATE,\'YYYYMMDD\') AND SND_TM = \'090000\' AND TSK_STS = \'I\'', 'portfoliotime', 'sendNotice', 2, '1585139417', 3, '000000', '235959', 3, '0', 'loan-service.lns_u_12', 'SYS', ' ', '20200325203021+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('UNBLOCK_OJ_TEMP', 'select tsk.JRN_NO tsk_no,dtl.JRN_NO,dtl.RTY_CNT from T_LNS_CLRACTDTL dtl,T_LNS_TSKDTL tsk  where dtl.TSK_TYP=\'37\'  and dtl.AC_NO=tsk.AC_NO and  tsk.TX_STS = \'S\'  AND tsk.EFF_FLG = \'Y\'and dtl.JRN_NO=\'${jrn_no}\'', 'portfoliotime', 'unblockOj', 0, '1590046838', 3, '000000', '235959', 3, '0', ' ', 'SYS', ' ', '20200521154039+08', 'U', 'PUB', ' ', 'T', '{\"jrn_no\":\"LNS0020200521000000000002195493\"}');

-- ----------------------------
-- Table structure for t_pub_btpinf_20200709_01
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_20200709_01`;
CREATE TABLE `t_pub_btpinf_20200709_01`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_TXNCD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INTERVAL` bigint(20) NOT NULL,
  `LAST_TIM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAX_TMS` bigint(20) NOT NULL,
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CONC_NUM` bigint(20) NOT NULL,
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf_eod_01
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_eod_01`;
CREATE TABLE `t_pub_btpinf_eod_01`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_TXNCD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INTERVAL` bigint(20) NOT NULL,
  `LAST_TIM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAX_TMS` bigint(20) NOT NULL,
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CONC_NUM` bigint(20) NOT NULL,
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf_eod_03
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_eod_03`;
CREATE TABLE `t_pub_btpinf_eod_03`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_TXNCD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INTERVAL` bigint(20) NOT NULL,
  `LAST_TIM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAX_TMS` bigint(20) NOT NULL,
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CONC_NUM` bigint(20) NOT NULL,
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_lckrec
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_lckrec`;
CREATE TABLE `t_pub_lckrec`  (
  `RECKEY` char(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'RECKEY|Record key value',
  `LCKTIM` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'LCKTIM|Lock time',
  `TIMOUT` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'TIMOUT|Timeout',
  `UPDFLG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UPDFLG|Update flag',
  `NOD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node Identifier',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  PRIMARY KEY (`RECKEY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Locking information table' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 6055, 9999999999, 0, 1, 'Y', '20200911184742+08', ' ', 'btp_AUTO_COMPENSATIONloan-service_1_1040000000000142');

SET FOREIGN_KEY_CHECKS = 1;
