/*
 Navicat Premium Data Transfer

 Source Server         : CSDACM
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : csdacm

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 18:43:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_acm_acbl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_acbl`;
CREATE TABLE `t_acm_acbl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_STS|Capital type status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `LAST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance of last day account',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account balance',
  `UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LAST_UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|The balance is not available on last day',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Can not withdrawal balance',
  `OD_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft',
  `TOT_OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated overdraft',
  `MAX_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum balance limit',
  `MIN_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance limit',
  `MIN_TRG_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance recharge trigger value',
  `BAL_TAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_TAG|Balance tag',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last updated date',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PROV_CD|User province',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_CD|User city',
  `AC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PROV_CD|Account province',
  `AC_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_CD|Account city',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `CAP_TYP`, `CCY`, `AC_ORG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Customer payment account balance table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_accf
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_accf`;
CREATE TABLE `t_acm_accf`  (
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NO|Product number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `AE_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'AE_NO|Account sequence number',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Debit and credit flag',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_FLG|Inside and outside account flag',
  `DEF_SEP_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEP_CD|Default separate code',
  `AC_TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Account transaction status',
  `AC_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Input operator',
  `CHK_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Check operator',
  `AC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Input time',
  `CHK_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Check time',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `CHK_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check account date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `CHK_IDEA` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Check idea',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `AC_SCE_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_SCE_CD|Account scene code',
  PRIMARY KEY (`AC_SCE_CD`, `AE_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Accounting rules table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_achl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_achl`;
CREATE TABLE `t_acm_achl`  (
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_STS|Capital type status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `LAST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance of last day account',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account balance',
  `UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LAST_UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|The balance is not available on last day',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Can not withdrawal balance',
  `OD_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft',
  `TOT_OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated overdraft',
  `MAX_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum balance limit',
  `MIN_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance limit',
  `MIN_TRG_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance recharge trigger value',
  `BAL_TAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_TAG|Balance tag',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last updated date',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  PRIMARY KEY (`AC_DT`, `AC_NO`, `CAP_TYP`, `CCY`, `AC_ORG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Customer payment account history balance table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_acin
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_acin`;
CREATE TABLE `t_acm_acin`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STSW` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STSW|Account status word',
  `OPN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Opening date',
  `OPN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Opening time',
  `OPN_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Opening business channel',
  `OPN_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Opening system channel',
  `CLO_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `SYS_CLO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CLO_FLG|System close flag',
  `PAY_PSWD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ECP_PWD|Payment password',
  `PAY_PSWD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PWD_STS|Payment password status',
  `ERR_PPSW_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PWD_ERR_CNT|Accumulated number of password errors on the same day of payment',
  `ERR_PPSW_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Payment password error date',
  `PSWD_MIN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Amount exempted from inspection',
  `LAST_HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Last hold number',
  `LAST_HLD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Last hold journal number',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PROV_CD|User province',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_CD|User city',
  `AC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PROV_CD|Account province',
  `AC_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_CD|Account city',
  `USR_CITY_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_NM|User city name',
  `RSK_RMK1` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark ',
  `RSK_RMK2` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `UPD_BAL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'UPD_BAL_FLG|Update balance flag',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|The product code',
  `CI_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CI_NO|client number',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`) USING BTREE,
  INDEX `NI3_T_ACM_ACIN`(`USR_NO`, `AC_TYP`, `AC_ORG`) USING BTREE,
  INDEX `NI2_T_ACM_ACIN`(`OPN_DT`) USING BTREE,
  INDEX `NI1_T_ACM_ACIN`(`OPN_DT`, `USR_PROV`, `USR_CITY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Customer payment account information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_acjn
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_acjn`;
CREATE TABLE `t_acm_acjn`  (
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `CNL_SYS_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel number',
  `CNL_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Business system transaction date',
  `CNL_SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Initiate system transaction time',
  `CNL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|System transaction journal number',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Business system transaction code',
  `FRT_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Pre-system trading date',
  `FRT_TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Pre-system trading time',
  `FRT_ACC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Pre-system accounting date',
  `FRT_ACC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Pre-system account organization',
  `FRT_ACC_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Trade journal number',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NO|Product number',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `AE_NUM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AE_SEQ|Account sequence number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal number status',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Check battle number',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_STS|Check status',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check date',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_TX_FLG|Reversal transaction flag',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_FLG|Reversal type',
  `OLD_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date of old pre-system',
  `OLD_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Old journal number',
  `AC_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_LONG|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `ACC_PERIOD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_PERD|Account period',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Real transaction date',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `PROC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Processing time',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `AC_SCE_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_SCE_CD|Account scene code',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AMT_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_MIDDLE|Amount string of json type',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `CAP_SRC` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_SRC|Capital source',
  `SRC_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|The repayment account number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|user number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPP_AC_NO|opponent account number',
  `OPP_USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'OPP_USR_NO|opponent user number',
  `TGT_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Target account number',
  `TGT_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ac_typ|Target account type',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`FRT_ACC_JRN`, `FRT_ACC_DT`, `FRT_ACC_ORG`) USING BTREE,
  UNIQUE INDEX `UI1_T_ACM_ACJN`(`SYS_CNL`, `RVS_TX_FLG`, `CNL_JRN_NO`) USING BTREE,
  INDEX `NI1_T_ACM_ACJN`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account request journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_actjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_actjnl`;
CREATE TABLE `t_acm_actjnl`  (
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_ACC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_ACC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_ACC_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ACC_PERIOD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_SCE_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI1_T_ACM_ACTJNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `NI2_T_ACM_ACTJNL`(`FRT_ACC_DT`, `JRN_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_acm_actjnl
-- ----------------------------
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200908', '191749', 'SAS5020200908000000000000000145', 'sasDeposit', '20200908', '191749', '20180518', '100001', 'SAA5020180518000000000000000128', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200908191806+08', '201805', '20200908', 50.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6010000000000001', '1070000000000097', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200908', '192438', 'SAS5020200908000000000000000150', 'sasDeposit', '20200908', '192438', '20180518', '100001', 'SAA5020180518000000000000000134', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200908192450+08', '201805', '20200908', 50.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6010000000000002', '1070000000000105', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200908', '193934', 'SAS5020200908000000000000000155', 'sasDeposit', '20200908', '193934', '20180518', '100001', 'SAA5020180518000000000000000142', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200908193946+08', '201805', '20200908', 100.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"100.00\",\"exciseDuty\":\"0\"}', 'SAVGEN01', 'SAVGEN01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6010000000000003', '1060000000000115', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200909', '102714', 'SAS5020200909000000000000000190', 'sasDeposit', '20200909', '102714', '20180518', '100001', 'SAA5020180518000000000000000207', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200909102735+08', '201805', '20200909', 200.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"200.00\",\"exciseDuty\":\"0\"}', 'SAVGEN01', 'SAVGEN01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6011000000000001', '1060000000000146', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200909', '200545', 'SAS5020200909000000000000000292', 'sasDeposit', '20200909', '200545', '20180518', '100001', 'SAA5020180518000000000000000372', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200909200605+08', '201805', '20200909', 500.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"500.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6011000000000002', '1070000000000180', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200909', '200747', 'SAS5020200909000000000000000298', 'sasDeposit', '20200909', '200747', '20180518', '100001', 'SAA5020180518000000000000000382', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200909200802+08', '201805', '20200909', 1000.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"1000.00\",\"exciseDuty\":\"0\"}', 'SAVGEN01', 'SAVGEN01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6011000000000003', '1060000000000190', 1100000000021, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200909', '205535', 'SAS5020200909000000000000000334', 'sasDeposit', '20200909', '205535', '20180518', '100001', 'SAA5020180518000000000000000441', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200909205553+08', '201805', '20200909', 50.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6011000000000004', '1070000000000205', 1100000000045, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200909', '205814', 'SAS5020200909000000000000000340', 'sasDeposit', '20200909', '205814', '20180518', '100001', 'SAA5020180518000000000000000451', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200909205827+08', '201805', '20200909', 100.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"100.00\",\"exciseDuty\":\"0\"}', 'SAVGEN01', 'SAVGEN01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6011000000000005', '1060000000000215', 1100000000045, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '103451', 'SAS5020200910000000000000000364', 'sasDeposit', '20200910', '103451', '20180518', '100001', 'SAA5020180518000000000000000484', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910103516+08', '201805', '20200910', 50.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000001', '1070000000000236', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '111539', 'SAS5020200910000000000000000377', 'sasDeposit', '20200910', '111539', '20180518', '100001', 'SAA5020180518000000000000000508', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910111554+08', '201805', '20200910', 300.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"300.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000002', '1070000000000243', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '111731', 'SAS5020200910000000000000000381', 'sasDeposit', '20200910', '111731', '20180518', '100001', 'SAA5020180518000000000000000513', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910111743+08', '201805', '20200910', 600.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"600.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000003', '1070000000000259', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '114121', 'SAS5020200910000000000000000390', 'sasDeposit', '20200910', '114121', '20180518', '100001', 'SAA5020180518000000000000000525', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910114137+08', '201805', '20200910', 550.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"550.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000004', '1070000000000266', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '163557', 'SAS5020200910000000000000000410', 'sasDeposit', '20200910', '163557', '20180518', '100001', 'SAA5020180518000000000000000549', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910163613+08', '201805', '20200910', 999.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"999.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000005', '1070000000000305', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '164937', 'SAS5020200910000000000000000423', 'sasDeposit', '20200910', '164937', '20180518', '100001', 'SAA5020180518000000000000000570', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910164956+08', '201805', '20200910', 123.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"123.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000006', '1070000000000312', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '171248', 'SAS5020200910000000000000000427', 'sasDeposit', '20200910', '171248', '20180518', '100001', 'SAA5020180518000000000000000576', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910171311+08', '201805', '20200910', 500.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"500.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000007', '1070000000000329', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '175411', 'SAS5020200910000000000000000438', 'sasDeposit', '20200910', '175411', '20180518', '100001', 'SAA5020180518000000000000000592', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910175444+08', '201805', '20200910', 666.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"666.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000008', '1070000000000343', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '180440', 'SAS5020200910000000000000000446', 'sasDeposit', '20200910', '180440', '20180518', '100001', 'SAA5020180518000000000000000604', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910180522+08', '201805', '20200910', 888.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"888.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6012000000000009', '1070000000000359', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '195109', 'SAS5020200910000000000000000455', 'sasDeposit', '20200910', '195109', '20180518', '100001', 'SAA5020180518000000000000000618', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910195135+08', '201805', '20200910', 2000.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"2000.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6013000000000001', '1070000000000373', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '202449', 'SAS5020200910000000000000000468', 'sasDeposit', '20200910', '202449', '20180518', '100001', 'SAA5020180518000000000000000640', 'saaDepositAccount', '50', '5100', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910202509+08', '201805', '20200910', 6000.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"fees\":\"0\",\"transactionAmount\":\"6000.00\",\"exciseDuty\":\"0\"}', 'SAVLBX01', 'SAVLBX01', 'MSHWARI', ' ', 0, 'O!SAA!saaqueueacm_d_6013000000000002', '1070000000000380', 1100000000049, ' ');
INSERT INTO `t_acm_actjnl` VALUES ('APP', 'SAA', '20200910', '211753', 'SAS5020200910000000000000000483', 'sasTransferWithdraw', '20200910', '211753', '20180518', '100001', 'SAA5020180518000000000000000672', 'transferAccount', '50', '51E0', '1', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '20200910211815+08', '201805', '20200910', 6000.00, ' ', 'SCM60004', ' ', ' ', ' ', '{\"interestTaxSaving\":\"0\",\"interestAmount\":\"0\",\"principalAmount\":\"6000.00\"}', 'SAVLBX01', '13521699306', 'MSHWARI', '1060000000000222', 1100000000049, 'O!SAA!saaqueueacm_d_6016000000000001', '1070000000000380', 1100000000049, ' ');

-- ----------------------------
-- Table structure for t_acm_cabl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_cabl`;
CREATE TABLE `t_acm_cabl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `CA_M_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Primary account',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_STS|Capital type status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date of capital type',
  `LAST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance of last days account',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account balance',
  `UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LAST_UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|The balance is not available on last day',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Can not withdrawal balance',
  `OD_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft',
  `TOT_OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated overdraft',
  `MAX_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Maximum balance limit',
  `MIN_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance limit',
  `MIN_TRG_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance recharge trigger value',
  `BAL_TAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_TAG|Balance tag',
  `REV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Recieve amount',
  `TOT_REV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total receive amount',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last updated date',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `FND_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Fund account number',
  `FND_CP_CD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FND_CP_CD|Fund product code',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`AC_NO`, `CAP_TYP`, `CCY`, `AC_ORG`) USING BTREE,
  INDEX `NI1_T_ACM_CABL`(`USR_NO`, `CAP_TYP`, `AC_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Basic information current account table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_cainf
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_cainf`;
CREATE TABLE `t_acm_cainf`  (
  `CA_M_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Primary account',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STSW` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STSW|Account status word',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `OPN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Opening date',
  `OPN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Opening time',
  `OPN_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Opening business channel',
  `OPN_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Opening system channel',
  `CLO_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `SYS_CLO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CLO_FLG|System close flag',
  `DRW_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WDC_TYP|Draw type',
  `DRW_PSWD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ECP_PWD|Draw password',
  `DRW_PSWD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PWD_STS|Draw password status',
  `ERR_WPSW_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'PWD_ERR_CNT|The count of draw password error on the same day',
  `ERR_WPSW_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Draw password error date',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`CA_M_AC`, `AC_ORG`) USING BTREE,
  INDEX `NI1_T_ACM_CAINF`(`AC_ORG`, `USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Basic information table for current account' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_capd
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_capd`;
CREATE TABLE `t_acm_capd`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CA_M_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Primary account',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `FND_AC_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FND_AC_NO|Fund account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STSW` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STSW|Account status word',
  `OPN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Opening date',
  `OPN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Opening time',
  `OPN_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Opening business channel',
  `OPN_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Opening system channel',
  `CLO_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `SYS_CLO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CLO_FLG|System close flag',
  `INT_CODE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_CODE|Interest code',
  `INT_RSEL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_SEL|Interest option',
  `INT_RAT` decimal(8, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Interest rate',
  `BUD_INT` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrued interest payable',
  `BUD_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Last drawing day',
  `PRE_INT_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last interest settlement date',
  `LAST_HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Last hold number',
  `LAST_HLD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Last hold journal number',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update the journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `FND_CP_CD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FND_CP_CD|Fund company code',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`AC_NO`, `AC_ORG`) USING BTREE,
  INDEX `NI1_T_ACM_CAPD`(`USR_NO`, `AC_TYP`, `PRD_CD`) USING BTREE,
  INDEX `NI2_T_ACM_CAPD`(`USR_NO`, `PRD_CD`, `AC_ORG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Current account product sub-table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_cddt
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_cddt`;
CREATE TABLE `t_acm_cddt`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|System date',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|System time',
  `JRN_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Journal sequence',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NO|Product number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Organization journal number',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Organization transaction date',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `ORG_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `AC_ORG_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization code',
  `AE_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AE_SEQ|Account sequence',
  `SEP_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEP_CD|Separate code',
  `CD_JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal status',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accounting date',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_TX_FLG|Reversal transaction flag',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_FLG|Reversal type',
  `RVS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Reversal journal number',
  `RVS_JRN_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Reversal journal sequence',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `DR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Debit amount',
  `CR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Credit amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft amount',
  `NOT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non-withdrawable amount',
  `UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LAST_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available balance on last day',
  `HOLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `TX_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_LONG|Transaction description',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Hold of debit and credit flag',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `AMT_KIND` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AMT_KND|Money kind',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK_MIDDLE|Remark ',
  `LAST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance of last day account',
  `NOT_TX_AVA_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Can not withdrawal balance',
  `CNL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CNL_FLG|channel flag',
  `CNL_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Channel journal number',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Debit and credit flag',
  `NOT_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOT_TX_FLG|Can not transaction flag',
  `BAL_OD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_OD_FLG|Battle sequence number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `UPD_BAL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'UPD_BAL_FLG|Update balance flag',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Settlement battle number',
  `STL_BAT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'BAT_SEQ|Settlement battle sequence',
  `STL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STL_STS|Settlement status',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Settlement date',
  `STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Settlement time',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|fee amount',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  PRIMARY KEY (`JRN_NO`, `JRN_SEQ`, `AC_DT`) USING BTREE,
  INDEX `NI1_T_ACM_CDDT`(`SEP_CD`, `AC_DT`) USING BTREE,
  INDEX `NI2_T_ACM_CDDT`(`SYS_DT`, `SEP_CD`) USING BTREE,
  INDEX `NI5_T_ACM_CDDT`(`EXT_REF_NO`) USING BTREE,
  INDEX `NI3_T_ACM_CDDT`(`AC_ORG_CD`, `AC_DT`) USING BTREE,
  INDEX `NI4_T_ACM_CDDT`(`ORG_JRN_NO`, `AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_ckcl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_ckcl`;
CREATE TABLE `t_acm_ckcl`  (
  `CHK_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Check channel',
  `CHK_FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Check file date',
  `CHK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|Check file name',
  `CHK_BEG_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Check begin time',
  `CHK_END_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Check end time',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Check battle number',
  `CHK_FIL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_STS|Check file status',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`CHK_CNL`, `CHK_FIL_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Accounting system reconciliation control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_hold
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_hold`;
CREATE TABLE `t_acm_hold`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `HLD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_STS|Hold state',
  `HLD_CD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold balance',
  `NOT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non-withdrawable amount',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|System date',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|System time',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effect date',
  `EFF_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Effect time',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiration  date',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expiration time',
  `RLS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Release date',
  `RLS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Release time',
  `DUE_PROC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DUE_PROC_MOD|Over process mode',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK_MIDDLE|RMK MIDDLE ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_FLG|Pay flag',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PROV_CD|User province',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CITY_CD|User city',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Organization journal number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  PRIMARY KEY (`AC_NO`, `CAP_TYP`, `CCY`, `AC_ORG`, `HLD_NO`) USING BTREE,
  INDEX `NI3_T_ACM_HOLD`(`EXT_REF_NO`) USING BTREE,
  INDEX `NI2_T_ACM_HOLD`(`AC_NO`, `SYS_DT`) USING BTREE,
  INDEX `NI1_T_ACM_HOLD`(`AC_NO`, `ORD_TYP`, `SYS_DT`, `ORD_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Detailed customer funds freezing table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_holdjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_holdjnl`;
CREATE TABLE `t_acm_holdjnl`  (
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Organization transaction date',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Organization journal number',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ACC_PERIOD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_PERD|Account period',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Real transaction date',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `ACC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency ',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_CD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK_MIDDLE|Remark middle ',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiration  date',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expiration time',
  `EXP_PROC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DUE_PROC_MOD|Expiration process mode',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `NOT_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOT_TX_FLG|Can not transaction flag',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`ORG_JRN_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI1_T_ACM_HOLDJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Freezing journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_mngjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_mngjnl`;
CREATE TABLE `t_acm_mngjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Organization transaction date',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Organization journal number',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TXN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction state',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `PROC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Process time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `REQ_DAT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_LONG|Request data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`CRE_DT`, `JRN_NO`) USING BTREE,
  INDEX `NI1_T_ACM_MNGJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Accounting system management journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_acm_unholdjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_acm_unholdjnl`;
CREATE TABLE `t_acm_unholdjnl`  (
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Organization journal number',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Organization transaction date',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `ACC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization ',
  `ACC_PERIOD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_PERD|Account period',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Real transaction date',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency ',
  `UNHLD_UAVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance after unhold',
  `UNHLD_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Account balance after unhold',
  `UNHLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unhold amount',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_CD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK_MIDDLE|Remark middle',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`SYS_CNL`, `ORG_JRN_NO`) USING BTREE,
  INDEX `NI1_T_ACM_UNHOLDJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Unhold journal table' ROW_FORMAT = Dynamic;

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
-- Table structure for t_pub_bsts
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_bsts`;
CREATE TABLE `t_pub_bsts`  (
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Battle state',
  `BAT_BEG_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Battle begin time',
  `BAT_END_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_TIME|Battle end time',
  `WIN_DT1` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_BEG_TM` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window begin time',
  `WIN_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window end time',
  `LAST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `LAST_AC_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT2_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `CUR_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Current account date',
  `CUR_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Current account date flag',
  `NEXT_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next account date',
  `NEXT_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Next account date flag',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch operation status information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_bsts
-- ----------------------------
INSERT INTO `t_pub_bsts` VALUES ('20180517', 'S', '20180226151750', '20180226154033', '20180517', '20180518', '080000', '020000', '20180516', 'D', '20180515', 'D', '20180517', 'D', '20180518', 'D', '20200321115003', ' ', ' ');

-- ----------------------------
-- Table structure for t_pub_jobshardinf
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_jobshardinf`;
CREATE TABLE `t_pub_jobshardinf`  (
  `JOB_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Job ID',
  `APP_NM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PUB' COMMENT 'App name',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Name',
  `SQL_TEXT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SQL text',
  `OBJ_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'C' COMMENT 'Object type',
  `OBJ_SVR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Object server',
  `OBJ_TXNCD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Object transaction code',
  `SHARD_CNT` bigint(20) NOT NULL DEFAULT 1 COMMENT 'Shard count',
  `SHARD_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Shard key',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Remark',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Status',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Create operator',
  `CRE_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Create time stamp',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Update operator',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Node ID',
  `EXEC_NODE` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Execute node',
  `LOG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'LOG_FLG|Logger flag',
  PRIMARY KEY (`JOB_ID`) USING BTREE,
  UNIQUE INDEX `UI1_T_PUB_JOBSHARDINF`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Job shard information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_jobshardinf
-- ----------------------------
INSERT INTO `t_pub_jobshardinf` VALUES ('18b2a1fc367d5b0233e45d6f1785150d', 'ACM', 'SAA003', 'SELECT BAT_NO, OLD_AC_NO, AC_NO, AC_ORG, CAP_TYP, CCY,INT_AMT, TAX_AMT, \'${acDt}\' ac_dt FROM T_SAA_BATINTJNL WHERE BAT_NO = \'${batNo}\'', 'C', 'saaBatchCapital', ' ', 10, 'AC_NO', 'dividend', '1', 'T00001', '20200218143618', 'T00001', '20200218143618', ' ', ' ', ' ', '1');
INSERT INTO `t_pub_jobshardinf` VALUES ('72a3f641e25a6e7b23826d4c54bf0fd5', 'ACM', 'SAA002', 'SELECT AC_NO, AC_ORG, CAP_TYP, CCY, \'${acDt}\' ac_dt FROM T_SAA_INTSTLREG WHERE INT_FLG = \'0\' AND (INT_PRD_DT = \'${acDt}\' or DUE_DT = \'${acDt}\')', 'C', 'saaBatchPunishHandle', ' ', 10, 'AC_NO', 'Punishment and reward handle', '1', 'keT00001', '20200321114532', 'keT00001', '20200321114532', ' ', 'account.acm', ' ', '1');
INSERT INTO `t_pub_jobshardinf` VALUES ('c29da6214364773f29bbe95776f078ce', 'ACM', 'SAA001', 'SELECT AC_NO, AC_ORG, CAP_TYP, CCY,\'${batNo}\' BAT_NO, \'${acDt}\' ac_dt  FROM T_SAA_INTSTLREG WHERE INT_FLG = \'0\' AND (INT_PRD_DT = \'${acDt}\' or DUE_DT = \'${acDt}\')', 'C', 'batchCapital', ' ', 30, 'AC_NO', 'Capitalization', '1', 'keT00001', '20200321114532', 'keT00001', '20200321114532', ' ', 'account.acm', ' ', '1');

-- ----------------------------
-- Table structure for t_pub_jobshardjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_jobshardjnl`;
CREATE TABLE `t_pub_jobshardjnl`  (
  `EXEC_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXEC_ID|Execute ID',
  `SEQ_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Sequence number',
  `JOB_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Job ID',
  `APP_NM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'App name',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT 'Status',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Message information',
  `STR_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Start time stamp',
  `END_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'End time stamp',
  `EXEC_NOD_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Execute node ID',
  `RERUN_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Rerun count',
  `TM_SMP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Time stamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Node ID',
  `TOTAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Total number',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Name',
  `BUS_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Business key',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'parameter',
  PRIMARY KEY (`EXEC_ID`, `SEQ_NO`) USING BTREE,
  INDEX `NI1_T_PUB_JOBSHARDJNL`(`APP_NM`, `EXEC_NOD_ID`, `STATUS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Job shard journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_rsts
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_rsts`;
CREATE TABLE `t_pub_rsts`  (
  `SYS_VER_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VERSION|System version number',
  `SYS_STUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_SYS_STS|System status',
  `WIN_MODE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WIN_MOD|Window mode',
  `WIN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WIN_STS|Window status',
  `WIN_SW_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window switch time',
  `WIN_DT1` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window begin time',
  `WIN_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window end time',
  `LAST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `LAST_AC_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT2_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `CUR_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Current account date',
  `CUR_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Current account date flag',
  `NEXT_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next account date',
  `NEXT_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Next account date flag',
  `AC_DT_SW_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_SW_FLG|Account date flag',
  `LAST_UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `LAST_UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `LAST_UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`SYS_VER_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_PUB_RSTS`(`TM_SMP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Daily-end batch operation information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_rsts
-- ----------------------------
INSERT INTO `t_pub_rsts` VALUES ('V1.0.0', 'A', '1', 'N', '000000', '20180518', '20180519', '080000', '020000', '20180517', 'D', '20180516', 'D', '20180518', 'D', '20180519', 'D', '0', '20180226', '154032', 'T00001', '20200321114615', ' ', ' ');

-- ----------------------------
-- Table structure for t_pub_rstshis
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_rstshis`;
CREATE TABLE `t_pub_rstshis`  (
  `SYS_VER_NO` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VERSION|System version number',
  `SYS_STUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_SYS_STS|System status',
  `WIN_MODE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'WIN_MOD|Window mode',
  `WIN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'WIN_STS|Window status',
  `WIN_SW_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000' COMMENT 'TIME|Window switch time',
  `WIN_DT1` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Window date',
  `WIN_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window begin time',
  `WIN_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Window end time',
  `LAST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `LAST_AC_DT2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last account date',
  `LAST_AC_DT2_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Last account date flag',
  `CUR_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Current account date',
  `CUR_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Current account date flag',
  `NEXT_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next account date',
  `NEXT_AC_DT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_FLG|Next account date flag',
  `AC_DT_SW_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_DT_SW_FLG|Account date flag',
  `LAST_UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `LAST_UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last update time',
  `LAST_UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Last update operator',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  PRIMARY KEY (`TM_SMP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Daily-end batch operation information history table' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'PUBSBSP', 1, 999999999999, 0, 1, 'Y', '', ' ', '');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_ACMACNO', 48, 1000000000000000000, 0, 1, 'Y', '20200911170833+08', ' ', 'O!SSWR!userRegistermca089000000000001');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 690, 9999999999, 0, 1, 'Y', '20200911174830+08', ' ', 'account.acm_d_6');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUB_WALNO', 1, 999999999999, 1, 1, 'Y', '', ' ', ' ');

-- ----------------------------
-- Table structure for t_saa_acbl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_acbl`;
CREATE TABLE `t_saa_acbl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CAP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_STS|Capital status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `LST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last account balance',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Current account balance',
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LST_UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last unavailable balance',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Non-transaction balance',
  `OD_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft limit',
  `TOT_OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total overdraft limit',
  `MAX_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Max balance limit',
  `MIN_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Min balance limit',
  `MIN_TRG_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance recharge trigger value',
  `BAL_TAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_TAG|Balance target',
  `DEP_CAMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated amount of current deposit on the same day',
  `DRW_CAMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated cash withdrawal on the same day',
  `DRW_TAMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated amount transferred on the same day',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update journal number',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `LST_NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last non-transaction balance',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Prudent sub category',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `BAL_UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Balance update date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE,
  INDEX `NI2_T_SAA_ACBL`(`PRD_CD`) USING BTREE,
  INDEX `NI1_T_SAA_ACBL`(`USR_NO`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account balance table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_acbl
-- ----------------------------
INSERT INTO `t_saa_acbl` VALUES ('1060000000000015', '100001', '1', 'KES', '106', 1100000000041, 'SAVGEN01', '0', '20200908', '152512', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '3d6423206fe4f103983ea4762d6dc3cf', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000069', 0, '20200908000000000000000521', ' ', '20200908152530+08', 0.00, '01', 'O!SSWR!userRegistermca044000000000016', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000022', '100001', '1', 'KES', '106', 1100000000042, 'SAVGEN01', '0', '20200908', '152827', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '6752d834c10326be820286f0b982807a', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000070', 0, '20200908000000000000000525', ' ', '20200908152838+08', 0.00, '01', 'O!SSWR!userRegistermca044000000000020', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000083', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '0', '20200908', '190031', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0eb5bc34c29a7d9ba9b382ce251a4eba', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000118', 0, '20200908000000000000240164', ' ', '20200908190032+08', 0.00, '01', 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000115', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '0', '20200908', '193934', 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0105f5aa571bc033cff6f2665879a134', 100.00, 0.00, 0.00, ' ', '20200908', '193942', 'SAA5020180518000000000000000142', 1, '20200908000000000000241100', ' ', '20200908193942+08', 0.00, '01', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000139', '100001', '1', 'KES', '106', 1100000000044, 'SAVGEN01', '0', '20200909', '101208', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '967584f0f95ed79ed3a8318711c9a999', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000200', 0, '20200909000000000000000646', ' ', '20200909101255+08', 0.00, '01', 'O!SSWR!userRegistermca048000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000146', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '0', '20200909', '102714', 0.00, 200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'e9a539f82d0e3d26f41132c65b8dcfb8', 200.00, 0.00, 0.00, ' ', '20200909', '102726', 'SAA5020180518000000000000000207', 1, '20200909000000000000257019', ' ', '20200909102726+08', 0.00, '01', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000152', '100001', '1', 'KES', '106', 1100000000045, 'SAVGEN01', '0', '20200909', '180159', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'd00b0f7639f819f88b0e98dd9dc6f82c', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000294', 0, '20200909000000000000000903', ' ', '20200909180215+08', 0.00, '01', 'O!SSWR!userRegistermca049000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000169', '100001', '1', 'KES', '106', 1100000000046, 'SAVGEN01', '0', '20200909', '181136', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'dd2bcec17e92615f1ae0ab4868ec1071', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000299', 0, '20200909000000000000000911', ' ', '20200909181145+08', 0.00, '01', 'O!SSWR!userRegistermca049000000000002', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000176', '100001', '1', 'KES', '106', 1100000000047, 'SAVGEN01', '0', '20200909', '193048', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50ff3e26a38e6eccd1c93241414e8b13', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000328', 0, '20200909000000000000000916', ' ', '20200909193102+08', 0.00, '01', 'O!SSWR!userRegistermca050000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000190', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '0', '20200909', '200747', 0.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '09c48bec3c5d31c700178e37d9f7ea1d', 1000.00, 0.00, 0.00, ' ', '20200909', '200758', 'SAA5020180518000000000000000382', 1, '20200909000000000000281189', ' ', '20200909200758+08', 0.00, '01', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000215', '100001', '1', 'USD', '106', 1100000000045, 'SAVGEN01', '0', '20200909', '205814', 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '561e4ba19cdf7534618fc67cadcc0f48', 100.00, 0.00, 0.00, ' ', '20200909', '205823', 'SAA5020180518000000000000000451', 1, '20200909000000000000283131', ' ', '20200909205823+08', 0.00, '01', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000222', '100001', '1', 'KES', '106', 1100000000049, 'SAVGEN01', '0', '20200910', '102956', 0.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '77b59ab34c9cc7c918e7eb0897e00b75', 6000.00, 0.00, 0.00, 'After registration, open a general deposit account', '20200910', '211808', 'SAA5020180518000000000000000672', 1, '20200910000000000000000978', ' ', '20200910211808+08', 0.00, '01', 'O!SAS!fixedToCurrentApplymca156000000000001', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000276', '100001', '1', 'KES', '106', 1100000000050, 'SAVGEN01', '0', '20200910', '152325', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '6b26bff7db41e9a2439a4c83a613bb1d', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000538', 0, '20200910000000000000001058', ' ', '20200910152337+08', 0.00, '01', 'O!SSWR!userRegistermca063000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000283', '100001', '1', 'KES', '106', 1100000000052, 'SAVGEN01', '0', '20200910', '162339', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0decfdfb3911a017e1d8bf111a0463ca', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000540', 0, '20200910000000000000001103', ' ', '20200910162349+08', 0.00, '01', 'O!SSWR!userRegistermca064000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000339', '100001', '1', 'KES', '106', 1100000000053, 'SAVGEN01', '0', '20200910', '175007', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '04bc915b7fa536105bff8ebb7ac38dd6', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000587', 0, '20200910000000000000001185', ' ', '20200910175031+08', 0.00, '01', 'O!SSWR!userRegistermca066000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000408', '100001', '1', 'KES', '106', 1100000000054, 'SAVGEN01', '0', '20200910', '210111', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2afec0843d3cfe6f22d013344c7a7f45', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000664', 0, '20200910000000000000001275', ' ', '20200910210558+08', 0.00, '01', 'O!SSWR!userRegistermca077000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000415', '100001', '1', 'KES', '106', 1100000000055, 'SAVGEN01', '0', '20200911', '164656', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'aa260d955a9a992dca2377b2186b82b2', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000679', 0, '20200911000000000000001386', ' ', '20200911164721+08', 0.00, '01', 'O!SSWR!userRegistermca088000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000422', '100001', '1', 'KES', '106', 1100000000056, 'SAVGEN01', '0', '20200911', '164943', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '7d11872bb4c74cd4c90037e9fb431aea', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000681', 0, '20200911000000000000001391', ' ', '20200911164953+08', 0.00, '01', 'O!SSWR!userRegistermca088000000000002', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000439', '100001', '1', 'KES', '106', 1100000000057, 'SAVGEN01', '0', '20200911', '170323', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '73833b8ffaa5169a0029653b9951b7bd', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000682', 0, '20200911000000000000001397', ' ', '20200911170336+08', 0.00, '01', 'O!SSWR!userRegistermca088000000000003', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000446', '100001', '1', 'KES', '106', 1100000000058, 'SAVGEN01', '0', '20200911', '170352', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '4f046611693b052f7da50399c47f0ffe', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000683', 0, '20200911000000000000001398', ' ', '20200911170404+08', 0.00, '01', 'O!SSWR!userRegistermca088000000000004', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000452', '100001', '1', 'KES', '106', 1100000000059, 'SAVGEN01', '0', '20200911', '170632', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '9bc4531c0b9e8208e1cbda2d82b0fd28', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000685', 0, '20200911000000000000001402', ' ', '20200911170644+08', 0.00, '01', 'O!SSWR!userRegistermca088000000000006', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000469', '100001', '1', 'KES', '106', 1100000000060, 'SAVGEN01', '0', '20200911', '170811', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '503879ada6143d8f098a2a40bb2d001d', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000686', 0, '20200911000000000000001408', ' ', '20200911170835+08', 0.00, '01', 'O!SSWR!userRegistermca089000000000001', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1060000000000476', '100001', '1', 'KES', '106', 1100000000061, 'SAVGEN01', '0', '20200911', '171209', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'e4b18d12b7e9bda8079382b7f0c613c7', 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', 'SAA0020180518000000000000000687', 0, '20200911000000000000001421', ' ', '20200911171221+08', 0.00, '01', 'O!SSWR!userRegistermca089000000000002', ' ', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000036', '100001', '1', 'USD', '107', 1100000000042, 'SAVLBX01', '0', '20200908', '160218', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '4598221fbcf966b4c57a8b9b0ea89257', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000074', 0, '20200908000000000000230111', ' ', '20200908160224+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000043', '100001', '1', 'USD', '107', 1100000000042, 'SAVLBX01', '0', '20200908', '165532', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'e1afa86d7848af6497898cbcdbdc4ec5', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000089', 0, '20200908000000000000234047', ' ', '20200908165540+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000003', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000059', '100001', '1', 'USD', '107', 1100000000042, 'SAVLBX01', '0', '20200908', '165836', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0edd5a1e171daf9df4dca9da49a13b1d', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000095', 0, '20200908000000000000234062', ' ', '20200908165843+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca095000000000004', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000066', '100001', '1', 'USD', '107', 1100000000042, 'SAVLBX01', '0', '20200908', '172532', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '9a18f7047cfa9f9a855f972ae8fdc36f', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000102', 0, '20200908000000000000237018', ' ', '20200908172536+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca096000000000001', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000073', '100001', '1', 'USD', '107', 1100000000042, 'SAVLBX01', '0', '20200908', '175050', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'a4b78c4de83bf5a332890e64e3e72464', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000108', 0, '20200908000000000000238033', ' ', '20200908175057+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca097000000000001', ' ', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000097', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '2', '20200908', '191749', 0.00, 50.00, 0.00, 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'a885b8bbc197944a581428bffa9aa89a', 50.00, 0.00, 0.00, ' ', '20200909', '195521', 'SAA0020180518000000000000000352', 2, '20200908000000000000241043', ' ', '20200909195533+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca138000000000009', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000105', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '0', '20200908', '192438', 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '6f5cf860cdf516cf3b0f3f3c6af56ae7', 50.00, 0.00, 0.00, ' ', '20200908', '192446', 'SAA5020180518000000000000000134', 1, '20200908000000000000241072', ' ', '20200908192446+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000180', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '0', '20200909', '200545', 0.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '8e51852a6c26e12fb490bf582902c5a2', 500.00, 0.00, 0.00, ' ', '20200909', '200600', 'SAA5020180518000000000000000372', 1, '20200909000000000000281168', ' ', '20200909200600+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000205', '100001', '1', 'USD', '107', 1100000000045, 'SAVLBX01', '0', '20200909', '205535', 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '422b6617299850cce341dca67b10221a', 50.00, 0.00, 0.00, ' ', '20200909', '205549', 'SAA5020180518000000000000000441', 1, '20200909000000000000283113', ' ', '20200909205549+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000236', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '0', '20200910', '103451', 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '6fabbfc8f4feb1786c3fa4ae97edd283', 50.00, 0.00, 0.00, ' ', '20200910', '103508', 'SAA5020180518000000000000000484', 1, '20200910000000000000289140', ' ', '20200910103508+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000243', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '111539', 0.00, 300.00, 0.00, 0.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'f041bfac6b8d1a062e16d9b1edf95766', 300.00, 0.00, 0.00, ' ', '20200910', '164837', 'SAA0020180518000000000000000566', 2, '20200910000000000000296012', ' ', '20200910164848+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca150000000000002', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000259', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '111731', 0.00, 600.00, 0.00, 0.00, 600.00, 0.00, 0.00, 0.00, 0.00, 0.00, '36fe748c951a2968993a4698d48d8291', 600.00, 0.00, 0.00, ' ', '20200910', '111904', 'SAA0020180518000000000000000521', 2, '20200910000000000000296029', ' ', '20200910111911+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca143000000000001', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000266', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '114121', 0.00, 550.00, 0.00, 0.00, 550.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'ef7fbd8758c0d79e9a62d700e45815df', 550.00, 0.00, 0.00, ' ', '20200910', '114628', 'SAA0020180518000000000000000533', 2, '20200910000000000000298017', ' ', '20200910114642+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca146000000000001', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000297', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '0', '20200910', '163516', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '519d8612998d7d14a03832d57c8967f8', 0.00, 0.00, 0.00, ' ', ' ', ' ', 'SAA0020180518000000000000000544', 0, '20200910000000000000307055', ' ', '20200910163528+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', ' ', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000305', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '163557', 0.00, 999.00, 0.00, 0.00, 999.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2e0d6d44b0ec2b5972cdd8f62d418ab4', 999.00, 0.00, 0.00, ' ', '20200910', '163720', 'SAA0020180518000000000000000557', 2, '20200910000000000000307059', ' ', '20200910163732+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca150000000000001', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000312', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '0', '20200910', '164937', 0.00, 123.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '9a88fb183cb2def15eda32f1fadbfff8', 123.00, 0.00, 0.00, ' ', '20200910', '164951', 'SAA5020180518000000000000000570', 1, '20200910000000000000307124', ' ', '20200910164951+08', 0.00, '02', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000329', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '171248', 0.00, 500.00, 0.00, 0.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'ae23b5d773e2b0ace81de8a245820abe', 500.00, 0.00, 0.00, ' ', '20200910', '171416', 'SAA0020180518000000000000000584', 2, '20200910000000000000307153', ' ', '20200910171430+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca150000000000003', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000343', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '175411', 0.00, 666.00, 0.00, 0.00, 666.00, 0.00, 0.00, 0.00, 0.00, 0.00, '23feac41c7a915c3e7e7449bdba76d51', 666.00, 0.00, 0.00, ' ', '20200910', '175621', 'SAA0020180518000000000000000600', 2, '20200910000000000000307230', ' ', '20200910175644+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca150000000000004', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000359', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '180440', 0.00, 888.00, 0.00, 0.00, 888.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'a86d935322195fe496c2e57addd4b1f4', 888.00, 0.00, 0.00, ' ', '20200910', '180640', 'SAA0020180518000000000000000612', 2, '20200910000000000000311016', ' ', '20200910180655+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca151000000000001', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000373', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '2', '20200910', '195109', 0.00, 2000.00, 0.00, 0.00, 2000.00, 0.00, 0.00, 0.00, 0.00, 0.00, '5791fced311f67d03b7e09f3dd29af1d', 2000.00, 0.00, 0.00, ' ', '20200910', '195956', 'SAA0020180518000000000000000634', 2, '20200910000000000000313043', ' ', '20200910200008+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca153000000000002', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acbl` VALUES ('1070000000000380', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '1', '20200910', '202449', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '734d3ee38aba8390868a353c91cf683e', 6000.00, 6000.00, 0.00, ' ', '20200910', '211753', 'SAA5020180518000000000000000672', 2, '20200910000000000000313091', ' ', '20200910211809+08', 0.00, '02', 'O!SAS!fixedToCurrentApplymca156000000000001', '20180518', '13521699306', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_achl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_achl`;
CREATE TABLE `t_saa_achl`  (
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CAP_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_STS|Capital status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `LST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last account balance',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Current account balance',
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unavailable balance',
  `LST_UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last unavailable balance',
  `NOT_TX_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Available non-withdrawal balance',
  `OD_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdraft limit',
  `TOT_OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total overdraft limit',
  `MAX_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Max balance limit',
  `MIN_BAL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Min balance limit',
  `MIN_TRG_VAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Minimum balance recharge trigger value',
  `BAL_TAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAL_TAG|Balance target',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update journal number',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Order sequence',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_DT`, `AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account balance history table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_acin
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_acin`;
CREATE TABLE `t_saa_acin`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `NCK_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NCK_NM|Nick name',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Prudent sub category',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STSW` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000000000000000000000000000' COMMENT 'AC_STSW|Account status word',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `OPN_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `OPN_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `CLO_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `OLD_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|T24 account number',
  `LST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Last account number',
  `ORG_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Original account number',
  `HNG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HNG_FLG|Hang flag',
  `HNG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hang amount',
  `HNG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Hang date',
  `RTN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Hang return date',
  `PRD` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|period',
  `PRD_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Period unit',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_WD_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Advance withdraw count',
  `BRK_SIG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRK_SIG_FLG|Break sign flag',
  `CASH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAA_CASH_FLG|Cash flag',
  `AC_TIT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC|Account title',
  `TGT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Target amount',
  `ACC_LABEL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_LABEL|Account label',
  `GROUP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GROUP_FLG|Group account flag',
  `APL_OPR_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Apply Operator number',
  `CHK_OPR_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Check Operator number',
  `FST_DEP_CAP_SRC` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_SRC|First deposit capital source',
  `FST_DEP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First deposit date',
  `FST_WDR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First withdraw date',
  `LST_DEP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last deposit date',
  `LST_WDR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last withdraw date',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update journal number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `OLD_AA_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Arrangement ID',
  `INV_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INV_CD|Invite code',
  `OPN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account open date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE,
  INDEX `NI4_T_SAA_ACIN`(`USR_NO`, `NCK_NM`) USING BTREE,
  INDEX `NI2_T_SAA_ACIN`(`USR_NO`, `PRD_SUB_CTG`) USING BTREE,
  INDEX `NI5_T_SAA_ACIN`(`OPN_DT`) USING BTREE,
  INDEX `NI3_T_SAA_ACIN`(`PRD_CD`, `CI_NO`) USING BTREE,
  INDEX `NI1_T_SAA_ACIN`(`PRD_CD`, `USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_acin
-- ----------------------------
INSERT INTO `t_saa_acin` VALUES ('1060000000000015', '100001', '1', 'KES', '10602010000000000016', '106', 'SAVGEN01', '01', 1100000000041, 110000000000038, '0', '000000000000000000000000000000', '20200908', '152512', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200908000000000000000521', ' ', '20200908152529+08', 'O!SSWR!userRegistermca044000000000016', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000022', '100001', '1', 'KES', '10602010000000000023', '106', 'SAVGEN01', '01', 1100000000042, 110000000000039, '0', '000000000000000000000000000000', '20200908', '152827', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200908000000000000000525', ' ', '20200908152838+08', 'O!SSWR!userRegistermca044000000000020', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000083', '100001', '1', 'USD', '10602010000000000084', '106', 'SAVGEN01', '01', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200908', '190031', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908000000000000240164', ' ', '20200908190032+08', 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000115', '100001', '1', 'USD', '10602010000000000116', '106', 'SAVGEN01', '01', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200908', '193934', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '193942', '20200908000000000000241100', ' ', '20200908193942+08', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000139', '100001', '1', 'KES', '10602010000000000130', '106', 'SAVGEN01', '01', 1100000000044, 110000000000041, '0', '000000000000000000000000000000', '20200909', '101208', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200909000000000000000646', ' ', '20200909101250+08', 'O!SSWR!userRegistermca048000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000146', '100001', '1', 'USD', '10602010000000000147', '106', 'SAVGEN01', '01', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200909', '102714', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '102727', '20200909000000000000257019', ' ', '20200909102727+08', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000152', '100001', '1', 'KES', '10602010000000000153', '106', 'SAVGEN01', '01', 1100000000045, 110000000000041, '0', '000000000000000000000000000000', '20200909', '180159', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200909000000000000000903', ' ', '20200909180214+08', 'O!SSWR!userRegistermca049000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000169', '100001', '1', 'KES', '10602010000000000160', '106', 'SAVGEN01', '01', 1100000000046, 110000000000041, '0', '000000000000000000000000000000', '20200909', '181136', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200909000000000000000911', ' ', '20200909181145+08', 'O!SSWR!userRegistermca049000000000002', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000176', '100001', '1', 'KES', '10602010000000000177', '106', 'SAVGEN01', '01', 1100000000047, 110000000000041, '0', '000000000000000000000000000000', '20200909', '193048', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200909000000000000000916', ' ', '20200909193102+08', 'O!SSWR!userRegistermca050000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000190', '100001', '1', 'USD', '10602010000000000191', '106', 'SAVGEN01', '01', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200909', '200747', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '200758', '20200909000000000000281189', ' ', '20200909200758+08', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000215', '100001', '1', 'USD', '10602010000000000216', '106', 'SAVGEN01', '01', 1100000000045, 110000000000041, '0', '000000000000000000000000000000', '20200909', '205814', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '205823', '20200909000000000000283131', ' ', '20200909205823+08', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000222', '100001', '1', 'KES', '10602010000000000223', '106', 'SAVGEN01', '01', 1100000000049, 110000000000042, '0', '000000000000000000000000000000', '20200910', '102956', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', 'After registration, open a general deposit account', ' ', ' ', '211808', '20200910000000000000000978', ' ', '20200910211808+08', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000276', '100001', '1', 'KES', '10602010000000000277', '106', 'SAVGEN01', '01', 1100000000050, 110000000000041, '0', '000000000000000000000000000000', '20200910', '152325', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200910000000000000001058', ' ', '20200910152336+08', 'O!SSWR!userRegistermca063000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000283', '100001', '1', 'KES', '10602010000000000284', '106', 'SAVGEN01', '01', 1100000000052, 110000000000041, '0', '000000000000000000000000000000', '20200910', '162339', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200910000000000000001103', ' ', '20200910162349+08', 'O!SSWR!userRegistermca064000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000339', '100001', '1', 'KES', '10602010000000000330', '106', 'SAVGEN01', '01', 1100000000053, 110000000000041, '0', '000000000000000000000000000000', '20200910', '175007', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200910000000000000001185', ' ', '20200910175031+08', 'O!SSWR!userRegistermca066000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000408', '100001', '1', 'KES', '10602010000000000409', '106', 'SAVGEN01', '01', 1100000000054, 110000000000041, '0', '000000000000000000000000000000', '20200910', '210111', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200910000000000000001275', ' ', '20200910210558+08', 'O!SSWR!userRegistermca077000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000415', '100001', '1', 'KES', '10602010000000000416', '106', 'SAVGEN01', '01', 1100000000055, 110000000000042, '0', '000000000000000000000000000000', '20200911', '164656', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001386', ' ', '20200911164721+08', 'O!SSWR!userRegistermca088000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000422', '100001', '1', 'KES', '10602010000000000423', '106', 'SAVGEN01', '01', 1100000000056, 110000000000043, '0', '000000000000000000000000000000', '20200911', '164943', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001391', ' ', '20200911164953+08', 'O!SSWR!userRegistermca088000000000002', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000439', '100001', '1', 'KES', '10602010000000000430', '106', 'SAVGEN01', '01', 1100000000057, 110000000000042, '0', '000000000000000000000000000000', '20200911', '170323', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001397', ' ', '20200911170336+08', 'O!SSWR!userRegistermca088000000000003', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000446', '100001', '1', 'KES', '10602010000000000447', '106', 'SAVGEN01', '01', 1100000000058, 110000000000043, '0', '000000000000000000000000000000', '20200911', '170352', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001398', ' ', '20200911170404+08', 'O!SSWR!userRegistermca088000000000004', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000452', '100001', '1', 'KES', '10602010000000000453', '106', 'SAVGEN01', '01', 1100000000059, 110000000000043, '0', '000000000000000000000000000000', '20200911', '170632', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001402', ' ', '20200911170644+08', 'O!SSWR!userRegistermca088000000000006', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000469', '100001', '1', 'KES', '10602010000000000460', '106', 'SAVGEN01', '01', 1100000000060, 110000000000043, '0', '000000000000000000000000000000', '20200911', '170811', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001408', ' ', '20200911170833+08', 'O!SSWR!userRegistermca089000000000001', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1060000000000476', '100001', '1', 'KES', '10602010000000000477', '106', 'SAVGEN01', '01', 1100000000061, 110000000000043, '0', '000000000000000000000000000000', '20200911', '171209', 'SSWR', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 0, ' ', ' ', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'After registration, open a general deposit account', ' ', ' ', ' ', '20200911000000000000001421', ' ', '20200911171221+08', 'O!SSWR!userRegistermca089000000000002', ' ', ' ', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000036', '100001', '1', 'USD', '10702020000000000034', '107', 'SAVLBX01', '02', 1100000000042, 110000000000039, '0', '000000000000000000000000000000', '20200908', '160218', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200908000000000000230111', ' ', '20200908160224+08', 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000097', '100001', '1', 'USD', '10702020000000000095', '107', 'SAVLBX01', '02', 1100000000021, 110000000000011, '2', '000000000000000000000000000000', '20200908', '191749', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000352', '20200909', '195533', '20200908000000000000241043', ' ', '20200909195533+08', 'O!SAS!fixedToCurrentApplymca138000000000009', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000105', '100001', '1', 'USD', '10702020000000000103', '107', 'SAVLBX01', '02', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200908', '192438', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '192446', '20200908000000000000241072', ' ', '20200908192446+08', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000180', '100001', '1', 'USD', '10702020000000000188', '107', 'SAVLBX01', '02', 1100000000021, 110000000000011, '0', '000000000000000000000000000000', '20200909', '200545', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '200601', '20200909000000000000281168', ' ', '20200909200601+08', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000205', '100001', '1', 'USD', '10702020000000000203', '107', 'SAVLBX01', '02', 1100000000045, 110000000000041, '0', '000000000000000000000000000000', '20200909', '205535', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '205549', '20200909000000000000283113', ' ', '20200909205549+08', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000236', '100001', '1', 'USD', '10702020000000000234', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '0', '000000000000000000000000000000', '20200910', '103451', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '103508', '20200910000000000000289140', ' ', '20200910103508+08', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000243', '100001', '1', 'USD', '10702020000000000241', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '111539', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000566', '20200910', '164848', '20200910000000000000296012', ' ', '20200910164848+08', 'O!SAS!fixedToCurrentApplymca150000000000002', ' ', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000259', '100001', '1', 'USD', '10702020000000000257', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '111731', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000521', '20200910', '111911', '20200910000000000000296029', ' ', '20200910111911+08', 'O!SAS!fixedToCurrentApplymca143000000000001', ' ', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000266', '100001', '1', 'USD', '10702020000000000264', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '114121', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000533', '20200910', '114642', '20200910000000000000298017', ' ', '20200910114642+08', 'O!SAS!fixedToCurrentApplymca146000000000001', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000297', '100001', '1', 'USD', '10702020000000000295', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '0', '000000000000000000000000000000', '20200910', '163516', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910000000000000307055', ' ', '20200910163528+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000305', '100001', '1', 'USD', '10702020000000000303', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '163557', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000557', '20200910', '163731', '20200910000000000000307059', ' ', '20200910163731+08', 'O!SAS!fixedToCurrentApplymca150000000000001', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000312', '100001', '1', 'USD', '10702020000000000310', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '0', '000000000000000000000000000000', '20200910', '164937', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', ' ', ' ', '164951', '20200910000000000000307124', ' ', '20200910164951+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000329', '100001', '1', 'USD', '10702020000000000327', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '171248', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000584', '20200910', '171430', '20200910000000000000307153', ' ', '20200910171430+08', 'O!SAS!fixedToCurrentApplymca150000000000003', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000343', '100001', '1', 'USD', '10702020000000000341', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '175411', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000600', '20200910', '175644', '20200910000000000000307230', ' ', '20200910175644+08', 'O!SAS!fixedToCurrentApplymca150000000000004', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000359', '100001', '1', 'USD', '10702020000000000357', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '180440', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000612', '20200910', '180655', '20200910000000000000311016', ' ', '20200910180655+08', 'O!SAS!fixedToCurrentApplymca151000000000001', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000373', '100001', '1', 'USD', '10702020000000000371', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '2', '000000000000000000000000000000', '20200910', '195109', 'APP', 'SAS', ' ', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 0, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', ' ', '20180518', ' ', ' ', 'SAA0020180518000000000000000634', '20200910', '200008', '20200910000000000000313043', ' ', '20200910200008+08', 'O!SAS!fixedToCurrentApplymca153000000000002', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_acin` VALUES ('1070000000000380', '100001', '1', 'USD', '10702020000000000388', '107', 'SAVLBX01', '02', 1100000000049, 110000000000042, '1', '000000100000000000000000000000', '20200910', '202449', 'APP', 'SAS', '20180518', ' ', ' ', ' ', ' ', 0.00, ' ', ' ', 3, 'M', '20180818', 1, ' ', ' ', ' ', 0.00, ' ', ' ', ' ', ' ', ' ', '20180518', '20180518', '20180518', '20180518', ' ', 'SAA5020180518000000000000000672', '20200910', '211809', '20200910000000000000313091', ' ', '20200910211809+08', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', ' ', '20180518', '13521699306', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_acjn
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_acjn`;
CREATE TABLE `t_saa_acjn`  (
  `FRT_ACC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_ACC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_ACC_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_SYS_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRT_TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AE_NUM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ACC_PRD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_SCE_CD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_SAA_ACJN`(`SYS_CNL`, `CNL_JRN_NO`, `RVS_TX_FLG`) USING BTREE,
  INDEX `NI1_T_SAA_ACJN`(`CRE_DT`) USING BTREE,
  INDEX `NI2_T_SAA_ACJN`(`FRT_ACC_JRN`) USING BTREE,
  INDEX `NI3_T_SAA_ACJN`(`CNL_JRN_NO`, `CNL_TX_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_acjn
-- ----------------------------
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000128', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200908', '191749', 'SAS5020200908000000000000000145', 'sasDeposit', '20200908', '191749', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200908', 50.00, ' ', '20200908', '191749', '20200908', '191800', '20200908000000000000241043', ' ', '20200908191800+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000097', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000134', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200908', '192438', 'SAS5020200908000000000000000150', 'sasDeposit', '20200908', '192438', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200908', 50.00, ' ', '20200908', '192438', '20200908', '192447', '20200908000000000000241072', ' ', '20200908192447+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000105', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000142', 'SAVGEN01', 'APP', 'SAS', 'SAS', '20200908', '193934', 'SAS5020200908000000000000000155', 'sasDeposit', '20200908', '193934', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200908', 100.00, ' ', '20200908', '193934', '20200908', '193943', '20200908000000000000241100', ' ', '20200908193943+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVGEN01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"100.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1060000000000115', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000207', 'SAVGEN01', 'APP', 'SAS', 'SAS', '20200909', '102714', 'SAS5020200909000000000000000190', 'sasDeposit', '20200909', '102714', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 200.00, ' ', '20200909', '102714', '20200909', '102727', '20200909000000000000257019', ' ', '20200909102727+08', '3', 'SAA00000', ' ', ' ', ' ', 'SAVGEN01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"200.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1060000000000146', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000287', ' ', 'APP', 'SAS', 'SAS', '20200909', '171913', 'SAS5020200909000000000000000241', 'sasTransfer', '20200909', '171913', 'transferAccount', '50', '5100', '0', '4', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 100.00, ' ', '20200909', '171913', '20200909', '171927', '20200909000000000000276047', ' ', '20200909171927+08', '2', 'SAAP3051', ' ', ' ', ' ', '1100000000019', 'MSHWARI', ' ', '1060000000000115', 1100000000021, '1060000000000115', 1100000000021, 'O!SAS!fixedToCurrentApplymca133000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000292', ' ', 'APP', 'SAS', 'SAS', '20200909', '172013', 'SAS5020200909000000000000000243', 'sasTransfer', '20200909', '172013', 'transferAccount', '50', '5100', '0', '4', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 100.00, ' ', '20200909', '172013', '20200909', '172022', '20200909000000000000276049', ' ', '20200909172022+08', '0', 'SAAP3051', ' ', ' ', ' ', '1100000000019', 'MSHWARI', ' ', '1060000000000115', 1100000000021, '1060000000000115', 1100000000021, 'O!SAS!fixedToCurrentApplymca133000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000372', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200909', '200545', 'SAS5020200909000000000000000292', 'sasDeposit', '20200909', '200545', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 500.00, ' ', '20200909', '200545', '20200909', '200602', '20200909000000000000281168', ' ', '20200909200602+08', '3', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"500.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000180', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000382', 'SAVGEN01', 'APP', 'SAS', 'SAS', '20200909', '200747', 'SAS5020200909000000000000000298', 'sasDeposit', '20200909', '200747', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 1000.00, ' ', '20200909', '200747', '20200909', '200759', '20200909000000000000281189', ' ', '20200909200759+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVGEN01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"1000.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1060000000000190', 1100000000021, 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000441', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200909', '205535', 'SAS5020200909000000000000000334', 'sasDeposit', '20200909', '205535', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 50.00, ' ', '20200909', '205535', '20200909', '205550', '20200909000000000000283113', ' ', '20200909205550+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000205', 1100000000045, 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000451', 'SAVGEN01', 'APP', 'SAS', 'SAS', '20200909', '205814', 'SAS5020200909000000000000000340', 'sasDeposit', '20200909', '205814', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200909', 100.00, ' ', '20200909', '205814', '20200909', '205824', '20200909000000000000283131', ' ', '20200909205824+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVGEN01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"100.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1060000000000215', 1100000000045, 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000484', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '103451', 'SAS5020200910000000000000000364', 'sasDeposit', '20200910', '103451', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 50.00, ' ', '20200910', '103451', '20200910', '103508', '20200910000000000000289140', ' ', '20200910103508+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"50.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000236', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000508', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '111539', 'SAS5020200910000000000000000377', 'sasDeposit', '20200910', '111539', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 300.00, ' ', '20200910', '111539', '20200910', '111549', '20200910000000000000296012', ' ', '20200910111549+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"300.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000243', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000513', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '111731', 'SAS5020200910000000000000000381', 'sasDeposit', '20200910', '111731', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 600.00, ' ', '20200910', '111731', '20200910', '111740', '20200910000000000000296029', ' ', '20200910111740+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"600.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000259', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000525', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '114121', 'SAS5020200910000000000000000390', 'sasDeposit', '20200910', '114121', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 550.00, ' ', '20200910', '114121', '20200910', '114134', '20200910000000000000298017', ' ', '20200910114134+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"550.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000266', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000549', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '163557', 'SAS5020200910000000000000000410', 'sasDeposit', '20200910', '163557', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 999.00, ' ', '20200910', '163557', '20200910', '163610', '20200910000000000000307059', ' ', '20200910163610+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"999.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000305', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000570', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '164937', 'SAS5020200910000000000000000423', 'sasDeposit', '20200910', '164937', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 123.00, ' ', '20200910', '164937', '20200910', '164951', '20200910000000000000307124', ' ', '20200910164951+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"123.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000312', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000576', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '171248', 'SAS5020200910000000000000000427', 'sasDeposit', '20200910', '171248', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 500.00, ' ', '20200910', '171248', '20200910', '171308', '20200910000000000000307153', ' ', '20200910171308+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"500.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000329', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000592', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '175411', 'SAS5020200910000000000000000438', 'sasDeposit', '20200910', '175411', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 666.00, ' ', '20200910', '175411', '20200910', '175438', '20200910000000000000307230', ' ', '20200910175438+08', '2', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"666.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000343', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000604', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '180440', 'SAS5020200910000000000000000446', 'sasDeposit', '20200910', '180440', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 888.00, ' ', '20200910', '180440', '20200910', '180516', '20200910000000000000311016', ' ', '20200910180516+08', '3', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"888.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000359', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000618', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '195109', 'SAS5020200910000000000000000455', 'sasDeposit', '20200910', '195109', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 2000.00, ' ', '20200910', '195109', '20200910', '195129', '20200910000000000000313043', ' ', '20200910195129+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"2000.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000373', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000626', ' ', 'APP', 'SAS', 'SAS', '20200910', '195222', 'SAS5020200910000000000000000458', 'sasTransferWithdraw', '20200910', '195222', 'transferAccount', '50', '51E0', '0', '4', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 2000.00, ' ', '20200910', '195222', '20200910', '195235', '20200910000000000000313054', ' ', '20200910195235+08', '1', 'SAAP6003', ' ', ' ', ' ', '13521699306', 'MSHWARI', ' ', '1060000000000222', 1100000000049, '1070000000000373', 1100000000049, 'O!SAS!fixedToCurrentApplymca153000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000640', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '202449', 'SAS5020200910000000000000000468', 'sasDeposit', '20200910', '202449', 'saaDepositAccount', '50', '5100', '1', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 6000.00, ' ', '20200910', '202449', '20200910', '202506', '20200910000000000000313091', ' ', '20200910202506+08', '1', 'SAA00000', ' ', ' ', ' ', 'SAVLBX01', 'MSHWARI', '{\"fees\":\"0\",\"transactionAmount\":\"6000.00\",\"exciseDuty\":\"0\"}', ' ', 0, '1070000000000380', 1100000000049, 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000648', ' ', 'APP', 'SAS', 'SAS', '20200910', '202601', 'SAS5020200910000000000000000471', 'sasTransferWithdraw', '20200910', '202601', 'transferAccount', '50', '51E0', '0', '4', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 6000.00, ' ', '20200910', '202601', '20200910', '202614', '20200910000000000000313102', ' ', '20200910202614+08', '1', 'SAAP6003', ' ', ' ', ' ', '13521699306', 'MSHWARI', ' ', '1060000000000222', 1100000000049, '1070000000000380', 1100000000049, 'O!SAS!fixedToCurrentApplymca153000000000003', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000656', ' ', 'APP', 'SAS', 'SAS', '20200910', '205602', 'SAS5020200910000000000000000474', 'sasTransferWithdraw', '20200910', '205602', 'transferAccount', '50', '51E0', '0', '4', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 6000.00, ' ', '20200910', '205602', '20200910', '205614', '20200910000000000000325030', ' ', '20200910205614+08', '1', 'SAAP6003', ' ', ' ', ' ', '13521699306', 'MSHWARI', ' ', '1060000000000222', 1100000000049, '1070000000000380', 1100000000049, 'O!SAS!fixedToCurrentApplymca155000000000001', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000663', ' ', 'APP', 'SAS', 'SAS', '20200910', '205829', 'SAS5020200910000000000000000478', 'sasTransferWithdraw', '20200910', '205829', 'transferAccount', '50', '51E0', '0', '0', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 6000.00, ' ', '20200910', '205829', ' ', ' ', '20200910000000000000325040', ' ', '20200910205840+08', ' ', ' ', ' ', ' ', ' ', '13521699306', 'MSHWARI', ' ', '1060000000000222', 1100000000049, '1070000000000380', 1100000000049, 'O!SAS!fixedToCurrentApplymca155000000000002', ' ', '20180518');
INSERT INTO `t_saa_acjn` VALUES ('20180518', '100001', 'SAA5020180518000000000000000672', 'SAVLBX01', 'APP', 'SAS', 'SAS', '20200910', '211753', 'SAS5020200910000000000000000483', 'sasTransferWithdraw', '20200910', '211753', 'transferAccount', '50', '51E0', '0', '3', ' ', ' ', ' ', 'N', 'N', ' ', ' ', ' ', '201805', '20200910', 6000.00, ' ', '20200910', '211753', '20200910', '211809', '20200910000000000000327027', ' ', '20200910211809+08', '3', 'SAA00000', ' ', ' ', ' ', '13521699306', 'MSHWARI', '{\"interestTaxSaving\":\"0\",\"interestAmount\":\"0\",\"principalAmount\":\"6000.00\"}', '1060000000000222', 1100000000049, '1070000000000380', 1100000000049, 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', '20180518');

-- ----------------------------
-- Table structure for t_saa_batint
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_batint`;
CREATE TABLE `t_saa_batint`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch status',
  `TOT_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Total number',
  `SUC_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Successful number',
  `FAL_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Fail number',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch interest table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_batintjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_batintjnl`;
CREATE TABLE `t_saa_batintjnl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch number',
  `OLD_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|T24 account number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest amount',
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Tax amount',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'JRN_STS|Journal status',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`OLD_AC_NO`) USING BTREE,
  INDEX `NI1_T_SAA_BATINTJNL`(`BAT_NO`) USING BTREE,
  INDEX `NI2_T_SAA_BATINTJNL`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Batch interest journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_batjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_batjnl`;
CREATE TABLE `t_saa_batjnl`  (
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
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_SAA_BATJNL`(`AC_DT`, `BAT_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_cddt
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_cddt`;
CREATE TABLE `t_saa_cddt`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_SEQ` bigint(20) NOT NULL DEFAULT 0,
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CD_JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN_SEQ` bigint(20) NOT NULL DEFAULT 0,
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `OD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `NOT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LST_AVA_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_DSC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `HLD_DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_SEQ` bigint(20) NOT NULL DEFAULT 0,
  `AMT_KIND` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `NOT_TX_AVA_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CNL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOT_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAL_OD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_BAL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STL_BAT_SEQ` bigint(20) NOT NULL DEFAULT 0,
  `STL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AE_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `VAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`, `JRN_SEQ`) USING BTREE,
  INDEX `NI4_T_SAA_CDDT`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI5_T_SAA_CDDT`(`SYS_CNL`, `ORG_JRN_NO`, `ORG_TX_DT`) USING BTREE,
  INDEX `NI3_T_SAA_CDDT`(`AC_NO`) USING BTREE,
  INDEX `NI1_T_SAA_CDDT`(`ORG_JRN_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_SAA_CDDT`(`AC_DT`) USING BTREE,
  INDEX `T_SAA_CDDT_CREDT`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_cddt
-- ----------------------------
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000128', '20200908', '191749', 1, '1070000000000097', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '50', '5100', 'SAS5020200908000000000000000145', '20200908', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 50.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 50.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200908', '191749', '20200908', '191759', '20200908000000000000241043', ' ', '20200908191759+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000134', '20200908', '192438', 1, '1070000000000105', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '50', '5100', 'SAS5020200908000000000000000150', '20200908', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 50.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 50.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200908', '192438', '20200908', '192446', '20200908000000000000241072', ' ', '20200908192446+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000142', '20200908', '193934', 1, '1060000000000115', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '50', '5100', 'SAS5020200908000000000000000155', '20200908', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 100.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200908', '193934', '20200908', '193942', '20200908000000000000241100', ' ', '20200908193942+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000207', '20200909', '102714', 1, '1060000000000146', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '50', '5100', 'SAS5020200909000000000000000190', '20200909', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 200.00, 200.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 200.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200909', '102714', '20200909', '102726', '20200909000000000000257019', ' ', '20200909102727+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000372', '20200909', '200545', 1, '1070000000000180', '100001', '1', 'USD', '107', 1100000000021, 'SAVLBX01', '50', '5100', 'SAS5020200909000000000000000292', '20200909', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 500.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 500.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200909', '200545', '20200909', '200600', '20200909000000000000281168', ' ', '20200909200600+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000382', '20200909', '200747', 1, '1060000000000190', '100001', '1', 'USD', '106', 1100000000021, 'SAVGEN01', '50', '5100', 'SAS5020200909000000000000000298', '20200909', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 1000.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 1000.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200909', '200747', '20200909', '200758', '20200909000000000000281189', ' ', '20200909200758+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000441', '20200909', '205535', 1, '1070000000000205', '100001', '1', 'USD', '107', 1100000000045, 'SAVLBX01', '50', '5100', 'SAS5020200909000000000000000334', '20200909', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 50.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 50.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200909', '205535', '20200909', '205549', '20200909000000000000283113', ' ', '20200909205549+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000451', '20200909', '205814', 1, '1060000000000215', '100001', '1', 'USD', '106', 1100000000045, 'SAVGEN01', '50', '5100', 'SAS5020200909000000000000000340', '20200909', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 100.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200909', '205814', '20200909', '205823', '20200909000000000000283131', ' ', '20200909205823+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000484', '20200910', '103451', 1, '1070000000000236', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000364', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 50.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 50.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '103451', '20200910', '103508', '20200910000000000000289140', ' ', '20200910103508+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000508', '20200910', '111539', 1, '1070000000000243', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000377', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 300.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '111539', '20200910', '111548', '20200910000000000000296012', ' ', '20200910111548+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000513', '20200910', '111731', 1, '1070000000000259', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000381', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 600.00, 600.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 600.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '111731', '20200910', '111739', '20200910000000000000296029', ' ', '20200910111739+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000525', '20200910', '114121', 1, '1070000000000266', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000390', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 550.00, 550.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 550.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '114121', '20200910', '114134', '20200910000000000000298017', ' ', '20200910114134+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000549', '20200910', '163557', 1, '1070000000000305', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000410', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 999.00, 999.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 999.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '163557', '20200910', '163610', '20200910000000000000307059', ' ', '20200910163610+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000570', '20200910', '164937', 1, '1070000000000312', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000423', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 123.00, 123.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 123.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '164937', '20200910', '164951', '20200910000000000000307124', ' ', '20200910164951+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000576', '20200910', '171248', 1, '1070000000000329', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000427', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 500.00, 500.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 500.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '171248', '20200910', '171307', '20200910000000000000307153', ' ', '20200910171307+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000592', '20200910', '175411', 1, '1070000000000343', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000438', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 666.00, 666.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 666.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '175411', '20200910', '175438', '20200910000000000000307230', ' ', '20200910175438+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000604', '20200910', '180440', 1, '1070000000000359', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000446', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 888.00, 888.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 888.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '180440', '20200910', '180515', '20200910000000000000311016', ' ', '20200910180515+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000618', '20200910', '195109', 1, '1070000000000373', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000455', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 2000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 2000.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '195109', '20200910', '195129', '20200910000000000000313043', ' ', '20200910195129+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000640', '20200910', '202449', 1, '1070000000000380', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '5100', 'SAS5020200910000000000000000468', '20200910', 'sasDeposit', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasDeposit', 0.00, 6000.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 6000.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '202449', '20200910', '202506', '20200910000000000000313091', ' ', '20200910202506+08', ' ', 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000672', '20200910', '211753', 1, '1070000000000380', '100001', '1', 'USD', '107', 1100000000049, 'SAVLBX01', '50', '51E0', 'SAS5020200910000000000000000483', '20200910', 'sasTransferWithdraw', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasTransferWithdraw', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 6000.00, 'APP', 'SAS', ' ', 'D', 2, ' ', 0.00, 0.00, ' ', ' ', 'D', 'N', '1', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '211753', '20200910', '211808', '20200910000000000000327027', ' ', '20200910211808+08', ' ', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_cddt` VALUES ('SAA5020180518000000000000000672', '20200910', '211753', 2, '1060000000000222', '100001', '1', 'KES', '106', 1100000000049, 'SAVGEN01', '50', '51E0', 'SAS5020200910000000000000000483', '20200910', 'sasTransferWithdraw', ' ', '0', '20180518', 'N', 'N', ' ', 0, 'sasTransferWithdraw', 0.00, 6000.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', 6000.00, 'APP', 'SAS', ' ', 'C', 1, ' ', 0.00, 0.00, ' ', ' ', 'C', 'N', '9', '0', ' ', 0, ' ', ' ', ' ', ' ', '20200910', '211753', '20200910', '211808', '20200910000000000000327027', ' ', '20200910211808+08', ' ', 'O!SAS!fixedToCurrentApplymca156000000000001', ' ', '20180518', 'SFC', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_grpacrel
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_grpacrel`;
CREATE TABLE `t_saa_grpacrel`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `RLS_ROLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RLS_ROLE|Group account role',
  `RLS_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RLS_STS|Relation status',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Open date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Open time',
  `OPN_BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `OPN_SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update journal number',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`, `USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings group account relation information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_hld
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_hld`;
CREATE TABLE `t_saa_hld`  (
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `HLD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_STS|Hold status',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `EXP_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXP_TYP|Exception type',
  `TX_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction reference number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold balance',
  `NOT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Not withdraw amount',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Original journal number',
  `HLD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effective date',
  `EFF_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Effective time',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expire time',
  `RLS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Release date',
  `RLS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Release time',
  `DUE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DUE_PROC_MOD|Due process mod',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `OLD_HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|old hold number',
  `EXT_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`HLD_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAA_HLD`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI1_T_SAA_HLD`(`AC_NO`, `CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account amount hold detail table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_hldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_hldjnl`;
CREATE TABLE `t_saa_hldjnl`  (
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Channel journal number',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Original transaction date',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ACC_PRD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_PERD|Account period',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Real date',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expire date',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Expire time',
  `EXP_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DUE_PROC_MOD|Due process mod',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `EXP_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXP_TYP|Exception type',
  `TX_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction reference number',
  `NOT_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOT_TX_FLG|Not transaction flag',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `EXT_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`ORG_JRN_NO`, `SYS_CNL`) USING BTREE,
  UNIQUE INDEX `UI1_T_SAA_HLDJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Hold journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_intpayjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_intpayjnl`;
CREATE TABLE `t_saa_intpayjnl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CUR_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ACU_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `INT_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `INT_TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TAX_PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_YR` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_QTR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `VAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CALC_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RST_DIF_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `VAD_TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `VAD_TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI1_T_SAA_INTPAYJNL`(`INT_DT`, `JRN_STS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_intstlreg
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_intstlreg`;
CREATE TABLE `t_saa_intstlreg`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `STR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Interest start date',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `CLS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Period',
  `TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Period unit',
  `INT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAA_INT_FLG|Interest flag',
  `SSP_INT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SSP_INT_TYP|Suspend interest reason',
  `LST_AVG_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last average balance',
  `ITD_PRD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Intend period intend date',
  `ITD_PRD_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Intend period term',
  `ITD_PRD_TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Intend period term unit',
  `ITD_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Intend period rate',
  `ITD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Intend period intend amount',
  `ITD_PRD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ITD_PRD_STS|Intend period intend status',
  `NXT_ITD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next intend date',
  `INT_PRD_ACU` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest period accumulation',
  `INT_PRD_ACU_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Interest period accumulate date',
  `INT_PRD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Interest period interest date',
  `INT_PRD_ITD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest period intend amount',
  `INT_PRD_STL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest period interest amount',
  `INT_PRD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_PRD_STS|Interest period status',
  `INT_PRD_SC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SC_FLG|Interest period supplement and cancel flag',
  `INT_PRD_SUP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest period supplement amount',
  `INT_PRD_OPP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest period cancel amount',
  `NXT_INT_PRD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next Interest date',
  `TOT_ITD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total intend amount',
  `TOT_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total interest amount',
  `TOT_SUP_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total supplement interest amount',
  `TOT_OPP_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total cancel interest amount',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `LST_INT_PRD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last Interest date',
  `RST_DIF_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Rest differ amount',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE,
  INDEX `NI4_T_SAA_INTSTLREG`(`CRE_DT`) USING BTREE,
  INDEX `NI3_T_SAA_INTSTLREG`(`DUE_DT`, `INT_FLG`) USING BTREE,
  INDEX `NI2_T_SAA_INTSTLREG`(`INT_PRD_DT`, `INT_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account capitalization register' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_intstlreg
-- ----------------------------
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000015', '100001', '1', 'KES', '106', '20200908', '152512', 1100000000041, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200908000000000000000521', '20200908152530+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca044000000000016', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000022', '100001', '1', 'KES', '106', '20200908', '152827', 1100000000042, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200908000000000000000525', '20200908152838+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca044000000000020', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000083', '100001', '1', 'USD', '106', '20200908', '190031', 1100000000021, 'SAVGEN01', '20180518', ' ', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000240164', '20200908190032+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000115', '100001', '1', 'USD', '106', '20200908', '193934', 1100000000021, 'SAVGEN01', '20180518', ' ', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000241100', '20200908193938+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000139', '100001', '1', 'KES', '106', '20200909', '101208', 1100000000044, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200909000000000000000646', '20200909101255+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca048000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000146', '100001', '1', 'USD', '106', '20200909', '102714', 1100000000021, 'SAVGEN01', '20180518', ' ', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200909000000000000257019', '20200909102716+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000152', '100001', '1', 'KES', '106', '20200909', '180159', 1100000000045, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200909000000000000000903', '20200909180215+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca049000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000169', '100001', '1', 'KES', '106', '20200909', '181136', 1100000000046, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200909000000000000000911', '20200909181146+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca049000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000176', '100001', '1', 'KES', '106', '20200909', '193048', 1100000000047, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200909000000000000000916', '20200909193102+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca050000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000190', '100001', '1', 'USD', '106', '20200909', '200747', 1100000000021, 'SAVGEN01', '20180518', ' ', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200909000000000000281189', '20200909200752+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000215', '100001', '1', 'USD', '106', '20200909', '205814', 1100000000045, 'SAVGEN01', '20180518', ' ', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200909000000000000283131', '20200909205816+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000222', '100001', '1', 'KES', '106', '20200910', '102956', 1100000000049, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200910000000000000000978', '20200910103017+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca141000000000005', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000276', '100001', '1', 'KES', '106', '20200910', '152325', 1100000000050, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200910000000000000001058', '20200910152337+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca063000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000283', '100001', '1', 'KES', '106', '20200910', '162339', 1100000000052, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200910000000000000001103', '20200910162349+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca064000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000339', '100001', '1', 'KES', '106', '20200910', '175007', 1100000000053, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200910000000000000001185', '20200910175031+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca066000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000408', '100001', '1', 'KES', '106', '20200910', '210111', 1100000000054, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200910000000000000001275', '20200910210558+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca077000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000415', '100001', '1', 'KES', '106', '20200911', '164656', 1100000000055, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001386', '20200911164722+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca088000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000422', '100001', '1', 'KES', '106', '20200911', '164943', 1100000000056, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001391', '20200911164954+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca088000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000439', '100001', '1', 'KES', '106', '20200911', '170323', 1100000000057, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001397', '20200911170336+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca088000000000003', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000446', '100001', '1', 'KES', '106', '20200911', '170352', 1100000000058, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001398', '20200911170404+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca088000000000004', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000452', '100001', '1', 'KES', '106', '20200911', '170632', 1100000000059, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001402', '20200911170644+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca088000000000006', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000469', '100001', '1', 'KES', '106', '20200911', '170811', 1100000000060, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001408', '20200911170835+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca089000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1060000000000476', '100001', '1', 'KES', '106', '20200911', '171209', 1100000000061, 'SAVGEN01', '20180518', ' ', ' ', 0, ' ', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180818', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180818', 0.00, 0.00, 0.00, 0.00, 'After registration, open a general deposit account', ' ', ' ', '20200911000000000000001421', '20200911171221+08', ' ', ' ', 0.00, 'O!SSWR!userRegistermca089000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000036', '100001', '1', 'USD', '107', '20200908', '160218', 1100000000042, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000230111', '20200908160224+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000043', '100001', '1', 'USD', '107', '20200908', '165532', 1100000000042, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000234047', '20200908165540+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca095000000000003', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000059', '100001', '1', 'USD', '107', '20200908', '165836', 1100000000042, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000234062', '20200908165843+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca095000000000004', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000066', '100001', '1', 'USD', '107', '20200908', '172532', 1100000000042, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000237018', '20200908172536+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca096000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000073', '100001', '1', 'USD', '107', '20200908', '175050', 1100000000042, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000238033', '20200908175057+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca097000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000097', '100001', '1', 'USD', '107', '20200908', '191749', 1100000000021, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000241043', '20200908191753+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000105', '100001', '1', 'USD', '107', '20200908', '192438', 1100000000021, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200908000000000000241072', '20200908192441+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000180', '100001', '1', 'USD', '107', '20200909', '200545', 1100000000021, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200909000000000000281168', '20200909200552+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000205', '100001', '1', 'USD', '107', '20200909', '205535', 1100000000045, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200909000000000000283113', '20200909205542+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000236', '100001', '1', 'USD', '107', '20200910', '103451', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000289140', '20200910103458+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000243', '100001', '1', 'USD', '107', '20200910', '111539', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000296012', '20200910111542+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000259', '100001', '1', 'USD', '107', '20200910', '111731', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000296029', '20200910111735+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000266', '100001', '1', 'USD', '107', '20200910', '114121', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000298017', '20200910114128+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000297', '100001', '1', 'USD', '107', '20200910', '163516', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000307055', '20200910163528+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000305', '100001', '1', 'USD', '107', '20200910', '163557', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000307059', '20200910163605+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000312', '100001', '1', 'USD', '107', '20200910', '164937', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000307124', '20200910164946+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000329', '100001', '1', 'USD', '107', '20200910', '171248', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000307153', '20200910171301+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000343', '100001', '1', 'USD', '107', '20200910', '175411', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000307230', '20200910175425+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000359', '100001', '1', 'USD', '107', '20200910', '180440', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000311016', '20200910180459+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000373', '100001', '1', 'USD', '107', '20200910', '195109', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '0', ' ', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', ' ', ' ', '20200910000000000000313043', '20200910195123+08', ' ', ' ', 0.00, 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_intstlreg` VALUES ('1070000000000380', '100001', '1', 'USD', '107', '20200910', '202449', 1100000000049, 'SAVLBX01', '20180518', '20180818', ' ', 3, 'M', '1', '0', 0.00, ' ', 0, ' ', 0.000000, 0.00, ' ', ' ', 0.00, ' ', '20180618', 0.00, 0.00, '0', ' ', 0.00, 0.00, '20180618', 0.00, 0.00, 0.00, 0.00, ' ', '20200910', '211809', '20200910000000000000313091', '20200910211809+08', ' ', '20180518', 0.00, 'O!SAS!fixedToCurrentApplymca156000000000001', '13521699306', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_itdpayjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_itdpayjnl`;
CREATE TABLE `t_saa_itdpayjnl`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `ITD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Intend date',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `ITD_PRD_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Intend period term',
  `ITD_PRD_TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Intend period term unit',
  `ITD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Intend period intend amount',
  `ITD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ITD_STS|Intend status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  PRIMARY KEY (`PRD_CD`, `AC_ORG`, `CAP_TYP`, `CCY`, `ITD_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account Intend payment journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_loanduejnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_loanduejnl`;
CREATE TABLE `t_saa_loanduejnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PNS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI2_T_SAA_LOANDUEJNL`(`BAT_NO`) USING BTREE,
  INDEX `NI1_T_SAA_LOANDUEJNL`(`USR_NO`, `AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_mngjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_mngjnl`;
CREATE TABLE `t_saa_mngjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TXN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_DAT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRC_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  UNIQUE INDEX `UI1_T_SAA_MNGJNL`(`ORG_JRN_NO`, `SYS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_mngjnl
-- ----------------------------
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000074', '20200908', '160218', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000094', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200908', '160224', ' ', '20200908000000000000230111', '20200908160224+08', 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000081', '20200908', '162533', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000101', 'sasAccountOpen', 'F', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', '1', ' ', '20200908', '162540', ' ', '20200908000000000000230136', '20200908162540+08', 'O!SAS!fixedSavingPrdBuyApplymca094000000000003', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000085', '20200908', '162812', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000104', 'sasAccountOpen', 'F', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', '1', ' ', '20200908', '162816', ' ', '20200908000000000000234022', '20200908162816+08', 'O!SAS!fixedSavingPrdBuyApplymca095000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000087', '20200908', '164127', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000106', 'sasAccountOpen', 'F', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', '1', ' ', '20200908', '164132', ' ', '20200908000000000000234034', '20200908164132+08', 'O!SAS!fixedSavingPrdBuyApplymca095000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000089', '20200908', '165532', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000108', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200908', '165540', ' ', '20200908000000000000234047', '20200908165540+08', 'O!SAS!fixedSavingPrdBuyApplymca095000000000003', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000095', '20200908', '165836', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000114', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200908', '165843', ' ', '20200908000000000000234062', '20200908165843+08', 'O!SAS!fixedSavingPrdBuyApplymca095000000000004', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000102', '20200908', '172532', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000120', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200908', '172536', ' ', '20200908000000000000237018', '20200908172536+08', 'O!SAS!fixedSavingPrdBuyApplymca096000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000108', '20200908', '175050', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000126', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200908', '175057', ' ', '20200908000000000000238033', '20200908175057+08', 'O!SAS!fixedSavingPrdBuyApplymca097000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000110', '20200908', '175913', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000130', 'sasAccountOpen', 'F', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', '1', ' ', '20200908', '175918', ' ', '20200908000000000000239022', '20200908175918+08', 'O!SAS!fixedSavingPrdBuyApplymca098000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000112', '20200908', '180424', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000132', 'sasAccountOpen', 'F', ' ', 'SAAP3028', 'The maximum number of accounts for users is limited!', '0', ' ', '20200908', '180428', ' ', '20200908000000000000239054', '20200908180428+08', 'O!SAS!fixedSavingPrdBuyApplymca098000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000118', '20200908', '190031', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000136', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200908', '190033', ' ', '20200908000000000000240164', '20200908190033+08', 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000126', '20200908', '191749', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000142', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200908', '191753', ' ', '20200908000000000000241043', '20200908191753+08', 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000132', '20200908', '192438', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000147', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200908', '192441', ' ', '20200908000000000000241072', '20200908192441+08', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000140', '20200908', '193934', 'saaAccountOpen', 'SAS', 'APP', '20200908', 'SAS5020200908000000000000000153', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200908', '193938', ' ', '20200908000000000000241100', '20200908193938+08', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000205', '20200909', '102714', 'saaAccountOpen', 'SAS', 'APP', '20200909', 'SAS5020200909000000000000000188', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200909', '102716', ' ', '20200909000000000000257019', '20200909102716+08', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000370', '20200909', '200545', 'saaAccountOpen', 'SAS', 'APP', '20200909', 'SAS5020200909000000000000000289', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '4', ' ', '20200909', '200553', ' ', '20200909000000000000281168', '20200909200553+08', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000380', '20200909', '200747', 'saaAccountOpen', 'SAS', 'APP', '20200909', 'SAS5020200909000000000000000296', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200909', '200752', ' ', '20200909000000000000281189', '20200909200752+08', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000439', '20200909', '205535', 'saaAccountOpen', 'SAS', 'APP', '20200909', 'SAS5020200909000000000000000331', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200909', '205543', ' ', '20200909000000000000283113', '20200909205543+08', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000449', '20200909', '205814', 'saaAccountOpen', 'SAS', 'APP', '20200909', 'SAS5020200909000000000000000338', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200909', '205817', ' ', '20200909000000000000283131', '20200909205817+08', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000482', '20200910', '103451', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000361', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200910', '103458', ' ', '20200910000000000000289140', '20200910103458+08', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', ' ', ' ', ' ', ' ', '20180518', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000506', '20200910', '111539', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000374', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200910', '111543', ' ', '20200910000000000000296012', '20200910111543+08', 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', ' ', ' ', ' ', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000511', '20200910', '111731', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000378', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200910', '111735', ' ', '20200910000000000000296029', '20200910111735+08', 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', ' ', ' ', ' ', ' ', '20180518', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000523', '20200910', '114121', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000387', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200910', '114128', ' ', '20200910000000000000298017', '20200910114128+08', 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000544', '20200910', '163516', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000403', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200910', '163528', ' ', '20200910000000000000307055', '20200910163528+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000547', '20200910', '163557', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000407', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200910', '163605', ' ', '20200910000000000000307059', '20200910163605+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000568', '20200910', '164937', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000420', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200910', '164946', ' ', '20200910000000000000307124', '20200910164946+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000574', '20200910', '171248', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000424', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200910', '171302', ' ', '20200910000000000000307153', '20200910171302+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000590', '20200910', '175411', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000435', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200910', '175425', ' ', '20200910000000000000307230', '20200910175425+08', 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000602', '20200910', '180440', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000443', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '4', ' ', '20200910', '180459', ' ', '20200910000000000000311016', '20200910180459+08', 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000616', '20200910', '195109', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000452', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200910', '195124', ' ', '20200910000000000000313043', '20200910195124+08', 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000638', '20200910', '202449', 'saaAccountOpen', 'SAS', 'APP', '20200910', 'SAS5020200910000000000000000465', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200910', '202500', ' ', '20200910000000000000313091', '20200910202500+08', 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', ' ', ' ', ' ', ' ', '20180518', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000069', '20200908', '152512', 'saaAccountOpen', 'SAS', 'SSWR', '20200908', 'SAS6020200908000000000000000089', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '4', ' ', '20200908', '152530', ' ', '20200908000000000000000521', '20200908152530+08', 'O!SSWR!userRegistermca044000000000016', ' ', ' ', ' ', 'CPS0020200908000000000000110023', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000070', '20200908', '152827', 'saaAccountOpen', 'SAS', 'SSWR', '20200908', 'SAS6020200908000000000000000091', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200908', '152838', ' ', '20200908000000000000000525', '20200908152838+08', 'O!SSWR!userRegistermca044000000000020', ' ', ' ', ' ', 'CPS0020200908000000000000110029', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000200', '20200909', '101208', 'saaAccountOpen', 'SAS', 'SSWR', '20200909', 'SAS6020200909000000000000000184', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '17', ' ', '20200909', '101256', ' ', '20200909000000000000000646', '20200909101256+08', 'O!SSWR!userRegistermca048000000000001', ' ', ' ', ' ', 'CPS0020200909000000000000112006', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000294', '20200909', '180159', 'saaAccountOpen', 'SAS', 'SSWR', '20200909', 'SAS6020200909000000000000000244', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200909', '180215', ' ', '20200909000000000000000903', '20200909180215+08', 'O!SSWR!userRegistermca049000000000001', ' ', ' ', ' ', 'CPS0020200909000000000000112171', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000299', '20200909', '181136', 'saaAccountOpen', 'SAS', 'SSWR', '20200909', 'SAS6020200909000000000000000249', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200909', '181146', ' ', '20200909000000000000000911', '20200909181146+08', 'O!SSWR!userRegistermca049000000000002', ' ', ' ', ' ', 'CPS0020200909000000000000112185', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000328', '20200909', '193048', 'saaAccountOpen', 'SAS', 'SSWR', '20200909', 'SAS6020200909000000000000000266', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200909', '193102', ' ', '20200909000000000000000916', '20200909193102+08', 'O!SSWR!userRegistermca050000000000001', ' ', ' ', ' ', 'CPS0020200909000000000000112198', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000480', '20200910', '102956', 'saaAccountOpen', 'SAS', 'SSWR', '20200910', 'SAS6020200910000000000000000359', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '3', ' ', '20200910', '103017', ' ', '20200910000000000000000978', '20200910103017+08', 'O!SSWR!userRegistermca141000000000005', ' ', ' ', ' ', 'CPS0020200910000000000000113030', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000538', '20200910', '152325', 'saaAccountOpen', 'SAS', 'SSWR', '20200910', 'SAS6020200910000000000000000397', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '4', ' ', '20200910', '152338', ' ', '20200910000000000000001058', '20200910152338+08', 'O!SSWR!userRegistermca063000000000001', ' ', ' ', ' ', 'CPS0020200910000000000000113070', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000540', '20200910', '162339', 'saaAccountOpen', 'SAS', 'SSWR', '20200910', 'SAS6020200910000000000000000399', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200910', '162349', ' ', '20200910000000000000001103', '20200910162349+08', 'O!SSWR!userRegistermca064000000000001', ' ', ' ', ' ', 'CPS0020200910000000000000113085', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000587', '20200910', '175007', 'saaAccountOpen', 'SAS', 'SSWR', '20200910', 'SAS6020200910000000000000000433', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '5', ' ', '20200910', '175031', ' ', '20200910000000000000001185', '20200910175031+08', 'O!SSWR!userRegistermca066000000000001', ' ', ' ', ' ', 'CPS0020200910000000000000113116', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000664', '20200910', '210111', 'saaAccountOpen', 'SAS', 'SSWR', '20200910', 'SAS6020200910000000000000000479', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '4', ' ', '20200910', '210558', ' ', '20200910000000000000001275', '20200910210558+08', 'O!SSWR!userRegistermca077000000000001', ' ', ' ', ' ', 'CPS0020200910000000000000113149', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000679', '20200911', '164656', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000488', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '5', ' ', '20200911', '164722', ' ', '20200911000000000000001386', '20200911164722+08', 'O!SSWR!userRegistermca088000000000001', ' ', ' ', ' ', 'CPS0020200911000000000000114024', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000681', '20200911', '164943', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000490', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200911', '164954', ' ', '20200911000000000000001391', '20200911164954+08', 'O!SSWR!userRegistermca088000000000002', ' ', ' ', ' ', 'CPS0020200911000000000000114030', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000682', '20200911', '170323', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000492', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '2', ' ', '20200911', '170336', ' ', '20200911000000000000001397', '20200911170336+08', 'O!SSWR!userRegistermca088000000000003', ' ', ' ', ' ', 'CPS0020200911000000000000114056', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000683', '20200911', '170352', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000494', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200911', '170404', ' ', '20200911000000000000001398', '20200911170404+08', 'O!SSWR!userRegistermca088000000000004', ' ', ' ', ' ', 'CPS0020200911000000000000114057', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000685', '20200911', '170632', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000497', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200911', '170645', ' ', '20200911000000000000001402', '20200911170645+08', 'O!SSWR!userRegistermca088000000000006', ' ', ' ', ' ', 'CPS0020200911000000000000114069', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000686', '20200911', '170811', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000499', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '5', ' ', '20200911', '170836', ' ', '20200911000000000000001408', '20200911170836+08', 'O!SSWR!userRegistermca089000000000001', ' ', ' ', ' ', 'CPS0020200911000000000000114076', '20180518', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_mngjnl` VALUES ('SAA0020180518000000000000000687', '20200911', '171209', 'saaAccountOpen', 'SAS', 'SSWR', '20200911', 'SAS6020200911000000000000000501', 'sasAccountOpen', 'S', ' ', 'SAA00000', 'SUCCESS', '1', ' ', '20200911', '171221', ' ', '20200911000000000000001421', '20200911171221+08', 'O!SSWR!userRegistermca089000000000002', ' ', ' ', ' ', 'CPS0020200911000000000000114088', '20180518', 'SFC', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_prdcfg
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_prdcfg`;
CREATE TABLE `t_saa_prdcfg`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SUB_CTG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SUB_CTG|Product sub category',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AUTO_RDP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_RDP_FLG|Auto Redeposit flag',
  `AUTO_RDP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_RDP_TYP|Auto Redeposit type',
  `RDP_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Redeposit product code',
  `AUTO_WD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_WD_FLG|Auto withdraw flag',
  `WD_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Auto withdraw product code',
  `INT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SAA_INT_FLG|Interest flag',
  `INT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_TYP|Interest type',
  `INT_PRD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Interest period',
  `INT_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'MONTH|Interest month',
  `INT_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|Interest day',
  `INT_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Interest term',
  `INT_TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Interest term unit',
  `AUTO_INT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_INT_FLG|Auto interest flag',
  `TAX_STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_STL_TYP|Tax payment type',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `STM_SND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Statement send date',
  `NXT_STM_SND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Statement next send date',
  `TAX_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_STL_FLG|Tax payment flag',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE,
  INDEX `NI1_T_SAA_PRDCFG`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI3_T_SAA_PRDCFG`(`NXT_STM_SND_DT`, `PRD_CD`) USING BTREE,
  INDEX `NI2_T_SAA_PRDCFG`(`USR_NO`, `PRD_SUB_CTG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account product config table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saa_prdcfg
-- ----------------------------
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000015', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000041, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200908', '152512', ' ', ' ', '20200908000000000000000521', ' ', '20200908152530+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca044000000000016', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000022', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000042, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200908', '152827', ' ', ' ', '20200908000000000000000525', ' ', '20200908152838+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca044000000000020', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000083', '100001', '1', 'USD', '106', 'SAVGEN01', '01', 1100000000021, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', ' ', '20200908', '190031', ' ', ' ', '20200908000000000000240164', ' ', '20200908190032+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca099000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000115', '100001', '1', 'USD', '106', 'SAVGEN01', '01', 1100000000021, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', ' ', '20200908', '193934', ' ', ' ', '20200908000000000000241100', ' ', '20200908193938+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca100000000000005', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000139', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000044, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200909', '101208', ' ', ' ', '20200909000000000000000646', ' ', '20200909101255+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca048000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000146', '100001', '1', 'USD', '106', 'SAVGEN01', '01', 1100000000021, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', ' ', '20200909', '102714', ' ', ' ', '20200909000000000000257019', ' ', '20200909102716+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca115000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000152', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000045, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200909', '180159', ' ', ' ', '20200909000000000000000903', ' ', '20200909180215+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca049000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000169', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000046, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200909', '181136', ' ', ' ', '20200909000000000000000911', ' ', '20200909181146+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca049000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000176', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000047, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200909', '193048', ' ', ' ', '20200909000000000000000916', ' ', '20200909193102+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca050000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000190', '100001', '1', 'USD', '106', 'SAVGEN01', '01', 1100000000021, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', ' ', '20200909', '200747', ' ', ' ', '20200909000000000000281189', ' ', '20200909200751+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca138000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000215', '100001', '1', 'USD', '106', 'SAVGEN01', '01', 1100000000045, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', ' ', '20200909', '205814', ' ', ' ', '20200909000000000000283131', ' ', '20200909205816+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca139000000000003', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000222', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000049, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200910', '102956', ' ', ' ', '20200910000000000000000978', ' ', '20200910103016+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca141000000000005', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000276', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000050, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200910', '152325', ' ', ' ', '20200910000000000000001058', ' ', '20200910152337+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca063000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000283', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000052, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200910', '162339', ' ', ' ', '20200910000000000000001103', ' ', '20200910162349+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca064000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000339', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000053, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200910', '175007', ' ', ' ', '20200910000000000000001185', ' ', '20200910175031+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca066000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000408', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000054, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200910', '210111', ' ', ' ', '20200910000000000000001275', ' ', '20200910210558+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca077000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000415', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000055, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '164656', ' ', ' ', '20200911000000000000001386', ' ', '20200911164721+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca088000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000422', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000056, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '164943', ' ', ' ', '20200911000000000000001391', ' ', '20200911164954+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca088000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000439', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000057, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '170323', ' ', ' ', '20200911000000000000001397', ' ', '20200911170336+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca088000000000003', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000446', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000058, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '170352', ' ', ' ', '20200911000000000000001398', ' ', '20200911170404+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca088000000000004', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000452', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000059, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '170632', ' ', ' ', '20200911000000000000001402', ' ', '20200911170644+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca088000000000006', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000469', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000060, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '170811', ' ', ' ', '20200911000000000000001408', ' ', '20200911170835+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca089000000000001', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1060000000000476', '100001', '1', 'KES', '106', 'SAVGEN01', '01', 1100000000061, 'N', ' ', ' ', 'N', ' ', 'Y', '2', 'M', '1', 15, 3, 'M', 'Y', '0', 'After registration, open a general deposit account', '20200911', '171209', ' ', ' ', '20200911000000000000001421', ' ', '20200911171221+08', ' ', ' ', 'N', 'O!SSWR!userRegistermca089000000000002', 'SFC', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000036', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000042, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '160218', ' ', ' ', '20200908000000000000230111', ' ', '20200908160224+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca094000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000043', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000042, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '165532', ' ', ' ', '20200908000000000000234047', ' ', '20200908165540+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca095000000000003', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000059', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000042, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '165836', ' ', ' ', '20200908000000000000234062', ' ', '20200908165843+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca095000000000004', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000066', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000042, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '172532', ' ', ' ', '20200908000000000000237018', ' ', '20200908172536+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca096000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000073', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000042, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '175050', ' ', ' ', '20200908000000000000238033', ' ', '20200908175057+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca097000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000097', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000021, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '191749', ' ', ' ', '20200908000000000000241043', ' ', '20200908191753+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca100000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000105', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000021, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200908', '192438', ' ', ' ', '20200908000000000000241072', ' ', '20200908192441+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca100000000000004', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000180', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000021, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200909', '200545', ' ', ' ', '20200909000000000000281168', ' ', '20200909200552+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca138000000000001', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000205', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000045, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200909', '205535', ' ', ' ', '20200909000000000000283113', ' ', '20200909205542+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca139000000000002', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000236', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '103451', ' ', ' ', '20200910000000000000289140', ' ', '20200910103458+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca141000000000006', '1100000000019', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000243', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '111539', ' ', ' ', '20200910000000000000296012', ' ', '20200910111542+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca143000000000001', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000259', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '111731', ' ', ' ', '20200910000000000000296029', ' ', '20200910111735+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca143000000000002', '1100000000020', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000266', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '114121', ' ', ' ', '20200910000000000000298017', ' ', '20200910114128+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca145000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000297', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '163516', ' ', ' ', '20200910000000000000307055', ' ', '20200910163528+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca150000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000305', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '163557', ' ', ' ', '20200910000000000000307059', ' ', '20200910163605+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca150000000000002', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000312', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '164937', ' ', ' ', '20200910000000000000307124', ' ', '20200910164946+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca150000000000003', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000329', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '171248', ' ', ' ', '20200910000000000000307153', ' ', '20200910171301+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca150000000000004', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000343', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '175411', ' ', ' ', '20200910000000000000307230', ' ', '20200910175425+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca150000000000005', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000359', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '180440', ' ', ' ', '20200910000000000000311016', ' ', '20200910180458+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca151000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000373', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '195109', ' ', ' ', '20200910000000000000313043', ' ', '20200910195123+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca153000000000001', '13521699306', 'MSHWARI');
INSERT INTO `t_saa_prdcfg` VALUES ('1070000000000380', '100001', '1', 'USD', '107', 'SAVLBX01', '02', 1100000000049, 'N', ' ', ' ', 'Y', 'SAVGEN01', 'Y', '2', 'M', '0', 0, 1, 'M', 'Y', '0', ' ', '20200910', '202449', ' ', ' ', '20200910000000000000313091', ' ', '20200910202500+08', ' ', ' ', 'N', 'O!SAS!fixedSavingPrdBuyApplymca153000000000002', '13521699306', 'MSHWARI');

-- ----------------------------
-- Table structure for t_saa_prinf
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_prinf`;
CREATE TABLE `t_saa_prinf`  (
  `PR_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PR_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PR_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PR_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI2_T_SAA_PRINF`(`USR_NO`, `PRD_CD`) USING BTREE,
  INDEX `NI3_T_SAA_PRINF`(`CRE_DT`) USING BTREE,
  INDEX `NI1_T_SAA_PRINF`(`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_rdpreg
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_rdpreg`;
CREATE TABLE `t_saa_rdpreg`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RDP_CNT` bigint(20) NOT NULL DEFAULT 0,
  `STR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `INT_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TAX_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI1_T_SAA_RDPREG`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_sgmintreg
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_sgmintreg`;
CREATE TABLE `t_saa_sgmintreg`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `BEG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Segment begin date',
  `END_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Segment end date',
  `INT_PRD` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Interest period',
  `ACU` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulation',
  `INT_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Interest rate',
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest amount',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'EFF_STS|Effective status',
  `ORG_INT_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Original interest rate',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`, `EFF_STS`, `BEG_DT`) USING BTREE,
  INDEX `NI2_T_SAA_SGMINTREG`(`CRE_DT`) USING BTREE,
  INDEX `NI1_T_SAA_SGMINTREG`(`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Segments interest register' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_sigcumreg
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_sigcumreg`;
CREATE TABLE `t_saa_sigcumreg`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Organization code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `SIG_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SIG_STS|Sign status',
  `SIG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SIG_TYP|Sign type',
  `SIG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Sign amount',
  `CUM_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accumulated amount',
  `SIG_TRM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Sign term',
  `SIG_TRM_UNT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Sign term unit',
  `SIG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Sign date',
  `CAP_SRC` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_SRC|Capital source',
  `BRK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRK_SIG_FLG|Break promise flag',
  `BRK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Break promise date',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`AC_NO`, `AC_ORG`, `CAP_TYP`, `CCY`, `SIG_TYP`) USING BTREE,
  INDEX `NI2_T_SAA_SIGCUMREG`(`CRE_DT`) USING BTREE,
  INDEX `NI3_T_SAA_SIGCUMREG`(`SIG_DT`) USING BTREE,
  INDEX `NI1_T_SAA_SIGCUMREG`(`USR_NO`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Savings account sign accumulate register' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_saa_unhldjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_saa_unhldjnl`;
CREATE TABLE `t_saa_unhldjnl`  (
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Channel journal number',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `ORG_TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Original transaction date',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Channel transaction code',
  `ACC_PRD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACC_PERD|Account period',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Real date',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business journal number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `EXP_TYP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXP_TYP|Exception type',
  `TX_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Transaction reference number',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_TYP|Order type',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORD_NO|Order number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `UNHLD_UAV_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unhold unavailable balance',
  `UNHLD_AC_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|UnHold account balance',
  `UNHLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|UnHold amount',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_NO|Hold number',
  `HLD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Hold amount',
  `HLD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_CD|Hold code',
  `HLD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HLD_TYP|Hold type',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `EXT_REF_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account date',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`ORG_JRN_NO`, `SYS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'UnHold journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_shw_act_inf
-- ----------------------------
DROP TABLE IF EXISTS `t_shw_act_inf`;
CREATE TABLE `t_shw_act_inf`  (
  `OLD_CI_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NCK_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CLO_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_TIT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BAL` bigint(20) NOT NULL DEFAULT 0,
  `AMOUNT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`OLD_CI_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存款账户迁移原表----用于迁移测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_shw_actbal
-- ----------------------------
DROP TABLE IF EXISTS `t_shw_actbal`;
CREATE TABLE `t_shw_actbal`  (
  `NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `BAL` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_shw_pnf
-- ----------------------------
DROP TABLE IF EXISTS `t_shw_pnf`;
CREATE TABLE `t_shw_pnf`  (
  `OLD_CI_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
