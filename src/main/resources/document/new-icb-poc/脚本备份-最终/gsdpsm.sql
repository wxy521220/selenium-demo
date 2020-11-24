/*
 Navicat Premium Data Transfer

 Source Server         : GSDPSM
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : gsdpsm

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 19:04:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_psm_bstl
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_bstl`;
CREATE TABLE `t_psm_bstl`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次号',
  `BAT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '批次序号',
  `DO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '处理标志',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批处理状态',
  `TXN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易状态',
  `MSG_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '错误码',
  `TXN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '交易金额',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效日期',
  `WC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现类型',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '资金类型',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '会计日期',
  `CALL_TX_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '调用的交易码',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点id',
  `RFD_ORD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款订单号',
  `RFD_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款日期',
  `ORD_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单号',
  `ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单日期',
  `NEXT_STL_TM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下一结算时间',
  `TIM_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '定时结算标志 Y:定时  N:日终',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`BAT_NO`, `BAT_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'BSP批处理批次明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_clrl
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_clrl`;
CREATE TABLE `t_psm_clrl`  (
  `PSM_JRN_NO` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易流水号',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统日期',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统时间',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取日期',
  `CLR_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单号',
  `CLR_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单日期',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `CLR_ORD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单时间',
  `TX_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '渠道交易码',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '产品编码',
  `PRD_CLS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付产品种类',
  `MAIN_PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主支付工具',
  `MAIN_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主资金种类',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易类型',
  `ORD_BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单业务类型',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `CLR_ORD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分订单类型',
  `REC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记录状态',
  `CLR_STS1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态1-现金',
  `CLR_STS2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态2-营销',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_ORD_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单编号',
  `MERC_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单日期',
  `POST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账日期',
  `POST_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账时间',
  `TXN_ATTR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易属性',
  `RFD_APL_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请流水号',
  `RFD_APL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请日期',
  `MERC_RFD_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款流水号',
  `MERC_RFD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款日期',
  `MERC_DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户借贷方标志',
  `FEE_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `FEE_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '清算商户用户号',
  `CHG_FEE_FLG1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志1-现金',
  `CHG_FEE_FLG2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志2-营销',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率类型',
  `STL_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算商户号',
  `STL_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '结算商户用户号',
  `CUR_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款金额',
  `ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `ORD_STL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '结算金额',
  `CUR_CLR_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款手续费',
  `CUR_CASH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款现金资金的金额',
  `CUR_CASH_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款现金资金的手续费',
  `CUR_CARD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款充值卡资金的金额',
  `CUR_CARD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款充值卡资金的手续费',
  `CUR_BON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款红包资金的金额',
  `CUR_BON_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款红包资金的手续费',
  `CUR_VCH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款优惠券资金的金额',
  `CUR_VCH_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款优惠券资金的手续费',
  `CUR_ITG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款积分资金的金额',
  `CUR_ITG_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款积分资金的手续费',
  `CUR_EXT_AMT1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金1的金额',
  `CUR_EXT_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金1的手续费',
  `CUR_EXT_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金2的金额',
  `CUR_EXT_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金2的手续费',
  `CUR_EXT_AMT3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金3的金额',
  `CUR_EXT_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算;退款扩展资金3的手续费',
  `AC_PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '有无账户标识 0-有账户；1-无账户',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '付款方用户号',
  `MERC_USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '商户用户号',
  `REALTM_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户结算实时标志 0-实时 1-非实时',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户服务费收费方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退货手续费处理方式',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次号',
  `STL_BAT_SEQ` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次序号',
  `STL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT '结算状态 S-已结算 P-处理中 F-失败 U-初始化',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日期',
  `STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算时间',
  `STL_RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算备注',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `REG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '注册节点',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`PSM_JRN_NO`, `SYS_DT`) USING BTREE,
  UNIQUE INDEX `T_PSM_CLRL_PK`(`PSM_JRN_NO`, `SYS_DT`) USING BTREE,
  INDEX `T_PSM_CLRL_NI1`(`CLR_ORD_DT`, `ORD_TYP`, `CLR_ORD_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '清算流水表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_fdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_fdetail`;
CREATE TABLE `t_psm_fdetail`  (
  `JRN_NO` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '流水号',
  `STL_NO` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算单编号',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日期',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次号',
  `MERC_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `DETAIL_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '明细流水号',
  `RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `RSV_FLD1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注字段一',
  `RSV_FLD2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注字段二',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `T_PSM_FDETAIL_PK`(`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户结算单失败明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_fedt
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_fedt`;
CREATE TABLE `t_psm_fedt`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易流水号',
  `CHG_FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '应收费日期',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户交易服务费收取方式',
  `CHG_FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志',
  `MERC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户类型',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `CLR_MERC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `MERC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属省',
  `MERC_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属市',
  `MERC_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属城市名',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属省',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属市',
  `USR_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属城市名',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '内部用户号',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-密文',
  `ORD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '内部订单号',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用方向',
  `ORD_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单资金种类',
  `TOT_ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总金额',
  `MERC_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户可清算交易总金额',
  `TOT_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '总费用金额',
  `TOT_TX_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '累计交易笔数',
  `TOT_ORD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '汇总订单笔数',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取日期',
  `SPLT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分润记账日期',
  `AGENT_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '代理商编号',
  `USR_SPLT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '用户归属方分润金额',
  `MERC_SPLT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户归属方分润金额',
  `AGT_SPLIT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '代理商分润金额',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `POS_BAT_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次号',
  `POS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次流水号',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易日期',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易时间',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  `MBL_NO_MASK` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-掩码',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `T_PSM_FEDT_PK`(`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户交易服务费明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_invo
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_invo`;
CREATE TABLE `t_psm_invo`  (
  `INV_YYYYMM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '发票年月',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `CLR_MERC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `MERC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属省',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属省',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用方向',
  `ORD_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单资金种类',
  `TOT_ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总金额',
  `TOT_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '总费用金额',
  `TOT_TX_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '累计交易笔数',
  `TOT_ORD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '汇总订单笔数',
  `MERC_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户可清算交易总金额',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  PRIMARY KEY (`INV_YYYYMM`, `MERC_ID`) USING BTREE,
  UNIQUE INDEX `T_PSM_INVO_PK`(`INV_YYYYMM`, `MERC_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户支付交易付费发票表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_mfee
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mfee`;
CREATE TABLE `t_psm_mfee`  (
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '资金种类',
  `PRD_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '功能产品',
  `PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付工具',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效日期',
  `EFF_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效时间',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率类型',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效日期',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效时间',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用方向',
  `FEE_IAC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用内部账号类型',
  `FEE_IN_AC` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用内部账号',
  `FEE_PERD_UNIT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费周期单位',
  `FEE_PERD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '收费周期数目',
  `NEXT_FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下次收费日期',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费方式',
  `FEE_CAL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费方法',
  `FEE_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费货币',
  `BEG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费起始金额(笔数)',
  `MIN_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '最低收费金额',
  `MAX_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '最高收费金额',
  `FEE_CAL_BAS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用计算依据',
  `FEE_LVL_FLG` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分层;套档标志',
  `UP_REF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考1',
  `FIX_FEE_AMT1` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额1',
  `FEE_RAT1` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率1',
  `UP_REF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考2',
  `FIX_FEE_AMT2` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额2',
  `FEE_RAT2` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率2',
  `UP_REF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考3',
  `FIX_FEE_AMT3` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额3',
  `FEE_RAT3` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率3',
  `UP_REF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考4',
  `FIX_FEE_AMT4` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额4',
  `FEE_RAT4` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率4',
  `UP_REF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考5',
  `FIX_FEE_AMT5` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额5',
  `FEE_RAT5` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率5',
  `FEE_AC_CAP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用资金种类',
  `SHARE_FEE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用承担方式',
  `RFD_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '退货方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '退货手续费处理方式',
  `FEE_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率账户类型',
  `MCC_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MCC码',
  `DEDUCT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扣费方式',
  `DEDUCT_PERD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收支2条线手续费扣费周期',
  `FCD_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率代码',
  `SEP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '特征码',
  `CRE_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建机构',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改时间',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建操作员',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改操作员',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核操作员',
  `RVW_RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核意见',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`MERC_ID`, `CAP_TYP`, `PRD_CLS`, `PAY_TOOL`, `EFF_DT`, `EFF_TM`, `RATE_TYP`) USING BTREE,
  UNIQUE INDEX `T_URM_MFEE_PK`(`MERC_ID`, `CAP_TYP`, `PRD_CLS`, `PAY_TOOL`, `EFF_DT`, `EFF_TM`, `RATE_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户交易服务费费率表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_psm_mfee
-- ----------------------------
INSERT INTO `t_psm_mfee` VALUES ('811100055210001', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000008', ' ', 'BUI', '20191216', '112728', '20191216', '161625', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216161625', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100055210001', '1', '11', '1021', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216180201', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100055210001', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216181101', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811100058120001', '1', '11', '1011', '20180301', '000000', '01', '20240106', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000031', ' ', 'BUI', '20191213', '154606', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213154606', 'PSM20180323000000000000020086');
INSERT INTO `t_psm_mfee` VALUES ('811100058120001', '1', '11', '1021', '20180301', '000000', '01', '20240131', '235959', ' ', ' ', ' ', '2', 0, '20180426', '2', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '1', '1', ' ', ' ', '0', ' ', '0000000032', ' ', 'BUI', '20191213', '154617', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200207151831', 'PSM20180323000000000000020088');
INSERT INTO `t_psm_mfee` VALUES ('811100058120001', '1', '11', '1031', '20180301', '000000', '01', '20240131', '235959', ' ', ' ', ' ', '2', 0, '20180430', '3', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '2', ' ', ' ', '1', ' ', '0000000033', ' ', 'BUI', '20191213', '154631', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200214225801', 'PSM20180323000000000000020090');
INSERT INTO `t_psm_mfee` VALUES ('811100058120001', '3', '10', '1011', '20180101', '000000', '01', '20241231', '235959', ' ', ' ', ' ', ' ', 0, '20180501', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '1', ' ', '0000000044', ' ', 'BUI', '20200604', '154914', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200604154916', 'PSM20180430000000000000026245');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '10', '1011', '20090101', '000000', '01', '20310102', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '145531', '20191213', '150757', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150802', 'PSM20180323000000000000019935');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '10', '1021', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '145900', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213145900', 'PSM20180323000000000000019940');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '10', '1022', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '145849', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213145849', 'PSM20180323000000000000019938');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '11', '1011', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150552', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150552', 'PSM20180323000000000000019959');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '11', '1021', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150542', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150542', 'PSM20180323000000000000019957');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '11', '1022', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150517', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150517', 'PSM20180323000000000000019953');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '13', '1011', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150508', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150508', 'PSM20180323000000000000019951');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '13', '1021', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150458', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150458', 'PSM20180323000000000000019949');
INSERT INTO `t_psm_mfee` VALUES ('811100058120002', '1', '13', '1022', '20090101', '000000', '01', '20310103', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '150449', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213150449', 'PSM20180323000000000000019947');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '10', '1011', '20090101', '000000', '01', '20760826', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '192205', '20191216', '174436', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174436', 'PSM20180324000000000000020512');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '10', '1021', '20090101', '000000', '01', '20440616', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '192412', '20191216', '174425', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174425', 'PSM20180324000000000000020516');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '10', '1022', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193322', '20191216', '174417', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174417', 'PSM20180325000000000000020555');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '11', '1011', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193313', '20191216', '174408', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174408', 'PSM20180325000000000000020553');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '11', '1021', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193254', '20191216', '174359', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174359', 'PSM20180325000000000000020551');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '11', '1022', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193246', '20191216', '174351', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174351', 'PSM20180325000000000000020549');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '13', '1011', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193237', '20191216', '174341', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174341', 'PSM20180325000000000000020547');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '13', '1021', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193227', '20191216', '174331', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174331', 'PSM20180325000000000000020545');
INSERT INTO `t_psm_mfee` VALUES ('811100058120003', '1', '13', '1022', '20090101', '000000', '01', '20440609', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191213', '193218', '20191216', '174321', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216174321', 'PSM20180325000000000000020543');
INSERT INTO `t_psm_mfee` VALUES ('811100058120004', '1', '10', '1011', '20090101', '000000', '01', '21110108', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191218', '161834', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218161839', 'PSM20180412000000000000022984');
INSERT INTO `t_psm_mfee` VALUES ('811100058120005', '1', '11', '1011', '20180301', '000000', '01', '20260901', '235959', ' ', ' ', ' ', ' ', 0, '20180302', '1', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '1', '0', ' ', ' ', '1', ' ', '0000000031', ' ', 'BUI', '20191216', '144710', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191216144710', 'PSM20180329000000000000020783');
INSERT INTO `t_psm_mfee` VALUES ('811100058120005', '1', '11', '1021', '20180301', '000000', '01', '20260930', '235959', ' ', ' ', ' ', '2', 0, '20180425', '2', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000032', ' ', 'BUI', '20191216', '144636', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200204164639', 'PSM20180329000000000000020780');
INSERT INTO `t_psm_mfee` VALUES ('811100058120005', '1', '11', '1031', '20180301', '000000', '01', '20260930', '235959', ' ', ' ', ' ', '2', 0, '20180429', '3', '2', 'CNY', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '2', ' ', ' ', '0', ' ', '0000000033', ' ', 'BUI', '20191216', '144612', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200214142451', 'PSM20180329000000000000020776');
INSERT INTO `t_psm_mfee` VALUES ('811100059410001', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', '2', 0, '20180415', '3', '2', 'CNY', 0.00, 0.00, 100000.00, '0', '0', 1000.00, 2.0000, 5.00, 2000.00, 1.0000, 3.00, 3000.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000039', ' ', 'BUI', '20191216', '112728', '20191219', '112042', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219112432', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100059410001', '1', '11', '1021', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219111839', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100059410001', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219111839', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811100059430001', '1', '11', '1011', '20180401', '000000', '01', '20290430', '235959', ' ', ' ', ' ', ' ', 0, '20180429', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20200211', '103932', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20200211103936', 'PSM20180428000000000000025756');
INSERT INTO `t_psm_mfee` VALUES ('811100070110001', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', '2', 0, '20180412', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '0', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191216', '112728', '20191218', '160824', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218160826', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100070110001', '1', '11', '1021', '20171231', '000000', '01', '20180301', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', '20191218', '155143', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218155143', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100070110001', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217174028', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811100078290001', '1', '11', '1011', '20171231', '000000', '01', '20440616', '235959', ' ', ' ', ' ', ' ', 0, '20180323', '1', '2', 'CNY', 1.00, 1.00, 200.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000010', ' ', 'BUI', '20191213', '174711', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213174713', 'PSM20180323000000000000020373');
INSERT INTO `t_psm_mfee` VALUES ('811100078290002', '1', '11', '1011', '20171231', '000000', '01', '20240104', '235959', ' ', ' ', ' ', '2', 0, '20180324', '3', '2', 'CNY', 1.00, 0.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000034', ' ', 'BUI', '20191213', '181247', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213183238', 'PSM20180323000000000000020408');
INSERT INTO `t_psm_mfee` VALUES ('811100078290003', '1', '11', '1011', '20171231', '000000', '01', '20510105', '235959', ' ', ' ', ' ', '2', 0, '20180420', '3', '1', 'CNY', 1.00, 0.00, 100.00, '1', '2', 0.00, 1.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000034', ' ', 'BUI', '20191213', '191335', '20191220', '103951', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191220104759', 'PSM20180324000000000000020504');
INSERT INTO `t_psm_mfee` VALUES ('811100078290003', '1', '11', '1021', '20180101', '000000', '01', '28890201', '235959', ' ', ' ', ' ', '2', 0, '20180404', '3', '2', 'CNY', 1.00, 0.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000034', ' ', 'BUI', '20191217', '165202', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217183908', 'PSM20180403000000000000021855');
INSERT INTO `t_psm_mfee` VALUES ('811100078290004', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000008', ' ', 'BUI', '20191216', '112728', '20191216', '161625', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217162255', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100078290004', '1', '11', '1021', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217162255', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100078290004', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217162255', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811100078290006', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', '2', 0, '20180415', '3', '2', 'CNY', 0.00, 0.00, 100000.00, '0', '1', 1000.00, 2.0000, 2.00, 2000.00, 1.0000, 1.00, 3000.00, 0.5000, 0.50, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000037', ' ', 'BUI', '20191216', '112728', '20191219', '110731', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219112433', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100078290006', '1', '11', '1021', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218161939', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100078290006', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218161939', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811100078290007', '1', '11', '1011', '20180101', '000000', '01', '20221229', '235959', ' ', ' ', ' ', ' ', 0, '20180412', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191218', '170955', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218170955', 'PSM20180412000000000000023061');
INSERT INTO `t_psm_mfee` VALUES ('811100078290007', '1', '11', '1021', '20171231', '000000', '01', '20510105', '235959', ' ', ' ', ' ', ' ', 0, '20180412', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191218', '173132', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218173132', 'PSM20180412000000000000023096');
INSERT INTO `t_psm_mfee` VALUES ('811100078290007', '1', '11', '1031', '20161226', '000000', '01', '22770911', '235959', ' ', ' ', ' ', ' ', 0, '20180412', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000009', ' ', 'BUI', '20191218', '173332', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218173332', 'PSM20180412000000000000023111');
INSERT INTO `t_psm_mfee` VALUES ('811100079110001', '1', '11', '1021', '20191209', '000000', '02', '20191224', '235959', ' ', ' ', ' ', ' ', 0, '20191212', '1', '2', 'CNY', 100.00, 0.00, 10.00, '0', ' ', 0.00, 0.0000, 5.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', '1', '0', '0', ' ', ' ', '1', ' ', '0000000004', ' ', 'BUI', '20191213', '173547', '20191213', '173702', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213173702', 'PSM20180323000000000000020347');
INSERT INTO `t_psm_mfee` VALUES ('811100079320001', '1', '11', '1011', '20171231', '000000', '01', '20260108', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '1', '2', ' ', ' ', '1', ' ', '0000000008', ' ', 'BUI', '20191213', '144856', '20191218', '161905', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191218161905', 'PSM20180323000000000000019929');
INSERT INTO `t_psm_mfee` VALUES ('811100079320001', '1', '11', '1021', '20161226', '000000', '01', '20250102', '235959', ' ', ' ', ' ', ' ', 0, '20180324', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000008', ' ', 'BUI', '20191213', '164028', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213164028', 'PSM20180323000000000000020196');
INSERT INTO `t_psm_mfee` VALUES ('811100079320001', '1', '11', '1022', '20171231', '000000', '01', '20280106', '235959', ' ', ' ', ' ', ' ', 0, '20180306', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000008', ' ', 'BUI', '20191213', '155256', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213155256', 'PSM20180323000000000000020118');
INSERT INTO `t_psm_mfee` VALUES ('811100079320001', '1', '11', '1031', '20180101', '000000', '01', '20610106', '235959', ' ', ' ', ' ', ' ', 0, '20180323', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '2', ' ', ' ', '1', ' ', '0000000008', ' ', 'BUI', '20191213', '170256', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213170256', 'PSM20180323000000000000020254');
INSERT INTO `t_psm_mfee` VALUES ('811100093110001', '1', '11', '1011', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000008', ' ', 'BUI', '20191216', '112728', '20191216', '161625', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219161901', 'PSM20180329000000000000020737');
INSERT INTO `t_psm_mfee` VALUES ('811100093110001', '1', '11', '1021', '20171231', '000000', '01', '20270107', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000009', ' ', 'BUI', '20191216', '180158', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219161901', 'PSM20180401000000000000021281');
INSERT INTO `t_psm_mfee` VALUES ('811100093110001', '1', '11', '1031', '20180101', '000000', '01', '20470927', '235959', ' ', ' ', ' ', ' ', 0, '20180331', '0', '0', 'CNY', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000035', ' ', 'BUI', '20191216', '181100', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219161901', 'PSM20180401000000000000021311');
INSERT INTO `t_psm_mfee` VALUES ('811301078290003', '1', '11', '1011', '20161226', '000000', '01', '21000203', '235959', ' ', ' ', ' ', '2', 0, '20180423', '3', '2', 'CNY', 0.00, 0.00, 1000.00, '0', '0', 1000.00, 0.0000, 4.00, 2000.00, 0.0000, 3.00, 3000.00, 0.0000, 2.00, 4000.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '1', ' ', '0000000043', ' ', 'BUI', '20191219', '162343', '20191220', '150000', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191220150422', 'PSM20180418000000000000024168');
INSERT INTO `t_psm_mfee` VALUES ('811301079110001', '1', '11', '1011', '20171231', '000000', '01', '20240104', '235959', ' ', ' ', ' ', ' ', 0, '20180330', '0', '0', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000013', ' ', 'BUI', '20191216', '164434', '20191219', '145222', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219145225', 'PSM20180329000000000000020974');
INSERT INTO `t_psm_mfee` VALUES ('811301079110001', '1', '11', '1021', '20171231', '000000', '01', '28890201', '235959', ' ', ' ', ' ', ' ', 0, '20180401', '1', '2', 'CNY', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.0000, 1.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '1', ' ', '0000000009', ' ', 'BUI', '20191217', '165219', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217165219', 'PSM20180403000000000000021857');
INSERT INTO `t_psm_mfee` VALUES ('811302078290002', '1', '11', '1011', '20171231', '000000', '01', '20191216', '235959', ' ', ' ', ' ', ' ', 0, '20180401', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000007', ' ', 'BUI', '20191217', '202824', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217202826', 'PSM20180405000000000000022244');
INSERT INTO `t_psm_mfee` VALUES ('811302078290002', '1', '11', '1011', '20191217', '000000', '01', '20191219', '235959', ' ', ' ', ' ', ' ', 0, '20180404', '1', '1', 'CNY', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '0', ' ', ' ', '0', ' ', '0000000001', ' ', 'BUI', '20191217', '203006', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191217203006', 'PSM20180405000000000000022248');
INSERT INTO `t_psm_mfee` VALUES ('811331079110001', '1', '11', '1011', '20161225', '000000', '01', '20410103', '235959', ' ', ' ', ' ', '2', 0, '20180416', '2', '2', 'CNY', 1.00, 0.00, 100.00, '0', '2', 0.00, 0.0000, 2.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', ' ', '0', '1', ' ', ' ', '0', ' ', '0000000041', ' ', 'BUI', '20191219', '151154', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191219151912', 'PSM20180416000000000000023977');
INSERT INTO `t_psm_mfee` VALUES ('811335055610001', '1', '12', '1032', '20191202', '000000', '02', '20191226', '235959', ' ', ' ', ' ', ' ', 0, '18991215', '1', '2', 'CNY', 100.00, 0.00, 10.00, '0', ' ', 0.00, 0.0000, 5.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, 0.00, 0.0000, 0.00, ' ', '0', '0', '1', ' ', ' ', '1', ' ', '0000000004', ' ', 'BUI', '20191213', '152439', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', '20191213152439', 'PSM20180323000000000000020042');

-- ----------------------------
-- Table structure for t_psm_mfeecd
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mfeecd`;
CREATE TABLE `t_psm_mfeecd`  (
  `FCD_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率代码编号',
  `FCD_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率代码名称',
  `FEE_PERD_UNIT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费周期单位',
  `FEE_PERD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '收费周期数量',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费方式',
  `FEE_CAL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费方法',
  `BEG_AMT` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '计费起始金额(笔数)',
  `MIN_FEE_AMT` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '最低收费金额',
  `MAX_FEE_AMT` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '最高收费金额',
  `FEE_CAL_BAS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用计算依据',
  `FEE_LVL_FLG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分层;套档标志',
  `UP_REF1` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考1',
  `FIX_FEE_AMT1` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '固定费用金额1',
  `FEE_RAT1` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率1',
  `UP_REF2` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考2',
  `FIX_FEE_AMT2` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '固定费用金额2',
  `FEE_RAT2` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率2',
  `UP_REF3` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考3',
  `FIX_FEE_AMT3` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '固定费用金额3',
  `FEE_RAT3` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率3',
  `UP_REF4` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考4',
  `FIX_FEE_AMT4` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '固定费用金额4',
  `FEE_RAT4` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率4',
  `UP_REF5` decimal(13, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考5',
  `FIX_FEE_AMT5` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '固定费用金额5',
  `FEE_RAT5` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率5',
  `CRE_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建机构',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改时间',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建操作员',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改操作员',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核操作员',
  `RVW_RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核意见',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点名',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '以外流水号',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效标识 1-生效',
  PRIMARY KEY (`FCD_ID`, `EFF_FLG`) USING BTREE,
  UNIQUE INDEX `T_PSM_MFEECD_UI2`(`FCD_NM`) USING BTREE,
  UNIQUE INDEX `T_PSM_MFEECD_PK`(`FCD_ID`, `EFF_FLG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户费率编号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_psm_mfeecd
-- ----------------------------
INSERT INTO `t_psm_mfeecd` VALUES ('0000000001', 'Maxamtest', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', ' ', 0.00, 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191031', '155823', '20191031', '174606', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191031174613', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000002', 'No fee', ' ', 0, '0', ' ', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191031', '181243', '20191112', '095743', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191112095747', '0');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000003', 'test', ' ', 0, '0', ' ', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191101', '135839', '20191101', '135855', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191101135900', '0');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000004', '5% rate -100', ' ', 0, '1', '2', 100.00, 0.00, 10.00, '0', ' ', 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191104', '180017', '20191113', '190125', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190125', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000005', 'a2 merchant rate charge', ' ', 0, '1', '2', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191106', '193549', '20191216', '151651', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191216151656', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000006', 'a3 merchant rate charge', ' ', 0, '1', '2', 1.00, 1.00, 100.00, '0', ' ', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191108', '141909', '20191113', '190219', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190219', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000007', 'a4 merchant rate charge', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191108', '143526', '20191216', '154100', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191216154100', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000008', 'a5 merchant rate charge', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191108', '155938', '20191213', '144431', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191213144435', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000009', 'b1 merchant rate charge', ' ', 0, '1', '2', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191108', '171823', '20191216', '164244', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191216164247', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000010', 'b2 merchant rate charge', ' ', 0, '1', '2', 1.00, 1.00, 200.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '150346', '20191213', '174546', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191213174549', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000011', 'b3 merchant rate charge', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '162924', '20191218', '101544', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191218101549', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000012', 'b4 merchant rate charge', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '164828', '20191219', '100537', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219100540', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000013', 'b5 merchant rate charge', ' ', 0, '0', '0', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '172239', '20191219', '145050', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219145050', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000014', 'b6 merchant rate charge', ' ', 0, '0', '0', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '173900', '20191219', '145100', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219145100', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000015', 'c1 merchant rate charge', '2', 1, '2', '2', 1.00, 1.00, 100.00, '0', ' ', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '180031', '20191113', '190346', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190346', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000016', 'c2 merchant rate charge', '2', 1, '2', '1', 0.00, 0.00, 0.00, '1', ' ', 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '193938', '20191113', '190356', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190356', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000017', 'c3 merchant rate charge', '2', 1, '2', '1', 0.00, 0.00, 0.00, '1', ' ', 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '194745', '20191113', '190406', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190406', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000018', 'c4 merchant rate charge', '2', 1, '2', '2', 1.00, 1.00, 100.00, '0', ' ', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '194851', '20191113', '190414', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190414', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000019', 'c5 merchant rate charge', '2', 1, '3', '2', 1.00, 0.00, 0.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191111', '195223', '20191113', '190423', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190423', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000020', 'c6 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '144641', '20191113', '190433', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190433', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000021', 'c7 merchant rate charge', '2', 1, '3', '2', 1.00, 0.00, 0.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '144738', '20191113', '190441', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190441', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000022', 'c8 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '144817', '20191113', '190449', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190449', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000023', 'c9 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '0', 500.00, 2.00, 0.00, 1000.00, 1.00, 0.00, 100000.00, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '145344', '20191113', '190458', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190458', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000024', 'c10 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '0', 500.00, 2.00, 0.00, 1000.00, 1.00, 0.00, 1000000.00, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '145949', '20191113', '190506', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190506', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000025', 'c11 merchant rate charge', '2', 1, '3', '2', 0.00, 0.00, 0.00, '0', '0', 500.00, 0.00, 3.00, 1000.00, 0.00, 2.00, 100000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150047', '20191113', '190515', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190515', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000026', 'c12 merchant rate charge', '2', 1, '3', '2', 0.00, 0.00, 0.00, '0', '0', 500.00, 0.00, 3.00, 1000.00, 0.00, 2.00, 100000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150147', '20191113', '190524', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190524', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000027', 'c13 merchant rate charge', '2', 1, '3', '2', 0.00, 0.00, 0.00, '0', '1', 500.00, 0.00, 3.00, 3500.00, 0.00, 2.00, 1000000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150256', '20191113', '190532', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190532', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000028', 'c14 merchant rate charge', '2', 1, '3', '2', 0.00, 0.00, 0.00, '0', '1', 500.00, 0.00, 3.00, 3500.00, 0.00, 2.00, 1000000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150338', '20191113', '190540', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190540', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000029', 'c15 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '1', 500.00, 2.00, 0.00, 3500.00, 1.00, 0.00, 100000.00, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150424', '20191113', '190547', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190547', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000030', 'c16 merchant rate charge', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '1', 500.00, 2.00, 0.00, 3500.00, 1.00, 0.00, 100000.00, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191112', '150505', '20191113', '190555', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191113190555', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000031', 'POPO-1%', ' ', 0, '1', '2', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191213', '144517', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191213144521', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000032', 'POPO-1', '2', 1, '2', '2', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191213', '144607', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191213144607', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000033', 'POPO-2', '2', 1, '3', '2', 0.00, 0.00, 0.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191213', '144631', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191213144631', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000034', 'test college', '2', 1, '3', '1', 1.00, 0.00, 100.00, '1', '2', 0.00, 1.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191213', '181129', '20191220', '103830', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191220103835', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000035', 'a1 merchant rate charge', ' ', 0, '0', '0', 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191216', '112540', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191216112542', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000036', 'XXX', ' ', 0, '1', '0', 1.00, 1.00, 100.00, '0', '2', 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191217', '103513', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191217103520', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000037', 'mi-fc', '2', 1, '3', '2', 0.00, 0.00, 100000.00, '0', '1', 1000.00, 2.00, 2.00, 2000.00, 1.00, 1.00, 3000.00, 0.50, 0.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191218', '105745', '20191219', '110349', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219110351', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000038', 'mi', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191218', '142720', '20191218', '142729', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191218142734', '0');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000039', 'mi-td', '2', 1, '3', '2', 0.00, 0.00, 100000.00, '0', '0', 1000.00, 2.00, 5.00, 2000.00, 1.00, 3.00, 3000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191218', '142845', '20191219', '111459', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219111459', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000040', 'cs', '2', 1, '3', '1', 0.00, 0.00, 0.00, '1', '0', 1000.00, 1.00, 0.00, 2000.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191218', '144103', '20191218', '144109', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191218144109', '0');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000041', 'wpf single and college', '2', 1, '2', '2', 1.00, 0.00, 100.00, '0', '2', 0.00, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191219', '150935', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219150940', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000042', 'wpf test step', '2', 1, '3', '2', 0.00, 0.00, 100.00, '0', '1', 1000.00, 0.00, 3.00, 2000.00, 0.00, 2.00, 3000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20191219', '162232', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191219162232', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000043', 'test step only', '2', 1, '3', '2', 0.00, 0.00, 1000.00, '0', '0', 1000.00, 0.00, 4.00, 2000.00, 0.00, 3.00, 3000.00, 0.00, 2.00, 4000.00, 0.00, 1.00, 0.00, 0.00, 0.00, 'BUI', '20191220', '145905', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20191220145910', '1');
INSERT INTO `t_psm_mfeecd` VALUES ('0000000044', '扫码费率', ' ', 0, '1', '1', 0.00, 0.00, 0.00, '1', '2', 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'BUI', '20200604', '154228', ' ', ' ', ' ', ' ', ' ', ' ', 'settlement.settlement_129', ' ', '20200604154233', '1');

-- ----------------------------
-- Table structure for t_psm_mrcp
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mrcp`;
CREATE TABLE `t_psm_mrcp`  (
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户号',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '商户用户号',
  `SEQ_NO` bigint(20) NOT NULL COMMENT '序列号',
  `COMBINE_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算单方式',
  `COMBINE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算单名称',
  `SQL_TEXT` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'sql内容配置',
  `RMK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '有效标志位Y 有效;N 无效',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '机器nod节点',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`COMBINE_TYPE`, `SEQ_NO`, `MERC_ID`) USING BTREE,
  UNIQUE INDEX `T_PSM_MRCP_PK`(`COMBINE_TYPE`, `SEQ_NO`, `MERC_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '清结算结算单业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_mstlac
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mstlac`;
CREATE TABLE `t_psm_mstlac`  (
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `STL_OAC_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账号-密文',
  `STL_OAC_MASK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账号-掩码',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效日期',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效日期',
  `STL_OAC_CLS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账户类型',
  `BNK_ACNM_CIPHER` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '户名-密文',
  `BNK_ACNM_MASK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '户名-掩码',
  `WC_BNK` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现银行行号',
  `BNK_TYP` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '行别',
  `WC_LBNK_NO` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现银行联行号',
  `OPN_BNK_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行所在省',
  `OPN_BNK_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行所在市',
  `OPN_BNK_DESC` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行详细信息',
  `STL_SIGN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账户标志',
  `BCD_ABOVE_IMG` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '银行正面图片',
  `BCD_BELOW_IMG` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '银行背面图片',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '生效标识',
  `CRE_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建机构',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改时间',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建操作员',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改操作员',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核操作员',
  `RVW_RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核意见',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`MERC_ID`, `STL_OAC_CIPHER`, `EFF_DT`) USING BTREE,
  UNIQUE INDEX `T_PSM_MSTLAC_UI1`(`MERC_ID`) USING BTREE,
  UNIQUE INDEX `T_URM_MACT_PK`(`MERC_ID`, `STL_OAC_CIPHER`, `EFF_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户结算账户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_mstlbil
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mstlbil`;
CREATE TABLE `t_psm_mstlbil`  (
  `STL_NO` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算单编号',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日期',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次号',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_CNM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户名称',
  `STL_BAT_SEQ` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次序号',
  `STL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算单处理状态 U-初始化 P-处理中 F-处理失败 S-处理成功',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '内部用户号',
  `T0_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'T+0结算标志',
  `HLD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '冻结编号',
  `CCY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'CNY' COMMENT '币种',
  `STL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '结算金额',
  `FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '结算手续费',
  `STL_END_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '结算后余额',
  `STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算时间',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '会计日期',
  `STL_OAC_CLS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算类型 1:结算到账户 2:结算到银行账户',
  `AGR_PAY_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '协议付款日期',
  `STL_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算开始时间(结算时商户结算信息配置)',
  `STL_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算截止时间(结算时商户结算信息配置)',
  `STL_FREQ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算频率(结算时商户结算信息配置)',
  `NEXT_STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下一结算时间',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `UPD_OPR` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '操作员',
  `UPD_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `UPD_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新流水',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核状态',
  `CHK_RMK` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核意见',
  `STL_DESC` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算描述',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `STL_NUM` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '结算明细条数',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '信息码',
  `MSG_INF` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '信息码描述',
  `WDC_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现订单号',
  `STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算方式 0-按余额结算 1-按交易结算',
  `COMBINE_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '按交易结算交易组合类型',
  `COMBINE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '按交易结算交易组合名称',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`STL_NO`, `STL_DT`) USING BTREE,
  UNIQUE INDEX `T_PSM_MSTLBIL_PK`(`STL_NO`, `STL_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户结算单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_mstlfee
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mstlfee`;
CREATE TABLE `t_psm_mstlfee`  (
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '资金种类',
  `TX_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易方式',
  `FEE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用类型',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效日期',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效日期',
  `NEXT_FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下次收费日期',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '收费方式',
  `FEE_CAL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费方法',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用方向',
  `FEE_IAC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用内部账号类型',
  `FEE_IN_AC` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用内部账号',
  `FEE_PERD_UNIT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费周期单位',
  `FEE_PERD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '收费周期数量',
  `FEE_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费货币',
  `BEG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费起始金额(笔数)',
  `MIN_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '最低收费金额',
  `MAX_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '最高收费金额',
  `FEE_CAL_BAS_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用计算依据',
  `FEE_LVL_FLG` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分层;套档标志',
  `FEE_LVL_BAS_FLG` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分层;套档依据',
  `UP_REF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考1',
  `FIX_FEE_AMT1` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额1',
  `FEE_RAT1` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率1',
  `UP_REF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考2',
  `FIX_FEE_AMT2` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额2',
  `FEE_RAT2` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率2',
  `UP_REF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考3',
  `FIX_FEE_AMT3` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额3',
  `FEE_RAT3` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率3',
  `UP_REF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考4',
  `FIX_FEE_AMT4` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额4',
  `FEE_RAT4` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率4',
  `UP_REF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '计费参考5',
  `FIX_FEE_AMT5` decimal(18, 4) NOT NULL DEFAULT 0.0000 COMMENT '固定费用金额5',
  `FEE_RAT5` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT '费率5',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `UPD_JRN` bigint(20) NOT NULL DEFAULT 0 COMMENT '最新更新流水号',
  `FEE_AC_CAP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用资金种类',
  `CTT_PSN_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '联系人序号',
  `SHARE_FEE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分润手续费类型',
  `EFF_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效时间',
  `EXP_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效时间',
  `STL_CTL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算类型',
  `RFD_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '退货方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '退货手续费处理方式',
  `FEE_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率账户类型',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '01' COMMENT '费率类型',
  `MCC_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MCC码',
  `CRD_IND` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '卡标志',
  `DEDUCT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扣费方式',
  `TEM_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '模板编号',
  `DEDUCT_PERD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收支2条线手续费扣费周期',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `FCD_ID` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率代码',
  `ORD_FEE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单费率类型',
  `SEP_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '特征码',
  `PAY_CAP_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付方式',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`MERC_ID`, `CAP_TYP`, `TX_MOD`, `FEE_TYP`) USING BTREE,
  UNIQUE INDEX `T_URM_MSTLFEE_PK`(`MERC_ID`, `CAP_TYP`, `TX_MOD`, `FEE_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '结算手续费表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_mstlinf
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_mstlinf`;
CREATE TABLE `t_psm_mstlinf`  (
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效日期',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效日期',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '内部用户号',
  `REALTM_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户结算标志 0-实时，1-非实时',
  `STL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算方式 0-按余额结算 1-按交易结算',
  `PAS_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '暂停结算标志',
  `STL_PERD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算周期',
  `STL_DAY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日',
  `STL_DAY_BIT` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日标志位',
  `STL_TRF_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT '结算划款天数',
  `STL_BEG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '结算起始金额',
  `MIN_RTN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '最低留存金额',
  `LAST_STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '上次结算日期',
  `NEXT_STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下一结算日期',
  `AMT_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '资金属性',
  `STL_OAC_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账号-密文',
  `STL_OAC_MASK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账号-掩码',
  `STL_OAC_CLS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账户类型',
  `BNK_ACNM_CIPHER` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '户名-密文',
  `BNK_ACNM_MASK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '户名-掩码',
  `WC_LBNK_NO` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现银行联行号',
  `OPN_BNK_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行所在省',
  `OPN_BNK_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行所在市',
  `OPN_BNK_DESC` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开户行详细信息,到支行',
  `EFF_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '生效标识',
  `BNKAC_PSN_CRP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账户公私标志；0-对公；1-对私',
  `BNK_TYP` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '行别',
  `WC_BNK` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '提现银行行号',
  `NEXT_STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '下一结算时间',
  `LAST_STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '上次结算时间',
  `STL_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算截止',
  `CLR_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算账户种类',
  `CLR_AC` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算账号',
  `DEP_TM_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统打款时间段',
  `T0_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'T+0结算标志,0：T+0结算,1：非T+0结算',
  `STL_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算开始时间:格式：090000',
  `STL_FREQ` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算频率',
  `AUTO_BATSTL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '自动批结标志, 0：自动批结1：不自动批结,默认为0',
  `CRE_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建机构',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改时间',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建操作员',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '修改操作员',
  `RVW_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核操作员',
  `RVW_RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '审核意见',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点名',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  `STL_EXTEND_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算继承标识 Y:继承 N:不继承',
  `FEE_EXTEND_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率继承标识 Y:继承 N:不继承',
  PRIMARY KEY (`MERC_ID`) USING BTREE,
  UNIQUE INDEX `T_URM_MSTL_PK`(`MERC_ID`) USING BTREE,
  UNIQUE INDEX `T_PSM_MSTLINF_UI1`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户结算信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_psm_mstlinf
-- ----------------------------
INSERT INTO `t_psm_mstlinf` VALUES ('811100055210001', '20171231', '20260108', 1110000005104, '0', '1', '0', ' ', '1', ' ', 0, 0.00, 0.00, '20180430', '20180501', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', '**************************t', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', '20200214', '225814', ' ', ' ', ' ', 'pass', 'settlement.settlement_129', '20200214225814', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100058120001', '20180301', '20251231', 1110000005001, '1', '1', '0', '0', '1', ' ', 1, 0.00, 0.00, '20180425', '20180426', '1', 'EBE8B0A9F6B0476D2547C652A1C0CAEE', '756342*4262', '2', 'C70BC5235F4CC813D1CD33E6580BCDD7', '***O', '102100004172', '110', '1000', '中国工商银行股份有限公司北京阜成路支行', '1', '0', 'ICBC', 'ICBC', '000000', '155110', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '144132', '20191220', '155110', ' ', ' ', ' ', 'p', 'settlement.settlement_129', '20191220155110', '20191213000000000000107660', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100058120002', '20081228', '20300919', 1110000005005, '1', '0', '0', '0', '1', ' ', 1, 0.00, 0.00, ' ', '20180324', '1', '2E14B62FE1FBA8E8EC2A577D37151E62BB3DC585852CE5C1C0C99F0B4614D5F3', '622202*********6266', '2', '0DC6A70E89539070D2A80BED8769A568', '*****r', '102100004164', '110', '1000', '中国工商银行股份有限公司北京国贸大厦支行', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '145244', ' ', ' ', ' ', ' ', ' ', '1', 'settlement.settlement_129', '20191213145244', '20191213000000000000108059', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100058120003', '20081228', '20301231', 1110000005025, '1', '0', '0', '0', '1', ' ', 1, 0.00, 0.00, '20180422', '20180423', '1', 'DCD4859BDC5D5475FEFC4417D4AD5A84BB3DC585852CE5C1C0C99F0B4614D5F3', '622202*********6266', '2', '453782011CF4FFC58B2F72AF98C5A315', 'St***ucks', '102100004164', '110', '1000', '中国工商银行股份有限公司北京国贸大厦支行', '1', '0', 'ICBC', 'ICBC', '000000', '144703', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '192037', '20191220', '144703', ' ', ' ', ' ', '1', 'settlement.settlement_129', '20191220144703', '20191213000000000000112472', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100058120004', '20090101', '21110108', 1110000005103, '1', '1', '0', '0', '1', ' ', 1, 0.00, 0.00, ' ', '20180330', '1', '7EF9F7A7E4DB468B18D0C3AFE3614DCA38E7BB5BD63031BF6D8CE370C3E920B5', '622848*********1215', '2', 'F89366B1EEC5596C2DD2F6EAD3FD5E64', '***o', '098', '110', '1000', 'ABC', '1', '0', 'ABC', 'ABC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '102919', ' ', ' ', ' ', ' ', ' ', '1', 'settlement.settlement_129', '20191216102925', '20191216000000000000113155', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100058120005', '20180301', '20211231', 1110000005110, '1', '1', '0', '0', '1', ' ', 1, 600.00, 500.00, '20180430', '20180501', '1', '944D5064B46995A50A23CDFBA5E9EFEE', '425262*6277', '2', 'D6305EED9F3C3DECC483681DDEE4AF2F', '*******T', '102100021334', '110', '1000', '中国工商银行股份有限公司北京阜成门支行', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '144159', '20200214', '225814', ' ', ' ', ' ', 'OK', 'settlement.settlement_129', '20200214225814', '20191216000000000000114160', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100059410001', '20171231', '20260108', 1110000005500, '1', '1', '0', '0', '1', ' ', 1, 0.00, 0.00, ' ', '20180415', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', 'wp*********************hant', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', '20191219', '110616', ' ', ' ', ' ', '123', 'settlement.settlement_129', '20191219111839', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100059430001', '20180401', '20220430', 1110000006000, '1', '0', '0', '0', '1', ' ', 0, 50.00, 0.00, ' ', '20180429', '1', '6BBEBD359F29F393ED921626DB0F6EE2', '223344*5666', '2', '40CE3004B72F3ADE64086C405A9E2128CF4DEAFC457CED2C19BAC37AF1B77B00', '*****店', '436578', '110', '1000', '沐融银行测试支行', '1', '0', 'MRB', 'MRB', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20200211', '100119', ' ', ' ', ' ', ' ', ' ', 'ok-0211-xu', 'settlement.settlement_129', '20200211100124', '20200211000000000000135861', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100070110001', '20171231', '20200831', 1110000005206, '0', '1', '0', '0', '1', ' ', 1, 0.00, 0.00, '20180430', '20180501', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', 'wp*********************hant', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', '20200214', '225814', ' ', ' ', ' ', '123', 'settlement.settlement_129', '20200214225814', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290001', '20171231', '20260108', 1110000005019, '1', '1', '0', '0', '1', ' ', 1, 1.00, 0.00, '20180430', '20180501', '1', 'D516CB8C303FD613DAC9F97E2E064E2F', '621512****7779', '2', '8791DD57F1C0B7EAF899EA7397BAE97CCAC9B5037600113C2E104C075ACD35AA', '******************************t', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '174258', '20200214', '225814', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20200214225814', '20191213000000000000111425', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290002', '20171231', '20261231', 1110000005020, '1', '1', '0', '0', '1', ' ', 1, 1.00, 0.00, '20180430', '20180501', '1', '316742414483EC868585EFA5B8790C96', '621512*****7755', '1', 'EF8F73631294D227345A2DE7AC266EB6E1747F2C774C108A203597C9D56DFCB8', '************************t', '102100005001', '110', '1000', '中国工商银行股份有限公司牡丹卡中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '180640', '20200214', '225814', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20200214225814', '20191213000000000000111756', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290003', '20171231', '20261231', 1110000005021, '1', '1', '0', '0', '1', ' ', 1, 1.00, 0.00, '20180430', '20180501', '1', 'E4B7577D9F3CA10DDE90CAEDD25CCE46FB91BE2BB42CA770B0E386435142CB3A', '622848*******8988', '1', 'EF8F73631294D227345A2DE7AC266EB69A57B60FCC4520C40D3A6FE3155CB1C2', '****************************o', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '191211', '20200214', '225814', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20200214225814', '20191213000000000000112321', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290004', '20171231', '20260108', 1110000005205, '0', '1', '0', ' ', '1', ' ', 0, 0.00, 0.00, ' ', ' ', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', '**************************t', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', ' ', ' ', ' ', ' ', ' ', 'pass', 'settlement.settlement_129', '20191217162255', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290006', '20171231', '20260108', 1110000005406, '1', '1', '0', '0', '1', ' ', 1, 0.00, 0.00, ' ', '20180415', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', 'wp*********************hant', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', '20191219', '110616', ' ', ' ', ' ', '123', 'settlement.settlement_129', '20191219110623', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100078290007', '20171231', '20221229', 1110000005407, '1', '1', '0', '0', '1', ' ', 2, 0.00, 0.00, '20180430', '20180501', '1', 'B43861B6CBDBC57443B48C20C9907C28', '456788****3443', '1', 'C7EB5B1AA1422E361C47568246FD35E3960E9121B47C7D2381A393C6EC4DBA98', 'wp****************ttle', '102100005001', '110', '1000', '中国工商银行股份有限公司牡丹卡中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191218', '170739', '20200214', '225814', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20200214225814', '20191218000000000000126920', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100079110001', '20191203', '20191223', 1110000005018, '1', '0', '0', '2', '1', ' ', 98, 23.00, 0.00, ' ', '20191213', '1', 'C02C32999677267803541A089ED66ADC', '324', '2', 'CF5C02C3E8545B1AA9EE226FF7510C88', '*w', '24', '320', '3030', '24', '1', '0', 'ACP', 'ACP', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '173316', ' ', ' ', ' ', ' ', ' ', '213', 'settlement.settlement_129', '20191213173316', '20191213000000000000111304', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100079320001', '20171231', '20261231', 1110000005004, '0', '1', '0', ' ', '1', ' ', 0, 0.00, 0.00, '20180430', '20180501', '1', 'BB7ECBB1469F91FC003CFCEF39AE3755', '622123*****9555', '1', 'C4DBF15D9239B8B2512B8E5D630FC94007ABCBC19E93CEA8C47A9D37FDF4646A', '********************e', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '144149', '20200214', '225814', ' ', ' ', ' ', 'pass', 'settlement.settlement_129', '20200214225814', '20191213000000000000107668', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811100093110001', '20171231', '20180301', 1110000005602, '0', '1', '0', ' ', '1', ' ', 0, 0.00, 0.00, '20180418', '20180419', '1', 'C4ED80083A3DADD827B5D7871BBE0D68', '622212', '1', '16E51EF3ED14DF62DED128E14C6D98C39DA6A00EEE9A6A845C06871CD1729818', 'wp*********************hant', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '155849', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '111513', '20191219', '162540', ' ', ' ', ' ', '123', 'settlement.settlement_129', '20191219162543', '20191216000000000000113405', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811301078290003', '20081229', '20370923', 1110000005601, '1', '0', '0', '0', '1', ' ', 1, 1.00, 0.50, '20180423', '20180424', '1', 'B1040B3F02E5388D90B4AC31AB1EAA8CD38AD8E535613940807790795D6C6A88', '629878*******5655', '1', 'D9EE45BE1BF2699FD8DEAF3BF73E4D640DEA40F561621A2122E6780596D44969', 'wp****************hant', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '150434', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191219', '161946', '20191220', '150434', ' ', ' ', ' ', 'qq', 'settlement.settlement_129', '20191220150434', '20191219000000000000130073', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811301079110001', '20180101', '20260101', 1110000005116, '1', '1', '1', '0', '1', ' ', 1, 1.00, 0.50, '20180425', '20180426', '1', 'E9888444F8718688CA9014361BCD15B6', '654888*****5344', '2', 'F826853E695DFC6735613A03C160B11D073A37F12A3FCBFBB97AD63B03E75C31', 'wp********************real', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '155110', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191216', '164039', '20191220', '162346', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20191220162346', '20191216000000000000115620', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811302078290002', '20161225', '20171231', 1110000005204, '0', '0', '0', ' ', '1', ' ', 0, 0.00, 0.00, ' ', ' ', '1', '2D705E1E31594773E885D83FA12F45E2', '324325*3543', '1', '113ECEC20B06BE8C3EE631EB431CEB0F', '************5', '102100099988', '110', '1000', '中国工商银行股份有限公司新加坡人民币清算行', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191217', '150429', ' ', ' ', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20191217150434', '20191217000000000000119661', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811302079110001', '20191125', '20191230', 1110000005008, '1', '1', '1', '2', '1', ' ', 21, 213.00, 0.00, ' ', '18991212', '1', '88F8673AC650B90D67C1B58D1B92B9D3', '213', '1', 'A8BEDAA8708E91036CCE224A64C49195', '******1', '123', '320', '3030', '12', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '151035', ' ', ' ', ' ', ' ', ' ', '12321', 'settlement.settlement_129', '20191213151035', '20191213000000000000108636', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811303055510001', '20191125', '20191230', 1110000005016, '1', '1', '0', '2', '1', ' ', 21, 213.00, 0.00, ' ', '18991212', '1', '88F8673AC650B90D67C1B58D1B92B9D3', '213', '1', 'A8BEDAA8708E91036CCE224A64C49195', 'Te*t121', '123', '320', '3030', '12', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '151035', '20191213', '173424', ' ', ' ', ' ', '123', 'settlement.settlement_129', '20191213173429', '20191213000000000000108636', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811304079320001', '20191125', '20191230', 1110000005017, '1', '1', '1', '2', '1', ' ', 21, 213.00, 0.00, ' ', '18991212', '1', '88F8673AC650B90D67C1B58D1B92B9D3', '213', '1', 'A8BEDAA8708E91036CCE224A64C49195', '******1', '123', '320', '3030', '12', '1', '0', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '151035', ' ', ' ', ' ', ' ', ' ', '12321', 'settlement.settlement_129', '20191213170336', '20191213000000000000108636', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811331079110001', '20171231', '20401227', 1110000005600, '1', '1', '0', '0', '1', ' ', 1, 1.00, 0.00, '20180430', '20180501', '1', '4DC4DDC2B5C0B77CD511C82D66DC5F16', '624567****5645', '1', '70AA55A5A0BF30E75B9F09705073EE190B48367C23AD119074E89B9AF7045DD4', '**************************t', '102100099996', '110', '1000', '中国工商银行总行清算中心', '1', '0', 'ICBC', 'ICBC', '000000', '225814', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191219', '150249', '20200214', '225814', ' ', ' ', ' ', '11', 'settlement.settlement_129', '20200214225814', '20191219000000000000129548', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811332055510001', '20200601', '20200625', 1110000005405, '0', '0', '0', ' ', '1', ' ', 0, 0.00, 0.00, ' ', ' ', '1', 'BD627823D8D769EB49445EC7A2E3966ADA329634CF7C259288B815AD8E62595F', '622873******7384', '1', '907FE567B623EFEDB136092303438F3A', '****2', ' ', ' ', ' ', ' ', '1', '1', 'ICBC', 'ICBC', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20200605', '150117', ' ', ' ', ' ', ' ', ' ', 'pass', 'settlement.settlement_129', '20200605150121', '20200605000000000000140551', ' ', ' ');
INSERT INTO `t_psm_mstlinf` VALUES ('811335055610001', '20191202', '20191223', 1110000005007, '1', '0', '1', '1', '1', ' ', 12, 213.00, 0.00, ' ', '18991206', '1', '8D605DCBEB714509C31DFDB6E4E3BB1E', '123213', '2', 'BC9B5B21634BF5D07C96A00940056BCB', '******2', '213123', '320', '3020', '123', '1', '0', 'ACP', 'ACP', '000000', ' ', '235959', ' ', ' ', ' ', '1', '000000', '1', '1', 'BUI', '20191213', '151004', ' ', ' ', ' ', ' ', ' ', '21321', 'settlement.settlement_129', '20191213151004', '20191213000000000000108623', ' ', ' ');

-- ----------------------------
-- Table structure for t_psm_oamt
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_oamt`;
CREATE TABLE `t_psm_oamt`  (
  `CLR_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分订单号',
  `CLR_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分订单日期',
  `AMT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '序号',
  `PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付工具',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '资金种类',
  `AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '清算金额',
  `FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '手续费',
  `RFD_GRS` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '已退款金额',
  `RFD_FEE_GRS` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '已退手续费',
  `ADM_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '允许退款金额',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费方式',
  `RFD_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费退款方式',
  `FEE_CAL_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '计费方法',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备用字段1',
  `RSV_FLD2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备用字段2',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  `STL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '实际结算金额',
  PRIMARY KEY (`CLR_ORD_NO`, `CLR_ORD_DT`, `AMT_SEQ`) USING BTREE,
  UNIQUE INDEX `T_PSM_OAMT_PK`(`CLR_ORD_NO`, `CLR_ORD_DT`, `AMT_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '清分订单金额组成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_ord
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_ord`;
CREATE TABLE `t_psm_ord`  (
  `CLR_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分订单号',
  `CLR_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分日期',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '产品编码',
  `PRD_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '功能产品',
  `MAIN_PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主支付工具',
  `MAIN_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主支付资金种类',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易类型',
  `ORD_BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单业务类型',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `MERC_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单日期',
  `MERC_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单号',
  `CLR_ORD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单时间',
  `CLR_AC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账户模式',
  `CLR_AC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算账号',
  `DEDUCT_AC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '待扣款账户模式',
  `DEDUCT_AC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '待扣款账号',
  `CLR_ACCOUNT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分记账模式',
  `CLR_PRC_TYP` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算处理类型',
  `MERC_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '商户内部用户号',
  `ORD_STS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'W1' COMMENT '订单状态',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '币种',
  `ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `ORD_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '清算金额',
  `ORD_STL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '实际结算金额',
  `ORD_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '手续费金额',
  `RMK1` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注1',
  `RMK2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注2',
  `BUS_CNL` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务渠道',
  `SYS_CNL` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统渠道',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率类型',
  `STL_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算商户号',
  `STL_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '结算商户用户号',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取日期',
  `REALTM_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户结算标志 0-实时，1-非实时',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户手续费收取方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款手续费处理方式',
  `AC_PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '有无账户标识 0-有账户；1-无账户',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '消费者用户号',
  `FEE_MERC_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `FEE_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '清算商户用户号',
  `ADM_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '可退款金额',
  `RFD_AMT_GRS` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '已退款总金额',
  `RFD_FEE_GRS` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '已退款总手续费',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '对账状态',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账日期',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点id',
  `REG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'reg节点',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  `DEDUCT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费模式',
  PRIMARY KEY (`CLR_ORD_NO`, `CLR_ORD_DT`, `ORD_TYP`) USING BTREE,
  UNIQUE INDEX `T_PSM_ORD_PK`(`CLR_ORD_NO`, `CLR_ORD_DT`, `ORD_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '清分明细订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_pfsh
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_pfsh`;
CREATE TABLE `t_psm_pfsh`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '流水号',
  `CHG_FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '应收费日期',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户交易服务费收取方式',
  `CHG_FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易服务费收取标志',
  `MERC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户类型',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `CLR_MERC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户编号',
  `MERC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属省',
  `MERC_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属市',
  `MERC_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属城市名',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属省',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属市',
  `USR_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属市名',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '内部用户号',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-密文',
  `MBL_NO_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-掩码',
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '内部订单号',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `POS_BAT_NO` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次号',
  `POS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次流水号',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用方向',
  `ORD_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单资金种类',
  `TOT_ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总金额',
  `MERC_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户可清算交易总金额',
  `TOT_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '总费用金额',
  `TOT_TX_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '累计交易笔数',
  `TOT_ORD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '累计订单笔数',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '收费记账日期',
  `SPLT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '分润记账日期',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易日期',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易时间',
  `AGENT_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '代理商编号',
  `USR_SPLT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '用户归属方分润金额',
  `MERC_SPLT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户归属方分润金额',
  `AGT_SPLIT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '代理商分润金额',
  `PRD_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CLS',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '标识费率类型',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务请求流水号',
  PRIMARY KEY (`JRN_NO`, `FEE_DT`) USING BTREE,
  UNIQUE INDEX `T_PSM_PFSH_PK`(`JRN_NO`, `FEE_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易服务费待分润信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_ramt
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_ramt`;
CREATE TABLE `t_psm_ramt`  (
  `RFD_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款订单号',
  `PSM_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款日期',
  `AMT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '序号',
  `PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付工具',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '资金种类',
  `APL_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '申请退款金额',
  `RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '退款手续费',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用日期',
  `RSV_FLD1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备用字段1',
  `RSV_FLD2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备用字段2',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建时间',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新日期',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新时间',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`RFD_ORD_NO`, `PSM_ORD_DT`, `AMT_SEQ`) USING BTREE,
  UNIQUE INDEX `T_PSM_FAMT_PK`(`RFD_ORD_NO`, `PSM_ORD_DT`, `AMT_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退款订单金额组成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_rmdr
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_rmdr`;
CREATE TABLE `t_psm_rmdr`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次号',
  `BAT_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT '顺序号',
  `M_BAT_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主批次号',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次状态',
  `DO_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '处理标志',
  `TXN_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易状态',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '流水号',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账日期',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '商户用户号',
  `MAIN_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单资金种类',
  `PRD_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '功能产品',
  `MAIN_PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主支付工具',
  `FEE_DRT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用标志',
  `FEE_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `FEE_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '费用商户用户号',
  `TOT_ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总金额',
  `TOT_ORD_NUM` bigint(20) NOT NULL DEFAULT 0 COMMENT '订单总笔数',
  `TOT_FEE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '总费用金额',
  `CUR_CLR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户收款金额',
  `CASH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '现金交易金额',
  `CASH_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '现金交易服务费',
  `CARD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '充值卡交易金额',
  `CARD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '充值卡交易服务费',
  `BON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '红包交易金额',
  `BON_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '红包交易服务费',
  `VCH_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '代金券交易金额',
  `VCH_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '代金券交易服务费',
  `ITG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '积分交易金额',
  `ITG_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '积分交易服务费',
  `EXT_AMT1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易金额1',
  `EXT_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易服务费1',
  `EXT_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易金额2',
  `EXT_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易服务费2',
  `EXT_AMT3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易金额3',
  `EXT_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展交易服务费3',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户服务费收费方式',
  `CHG_FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易服务费收取日期',
  `M_EXT_NO` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主批次外部批次号',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '信息码',
  `TXN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '交易金额',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退手续费模式',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '标识费率类型',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务请求号',
  PRIMARY KEY (`BAT_NO`, `BAT_SEQ`) USING BTREE,
  UNIQUE INDEX `T_PSM_RMDR_PK`(`BAT_NO`, `BAT_SEQ`) USING BTREE,
  INDEX `T_PSM_RMDR_NI1`(`MERC_ID`, `BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '远程支付-商户交易服务费待扣取明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_rtul
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_rtul`;
CREATE TABLE `t_psm_rtul`  (
  `RFD_APL_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请流水号',
  `RFD_APL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '日期',
  `RFD_APL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '产品编码',
  `PRD_CLS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '功能产品',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易类型',
  `OPR_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '操作类型 ： 1-冲正 0-退款',
  `ORD_BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单业务类型',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `MERC_RFD_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款流水号',
  `MERC_RFD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款日期',
  `WHL_RFD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '是否全额退款（或者是部分退款中的最后一笔退款）0：非全额退款1：全额退款',
  `RFD_STS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款状态',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `ORI_ORD_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '内部订单号',
  `ORI_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '创建日期',
  `CUR_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次退款金额',
  `CUR_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次退款手续费',
  `RMK1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注1',
  `RMK2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注2',
  `FEE_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `FEE_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '清算商户用户号',
  `STL_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算商户号',
  `STL_MUSR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '结算商户用户号',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '对账状态',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '对账日期',
  `BUS_CNL` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务渠道',
  `SYS_CNL` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统渠道',
  `CASH_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '现金退款手续费',
  `CASH_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '现金退款金额',
  `BON_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '红包退款手续费',
  `BON_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '红包退款金额',
  `VCH_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠券退款手续费',
  `VCH_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠券退款金额',
  `ITG_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '积分退款手续费',
  `ITG_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '积分退款金额',
  `CARD_RFD_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '充值卡退款手续费',
  `CARD_RFD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '充值卡退款金额',
  `EXT_CAP_TYP1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展资金种类1',
  `EXT_PAY_TOOL1` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展支付工具1',
  `EXT_RFD_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类1退款手续费',
  `EXT_RFD_AMT1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类1退款金额',
  `EXT_CAP_TYP2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展资金种类2',
  `EXT_PAY_TOOL2` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展支付工具2',
  `EXT_RFD_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类2退款手续费',
  `EXT_RFD_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类2退款金额',
  `EXT_CAP_TYP3` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展资金种类3',
  `EXT_PAY_TOOL3` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '扩展支付工具3',
  `EXT_RFD_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类3退款手续费',
  `EXT_RFD_AMT3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '扩展资金种类3退款金额',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点id',
  `REG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'reg节点id',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号',
  PRIMARY KEY (`RFD_APL_JRN`, `RFD_APL_DT`, `ORD_TYP`) USING BTREE,
  UNIQUE INDEX `T_PSM_RTUL_PK`(`RFD_APL_JRN`, `RFD_APL_DT`, `ORD_TYP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户退款明细订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_trdf
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_trdf`;
CREATE TABLE `t_psm_trdf`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易流水号',
  `TX_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '渠道交易码',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易类型',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `AC_PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '有无账户标志',
  `REC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记录状态',
  `CLR_STS1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态1',
  `CLR_STS2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态2',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户名称',
  `MERC_ABBR` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户简称',
  `MERC_TRD_CLS` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户行业',
  `MERC_ORD_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单编号',
  `ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单日期',
  `MERC_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属省',
  `MERC_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属市',
  `MERC_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户归属城市名',
  `ORD_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '内部订单号',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单建立日期',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单建立时间',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `MERC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户类型',
  `POST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账日期',
  `POST_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账时间',
  `TX_SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账系统日期',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT '内部用户号',
  `USR_PROV` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属省',
  `USR_CITY` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属市',
  `USR_CITY_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户归属城市名',
  `MBL_NO_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-密文',
  `MBL_NO_MASK` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手机号-掩码',
  `ORD_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单资金种类',
  `ORD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `TXN_ATTR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易属性',
  `RFD_APL_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请流水号',
  `MERC_DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户借贷方标志',
  `MCUR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次商户交易金额',
  `CUR_CLR_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算交易服务费',
  `CUR_CLR_CASH` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算现金交易金额',
  `CUR_CLR_CFEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算现金交易服务费',
  `CUR_CLR_PPD` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算充值卡交易金额',
  `CUR_CLR_PFEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算充值卡交易服务费',
  `CUR_CLR_LM` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算红包交易金额',
  `CUR_CLR_LFEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算红包交易服务费',
  `CUR_CLR_COP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算代金券交易金额',
  `CUR_CLR_COP_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算代金券交易服务费',
  `CUR_CLR_POI` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算积分交易金额',
  `CUR_CLR_POI_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算积分交易服务费',
  `CUR_CLR_EXT1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算扩展交易金额1',
  `CUR_CLR_EFEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算扩展交易服务费1',
  `CUR_CLR_EXT2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算扩展交易金额2',
  `CUR_CLR_EFEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '本次清算扩展交易服务费2',
  `MERC_RCV_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户清算发票交易金额',
  `MERC_RCV_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户清算发票交易服务费',
  `MERC_RCV_AMT3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT '商户清算不结算交易金额',
  `CLR_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `TX_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易方式',
  `PAY_CNL` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付渠道',
  `FEE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费用类型',
  `CHG_FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取日期',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户服务费收费方式',
  `CNT_FEE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费计算标志',
  `USR_PAY_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户支付日期',
  `USR_PAY_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户支付时间',
  `USR_PAY_ACDT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '用户支付会计日期',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费退款方式',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '标识费率类型',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易发生节点名',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `T_PSM_TRDF_PK`(`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '远程交易服务费待清算失败明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_psm_trfe
-- ----------------------------
DROP TABLE IF EXISTS `t_psm_trfe`;
CREATE TABLE `t_psm_trfe`  (
  `PSM_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易流水号',
  `SYS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统日期',
  `SYS_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '系统时间',
  `FEE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取日期',
  `CLR_ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单号',
  `CLR_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单日期',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单类型',
  `CLR_ORD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单时间',
  `TX_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '渠道交易码',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '产品编码',
  `PRD_CLS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '支付产品种类',
  `MAIN_PAY_TOOL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MAIN_CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易类型',
  `ORD_BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '订单业务类型',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `CLR_ORD_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分订单类型',
  `REC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记录状态',
  `CLR_STS1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态1-现金',
  `CLR_STS2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清分状态2-营销',
  `MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户编号',
  `MERC_ORD_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单编号',
  `MERC_ORD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户订单日期',
  `POST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账日期',
  `POST_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '记账时间',
  `TXN_ATTR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易属性',
  `RFD_APL_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请流水号',
  `RFD_APL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退款申请日期',
  `MERC_RFD_JRN` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款流水号',
  `MERC_RFD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户退款日期',
  `MERC_DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户借贷方标志',
  `FEE_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '清算商户号',
  `FEE_MUSR_NO` bigint(20) NOT NULL COMMENT '清算商户用户号',
  `CHG_FEE_FLG1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志1-现金',
  `CHG_FEE_FLG2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '手续费收取标志2-营销',
  `RATE_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '费率类型',
  `STL_MERC_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算商户号',
  `STL_MUSR_NO` bigint(20) NOT NULL COMMENT '结算商户用户号',
  `ORD_AMT` decimal(18, 2) NOT NULL COMMENT '订单金额',
  `ORD_STL_AMT` decimal(18, 2) NOT NULL COMMENT '结算金额',
  `CUR_CLR_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款金额',
  `CUR_CLR_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款手续费金额',
  `CUR_CASH_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款现金资金的金额',
  `CUR_CASH_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款现金资金的手续费',
  `CUR_CARD_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款充值卡资金的金额',
  `CUR_CARD_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款充值卡资金的手续费',
  `CUR_BON_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款红包资金的金额',
  `CUR_BON_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款红包资金的手续费',
  `CUR_VCH_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款优惠券资金的金额',
  `CUR_VCH_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款优惠券资金的手续费',
  `CUR_ITG_AMT` decimal(18, 2) NOT NULL COMMENT '本次清算;退款积分资金的金额',
  `CUR_ITG_FEE` decimal(18, 2) NOT NULL COMMENT '本次清算;退款积分资金的手续费',
  `CUR_EXT_AMT1` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金1的金额',
  `CUR_EXT_FEE1` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金1的手续费',
  `CUR_EXT_AMT2` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金2的金额',
  `CUR_EXT_FEE2` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金2的手续费',
  `CUR_EXT_AMT3` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金3的金额',
  `CUR_EXT_FEE3` decimal(18, 2) NOT NULL COMMENT '本次清算;退款扩展资金3的手续费',
  `AC_PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '有无账户标识 0-有账户；1-无账户',
  `USR_NO` bigint(20) NOT NULL COMMENT '付款方用户号',
  `MERC_USR_NO` bigint(20) NOT NULL COMMENT '商户用户号',
  `REALTM_STL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户结算实时标志 0-实时 1-非实时',
  `MERC_FEE_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '商户服务费收费方式',
  `RFD_FEE_PRC_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '退货手续费处理方式',
  `STL_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次号',
  `STL_BAT_SEQ` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算批次序号',
  `STL_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算状态 S-已结算 P-处理中 F-失败 U-初始化',
  `STL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算日期',
  `STL_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算时间',
  `STL_RMK` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '结算备注',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点ID',
  `REG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '注册节点',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `REQ_BUS_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务流水号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_bspctl
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_bspctl`;
CREATE TABLE `t_pub_bspctl`  (
  `INST_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ICS实例ID',
  `BAT_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次号',
  `FIL_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次文件名',
  `APP_TYP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PUB' COMMENT '应用标识',
  `M_BAT_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '主批次号',
  `IS_PRIMARY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否主批次',
  `EXT_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '外部批次主键',
  `EXT_BAT_NO` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '外部批次号',
  `PHASE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '处理阶段',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT '批处理状态',
  `PRE_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT '前处理状态',
  `PROC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT '批业务处理状态',
  `AFTER_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT '后处理状态',
  `SRV_ID` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次处理服务标识',
  `SND_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '发送次数',
  `MAX_CNT` bigint(20) NOT NULL DEFAULT 1 COMMENT '发送最大次数',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '交易码',
  `BUS_TYP` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '会计日期',
  `DUE_DT_CTRL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '预期日期控制标志',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '19000101' COMMENT '预期调度日期',
  `DUE_BGN_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000' COMMENT '预期调度开始时间',
  `DUE_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '235959' COMMENT '预期调度结束时间',
  `BAT_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '批量模式',
  `SUM_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '统计标志',
  `START_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '开始时间',
  `CONFIRM_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '确认时间',
  `PRE_STR_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '预处理开始时间',
  `PRE_FIN_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '预处理结束时间',
  `PROC_STR_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批处理开始时间',
  `PROC_FIN_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批处理结束时间',
  `AFTER_STR_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '后处理开始时间',
  `AFTER_FIN_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '后处理结束时间',
  `FINISH_TM` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '批次完成时间',
  `CCY_CD` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '货币代码',
  `TOTAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '批次总笔数',
  `TOTAL_AMT` bigint(20) NOT NULL DEFAULT 0 COMMENT '批次总金额',
  `SUCC_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '成功笔数',
  `SUCC_AMT` bigint(20) NOT NULL DEFAULT 0 COMMENT '成功金额',
  `FAIL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT '失败笔数',
  `FAIL_AMT` bigint(20) NOT NULL DEFAULT 0 COMMENT '失败金额',
  `CALL_SRV` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '目标服务',
  `CALL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '调用的交易码',
  `DO_PRE_PROC` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否需要前处理',
  `PRE_SRV` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '前处理目标服务',
  `PRE_TX_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '前处理调用的交易码',
  `DO_AFTER_PROC` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否需要后处理',
  `AFTER_SRV` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '后处理目标服务',
  `AFTER_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '后处理调用的交易码',
  `DTL_TBL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '明细表名',
  `UPD_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '更新明细表额外数据标志',
  `UPD_FLDS` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新明细表额外数据字段列表',
  `APPLY_JRN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '申请日志号标志',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '摘要',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `APP_RSV` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '省平台编号',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点id',
  PRIMARY KEY (`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '批次信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf`;
CREATE TABLE `t_pub_btpinf`  (
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务名',
  `SQL_TEXT` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务SQL',
  `OBJ_SVR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务调用服务名',
  `OBJ_TXNCD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务调用交易码',
  `INTERVAL` bigint(20) NOT NULL DEFAULT 60 COMMENT '任务间隔时间[单位秒]',
  `LAST_TIM` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务最后执行时间',
  `MAX_TMS` bigint(20) NOT NULL DEFAULT 5 COMMENT '任务最大次数',
  `BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000' COMMENT '任务开始时间',
  `END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '235959' COMMENT '任务结束时间',
  `CONC_NUM` bigint(20) NOT NULL DEFAULT 1 COMMENT '任务并发数',
  `STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '任务状态[1:正常;0:停止;]',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '任务执行节点ID',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新操作员',
  `RMK` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态',
  `APP_NM` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '应用名',
  PRIMARY KEY (`NAME`) USING BTREE,
  UNIQUE INDEX `T_PUB_BTPINF_PK`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时联机批量配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_lckrec
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_lckrec`;
CREATE TABLE `t_pub_lckrec`  (
  `RECKEY` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '锁键值',
  `LCKTIM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '加锁时间',
  `TIMOUT` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '失效时间',
  `UPDFLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '更新标志',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '时间戳',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT '节点',
  PRIMARY KEY (`RECKEY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平台公共加锁记录表' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 's_pubsjrn', 4001, 999999999999, 1, 1000, 'Y', '', 'psm_region.psm', 'qryPsmOrdmbu025000000000004');

SET FOREIGN_KEY_CHECKS = 1;
