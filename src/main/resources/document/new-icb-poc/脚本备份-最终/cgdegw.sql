/*
 Navicat Premium Data Transfer

 Source Server         : CGDEGW
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : cgdegw

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 18:56:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_agw_audt
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_audt`;
CREATE TABLE `t_agw_audt`  (
  `ID_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_TYP|Type of certificate',
  `ID_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_CIPHER|ID number cIipher',
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Certification cooperation channel',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction cod',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Update journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ID_NO_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_MASK|ID number mask',
  `FST_NM` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_FST|First nameof outgoing return',
  `SURNM` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_LST|Last name of outgoing return',
  `OTH_NM` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OTH_NM|Other Name',
  `NET_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NET_FLG|Network flag',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_SVR_NM|Outgoing service name',
  `OBJ_TXNCD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_TX_CD|Outgoing transaction code',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 1',
  `RSV_FLD2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 2',
  `ATH_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TYP|Authentication type',
  `ATH_REQ_ORG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DAT_SRC_TYP|Authority request source',
  `ATH_EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Authentication flag',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiry date',
  `EFF_TERM` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM|Effective time period（month）',
  `CTZ` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IPRS_RSP_INF|Citizenship',
  `CLAN` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IPRS_RSP_INF|CLAN',
  `BIR_DT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_DT|Date of Birth',
  `DEA_DT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_DT|Date of Death',
  `ETH_GRP` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IPRS_RSP_INF|Ethnic Group',
  `FAM` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|Family',
  `FIGPT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|Fingerprint',
  `GENDER` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GENDER|Gender',
  `OCPT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|Occupation',
  `PIN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|PIN',
  `BIR_PLC` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_PLC|Place of Birth',
  `DEA_PLC` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_PLC|Place of Death',
  `LV_PLC` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_PLC|Place of Live',
  `SIG` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|Signature',
  `ISS_DT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_DT|Date of Issue',
  `REGFC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|RegOffice',
  `SER_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_BOOLEAN|Serial Number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Times tamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MCH_LVL` decimal(4, 2) NOT NULL DEFAULT 0.00 COMMENT 'MCH_LVL|Name matching level',
  `ATH_APX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_IS_APX|Is the name close',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `BIR_DT_FROM_PAS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BIR_DT_FROM_PAS|DATE OF BIRTH FROM PASSPORT',
  `CERT_EXP_DT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CERT_EXP_DT|DATE OF EXPIRY',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  PRIMARY KEY (`ID_TYP`, `ID_NO_CIPHER`, `CORP_CNL`) USING BTREE,
  UNIQUE INDEX `UI1_T_AGW_AUDT`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_AGW_AUDT`(`EXP_DT`) USING BTREE,
  INDEX `NI3_T_AGW_AUDT`(`CERT_EXP_DT`) USING BTREE,
  INDEX `NI1_T_AGW_AUDT`(`ATH_EFF_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Authentication details table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_agw_audtpho
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_audtpho`;
CREATE TABLE `t_agw_audtpho`  (
  `ID_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_CIPHER|ID number cIipher',
  `ID_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_TYP|Type of certificate',
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Certification cooperation channel',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `PHOTO` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PHOTO|Photo',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Times tamp',
  `PHOTO_FROM_PAS` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PHOTO_FROM_PAS|Photo from passport',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  PRIMARY KEY (`ID_NO_CIPHER`, `ID_TYP`, `CORP_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Authentication photos table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_agw_cnl
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_cnl`;
CREATE TABLE `t_agw_cnl`  (
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Cooperation channel',
  `NET_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NET_FLG|Network flag',
  `ENB_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Enable flag',
  `CNL_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CNL_NM|Cooperation name ',
  `CNL_ID_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_TYP|ID type',
  `CNL_LVL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CNL_LVL|Channel level',
  `CTT_PSN_TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Moblie mask',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|RSV_FLD1',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `CTT_PSN_CNM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Contact name cipher',
  `CTT_PSN_CNM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_MASK|Contact name mask',
  `CTT_PSN_MBL_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_CIPHER|Moblie number cipher',
  `CTT_PSN_MBL_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Contact number mask',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Checker date',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  PRIMARY KEY (`CORP_CNL`, `NET_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Certification Cooperation Channel Table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_agw_cnl
-- ----------------------------
INSERT INTO `t_agw_cnl` VALUES ('IPRS', '1', 'Y', '实名认证2', '2', ' ', ' ', '20200321', '114454', ' ', 'egw_region.egw', '20200321114454', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_cnl` VALUES ('IPRS', '2', 'Y', '实名认证1', '2', ' ', ' ', '20200321', '114454', ' ', 'egw_region.egw', '20200321114454', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_agw_cnl_comp
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_cnl_comp`;
CREATE TABLE `t_agw_cnl_comp`  (
  `ATH_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TYP|Authentication type',
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Cooperation channel',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_SVR_NM|Third service name',
  `OBJ_TXNCD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_TX_CD|Thrid transaction code',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`ATH_TYP`, `CORP_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Certification channel outgoing transaction form' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_agw_cnl_comp
-- ----------------------------
INSERT INTO `t_agw_cnl_comp` VALUES ('00', 'IPRS', 'egwiprtpc1', 'getDataByPassport', ' ', '20200321114453', ' ', '20200321', '114453', ' ', ' ');
INSERT INTO `t_agw_cnl_comp` VALUES ('01', 'IPRS', 'egwiprtpc1', 'getDataByIdCard', ' ', '20200321114453', ' ', '20200321', '114453', ' ', ' ');
INSERT INTO `t_agw_cnl_comp` VALUES ('02', 'CORP', 'egwiprtpc1', 'getDataByAlienCard', '2', '20200612151759', ' ', '20200612', '151759', ' ', ' ');
INSERT INTO `t_agw_cnl_comp` VALUES ('02', 'IPRS', 'egwiprtpc1', 'getDataByAlienCard', ' ', '20200321114453', ' ', '20200321', '114453', ' ', ' ');

-- ----------------------------
-- Table structure for t_agw_jnl
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_jnl`;
CREATE TABLE `t_agw_jnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|Internal user number',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business journal number',
  `ORG_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Business transaction code',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ATH_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TYP|Authentication type',
  `ID_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_TYP|Type of certificate',
  `ID_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_CIPHER|ID number cipher',
  `ID_NO_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO_MASK|ID number mask',
  `FST_NM` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_FST|First name',
  `LST_NM` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_LST|Last name',
  `FST_NM_RSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_FST|First nameof outgoing return',
  `SURNM` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FLW_LST|Last name of outgoing return',
  `MCH_LVL` decimal(4, 2) NOT NULL DEFAULT 0.00 COMMENT 'MCH_LVL|Name matching level',
  `ATH_IS_APX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_IS_APX|Is the name close',
  `MST_ATH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MST_ATH|Compulsory Certification',
  `ATH_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_STS|Authentication status',
  `ATH_REQ_ORG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DAT_SRC_TYP|Authority request source',
  `OBJ_SVR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_SVR_NM|Outgoing service name',
  `OBJ_TXNCD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_TX_CD|Outgoing transaction code',
  `RSP_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_MSG_CD|Channel response error code',
  `RSP_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Channel return description',
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Certification channel',
  `REQ_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_MIDDLE|Request JSON data',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 1',
  `RSV_FLD2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 2',
  `RSV_FLD3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 3',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Response code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business Reference No',
  `RSP_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_AGW_JNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_AGW_JNL`(`CI_NO`) USING BTREE,
  INDEX `NI1_T_AGW_JNL`(`CRE_DT`) USING BTREE,
  INDEX `NI3_T_AGW_JNL`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Authentication journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_agw_rut
-- ----------------------------
DROP TABLE IF EXISTS `t_agw_rut`;
CREATE TABLE `t_agw_rut`  (
  `ATH_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TYP|Authentication type',
  `CORP_CNL` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Certification channel',
  `NET_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NET_FLG|Network flag',
  `ENB_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Enable flag',
  `PRI_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRI_LVL|Priority level',
  `WEIGHT` decimal(6, 2) NOT NULL DEFAULT 0.00 COMMENT 'WT|Weight ratio',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSV_FLD|Reserved field 1',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Checker date',
  `LANG_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INP_TM_SMP|Input timestamp',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_TM_SMP|Check timestamp',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATH_TM_SMP|Authorize timestamp',
  PRIMARY KEY (`ATH_TYP`, `CORP_CNL`, `NET_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Authentication channel routing table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_agw_rut
-- ----------------------------
INSERT INTO `t_agw_rut` VALUES ('00', 'IPRS', '1', 'Y', '1', 0.00, ' ', '20200615215643', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_rut` VALUES ('00', 'IPRS', '2', 'Y', '2', 0.00, ' ', '20200615215643', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_rut` VALUES ('01', 'IPRS', '1', 'Y', '1', 0.00, ' ', '20200615215643', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_rut` VALUES ('01', 'IPRS', '2', 'Y', '2', 0.00, ' ', '20200615215644', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_rut` VALUES ('02', 'IPRS', '1', 'Y', '1', 0.00, ' ', '20200615215643', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO `t_agw_rut` VALUES ('02', 'IPRS', '2', 'Y', '2', 0.00, ' ', '20200615215644', 'gateway-external.egw_d_5', ' ', ' ', ' ', ' ', 'keT00001', 'keT00002', ' ', ' ', ' ', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_egw_crdjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_egw_crdjnl`;
CREATE TABLE `t_egw_crdjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `REG_MBL_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Register Mobile mask',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Customer number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `SCR_RES` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000' COMMENT 'SCR_RES|Credit score data source',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `TX_TYP` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal status',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_REQ_NO|Original request number',
  `REQ_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_DATA|Request data',
  `RSP_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_DATA|Response data',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI2_T_EGW_CRDJNL`(`USR_NO`) USING BTREE,
  INDEX `NI1_T_EGW_CRDJNL`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'credit BI journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_egw_ctbjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_egw_ctbjnl`;
CREATE TABLE `t_egw_ctbjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal status',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `ORG_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Business transaction code',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Amount',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_CIPHER|Mobile number cipher',
  `RSP_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_MSG_CD|External call error return code',
  `RSP_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|External call error return information',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `REQ_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_MIDDLE|Request JSON data',
  `RSP_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_MIDDLE|Response JSON data',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ORG_REQ_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_REQ_NO|Original request number',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_EGW_CTBJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_EGW_CTBJNL`(`USR_NO`) USING BTREE,
  INDEX `NI1_T_EGW_CTBJNL`(`CRE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'C2B journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_egw_sanjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_egw_sanjnl`;
CREATE TABLE `t_egw_sanjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `REG_MBL_MASK` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Register Mobile mask',
  `ORG_COV_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_COV_ID|original conversation ID',
  `USR_NM` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'USR_NM|command ID',
  `PAS_WD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAS_WD|password',
  `NTC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NTC_FLG|notify flag',
  `CMD_ID` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CMD_ID|command ID',
  `IMEI` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IMEI|imei',
  `CAL_BK_URL` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAL_BK_URL|call back url',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time stamp',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal status',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `REQ_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_DATA|Request data',
  `RSP_DATA` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSP_DATA|Response data',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_EGW_SANJNL`(`ORG_COV_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sanction request journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_egw_smsjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_egw_smsjnl`;
CREATE TABLE `t_egw_smsjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Creation date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Creation time',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business reference number',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `PRD_GRP_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `CORP_CNL` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CORP_CNL|Cooperative organization channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `ORG_REQ_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Original request no',
  `JRN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_STS|Journal status',
  `RSP_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_MSG_CD|External call error return code',
  `RSP_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|External call error return information',
  `RSP_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Response journal number',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remarks',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Times tamp',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_EGW_SMSJNL`(`BUS_REF_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_EGW_SMSJNL`(`RSP_JRN_NO`) USING BTREE,
  INDEX `NI1_T_EGW_SMSJNL`(`ORG_REQ_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Send message journal table' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 2, 9999999999, 1, 1, 'Y', '20200904123423+08', ' ', 'perUsrRegogw_d_4073000000000124_1');

SET FOREIGN_KEY_CHECKS = 1;
