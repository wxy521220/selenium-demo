/*
 Navicat Premium Data Transfer

 Source Server         : CSDSAS
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : csdsas

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 19:03:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_pub_baterrjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_baterrjnl`;
CREATE TABLE `t_pub_baterrjnl`  (
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|date',
  `JRN_NO` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal no.',
  `TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'type|type',
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TASK_NM|name',
  `BUS_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|business key',
  `MSG_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `REMARK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
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
INSERT INTO `t_pub_btpinf` VALUES ('AMOUNT_HOLD_CPS', 'SELECT * FROM T_SAS_BATHLDJNL WHERE BAT_NO = \' \' AND JRN_STS = \'P\'', 'btptime', 'sasAmtHoldCompensate', 3600, '1599821011', 1000, '000000', '235959', 20, '1', 'sas_region.sas_d_5', ' ', 'Amount hold compensate', '20200911184331+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AMOUNT_UNHOLD_CPS', 'SELECT * FROM T_SAS_BATUNHLDJNL WHERE BAT_NO = \' \' AND JRN_STS = \'P\'', 'btptime', 'sasAmtUnHoldCompensate', 3600, '1599821011', 1000, '000000', '235959', 20, '1', 'sas_region.sas_d_5', ' ', 'Amount un-hold compensate', '20200911184331+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('AUTO_SAVING', 'SELECT * FROM T_SAS_AUTOSAVJNL WHERE BAT_NO = \'${batNo}\' AND SEND_CNT<3 AND JRN_STS = \'P\' or (JRN_STS = \'F\' and CAP_SRC = \'0\')', 'btptime', 'sasAutoSaving', 60, '1584686208', 1000, '000000', '235959', 30, '0', ' ', ' ', 'Batch task auto saving', '20200320143648+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BATCH_AMOUNT_HOLD', 'SELECT * FROM T_SAS_BATHLDJNL WHERE BAT_NO = \'${batNo}\' AND JRN_STS = \'U\'', 'btptime', 'sasBatchAmtHold', 60, '1584684657', 1000, '000000', '235959', 20, '0', ' ', ' ', 'Batch amount hold', '20200320141057+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BATCH_AMOUNT_UNHOLD', 'SELECT * FROM T_SAS_BATUNHLDJNL WHERE BAT_NO = \'${batNo}\' AND JRN_STS = \'P\'', 'btptime', 'sasBatchAmtUnHold', 60, '1584684767', 1000, '000000', '235959', 20, '0', ' ', ' ', 'Batch amount un-hold', '20200320141247+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('BATCH_TASK_SUMMARY', 'SELECT bat.* FROM T_SAS_BATJNL bat WHERE bat.BAT_STS = \'P\'', 'btptime', 'batchTaskSummary', 3600, '1599821012', 1000, '060000', '235959', 5, '1', 'sas_region.sas_d_5', ' ', 'Batch task summary', '20200911184332+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CLOSE_ACCOUNT', 'SELECT * FROM T_SAS_ACCLOJNL WHERE JRN_STS = \'P\' AND TM_SMP <= to_char(sysdate-1,\'yyyyMMddHH24MISS\') AND ROWNUM < 100 order by TM_SMP', 'btptime', 'sasCloseAccount', 3600, '1599821012', 1000, '000000', '235959', 20, '1', 'sas_region.sas_d_5', ' ', 'Saving account close', '20200911184332+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('DUE_HANDLE', 'SELECT * FROM T_SAS_DUEHDLJNL WHERE BAT_NO = \'${batNo}\' AND JRN_STS = \'U\'', 'btptime', 'sasDueHandle', 60, '1584686589', 1000, '000000', '235959', 30, '0', ' ', ' ', 'Batch task saving account due handle', '20200320144309+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('DUE_NOTIFY', 'SELECT * FROM T_SAS_DUENTFJNL WHERE BAT_NO = \'${batNo}\' AND JRN_STS = \'U\'', 'btptime', 'sasDueNotify', 60, '1584686589', 1000, '000000', '235959', 30, '0', ' ', ' ', 'Batch task savings account due notify', '20200320144309+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('OPEN_AC_CPS', 'SELECT * FROM T_SAS_ACOPNJNL WHERE JRN_STS = \'P\' AND TM_SMP <= to_char(sysdate-5/24/60,\'yyyyMMddHH24MISS\') AND ROWNUM < 100 order by TM_SMP', 'btptime', 'sasOpenAccountCompensate', 300, '1599822143', 1000, '000000', '235959', 20, '1', 'sas_region.sas_d_5', ' ', 'Savings account open compensate', '20200911190223+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SEND_CHK_STM', 'select BAT_NO, AC_NO from T_SAS_CHKSTMJNL where BAT_NO = \'${batNo}\' AND JRN_STS = \'U\' group by BAT_NO, AC_NO', 'btptime', 'sasSendCheckStatement', 60, '1584686779', 1000, '000000', '235959', 30, '0', ' ', ' ', 'Batch task send check statement', '20200320144619+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('TRF_WDR_TIME', 'SELECT * FROM T_SAS_TXJNL WHERE EXP_RCV_DT = \'${acDt}\' AND JRN_STS = \'U\' AND TX_TYP = \'54\' order by TM_SMP', 'btptime', 'sasTransferWithdrawTimed', 60, '1584686659', 1000, '000000', '235959', 50, '0', ' ', ' ', 'Savings transfer withdraw timed handle', '20200320144419+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('TX_CPS', 'SELECT * FROM T_SAS_TXJNL WHERE JRN_STS = \'P\' AND TM_SMP <= to_char(sysdate-5/24/60,\'yyyyMMddHH24MISS\') AND CPS_CNT <= 3 AND CRE_DT = to_char(sysdate,\'yyyyMMdd\') AND ROWNUM < 100 order by TM_SMP', 'btptime', 'sasTransactionCompensate', 300, '1599822155', 1000, '000000', '235959', 30, '1', 'sas_region.sas_d_5', ' ', 'Savings transaction compensate', '20200911190235+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('TX_RVS_CPS', 'SELECT * FROM T_SAS_TXRVSJNL WHERE JRN_STS = \'P\' AND concat(CRE_DT, CRE_TM) <= to_char(sysdate-5/24/60,\'yyyyMMddHH24MISS\') AND CRE_DT = to_char(sysdate,\'yyyyMMdd\') AND ROWNUM < 100 order by TM_SMP', 'btptime', 'sasTransactionReverseCompensate', 300, '1599822155', 1000, '000000', '235959', 20, '1', 'sas_region.sas_d_5', ' ', 'Savings transaction reverse compensate', '20200911190235+08', 'U', 'PUB', 'sas_region.sas_d_5', 'N', ' ');

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 505, 9999999999, 1, 1, 'Y', '20200911185025+08', ' ', 'O!SSWR!userRegistermca094000000000001');

-- ----------------------------
-- Table structure for t_sas_acclojnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_acclojnl`;
CREATE TABLE `t_sas_acclojnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `SYS_CLO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CLO_FLG|System close account flag',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAS_ACCLOJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI1_T_SAS_ACCLOJNL`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI4_T_SAS_ACCLOJNL`(`CRE_DT`) USING BTREE,
  INDEX `NI2_T_SAS_ACCLOJNL`(`AC_NO`) USING BTREE,
  INDEX `NI3_T_SAS_ACCLOJNL`(`TM_SMP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account close journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sas_acclojnl
-- ----------------------------
INSERT INTO `t_sas_acclojnl` VALUES ('SAS5020200910000000000000000483', '20200910', '211753', 'SAS', 'APP', 'SAS5020200910000000000000000483', 1100000000049, 'SAVLBX01', '02', '1070000000000380', ' ', '1', 'USD', '107', '1', 'S', ' ', ' ', ' ', ' ', ' ', '20200910000000000000327027', '20200910211810+08', 'sas_region.sas_d_5', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', '13521699306', 'MSHWARI');

-- ----------------------------
-- Table structure for t_sas_acopnjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_acopnjnl`;
CREATE TABLE `t_sas_acopnjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Partner journal code',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `CASH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAA_CASH_FLG|Cash flag',
  `AC_TIT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Account title',
  `TGT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Target amount',
  `PRD` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Period',
  `PRD_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Period unit',
  `AUTO_RDP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_RDP_FLG|Auto redeposit flag',
  `AUTO_RDP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_RDP_TYP|Auto redeposit type',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `NCK_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NCK_NM|Nick name',
  `RDP_PRD_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Interest product code',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `ACC_LABEL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_LABEL|Account label',
  `INV_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INV_CD|Invite code',
  `INIT_CAP_SRC` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_SRC|Init capital source',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAS_ACOPNJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_SAS_ACOPNJNL`(`AC_NO`) USING BTREE,
  INDEX `NI3_T_SAS_ACOPNJNL`(`TM_SMP`) USING BTREE,
  INDEX `NI1_T_SAS_ACOPNJNL`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI4_T_SAS_ACOPNJNL`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Open saving account journal' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sas_acopnjnl
-- ----------------------------
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000094', '20200908', '160218', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000230111', 'S', 110000000000039, 1100000000042, 'SAVLBX01', '1070000000000036', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '160225', '20200908000000000000230111', '20200908160225+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000101', '20200908', '162533', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000230136', 'F', 110000000000039, 1100000000042, 'SAVLBX01', ' ', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', ' ', '20200908', '162540', '20200908000000000000230136', '20200908162540+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca094000000000003', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000104', '20200908', '162812', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000234022', 'F', 110000000000039, 1100000000042, 'SAVLBX01', ' ', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', ' ', '20200908', '162816', '20200908000000000000234022', '20200908162816+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000001', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000106', '20200908', '164127', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000234034', 'F', 110000000000039, 1100000000042, 'SAVLBX01', ' ', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', ' ', '20200908', '164132', '20200908000000000000234034', '20200908164132+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000002', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000108', '20200908', '165532', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000234047', 'S', 110000000000039, 1100000000042, 'SAVLBX01', '1070000000000043', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '165541', '20200908000000000000234047', '20200908165541+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000003', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000114', '20200908', '165836', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000234062', 'S', 110000000000039, 1100000000042, 'SAVLBX01', '1070000000000059', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '165844', '20200908000000000000234062', '20200908165844+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000004', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000120', '20200908', '172532', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000237018', 'S', 110000000000039, 1100000000042, 'SAVLBX01', '1070000000000066', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '172536', '20200908000000000000237018', '20200908172536+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca096000000000001', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000126', '20200908', '175050', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000238033', 'S', 110000000000039, 1100000000042, 'SAVLBX01', '1070000000000073', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '175057', '20200908000000000000238033', '20200908175057+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca097000000000001', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000130', '20200908', '175913', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000239022', 'F', 110000000000039, 1100000000042, 'SAVLBX01', ' ', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', ' ', '20200908', '175918', '20200908000000000000239022', '20200908175918+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca098000000000001', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000132', '20200908', '180424', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000239054', 'F', 110000000000039, 1100000000042, 'SAVLBX01', ' ', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', ' ', '20200908', '180428', '20200908000000000000239054', '20200908180428+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca098000000000002', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000136', '20200908', '190031', '1100000000019', 'MSHWARI', ' ', 'MCA', 'APP', '20200908000000000000240164', 'S', 110000000000011, 1100000000021, 'SAVGEN01', '1060000000000083', ' ', '1', 'USD', '106', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '190033', '20200908000000000000240164', '20200908190033+08', 'sas_region.sas_d_5', '01', 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', ' ', 0.00, ' ', ' ', '50', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000142', '20200908', '191749', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000241043', 'S', 110000000000011, 1100000000021, 'SAVLBX01', '1070000000000097', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '191754', '20200908000000000000241043', '20200908191754+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000147', '20200908', '192438', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200908000000000000241072', 'S', 110000000000011, 1100000000021, 'SAVLBX01', '1070000000000105', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '192441', '20200908000000000000241072', '20200908192441+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200908000000000000000153', '20200908', '193934', '1100000000019', 'MSHWARI', ' ', 'MCA', 'APP', '20200908000000000000241100', 'S', 110000000000011, 1100000000021, 'SAVGEN01', '1060000000000115', ' ', '1', 'USD', '106', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200908', '193938', '20200908000000000000241100', '20200908193938+08', 'sas_region.sas_d_5', '01', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200909000000000000000188', '20200909', '102714', '1100000000019', 'MSHWARI', ' ', 'MCA', 'APP', '20200909000000000000257019', 'S', 110000000000011, 1100000000021, 'SAVGEN01', '1060000000000146', ' ', '1', 'USD', '106', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200909', '102717', '20200909000000000000257019', '20200909102717+08', 'sas_region.sas_d_5', '01', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200909000000000000000289', '20200909', '200545', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200909000000000000281168', 'S', 110000000000011, 1100000000021, 'SAVLBX01', '1070000000000180', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200909', '200553', '20200909000000000000281168', '20200909200553+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200909000000000000000296', '20200909', '200747', '1100000000019', 'MSHWARI', ' ', 'MCA', 'APP', '20200909000000000000281189', 'S', 110000000000011, 1100000000021, 'SAVGEN01', '1060000000000190', ' ', '1', 'USD', '106', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200909', '200752', '20200909000000000000281189', '20200909200752+08', 'sas_region.sas_d_5', '01', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200909000000000000000331', '20200909', '205535', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200909000000000000283113', 'S', 110000000000041, 1100000000045, 'SAVLBX01', '1070000000000205', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200909', '205543', '20200909000000000000283113', '20200909205543+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200909000000000000000338', '20200909', '205814', '1100000000019', 'MSHWARI', ' ', 'MCA', 'APP', '20200909000000000000283131', 'S', 110000000000041, 1100000000045, 'SAVGEN01', '1060000000000215', ' ', '1', 'USD', '106', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200909', '205817', '20200909000000000000283131', '20200909205817+08', 'sas_region.sas_d_5', '01', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000361', '20200910', '103451', '1100000000019', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000289140', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000236', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '103458', '20200910000000000000289140', '20200910103458+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000374', '20200910', '111539', '1100000000020', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000296012', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000243', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '111543', '20200910000000000000296012', '20200910111543+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000378', '20200910', '111731', '1100000000020', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000296029', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000259', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '111735', '20200910000000000000296029', '20200910111735+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000387', '20200910', '114121', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000298017', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000266', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '114129', '20200910000000000000298017', '20200910114129+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000403', '20200910', '163516', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000307055', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000297', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '163529', '20200910000000000000307055', '20200910163529+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000407', '20200910', '163557', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000307059', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000305', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '163605', '20200910000000000000307059', '20200910163605+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000420', '20200910', '164937', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000307124', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000312', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '164946', '20200910000000000000307124', '20200910164946+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000424', '20200910', '171248', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000307153', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000329', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '171302', '20200910000000000000307153', '20200910171302+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000435', '20200910', '175411', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000307230', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000343', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '175426', '20200910000000000000307230', '20200910175426+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000443', '20200910', '180440', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000311016', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000359', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '180459', '20200910000000000000311016', '20200910180459+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000452', '20200910', '195109', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000313043', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000373', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '195124', '20200910000000000000313043', '20200910195124+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS5020200910000000000000000465', '20200910', '202449', '13521699306', 'MSHWARI', ' ', 'SAS', 'SAS', '20200910000000000000313091', 'S', 110000000000042, 1100000000049, 'SAVLBX01', '1070000000000380', ' ', '1', 'USD', '107', ' ', ' ', 0.00, 3, 'M', ' ', ' ', ' ', ' ', ' ', '20200910', '202501', '20200910000000000000313091', '20200910202501+08', 'sas_region.sas_d_5', '02', 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', ' ', 0.00, ' ', ' ', '50', '5100', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200908000000000000000089', '20200908', '152512', 'SFC', 'MSHWARI', 'CPS0020200908000000000000110023', 'IAS', 'SSWR', 'IAS0020200908000000000000000521', 'S', 110000000000038, 1100000000041, 'SAVGEN01', '1060000000000015', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200908', '152531', '20200908000000000000000521', '20200908152531+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca044000000000016', 'CPS0020200908000000000000110023', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200908000000000000000091', '20200908', '152827', 'SFC', 'MSHWARI', 'CPS0020200908000000000000110029', 'IAS', 'SSWR', 'IAS0020200908000000000000000525', 'S', 110000000000039, 1100000000042, 'SAVGEN01', '1060000000000022', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200908', '152838', '20200908000000000000000525', '20200908152838+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca044000000000020', 'CPS0020200908000000000000110029', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200909000000000000000184', '20200909', '101208', 'SFC', 'MSHWARI', 'CPS0020200909000000000000112006', 'IAS', 'SSWR', 'IAS0020200909000000000000000646', 'S', 110000000000041, 1100000000044, 'SAVGEN01', '1060000000000139', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200909', '101256', '20200909000000000000000646', '20200909101256+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca048000000000001', 'CPS0020200909000000000000112006', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200909000000000000000244', '20200909', '180159', 'SFC', 'MSHWARI', 'CPS0020200909000000000000112171', 'IAS', 'SSWR', 'IAS0020200909000000000000000903', 'S', 110000000000041, 1100000000045, 'SAVGEN01', '1060000000000152', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200909', '180216', '20200909000000000000000903', '20200909180216+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca049000000000001', 'CPS0020200909000000000000112171', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200909000000000000000249', '20200909', '181136', 'SFC', 'MSHWARI', 'CPS0020200909000000000000112185', 'IAS', 'SSWR', 'IAS0020200909000000000000000911', 'S', 110000000000041, 1100000000046, 'SAVGEN01', '1060000000000169', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200909', '181146', '20200909000000000000000911', '20200909181146+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca049000000000002', 'CPS0020200909000000000000112185', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200909000000000000000266', '20200909', '193048', 'SFC', 'MSHWARI', 'CPS0020200909000000000000112198', 'IAS', 'SSWR', 'IAS0020200909000000000000000916', 'S', 110000000000041, 1100000000047, 'SAVGEN01', '1060000000000176', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200909', '193103', '20200909000000000000000916', '20200909193103+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca050000000000001', 'CPS0020200909000000000000112198', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200910000000000000000359', '20200910', '102956', 'SFC', 'MSHWARI', 'CPS0020200910000000000000113030', 'IAS', 'SSWR', 'IAS0020200910000000000000000978', 'S', 110000000000042, 1100000000049, 'SAVGEN01', '1060000000000222', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200910', '103017', '20200910000000000000000978', '20200910103017+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca141000000000005', 'CPS0020200910000000000000113030', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200910000000000000000397', '20200910', '152325', 'SFC', 'MSHWARI', 'CPS0020200910000000000000113070', 'IAS', 'SSWR', 'IAS0020200910000000000000001058', 'S', 110000000000041, 1100000000050, 'SAVGEN01', '1060000000000276', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200910', '152340', '20200910000000000000001058', '20200910152340+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca063000000000001', 'CPS0020200910000000000000113070', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200910000000000000000399', '20200910', '162339', 'SFC', 'MSHWARI', 'CPS0020200910000000000000113085', 'IAS', 'SSWR', 'IAS0020200910000000000000001103', 'S', 110000000000041, 1100000000052, 'SAVGEN01', '1060000000000283', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200910', '162350', '20200910000000000000001103', '20200910162350+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca064000000000001', 'CPS0020200910000000000000113085', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200910000000000000000433', '20200910', '175007', 'SFC', 'MSHWARI', 'CPS0020200910000000000000113116', 'IAS', 'SSWR', 'IAS0020200910000000000000001185', 'S', 110000000000041, 1100000000053, 'SAVGEN01', '1060000000000339', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200910', '175032', '20200910000000000000001185', '20200910175032+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca066000000000001', 'CPS0020200910000000000000113116', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200910000000000000000479', '20200910', '210111', 'SFC', 'MSHWARI', 'CPS0020200910000000000000113149', 'IAS', 'SSWR', 'IAS0020200910000000000000001275', 'S', 110000000000041, 1100000000054, 'SAVGEN01', '1060000000000408', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200910', '210559', '20200910000000000000001275', '20200910210559+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca077000000000001', 'CPS0020200910000000000000113149', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000488', '20200911', '164656', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114024', 'IAS', 'SSWR', 'IAS0020200911000000000000001386', 'S', 110000000000042, 1100000000055, 'SAVGEN01', '1060000000000415', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '164722', '20200911000000000000001386', '20200911164722+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca088000000000001', 'CPS0020200911000000000000114024', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000490', '20200911', '164943', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114030', 'IAS', 'SSWR', 'IAS0020200911000000000000001391', 'S', 110000000000043, 1100000000056, 'SAVGEN01', '1060000000000422', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '164954', '20200911000000000000001391', '20200911164954+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca088000000000002', 'CPS0020200911000000000000114030', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000492', '20200911', '170323', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114056', 'IAS', 'SSWR', 'IAS0020200911000000000000001397', 'S', 110000000000042, 1100000000057, 'SAVGEN01', '1060000000000439', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '170337', '20200911000000000000001397', '20200911170337+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca088000000000003', 'CPS0020200911000000000000114056', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000494', '20200911', '170352', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114057', 'IAS', 'SSWR', 'IAS0020200911000000000000001398', 'S', 110000000000043, 1100000000058, 'SAVGEN01', '1060000000000446', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '170405', '20200911000000000000001398', '20200911170405+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca088000000000004', 'CPS0020200911000000000000114057', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000497', '20200911', '170632', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114069', 'IAS', 'SSWR', 'IAS0020200911000000000000001402', 'S', 110000000000043, 1100000000059, 'SAVGEN01', '1060000000000452', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '170645', '20200911000000000000001402', '20200911170645+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca088000000000006', 'CPS0020200911000000000000114069', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000499', '20200911', '170811', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114076', 'IAS', 'SSWR', 'IAS0020200911000000000000001408', 'S', 110000000000043, 1100000000060, 'SAVGEN01', '1060000000000469', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '170836', '20200911000000000000001408', '20200911170836+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca089000000000001', 'CPS0020200911000000000000114076', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000501', '20200911', '171209', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114088', 'IAS', 'SSWR', 'IAS0020200911000000000000001421', 'S', 110000000000043, 1100000000061, 'SAVGEN01', '1060000000000476', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '171222', '20200911000000000000001421', '20200911171222+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca089000000000002', 'CPS0020200911000000000000114088', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');
INSERT INTO `t_sas_acopnjnl` VALUES ('SAS6020200911000000000000000503', '20200911', '185012', 'SFC', 'MSHWARI', 'CPS0020200911000000000000114257', 'IAS', 'SSWR', 'IAS0020200911000000000000001460', 'S', 110000000000044, 1100000000062, 'SAVGEN01', '1060000000000483', ' ', '1', 'KES', '106', ' ', ' ', 0.00, 0, ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', '20200911', '185031', '20200911000000000000001460', '20200911185031+08', 'sas_region.sas_d_5', '01', 'O!SSWR!userRegistermca094000000000001', 'CPS0020200911000000000000114257', 0.00, ' ', ' ', '60', '6000', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_sas_autosavjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_autosavjnl`;
CREATE TABLE `t_sas_autosavjnl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Porduct code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `SIG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Sign amount',
  `SIG_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Sign term',
  `SIG_TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Sign term unit',
  `SIG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Sign date',
  `CAP_SRC` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_SRC|Capital source',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `OUT_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Outgoing journal number',
  `OUT_SEND_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Out send date',
  `OUT_SEND_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Out send time',
  `RETURN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Return status',
  `RETURN_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Return journal number',
  `SEND_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|send count',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `SIG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SIG_TYP|Sign type',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`, `SIG_DT`, `SIG_TYP`) USING BTREE,
  INDEX `NI1_T_SAS_AUTOSAVJNL`(`BAT_NO`, `JRN_STS`) USING BTREE,
  INDEX `NI2_T_SAS_AUTOSAVJNL`(`OUT_JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Auto saving journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_bathldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_bathldjnl`;
CREATE TABLE `t_sas_bathldjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `EXP_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXP_TYP|Exception type',
  `TX_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction reference number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAS_BATHLDJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_SAS_BATHLDJNL`(`HLD_NO`) USING BTREE,
  INDEX `NI1_T_SAS_BATHLDJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch hold journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_batjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_batjnl`;
CREATE TABLE `t_sas_batjnl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FIL_PTH` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TOT_NUM` bigint(20) NOT NULL DEFAULT 0,
  `SUC_NUM` bigint(20) NOT NULL DEFAULT 0,
  `FAL_NUM` bigint(20) NOT NULL DEFAULT 0,
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_SAS_BATJNL`(`AC_DT`, `BAT_TYP`) USING BTREE,
  INDEX `NI1_T_SAS_BATJNL`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_batunhldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_batunhldjnl`;
CREATE TABLE `t_sas_batunhldjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `UNHLD_UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unhold unavailable balance',
  `UNHLD_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|UnHold account balance',
  `UNHLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|UnHold amount',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `EXP_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXP_TYP|Exception type',
  `TX_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction reference number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `HLD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAS_BATUNHLDJNL`(`SYS_CNL`, `BUS_REF_NO`) USING BTREE,
  INDEX `NI1_T_SAS_BATUNHLDJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch un-hold journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_chkstmjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_chkstmjnl`;
CREATE TABLE `t_sas_chkstmjnl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `JRN_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Journal sequence',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `DR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Debit movement',
  `CR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Credit movement',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `NOT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non withdraw amount',
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LST_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last available balance',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `TX_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_LONG|Transaction desc',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `AMT_KIND` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AMT_KND|Amount kind',
  `LST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last account balance',
  `NOT_TX_AVA_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available non-withdrawal balance',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Debit and credit flag',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`BAT_NO`, `JRN_NO`, `JRN_SEQ`, `AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Check statement journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_duehdljnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_duehdljnl`;
CREATE TABLE `t_sas_duehdljnl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AUTO_RDP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AUTO_RDP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RDP_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AUTO_WD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `WD_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_duentfjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_duentfjnl`;
CREATE TABLE `t_sas_duentfjnl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MBL_NO_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TEM_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NTF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXP_DAY` bigint(20) NOT NULL DEFAULT 0,
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_feeinf
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_feeinf`;
CREATE TABLE `t_sas_feeinf`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `FEE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `FEE_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `FEE_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'FEE_RAT|Fee rate',
  `FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee amount',
  `WHD_TAX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_CD|Withholding Tax code',
  `WHD_TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'TAX_RAT|Withholding Tax rate',
  `WHD_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Withholding Tax amount',
  `EXD_TAX_CD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_CD|Excise duty code',
  `EXD_TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'TAX_RAT|Excise duty rate',
  `EXD_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Excise duty amount',
  `VAD_TAX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_CD|Value added tax code',
  `VAD_TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'TAX_RAT|Value added tax code',
  `VAD_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Value added tax code',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`, `FEE_TYP`, `FEE_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Information of fees and taxes details table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_intjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_intjnl`;
CREATE TABLE `t_sas_intjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_RSN` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVW_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVW_RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI1_T_SAS_INTJNL`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI2_T_SAS_INTJNL`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_oprbat
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_oprbat`;
CREATE TABLE `t_sas_oprbat`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|File name',
  `FIL_PTH` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_PATH|File path',
  `OPR_BAT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPR_BAT_TYP|Batch type',
  `OPR_BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch status',
  `TOT_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Total number',
  `SUC_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Successful number',
  `FAL_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Fail number',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Review operator',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`BAT_NO`) USING BTREE,
  INDEX `NI1_T_SAS_OPRBAT`(`CRE_DT`, `OPR_BAT_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Operator batch journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_oprjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_oprjnl`;
CREATE TABLE `t_sas_oprjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Transaction status',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Partner journal code',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_SAS_OPRJNL`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI3_T_SAS_OPRJNL`(`CRE_DT`) USING BTREE,
  INDEX `NI2_T_SAS_OPRJNL`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving account operate journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_plgjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_plgjnl`;
CREATE TABLE `t_sas_plgjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PLG_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PLG_STS|Pledge status',
  `PLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PLG_TYP|Pledge type',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `PLG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Pledge amount',
  `PLG_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Pledge balance',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_SAS_PLGJNL`(`AC_NO`) USING BTREE,
  INDEX `NI2_T_SAS_PLGJNL`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pledge journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_txjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_txjnl`;
CREATE TABLE `t_sas_txjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_AC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `FEE_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `TRF_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXP_RCV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXP_RCV_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CPS_CNT` bigint(20) NOT NULL DEFAULT 0,
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CLO_AC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CLO_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_JRN_NO` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DEV_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_SAS_TXJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI5_T_SAS_TXJNL`(`EXP_RCV_DT`) USING BTREE,
  INDEX `NI2_T_SAS_TXJNL`(`AC_NO`) USING BTREE,
  INDEX `NI3_T_SAS_TXJNL`(`TM_SMP`) USING BTREE,
  INDEX `NI4_T_SAS_TXJNL`(`CRE_DT`) USING BTREE,
  INDEX `NI1_T_SAS_TXJNL`(`USR_NO`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sas_txjnl
-- ----------------------------
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200908000000000000000145', '20200908', '191749', '5100', '50', 'MCA', 'APP', '20200908000000000000241043', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000021, '1070000000000097', ' ', 0, ' ', ' ', 'S', 'C', 50.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 50.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200908', '191800', '20200908000000000000241043', '20200908191800+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200908000000000000000150', '20200908', '192438', '5100', '50', 'MCA', 'APP', '20200908000000000000241072', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000021, '1070000000000105', ' ', 0, ' ', ' ', 'S', 'C', 50.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 50.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200908', '192447', '20200908000000000000241072', '20200908192447+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200908000000000000000155', '20200908', '193934', '5100', '50', 'MCA', 'APP', '20200908000000000000241100', 'SAVGEN01', 'MSHWARI', ' ', 'SAVGEN01', 1100000000021, '1060000000000115', ' ', 0, ' ', ' ', 'S', 'C', 100.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 100.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200908', '193943', '20200908000000000000241100', '20200908193943+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000190', '20200909', '102714', '5100', '50', 'MCA', 'APP', '20200909000000000000257019', 'SAVGEN01', 'MSHWARI', ' ', 'SAVGEN01', 1100000000021, '1060000000000146', ' ', 0, ' ', ' ', 'S', 'C', 200.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 200.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200909', '102728', '20200909000000000000257019', '20200909102728+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000241', '20200909', '171913', '5100', '50', 'MCA', 'APP', '20200909000000000000276047', '1100000000019', 'MSHWARI', ' ', 'SAVGEN01', 1100000000021, '1060000000000115', 'SAVGEN01', 1100000000021, '1060000000000115', ' ', 'F', ' ', 100.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20200909', '171924', 100.00, 0.00, 0.00, 0, 'SAAP3051', 'The same account cannot transfer each other!', ' ', '20200909', '171927', '20200909000000000000276047', '20200909171927+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedToCurrentApplymca133000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000243', '20200909', '172013', '5100', '50', 'MCA', 'APP', '20200909000000000000276049', '1100000000019', 'MSHWARI', ' ', 'SAVGEN01', 1100000000021, '1060000000000115', 'SAVGEN01', 1100000000021, '1060000000000115', ' ', 'F', ' ', 100.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20200909', '172021', 100.00, 0.00, 0.00, 0, 'SAAP3051', 'The same account cannot transfer each other!', ' ', '20200909', '172022', '20200909000000000000276049', '20200909172022+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedToCurrentApplymca133000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000298', '20200909', '200747', '5100', '50', 'MCA', 'APP', '20200909000000000000281189', 'SAVGEN01', 'MSHWARI', ' ', 'SAVGEN01', 1100000000021, '1060000000000190', ' ', 0, ' ', ' ', 'S', 'C', 1000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 1000.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200909', '200759', '20200909000000000000281189', '20200909200759+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000334', '20200909', '205535', '5100', '50', 'MCA', 'APP', '20200909000000000000283113', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000045, '1070000000000205', ' ', 0, ' ', ' ', 'S', 'C', 50.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 50.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200909', '205550', '20200909000000000000283113', '20200909205550+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000340', '20200909', '205814', '5100', '50', 'MCA', 'APP', '20200909000000000000283131', 'SAVGEN01', 'MSHWARI', ' ', 'SAVGEN01', 1100000000045, '1060000000000215', ' ', 0, ' ', ' ', 'S', 'C', 100.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 100.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200909', '205824', '20200909000000000000283131', '20200909205824+08', 'sas_region.sas_d_5', ' ', ' ', '01', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000364', '20200910', '103451', '5100', '50', 'MCA', 'APP', '20200910000000000000289140', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000236', ' ', 0, ' ', ' ', 'S', 'C', 50.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 50.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '103509', '20200910000000000000289140', '20200910103509+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000377', '20200910', '111539', '5100', '50', 'MCA', 'APP', '20200910000000000000296012', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000243', ' ', 0, ' ', ' ', 'S', 'C', 300.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 300.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '111550', '20200910000000000000296012', '20200910111550+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000381', '20200910', '111731', '5100', '50', 'MCA', 'APP', '20200910000000000000296029', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000259', ' ', 0, ' ', ' ', 'S', 'C', 600.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 600.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '111740', '20200910000000000000296029', '20200910111740+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000384', '20200910', '111904', '51E0', '50', 'MCA', 'APP', '20200910000000000000296048', '1100000000020', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000259', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 600.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '111904', 600.00, 0.00, 600.00, 0, ' ', ' ', ' ', '20200910', '111912', '20200910000000000000296048', '20200910111912+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca143000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000390', '20200910', '114121', '5100', '50', 'MCA', 'APP', '20200910000000000000298017', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000266', ' ', 0, ' ', ' ', 'S', 'C', 550.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 550.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '114135', '20200910000000000000298017', '20200910114135+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000395', '20200910', '114628', '51E0', '50', 'MCA', 'APP', '20200910000000000000299016', '1100000000020', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000266', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 550.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '114628', 550.00, 0.00, 550.00, 0, ' ', ' ', ' ', '20200910', '114642', '20200910000000000000299016', '20200910114642+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca146000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000410', '20200910', '163557', '5100', '50', 'MCA', 'APP', '20200910000000000000307059', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000305', ' ', 0, ' ', ' ', 'S', 'C', 999.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 999.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '163611', '20200910000000000000307059', '20200910163611+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000413', '20200910', '163720', '51E0', '50', 'MCA', 'APP', '20200910000000000000307070', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000305', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 999.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '163720', 999.00, 0.00, 999.00, 0, ' ', ' ', ' ', '20200910', '163732', '20200910000000000000307070', '20200910163732+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca150000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000418', '20200910', '164837', '51E0', '50', 'MCA', 'APP', '20200910000000000000307113', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000243', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 300.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '164837', 300.00, 0.00, 300.00, 0, ' ', ' ', ' ', '20200910', '164849', '20200910000000000000307113', '20200910164849+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca150000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000423', '20200910', '164937', '5100', '50', 'MCA', 'APP', '20200910000000000000307124', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000312', ' ', 0, ' ', ' ', 'S', 'C', 123.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 123.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '164952', '20200910000000000000307124', '20200910164952+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000427', '20200910', '171248', '5100', '50', 'MCA', 'APP', '20200910000000000000307153', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000329', ' ', 0, ' ', ' ', 'S', 'C', 500.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 500.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '171308', '20200910000000000000307153', '20200910171308+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000430', '20200910', '171416', '51E0', '50', 'MCA', 'APP', '20200910000000000000307166', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000329', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 500.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '171416', 500.00, 0.00, 500.00, 0, ' ', ' ', ' ', '20200910', '171430', '20200910000000000000307166', '20200910171430+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca150000000000003', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000438', '20200910', '175411', '5100', '50', 'MCA', 'APP', '20200910000000000000307230', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000343', ' ', 0, ' ', ' ', 'S', 'C', 666.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 666.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '175440', '20200910000000000000307230', '20200910175440+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000441', '20200910', '175621', '51E0', '50', 'MCA', 'APP', '20200910000000000000307243', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000343', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 666.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '175621', 666.00, 0.00, 666.00, 0, ' ', ' ', ' ', '20200910', '175645', '20200910000000000000307243', '20200910175645+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca150000000000004', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000446', '20200910', '180440', '5100', '50', 'MCA', 'APP', '20200910000000000000311016', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000359', ' ', 0, ' ', ' ', 'S', 'C', 888.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 888.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '180516', '20200910000000000000311016', '20200910180516+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000449', '20200910', '180640', '51E0', '50', 'MCA', 'APP', '20200910000000000000311027', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000359', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 888.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '180640', 888.00, 0.00, 888.00, 0, ' ', ' ', ' ', '20200910', '180655', '20200910000000000000311027', '20200910180655+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca151000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000455', '20200910', '195109', '5100', '50', 'MCA', 'APP', '20200910000000000000313043', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000373', ' ', 0, ' ', ' ', 'S', 'C', 2000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 2000.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '195130', '20200910000000000000313043', '20200910195130+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000458', '20200910', '195222', '51E0', '50', 'MCA', 'APP', '20200910000000000000313054', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000373', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'F', 'D', 2000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 2000.00, 0.00, 0.00, 0, 'SAAP6003', 'Product configuration error: No matching interest calculation method.', ' ', '20200910', '195235', '20200910000000000000313054', '20200910195235+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedToCurrentApplymca153000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000461', '20200910', '195956', '51E0', '50', 'MCA', 'APP', '20200910000000000000313061', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000373', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'U', 'D', 2000.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '195956', 2000.00, 0.00, 2000.00, 0, ' ', ' ', ' ', '20200910', '200009', '20200910000000000000313061', '20200910200009+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca153000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000468', '20200910', '202449', '5100', '50', 'MCA', 'APP', '20200910000000000000313091', 'SAVLBX01', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000380', ' ', 0, ' ', ' ', 'S', 'C', 6000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 6000.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '202506', '20200910000000000000313091', '20200910202506+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000471', '20200910', '202601', '51E0', '50', 'MCA', 'APP', '20200910000000000000313102', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000380', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'F', 'D', 6000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 6000.00, 0.00, 0.00, 0, 'SAAP6003', 'Product configuration error: No matching interest calculation method.', ' ', '20200910', '202614', '20200910000000000000313102', '20200910202614+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedToCurrentApplymca153000000000003', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000474', '20200910', '205602', '51E0', '50', 'MCA', 'APP', '20200910000000000000325030', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000380', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'F', 'D', 6000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 6000.00, 0.00, 0.00, 0, 'SAAP6003', 'Product configuration error: No matching interest calculation method.', ' ', '20200910', '205614', '20200910000000000000325030', '20200910205614+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedToCurrentApplymca155000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000478', '20200910', '205829', '51E0', '50', 'MCA', 'APP', '20200910000000000000325040', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000380', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'F', 'D', 6000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', ' ', ' ', 6000.00, 0.00, 0.00, 0, 'SCM60001', 'Product configuration error: No matching interest calculation method.', ' ', '20200910', '210554', '20200910000000000000325040', '20200910210554+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedToCurrentApplymca155000000000002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200910000000000000000483', '20200910', '211753', '51E0', '50', 'MCA', 'APP', '20200910000000000000327027', '13521699306', 'MSHWARI', ' ', 'SAVLBX01', 1100000000049, '1070000000000380', 'SAVGEN01', 1100000000049, '1060000000000222', ' ', 'S', 'D', 6000.00, 0.00, 0.000000, 0.00, 0.000000, ' ', '20180518', '211753', 0.00, 0.00, 0.00, 0, ' ', ' ', ' ', '20200910', '211810', '20200910000000000000327027', '20200910211810+08', 'sas_region.sas_d_5', ' ', ' ', '02', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_sas_txjnl` VALUES ('SAS5020200909000000000000000279', '20200909', '195521', '51E0', '50', 'MCA', 'APP', 'SasTransfermca026000000000001', '1100000000019', 'MSHWARI', ' ', 'SAVLBX01', 1100000000021, '1070000000000097', 'SAVGEN01', 1100000000021, '1060000000000083', ' ', 'U', 'D', 50.00, 0.00, 0.000000, 0.00, 0.000000, '0', '20180519', '195521', 50.00, 0.00, 50.00, 0, ' ', ' ', ' ', '20200909', '195533', '20200909000000000000281143', '20200909195533+08', 'sas_region.sas_d_5', 'Y', '20180519', '02', 'O!SAS!fixedToCurrentApplymca138000000000009', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_sas_txrvsjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_txrvsjnl`;
CREATE TABLE `t_sas_txrvsjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Original journal number',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Partner journal type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `OPP_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Opponent Product code',
  `OPP_USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Opponent User number',
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Opponent Account number',
  `OPP_AC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NM|Opponent account name',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAS_JRN_STS|Journal status',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Debit credit flag',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee amount',
  `FEE_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Fee rate',
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Tax amount',
  `TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Tax rate',
  `TRF_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TRF_TYP|Transfer type',
  `EXP_RCV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expected date of receive',
  `EXP_RCV_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expected time of receive',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Current account balance',
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available non-withdrawal balance',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAS_TXRVSJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_SAS_TXRVSJNL`(`AC_NO`) USING BTREE,
  INDEX `NI3_T_SAS_TXRVSJNL`(`CRE_DT`) USING BTREE,
  INDEX `NI1_T_SAS_TXRVSJNL`(`USR_NO`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saving financial transaction reverse journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sas_unplgjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_sas_unplgjnl`;
CREATE TABLE `t_sas_unplgjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `PLG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Pledge journal number',
  `PLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PLG_TYP|Pledge type',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `PLG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Pledge Amount',
  `UN_PLG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Un-Pledge Amount',
  `PLG_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Pledge balance',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI3_T_SAS_UNPLGJNL`(`CRE_DT`) USING BTREE,
  INDEX `NI1_T_SAS_UNPLGJNL`(`PLG_JRN_NO`) USING BTREE,
  INDEX `NI2_T_SAS_UNPLGJNL`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pledge release journal table' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
