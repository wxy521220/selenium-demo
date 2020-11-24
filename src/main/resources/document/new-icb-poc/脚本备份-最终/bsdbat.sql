/*
 Navicat Premium Data Transfer

 Source Server         : BSDBAT
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : bsdbat

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 18:53:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_aaa_payjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_aaa_payjnl`;
CREATE TABLE `t_aaa_payjnl`  (
  `REQ_BUS_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_AMT` decimal(18, 2) NOT NULL,
  `PCR_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkconf
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkconf`;
CREATE TABLE `t_adt_chkconf`  (
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账序号',
  `MAIN_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主对账模块',
  `SLA_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '从对账模块',
  `MAIN_DAT_RSC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主数据来源 D-数据库(DB)F-文件(file)',
  `SLA_DAT_RSC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '从数据来源 D-数据库(DB)F-文件(file)',
  `MAIN_DAT_RSC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主数据来源名称',
  `SLA_DAT_RSC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '从数据来源名称',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '配置状态: 0-生效 1-失效',
  `CHK_MTH` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账方式O-oneway T-twoway',
  `CHK_BAT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '对账批次: 1-第一批次 2-第二批次 3-第三批次',
  `IS_CHK_AMT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否核对金额Y-校验N-不校',
  `MAIN_DB_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主数据库对账查询sql',
  `MAIN_DOT_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主数据库存疑查询sql',
  `MAIN_DAT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主对账模块数据获取配置',
  `SLA_DAT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '从对账模块数据获取配置',
  `MAIN_DOT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主对账存疑数据获取配置',
  `SLA_DOT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '从对账存疑数据获取配置',
  `CHK_RSL_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账结果配置文件',
  `CHK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务触发开始时间',
  `CHK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务触发结束时间',
  `MAIN_MORE_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '短款差错处理方式 1-自动处理 2-人工处理 3-不处理',
  `MAIN_MORE_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '短款差错处理服务名',
  `MAIN_MORE_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '短款差错处理交易码',
  `MAIN_LESS_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '长款差错处理方式 1-自动处理 2-人工处理 3-不处理',
  `MAIN_LESS_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '长款差错处理服务名',
  `MAIN_LESS_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '长款差错处理交易码',
  `AMT_ERR_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '金额差错差错处理方式 1-自动处理 2-人工处理 3-不处理',
  `AMT_ERR_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '金额差错差错处理服务名',
  `AMT_ERR_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '金额差错差错处理交易码',
  `CHK_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账类型 I-内部对账 O-外部对账',
  `DOT_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT '存疑天数',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '更新操作员',
  `CHK_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账描述',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '流水号',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'NOD_ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|inputer',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `CHK_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_NAME|Check name',
  `CHK_SIGN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'CHK_SIGN|Check sign ：0-end day；1-time day',
  `SLA_DB_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DOT_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `PRD_GRP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DT_TYP|Date type',
  PRIMARY KEY (`CHK_ID`) USING BTREE,
  UNIQUE INDEX `UI1_T_ADT_CHKCONF`(`JRN_NO`) USING BTREE,
  INDEX `NI1_T_ADT_CHKCONF`(`EFF_STS`, `CHK_BAT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_adt_chkconf
-- ----------------------------
INSERT INTO `t_adt_chkconf` VALUES ('131', 'SFC', 'ASDIAS', 'F', 'D', 'paid_type', 'LOGADM', '1', 'T', '1', 'Y', ' ', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:59', '1', 'iasreconciliation', 'diffDataRecv', '1', 'iasreconciliation', 'diffDataRecv', '1', 'iasreconciliation', 'diffDataRecv', '2', 1, '20190926', '000000', '20200624', '111945', 'keT00002', '000000', '20200313000000000000318262', 'ias', '20200624112209+03', '666.777444', 'W!completeFirstCheckbui.s_0_15181000000000045', 'keT00001', ' ', 'G2-InCheck', '1', 'select [{name:\"PTR_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"decode(tx_sts,\'S\',\'Completed\',\'C\',\'Cancelled\',\'Declined\')\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_PAYJNL WHERE chk_flg=\'1\' and tx_sts in(\'S\',\'C\',\'F\') and CRE_DT=\'$[LAST_DAY]\' and chk_typ in (\'01\',\'04\',\'05\',\'06\') ', 'select param1 id, tx_amt*100 amt,param3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'1\' and CHK_ID = \'$[CHK_ID]\'', '20200624111939', '20200623115852', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('132', 'SFC', 'ASDIAS', 'F', 'D', 'withdrawn_type', 'LOGADM', '1', 'T', '1', 'Y', ' ', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:59', '1', 'iasreconciliation', 'diffDataRecv', '1', 'iasreconciliation', 'diffDataRecv', '1', 'iasreconciliation', 'diffDataRecv', '2', 1, ' ', ' ', '20200622', '165325', 'keT00002', ' ', '20200313000000000000318263', 'ias', '20200622165325+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_11487000000000036', 'keT00001', ' ', 'G2-OutCheck', '1', 'select [{name:\"PTR_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"decode(tx_sts,\'S\',\'Completed\',\'C\',\'Cancelled\',\'Declined\')\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_PAYJNL WHERE chk_flg=\'1\' and tx_sts in(\'S\',\'C\',\'F\') and CRE_DT=\'$[LAST_DAY]\' and chk_typ in (\'02\',\'03\') ', 'select param1 id, tx_amt*100 amt,param3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'1\' and CHK_ID = \'$[CHK_ID]\'', '20200622165315', '20200622165325', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('133', 'CSDACM', 'CSDACT', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'select [{name:\"FRT_ACC_JRN\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"0\",type:\"1\",check:\"true\",deli:\"\"}|amt@{name:\"decode(jrn_sts,\'1\',\'Completed\',\'2\',\'Cancelled\',\'Declined\')\",type:\"1\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACT.T_ACT_ACJN where frt_acc_dt = \'$[LAST_DAY]\' and jrn_sts = \'1\'', 'select PARAM1 id,PARAM2 amt,PARAM3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'0\' and DOT_EXP_DT >= \'$[LAST_DAY]\' and CHK_ID = \'$[CHK_ID]\'', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', 'acmbatbpc2', 'reconciliationDiffHandle', '1', 'acmbatbpc2', 'reconciliationDiffHandle', '1', 'acmbatbpc2', 'reconciliationDiffHandle', 'I', 1, '20190926', '000000', '20190926', '000000', '000000', '000000', '12121212', 'acm', '20200310220754', 'batch.batch', ' ', ' ', ' ', 'check7', '0', 'select [{name:\"FRT_ACC_JRN\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"0\",type:\"1\",check:\"true\",deli:\"\"}|amt@{name:\"decode(jrn_sts,\'1\',\'Completed\',\'2\',\'Cancelled\',\'Declined\')\",type:\"1\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACM.T_ACM_ACTJNL where frt_acc_dt = \'$[LAST_DAY]\' and jrn_sts = \'1\'', 'select PARAM1 id,PARAM2 amt,PARAM3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'0\' and DOT_EXP_DT >= \'$[LAST_DAY]\' and CHK_ID = \'$[CHK_ID]\'', ' ', ' ', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('134', 'CSDLON', 'CSDACT', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'select [{name:\"JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"0\",type:\"1\",check:\"true\",deli:\"\"}|amt@{name:\"decode(tx_sts,\'S\',\'Completed\',\'C\',\'Cancelled\',\'Declined\')\",type:\"1\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLON.T_LON_ACTJNL where ac_dt = \'$[LAST_DAY]\'  and tx_sts = \'S\'', 'select PARAM1 id,PARAM2 amt,PARAM3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'0\' and DOT_EXP_DT >= \'$[LAST_DAY]\' and CHK_ID = \'$[CHK_ID]\'', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:59', '1', 'lonbatch', 'reconciliationDiffHandle', '1', 'lonbatch', 'reconciliationDiffHandle', '1', 'lonbatch', 'reconciliationDiffHandle', '1', 1, ' ', ' ', ' ', ' ', 'keT00001', ' ', '20200313000000000000318265', 'lon', '20200326191733', 'batch.batch', 'addChkAppbui_u_11137000000000002', ' ', ' ', 'check1', '0', 'select [{name:\"FRT_ACC_JRN\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"0\",type:\"1\",check:\"true\",deli:\"\"}|amt@{name:\"decode(jrn_sts,\'1\',\'Completed\',\'2\',\'Cancelled\',\'Declined\')\",type:\"1\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACT.T_ACT_ACJN where frt_acc_dt = \'$[LAST_DAY]\' and jrn_sts = \'1\' and sys_cnl = \'LON\'', 'select PARAM1 id,PARAM2 amt,PARAM3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'0\' and DOT_EXP_DT >= \'$[LAST_DAY]\' and CHK_ID = \'$[CHK_ID]\'', ' ', ' ', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('137', 'SFC', 'ASDIAS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'Y', 'select [{name:\"CHK_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"decode(tx_sts,\'S\',\'Completed\',\'C\',\'Cancelled\',\'Declined\')\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_CHKFILEJNL where CHK_FIL_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:59', '1', 'iasreconciliation', 'diffDataRecv', '3', 'iasreconciliation', 'diffDataRecv', '1', 'iasreconciliation', 'diffDataRecv', '2', 1, '20190926', '000000', '20200624', '155053', 'keT00002', '000000', '20200313000000000000318261', 'ias', '20200624155317+03', '666.777444', 'W!completeFirstCheckbui.s_0_15182000000000047', 'keT00001', ' ', 'G2-EndDayCheck', '0', 'select [{name:\"PTR_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"decode(tx_sts,\'S\',\'Completed\',\'C\',\'Cancelled\',\'Declined\')\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_PAYJNL WHERE chk_flg=\'1\' and tx_sts in(\'S\',\'C\',\'F\') and CRE_DT=\'$[LAST_DAY]\'', 'select param1 id, tx_amt*100 amt,param3 pcr_sts from T_ADT_CHKDOUBT where CHK_ERR_TYP = \'1\' and CHK_ID IN (\'131\',\'132\',\'137\')', '20200624155043', '20200623153306', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('140', 'IAS', 'LNS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"IAS_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"LON_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_LONJNL where TX_TYP in (\'72\',\'73\',\'7T\',\'7D\') and TX_STS=\'S\' and CRE_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318280', 'ias', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Loan：[IAS->LNS]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where JRN_STS=\'S\' and TX_TYP in (\'72\',\'7T\',\'73\') and TX_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('141', 'LNS', 'LON', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"REQ_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] FROM csdlon.t_lon_jnl WHERE tx_sts = \'S\' AND ac_dt=\'$[LAST_DAY]\' AND tx_typ IN (\'72\', \'7T\')', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318281', 'lns', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Loan：[LNS->LON]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where JRN_STS=\'S\' and TX_TYP in (\'72\',\'7T\',\'73\') and TX_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('142', 'IAS', 'LNS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"IAS_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"LON_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_LONJNL where TX_TYP in (\'76\',\'7U\') and CAP_SRC=\'0\' and TX_STS=\'S\' and CRE_DT=\'#$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318282', 'ias', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Mpesa Repayment：[IAS->LNS]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where  SYS_CNL=\'IAS\' and CAP_SRC=\'0\' and JRN_STS=\'S\' and TX_TYP in (\'76\',\'7U\') and TX_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('143', 'LNS', 'LON', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"REQ_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] FROM csdlon.t_lon_jnl where tx_sts=\'S\' and ac_dt=\'$[LAST_DAY]\' and opp_bank=\'0\' and tx_typ in (\'76\',\'7U\')', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318283', 'lns', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Mpesa Repayment：[LNS->LON]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where  SYS_CNL=\'IAS\' and CAP_SRC=\'0\' and JRN_STS=\'S\' and TX_TYP in (\'76\',\'7U\') and TX_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('144', 'IAS', 'LNS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"IAS_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"LON_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] FROM ASDIAS.T_IAS_LONJNL where TX_TYP in (\'76\',\'7U\') and CAP_SRC=\'1\' and TX_STS=\'S\' and CRE_DT=\'$[LAST_DAY]\';', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318284', 'ias', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'GSA Repayment：[IAS->LNS]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where  SYS_CNL=\'IAS\' and CAP_SRC=\'1\' and JRN_STS=\'S\' and TX_TYP in (\'76\',\'7U\') and TX_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('145', 'LNS', 'SAS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"REQ_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] FROM CSDLNS.T_LNS_TXJNL where  CAP_SRC=\'1\' and JRN_STS=\'S\' and TX_TYP in (\'76\',\'7U\') and TX_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318285', 'lns', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'GSA Repayment：[LNS-SAS]', '0', 'select [{name:\"BUS_REF_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDSAS.T_SAS_TXJNL where bus_typ = \'5112\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('146', 'SAS', 'ACM', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] FROM CSDSAS.T_SAS_TXJNL where bus_typ = \'5112\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\';', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318286', 'sas', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'GSA Repayment：[SAS->ACM]', '0', 'select [{name:\"CNL_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACM.T_SAA_ACJN where bus_typ = \'5112\' and JRN_STS=\'3\' and AC_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('147', 'LNS', 'LON', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"REQ_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDLNS.T_LNS_TXJNL where  CAP_SRC=\'1\' and JRN_STS=\'S\' and TX_TYP in (\'76\',\'7U\') and TX_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318287', 'lns', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'GSA Repayment：[LNS->LON]', '0', 'select [{name:\"REQ_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from csdlon.t_lon_jnl where tx_sts=\'S\' and ac_dt=\'$[LAST_DAY]\' and opp_bank=\'1\' and tx_typ in (\'76\',\'7U\')', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('148', 'IAS', 'SAS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"IAS_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_SAVJNL where TX_TYP in (\'50\',\'55\',\'53\') and TX_STS=\'S\' and CRE_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318288', 'ias', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Deposit：[IAS->SAS]', '0', 'select [{name:\"BUS_REF_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDSAS.T_SAS_TXJNL where TX_TYP  in (\'50\',\'55\',\'53\') AND BUS_CNL = \'IAS\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('149', 'SAS', 'ACM', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDSAS.T_SAS_TXJNL where TX_TYP  in (\'50\',\'55\',\'53\') AND BUS_CNL = \'IAS\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318290', 'sas', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Deposit：[SAS-ACM]', '0', 'select [{name:\"CNL_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACM.T_SAA_ACJN where TX_TYP  in (\'50\',\'55\',\'53\') and BUS_CNL = \'IAS\' and JRN_STS=\'3\' and AC_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('150', 'IAS', 'SAS', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"IAS_JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"TX_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from ASDIAS.T_IAS_SAVJNL where TX_TYP in (\'51\',\'54\') and TX_STS=\'S\' and CRE_DT=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '20200313000000000000318291', 'ias', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Withdraw：[IAS->SAS]', '0', 'select [{name:\"BUS_REF_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDSAS.T_SAS_TXJNL where TX_TYP in (\'51\',\'54\') AND BUS_CNL = \'IAS\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');
INSERT INTO `t_adt_chkconf` VALUES ('151', 'SAS', 'ACM', 'D', 'D', 'LOGADM', 'LOGADM', '1', 'T', '1', 'N', 'SELECT [{name:\"JRN_NO\",type:\"0\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDSAS.T_SAS_TXJNL where TX_TYP in (\'51\',\'54\') AND BUS_CNL = \'IAS\' and JRN_STS=\'S\' and cre_dt=\'$[LAST_DAY]\'', ' ', 'mbu', 'mbu', 'mbu', 'mbu', 'nullnullnullnullnull', '00:00', '23:05', '1', ' ', ' ', '1', ' ', ' ', '1', ' ', ' ', 'I', 0, '20200616', '000000', '20200616', '000000', '000000', '000000', '202003130000000000003182920', 'sas', '20200604105932+03', 'batch.batch', 'W!completeFirstCheckbui.s_0_15137000000000021', 'keT00001', ' ', 'Withdraw：[SAS-ACM]', '0', 'select [{name:\"CNL_JRN_NO\",type:\"1\",check:\"true\",deli:\"\"}|id@{name:\"TX_AMT*100\",type:\"2\",check:\"true\",deli:\"\"}|amt@{name:\"JRN_STS\",type:\"3\",check:\"true\",deli:\"\"}|pcr_sts] from CSDACM.T_SAA_ACJN where TX_TYP in (\'51\',\'54\') and BUS_CNL = \'IAS\' and JRN_STS=\'3\' and AC_DT=\'$[LAST_DAY]\'', ' ', '20200611085115', '20200611085115', ' ', 'MSHWARI', '0');

-- ----------------------------
-- Table structure for t_adt_chkconf_202008071132_01
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkconf_202008071132_01`;
CREATE TABLE `t_adt_chkconf_202008071132_01`  (
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DAT_RSC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DAT_RSC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DAT_RSC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DAT_RSC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_MTH` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `IS_CHK_AMT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DB_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DOT_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DAT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DAT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_DOT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DOT_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_RSL_CONF` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_MORE_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_MORE_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_MORE_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_LESS_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_LESS_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_LESS_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_ERR_HDL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_ERR_SRV_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_ERR_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DOT_DAYS` bigint(20) NOT NULL,
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_SIGN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DB_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SLA_DOT_QRY_SQL` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkctl
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkctl`;
CREATE TABLE `t_adt_chkctl`  (
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账流水',
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账序号',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `CHK_BAT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '对账批次: 1-第一批次 2-第二批次',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '对账状态 I-初始态 P-对账处理中 S-对账完成 F-对账失败',
  `CHK_RSL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '对账结果 0-对平 1-有差错',
  `CHK_BAT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '对账批次序号(当天对账批次序号)',
  `CHK_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '对账次数(每次重复对账加一|CNT)',
  `CHK_BEG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账开始日期',
  `CHK_END_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账开始时间',
  `CHK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账开始时间',
  `CHK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账结束时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `PRD_GRP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  `FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_NM|File name',
  `CHK_SIGN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'CHK_SIGN|Check sign ：0-end day；1-time day',
  PRIMARY KEY (`CHK_BAT_NO`, `CHK_ID`) USING BTREE,
  INDEX `NI1_T_ADT_CHKCTL`(`CHK_DT`, `CHK_STS`, `CHK_BAT`) USING BTREE,
  INDEX `NI2_T_ADT_CHKCTL`(`CHK_DT`, `CHK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账控制流水表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkctl_bak
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkctl_bak`;
CREATE TABLE `t_adt_chkctl_bak`  (
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_RSL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT_SEQ` bigint(20) NOT NULL,
  `CHK_CNT` bigint(20) NOT NULL,
  `CHK_BEG_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_END_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_GRP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkdoubt
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkdoubt`;
CREATE TABLE `t_adt_chkdoubt`  (
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账Id',
  `ERR_KEY_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账差错键值',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账批次号',
  `CHK_BAT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '对账批次序号(当天对账批次序号)',
  `MORE_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '多账对账模块',
  `LESS_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缺账对账模块',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '交易金额',
  `BUS_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务数据',
  `MORE_MOD_ORG_DAT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '多数据模块原数据',
  `DOT_EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '存疑到期日',
  `CHK_ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '差错类型 0-长款差错 1-短款差错 3-状态不符 2-金额差错',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新机构',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '节点ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '时间戳',
  `PARAM1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Parameter 1',
  `PARAM3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Parameter 3',
  `PARAM4` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Parameter 4',
  `PARAM5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Parameter 5',
  `PARAM6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Parameter 6',
  `PARAM2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'Parameter 2',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`CHK_ID`, `ERR_KEY_ID`) USING BTREE,
  INDEX `NI2_T_ADT_CHKDOUBT`(`CHK_ID`, `CHK_BAT_SEQ`) USING BTREE,
  INDEX `NI1_T_ADT_CHKDOUBT`(`CHK_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账存疑表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkerr
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkerr`;
CREATE TABLE `t_adt_chkerr`  (
  `ERR_KEY_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账差错键值',
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账Id',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账批次号',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `MORE_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '多账对账模块',
  `LESS_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缺账对账模块',
  `MORE_MOD_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '多账对账模块交易状态',
  `LESS_MOD_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '缺账对账模块交易状态',
  `MORE_MOD_ORG_DAT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '多数据对账模块原数据',
  `LESS_MOD_ORG_DAT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '少数据对账模块原数据',
  `CHK_ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '差错类型 0-长款差错 1-短款差错 3-状态不符 2-金额差错',
  `ERR_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '差错处理状态 U-待处理 P-差错处理中 S-处理完成 F-处理失败 E-处理异常',
  `ERR_HDL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '差错处理方式 1-已补单 2-已撤单 3-人工取消 4-人工处理 5-差错受理中 6-虚假差错 7-业务系统自行处理 0-待确认 ',
  `BUS_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务数据',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `CHK_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '对账次数(每次重复对账加一)',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '节点ID',
  `MORE_MOD_ORD_STS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LESS_MOD_ORD_STS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `PRD_GRP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_GRP_CD|Product group code',
  PRIMARY KEY (`ERR_KEY_ID`, `CHK_ID`, `CHK_BAT_NO`) USING BTREE,
  INDEX `NI1_T_ADT_CHKERR`(`CHK_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账差错表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkerrhis
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkerrhis`;
CREATE TABLE `t_adt_chkerrhis`  (
  `ERR_KEY_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账差错键值',
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账Id',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账流水号',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `MORE_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '多账对账模块',
  `LESS_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缺账对账模块',
  `MORE_MOD_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '多账对账模块交易状态',
  `LESS_MOD_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '缺账对账模块交易状态',
  `MORE_MOD_ORG_DAT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '多数据对账模块原数据',
  `LESS_MOD_ORG_DAT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '少数据对账模块原数据',
  `CHK_ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '差错类型 0-长款差错 1-短款差错 3-状态不符 2-金额差错',
  `ERR_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '差错处理状态 U-待处理 P-差错处理中 S-处理成功 F-处理失败 E-处理异常',
  `ERR_HDL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '差错处理方式 1-已补单 2-已撤单 3-人工取消 4-人工处理 5-差错受理中 6-虚假差错 7-业务系统自行处理 0-待确认 ',
  `BUS_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务数据',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `CHK_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '对账次数(每次重复对账加一)',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '节点ID',
  `MORE_MOD_ORD_STS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LESS_MOD_ORD_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  INDEX `NI2_T_ADT_CHKERRHIS`(`ERR_KEY_ID`, `CHK_ID`, `CHK_BAT_NO`) USING BTREE,
  INDEX `NI1_T_ADT_CHKERRHIS`(`CHK_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账差错历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkfilejnl
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkfilejnl`;
CREATE TABLE `t_adt_chkfilejnl`  (
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_BAT_NO|Check batch number',
  `CHK_FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_DT|Check file date',
  `CHK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_NM|Check file name',
  `CHK_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_JRN_NO|Check Journal number',
  `CHK_FIL_SOU` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_SOU|Check file source',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'TX_AMT|Transaction amount',
  `WIT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'WIT_AMT|Withdraw amount',
  `PAI_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PAI_AMT|Paid in amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'BAL|Balance',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction status',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `SOU_STS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SOU_STS|Source transaction status',
  `SOU_TYP` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SOU_TYP|Source transaction type',
  `INIT_TIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INIT_TIME|Initiation time',
  `COMP_TIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_TIME|Completion_time',
  `LINK_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LINK_ID|Linkedtransaction id',
  `OTHER_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OTHER_INFO|Other party info',
  `REMARKS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REMARKS|Remarks',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  PRIMARY KEY (`CHK_FIL_SOU`, `CHK_FIL_DT`, `CHK_JRN_NO`) USING BTREE,
  INDEX `NI1_T_ADT_CHKFILEJNL`(`CHK_BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Reconciliation file Journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkjnl`;
CREATE TABLE `t_adt_chkjnl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `PCR_STS` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ERR_FLD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRT_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `NI1_T_ADT_CHKJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chkjnl_bak
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chkjnl_bak`;
CREATE TABLE `t_adt_chkjnl_bak`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT` decimal(18, 2) NOT NULL,
  `PCR_STS` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ERR_FLD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRT_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_NAME2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_chksts
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_chksts`;
CREATE TABLE `t_adt_chksts`  (
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账序号',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '对账状态',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRE_SMP|Create sample',
  PRIMARY KEY (`CHK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_daychkfilejnl
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_daychkfilejnl`;
CREATE TABLE `t_adt_daychkfilejnl`  (
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_BAT_NO|Check batch number',
  `CHK_FIL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_DT|Check file date',
  `CHK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_NM|Check file name',
  `CHK_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_JRN_NO|Check Journal number',
  `CHK_FIL_SOU` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_FIL_SOU|Check file source',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'TX_AMT|Transaction amount',
  `WIT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'WIT_AMT|Withdraw amount',
  `PAI_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'PAI_AMT|Paid in amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'BAL|Balance',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction status',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `SOU_STS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SOU_STS|Source transaction status',
  `SOU_TYP` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SOU_TYP|Source transaction type',
  `INIT_TIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INIT_TIME|Initiation time',
  `COMP_TIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_TIME|Completion_time',
  `LINK_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LINK_ID|Linkedtransaction id',
  `OTHER_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OTHER_INFO|Other party info',
  `REMARKS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REMARKS|Remarks',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node id',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  PRIMARY KEY (`CHK_BAT_NO`, `CHK_JRN_NO`, `CHK_FIL_SOU`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Reconciliation file Journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_dbsconf
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_dbsconf`;
CREATE TABLE `t_adt_dbsconf`  (
  `DAT_SRC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '数据来源名称',
  `DB_SRC_URL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '数据源URL',
  `LOG_NM` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录名称',
  `DB_PWD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '数据源密码(密文)',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|inputer',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `DB_PUB_KEY` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  PRIMARY KEY (`DAT_SRC_NM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账子系统数据源配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_adt_dbsconf
-- ----------------------------
INSERT INTO `t_adt_dbsconf` VALUES ('LOGADM', 'jdbc:oracle:thin:@172.16.0.100:1521:sitpord', 'LOGADM', ' ', ' ', ' ', ' ', ' ', 'keT00002', '20200509140412', 'adt_region.batch', ' ', ' ', ' ', 'MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAIMBIRT7gMZJrR4D+9ou4xuPNe+V+x1TlntXH9bbll9/p7U4cIbpZInRBVA01F75FmNEXpYd6fk5peoh+kPRJHUCAwEAAQ==', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_adt_errtotal
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_errtotal`;
CREATE TABLE `t_adt_errtotal`  (
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账批次号',
  `CHK_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账Id',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `MAIN_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主对账模块',
  `SLA_CHK_MOD` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '从对账模块',
  `IS_CHK_AMT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '是否核对金额：Y-核对 N-不核对',
  `MAIN_MOD_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '主对账模块总笔数',
  `MAIN_MOD_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '主对账模块总金额',
  `SLA_MOD_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '从对账模块总笔数',
  `SLA_MOD_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '从对账模块总金额',
  `EQU_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '对平总笔数',
  `EQU_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '对平总金额',
  `MAIN_LESS_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '短款总笔数 (主对账模块少,从对账模块多)',
  `MAIN_LESS_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '短款总金额 (主对账模块少,从对账模块多)',
  `MAIN_MORE_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '长款总笔数 (主对账模块多,从对账模块少)',
  `MAIN_MORE_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '长款总金额 (主对账模块多,从对账模块少)',
  `AMT_ERR_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '金额不一致总笔数',
  `AMT_ERR_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '金额不一致总金额',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '节点ID',
  `STATUS_ERR_TOT_CNT` bigint(20) NOT NULL DEFAULT 0,
  `STATUS_ERR_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `DOUBT_TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DOUBT_TOT_CNT|Doubt total count',
  `DOUBT_TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'DOUBT_TOT_AMT|Doubt total amount',
  PRIMARY KEY (`CHK_BAT_NO`, `CHK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账差错总计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_adt_filconf
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_filconf`;
CREATE TABLE `t_adt_filconf`  (
  `DAT_SRC_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件源',
  `DAT_SRC_DESC` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件源描述',
  `IGN_HED_NUM` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '忽略行数-默认0',
  `FIL_PATH` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径及文件名',
  `CHARACTER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字符集 GBK UTF-8',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '操作日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '操作时间',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '操作人员',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '服务器节点ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CHK_FIELDS` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '参与对账字段',
  `FILE_FIELDS` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '文件格式列',
  `DELI_STR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账文件分隔符',
  `CONTINUE_EXPR` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '不满足条件表达式',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|inputer',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|authorizer',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `AMT_REP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AMT_REP_FLG|Amount replace flg',
  PRIMARY KEY (`DAT_SRC_NM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件源配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_adt_filconf
-- ----------------------------
INSERT INTO `t_adt_filconf` VALUES ('paid_type', 'Amount column on paid in', '1', '/nfs/data/adt/chkdata/Mpesa_262626_[LAST_DAY]235959.csv', '1', ' ', ' ', '20200312', '063547', 'keT00001', '20200509140412', 'batch.batch', 'addFilInfobui_u_11133000000000002', '{name:\"id\",type:\"0\",check:\"true\",deli:\"|\"}@{name:\"amt\",type:\"2\",check:\"true\",deli:\"|\"}@{name:\"STATUS\",type:\"3\",check:\"true\",deli:\"|\"}', 'id|INITIATION_TIME|COMPLETION_TIME|DETAILS|STATUS|WITHDRAW_AMOUNT|amt|BALANCE|TX_TYP|REASON_TYPE|OTHERPARTYINFO|LINKEDTRANSACTION_ID|REMARKS', '|', '(STATUS!=\'Completed\'&&STATUS!=\'Cancelled\'&&STATUS!=\'Declined\'&&STATUS!=\'Expired\')||(TX_TYP!=\'FSI Deposit\'&&TX_TYP!=\'FSI Activate and Save\'&&TX_TYP!=\'FSI Deposit\'&&TX_TYP!=\'FSI Loan Repayment\'&&TX_TYP!=\'FSI Loan Repayment from Savings\')', ' ', ' ', ' ', ' ', ' ', '1');
INSERT INTO `t_adt_filconf` VALUES ('withdrawn_type', 'Amount column on withdrawn', '1', '/nfs/data/adt/chkdata/Mpesa_262626_[LAST_DAY]235959.csv', '1', ' ', ' ', '20200310', '183622', 'keT00001', '20200509140412', 'batch.batch', 'addFilInfobui_u_11133000000000001', '{name:\"id\",type:\"0\",check:\"true\",deli:\"|\"}@{name:\"amt\",type:\"2\",check:\"true\",deli:\"|\"}@{name:\"STATUS\",type:\"3\",check:\"true\",deli:\"|\"}', 'id|INITIATION_TIME|COMPLETION_TIME|DETAILS|STATUS|amt|PAID_IN_AMOUNT|BALANCE|TX_TYP|REASON_TYPE|OTHERPARTYINFO|LINKEDTRANSACTION_ID|REMARKS', '|', '(STATUS!=\'Completed\'&&STATUS!=\'Cancelled\'&&STATUS!=\'Declined\'&&STATUS!=\'Expired\')||(TX_TYP!=\'FSI Withdraw\'&&TX_TYP!=\'FSI Loan Disbursement\')', ' ', ' ', ' ', ' ', ' ', '1');

-- ----------------------------
-- Table structure for t_adt_rdsrsl
-- ----------------------------
DROP TABLE IF EXISTS `t_adt_rdsrsl`;
CREATE TABLE `t_adt_rdsrsl`  (
  `ERR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '错误类型',
  `CRT_DAT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '当前差错日期',
  `SYSNAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '当前系统名称',
  `MAIN_CHK_MOD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主对账模块',
  `SLA_CHK_MOD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '从对账模块',
  `ERR_KEY_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '错误键值',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '交易金额',
  `BUS_DAT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务数据',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHK_BAT_NO|Check batch number',
  INDEX `NI1_T_ADT_RDSRSL`(`SYSNAME`) USING BTREE,
  INDEX `NI2_T_ADT_RDSRSL`(`CHK_BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账差错临时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bbb_payjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_bbb_payjnl`;
CREATE TABLE `t_bbb_payjnl`  (
  `REQ_BUS_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_AMT` decimal(18, 2) NOT NULL,
  `PCR_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf`;
CREATE TABLE `t_pub_btpinf`  (
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TASK_NM|Task name',
  `SQL_TEXT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SQL_TEXT|Sql',
  `OBJ_SVR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SVR_NM|Object service name',
  `OBJ_TXNCD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Object transaction code',
  `INTERVAL` bigint(20) NOT NULL DEFAULT 60 COMMENT 'ITV|Interval',
  `LAST_TIM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TIME|Last time',
  `MAX_TMS` bigint(20) NOT NULL DEFAULT 5 COMMENT 'MAX_TMS|Max count',
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000' COMMENT 'TIME|Begin time',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '235959' COMMENT 'TIME|End time',
  `CONC_NUM` bigint(20) NOT NULL DEFAULT 1 COMMENT 'MAX_TMS|Task count',
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'DEL_FLG|Status',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator',
  `RMK` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'BAT_STS|Status',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'APP_NM|Application name',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '类型(N-正常,T-临时)',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '参数',
  PRIMARY KEY (`NAME`) USING BTREE,
  UNIQUE INDEX `T_PUB_BTPINF_PK`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Timing online batch configuration table' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 1, 9999999999, 0, 1, 'Y', '', ' ', ' ');

-- ----------------------------
-- Table structure for t_sch_batinf
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_batinf`;
CREATE TABLE `t_sch_batinf`  (
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CONTENT` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORIG_FIL_NAM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `CRON_EXPR` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_batinst
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_batinst`;
CREATE TABLE `t_sch_batinst`  (
  `ID` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I',
  `BEG_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `END_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RERUN_COUNT` bigint(20) NOT NULL DEFAULT 0,
  `REMARK` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_lockinf
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_lockinf`;
CREATE TABLE `t_sch_lockinf`  (
  `ID` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OWNER` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LOCK_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_params
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_params`;
CREATE TABLE `t_sch_params`  (
  `ID` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID|id',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'name|param_name',
  `VALUE` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'value|value',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'upd_oper|upd_oper',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'tm_smp|tm_smp',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'rmk|remark',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'param table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_taskconfig
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_taskconfig`;
CREATE TABLE `t_sch_taskconfig`  (
  `ID` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID',
  `BATCH_NAM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Batch name',
  `TASK_NAM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Task name',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'Status（0-invalid,1-valid)',
  `ALARM_TIME` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Task complete time',
  `STAT_TOTAL_SQL` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Total number of sql',
  `STAT_SUCC_SQL` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Total successful number of sql',
  `STAT_FAIL_SQL` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Total failed number of sql',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Operator',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Timestamp',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Remark',
  `TYPE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'SQL' COMMENT 'type',
  `URL` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'url',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `UI1_T_SCH_TASKCONFIG`(`BATCH_NAM`, `TASK_NAM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'task config' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_taskinst
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_taskinst`;
CREATE TABLE `t_sch_taskinst`  (
  `ID` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '唯一标识',
  `INST_ID` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批量实例ID',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务名称',
  `BAT_NAM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批量名称',
  `EXEC_INFO` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务执行信息',
  `EXEC_RESULT` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务执行结果',
  `EXEC_MSG` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务执行返回信息',
  `BEG_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开始时间',
  `END_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结束时间',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '状态(P-处理中,F-失败，S-成功，K-跳过）',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `TASK_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务ID',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MODULE_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '模块名',
  `TOTAL_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'total number',
  `SUCC_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'successful number',
  `FAIL_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'failed number',
  `EXTRAS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'extras',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `UI1_T_BAT_TASKINST`(`INST_ID`, `NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sch_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sch_user`;
CREATE TABLE `t_sch_user`  (
  `ID` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户ID',
  `PASSWORD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '密码',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '状态（0-无效，1-有效）',
  `TM_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sch_user
-- ----------------------------
INSERT INTO `t_sch_user` VALUES ('admin', '26ac484ab33dea0a0737411fff787c6a3a0c5427838f0196e8377b13c8ccf892', 'SYS', '1', '20200201205515');

SET FOREIGN_KEY_CHECKS = 1;
