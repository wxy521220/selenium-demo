/*
 Navicat Premium Data Transfer

 Source Server         : CSDLON
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 172.27.110.211:3306
 Source Schema         : csdlon

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/09/2020 19:02:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_lon_acbal
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_acbal`;
CREATE TABLE `t_lon_acbal`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal',
  `OVD_PRIN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of more than 90 days',
  `BAL_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Bad debt balance',
  `PEN_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Penalty receivable',
  `COMP_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Compound interest receivable',
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid interest receivable',
  `PEN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid penalty receivable',
  `COMP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid compound receivable',
  `INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended interest receivable',
  `PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended penalty receivable',
  `COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended compound receivable',
  `INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet interest receivable',
  `PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet penalty receivable',
  `COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet compound receivable',
  `ACT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last action date',
  `INT_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest receivable',
  `FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee',
  `FEE_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee receivable',
  `FEE_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended fee receivable',
  `FEE_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet fee receivable',
  `LON_FEE_NO1` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO2` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO3` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO4` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO5` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO6` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO7` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax',
  `LON_TAX_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax receivable',
  `LON_TAX_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax Suspended',
  `LON_TAX_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax write off',
  `LON_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax',
  `LON_TAX_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax receivable',
  `LON_TAX_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax Suspended',
  `LON_TAX_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax write off',
  `LST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last accounting date',
  `LST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last days loan balance',
  `LST_OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of the last day',
  `LST_OVD_PRIN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of more than 90 days on the last day',
  `LST_BAL_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Bad debt balance on the last day',
  `LST_INT_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest receivable on the last day',
  `LST_PEN_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Penalty receivable on the last day',
  `LST_COMP_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Compound receivable on the last day',
  `LST_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid interest receivable on the last day',
  `LST_PEN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid penalty receivable on the last day',
  `LST_COMP_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid compound receivable on the last day',
  `LST_INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended interest receivable on the last day',
  `LST_PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended penalty receivable on the last day',
  `LST_COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended compound receivable on the last day',
  `LST_INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet interest receivable on the last day',
  `LST_PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet penalty receivable on the last day',
  `LST_COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet compound receivable on the last day',
  `LST_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last fee',
  `LST_FEE_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee receivable on the last day',
  `LST_FEE_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended fee receivable on the last day',
  `LST_FEE_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet fee receivable on the last day',
  `LST_LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax',
  `LST_LON_TAX_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last tax tax receivable',
  `LST_LON_TAX_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax Suspended',
  `LST_LON_TAX_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax write off',
  `LST_LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax',
  `LST_LON_TAX_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax receivable',
  `LST_LON_TAX_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax Suspended',
  `LST_LON_TAX_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax write off',
  `USE_CRED_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Credit limit used in the loan',
  `USE_COL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Collateral limit used in the loan',
  `TX_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Loan account transaction sequence',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `LST_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Last risk classification level',
  `LST_IFRS9_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFRS9_LVL|IFRS9 risk classification level',
  `LST_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Last risk level sequence',
  PRIMARY KEY (`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account balance table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_acbal
-- ----------------------------
INSERT INTO `t_lon_acbal` VALUES ('2050000000000015', '1', 'KES', 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 1, '20200909', '203409', '20200909203433+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca050000000000003', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000022', '1', 'KES', 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 0.00, 1, '20200910', '154700', '20200910154724+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca063000000000005', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000039', '1', 'KES', 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 1, '20200910', '155624', '20200910155645+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca150000000000001', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000046', '1', 'KES', 200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 0.00, 1, '20200910', '160742', '20200910160803+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca064000000000001', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000052', '1', 'KES', 2000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2000.00, 0.00, 1, '20200910', '163228', '20200910163250+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca065000000000001', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000069', '1', 'KES', 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 85.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50000.00, 0.00, 1, '20200910', '210751', '20200910210811+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca078000000000001', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000076', '1', 'KES', 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 170.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100000.00, 0.00, 1, '20200911', '164927', '20200911164948+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca088000000000001', ' ', ' ', ' ');
INSERT INTO `t_lon_acbal` VALUES ('2050000000000083', '1', 'KES', 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20180518', 170.00, 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, 0.00, 0.00, '20180518', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100000.00, 0.00, 1, '20200911', '171039', '20200911171103+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca089000000000002', ' ', ' ', ' ');

-- ----------------------------
-- Table structure for t_lon_acbalhis
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_acbalhis`;
CREATE TABLE `t_lon_acbalhis`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accounting date',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal',
  `OVD_PRIN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of more than 90 days',
  `BAL_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Bad debt balance',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`, `AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account balance history table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_acmain
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_acmain`;
CREATE TABLE `t_lon_acmain`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AC_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NM|Account name',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `BRC_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `APL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Loan application number',
  `APL_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|Loan application channel',
  `CONT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Contract number',
  `CRED_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_AC|Cred account',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `LON_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TYP|Loan type',
  `LON_USE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_USE_TYP|Uses of loan',
  `CRED_COL` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_COL|Credit column',
  `BUSS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business number',
  `TRI_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_NO|Third number',
  `TRI_BUS_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_BUS_NO|Third business number',
  `TRI_RATIO` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Ratio of third party',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `TAIL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Tail of amount',
  `LON_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Loan term',
  `LON_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Loan term unit',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `TERMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Terms',
  `TERM_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Terms number',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal rate',
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty rate',
  `COMP_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound rate',
  `INT_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of interest',
  `INT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_FLG|Interest flag',
  `ACCR_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_FLG|Accrual flag',
  `PEN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_FLG|Penalty flag',
  `PEN_ACCR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_ACCR|Penalty',
  `COMP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_FLG|Compound flag',
  `COMP_ACCR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_ACCR|Compound interest',
  `REPAY_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REPAY_MOD|Repay mode',
  `NXT_REPAY_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next repay date',
  `REPAY_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Repay amount',
  `ODUE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ODUE_FLG|Over flag',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `STP_INT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STP_INT|Stop',
  `STP_INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Stop date',
  `EXP_TMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'EXH_TMS|Expend number',
  `OD_DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Original due date',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  `LST_RSK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last Date of risk classification',
  `LON_MORPH` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_MORPH|Loan morphology',
  `LST_MORPH_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last date of loan morphology',
  `ACCR_NON` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_NON|Accrual loan or non-accrual loan',
  `LST_ACCR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last accrual date',
  `CLEAR_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLS_MOD|Clean mode',
  `CLS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Close date',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_AC_STS|Account status',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_STS|Status',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRT_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `UPD_DATE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `APL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Apply time',
  `ACCR_RSK_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|rate of withdrawal',
  `ACCR_RSK_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Amount of this withdrawal',
  `TOTACCR_RSK_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Total risk reserve',
  `ADD_TMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT_MIDDLE|Number of additional loans',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `GRP_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  `MNU_RSK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'MNU_RSK_FLG|Manual risk flg',
  `CLS_NOR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|classification upgrading to  normal  date',
  `WRT_OFF_FLG` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WRT_OFF_FLG|write-off flag',
  `IFRS9_LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|IFRS9 level last date',
  `OLD_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account Number in T24',
  `RST_TMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Reset times',
  `NEW_DUE_DAY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|The new overdue day',
  `RST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number.Refer to LMT_NO field of table T_LMT_LIMIT',
  `PRD_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_NM|Product name',
  `CLT_AGE_RNG` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_AGE_RNG|Previous 3 loans Maximum repayment Days',
  `CLT_CLS_LVL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_CLS_LVL|Collection risk levels',
  `CLT_CLS_AMT` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_CLS_AMT|Amount at the date of classification',
  `IFRS9_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFRS9_LVL|IFRS9 risk classification level',
  `STP_RSK_CLS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT 'EFF_FLG|Stop auto risk classification',
  `SGL_BAT_PRV_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'S' COMMENT 'SGL_BAT_PRV_FLG|The flag that  provision by  single account or batch.',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `LST_ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last advance date',
  `LST_ADV_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Last advance time',
  `LST_ADV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last advance amount',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `ADV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual disburse amount',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CLR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Clear date',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Risk level sequence',
  `LST_SEND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last send statement date',
  `LST_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Last risk classification level',
  `LST_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Last risk level sequence',
  `LST_IFRS9_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFRS9_LVL|IFRS9 risk classification level',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK | Remark',
  `WRITE_OFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Write off date',
  PRIMARY KEY (`AC_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_ACMAIN`(`APL_NO`, `APL_CNL`) USING BTREE,
  INDEX `N11_T_LON_ACMAIN`(`PRD_CD`) USING BTREE,
  INDEX `N10_T_LON_ACMAIN`(`INT_BGN_DT`) USING BTREE,
  INDEX `N12_T_LON_ACMAIN`(`LST_ACCR_DT`) USING BTREE,
  INDEX `N7_T_LON_ACMAIN`(`APL_DT`) USING BTREE,
  INDEX `N6_T_LON_ACMAIN`(`DUE_DT`) USING BTREE,
  INDEX `N5_T_LON_ACMAIN`(`ODUE_DT`) USING BTREE,
  INDEX `N8_T_LON_ACMAIN`(`PRD_SET_CD`, `PRD_CD`, `ADV_DT`, `STATUS`) USING BTREE,
  INDEX `N9_T_LON_ACMAIN`(`NXT_REPAY_DT`) USING BTREE,
  INDEX `N4_T_LON_ACMAIN`(`STATUS`) USING BTREE,
  INDEX `N13_T_LON_ACMAIN`(`PRD_CD`, `PRD_SET_CD`, `RSK_LVL_TYP`, `RSK_LVL`, `RSK_LVL_SEQ`) USING BTREE,
  INDEX `N1_T_LON_ACMAIN`(`USR_NO`) USING BTREE,
  INDEX `N3_T_LON_ACMAIN`(`ADV_DT`) USING BTREE,
  INDEX `N2_T_LON_ACMAIN`(`CI_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account basic information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_acmain
-- ----------------------------
INSERT INTO `t_lon_acmain` VALUES ('2050000000000015', '205', '**y', 110000000000041, 1100000000047, '100001', 'LNS7220200909000000000000001856', 'SSWR', '20200909000000000000000954', ' ', 'LONGEN01', 'G', ' ', ' ', '20200909000000000000282062', ' ', ' ', 0.00, 'KES', 1.00, 0.00, 31, 'D', '20200909', '20180618', '20180518', 1, 1, 0.000000, 0.000000, 0.000000, '20180518', '0', 'N', '0', 'N', 'N', 'N', '01', '20180618', 1.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200909', ' ', ' ', '20200909', '20200909203433+08', 'loan-account.lon_u_12', '20200909', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200909000000000000001601', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '203409', 1.00, 'SFC', 1.00, 'O!SSWR!loanApplymca050000000000003', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000022', '205', '**y', 110000000000041, 1100000000050, '100001', 'LNS7220200910000000000000003459', 'SSWR', '20200910000000000000001076', ' ', 'LONGEN01', 'G', ' ', ' ', '20200910000000000000304100', ' ', ' ', 0.00, 'KES', 20.00, 0.00, 31, 'D', '20200910', '20180618', '20180518', 1, 1, 0.000000, 0.000000, 0.000000, '20180518', '0', 'N', '0', 'N', 'N', 'N', '01', '20180618', 20.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200910', ' ', ' ', '20200910', '20200910154724+08', 'loan-account.lon_u_12', '20200910', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200910000000000000003354', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '154700', 20.00, 'SFC', 20.00, 'O!SSWR!loanApplymca063000000000005', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000039', '205', '********u', 110000000000042, 1100000000049, '100001', 'LNS7220200910000000000000003505', 'SSWR', '20200910000000000000001091', ' ', 'LONGEN01', 'G', ' ', ' ', '20200910000000000000307021', ' ', ' ', 0.00, 'KES', 100.00, 0.00, 31, 'D', '20200910', '20180618', '20180518', 1, 1, 0.000000, 0.000000, 0.000000, '20180518', '0', 'N', '0', 'N', 'N', 'N', '01', '20180618', 100.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200910', ' ', ' ', '20200910', '20200910155645+08', 'loan-account.lon_u_12', '20200910', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200910000000000000002151', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '155624', 100.00, 'SFC', 100.00, 'O!SSWR!loanApplymca150000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000046', '205', '6FFB4919EE050B65BFFC25A88FFC7013', 110000000000026, 1100000000028, '100001', 'LNS7220200910000000000000003561', 'SSWR', '20200910000000000000001099', ' ', 'LONGEN01', 'G', ' ', ' ', '20200910000000000000308016', ' ', ' ', 0.00, 'KES', 200.00, 0.00, 31, 'D', '20200910', '20180618', '20180518', 1, 1, 0.000000, 0.000000, 0.000000, '20180518', '0', 'N', '0', 'N', 'N', 'N', '01', '20180618', 200.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200910', ' ', ' ', '20200910', '20200910160803+08', 'loan-account.lon_u_12', '20200910', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200910000000000000003188', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '160742', 200.00, 'SFC', 200.00, 'O!SSWR!loanApplymca064000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000052', '205', '**y', 110000000000041, 1100000000052, '100001', 'LNS7220200910000000000000003669', 'SSWR', '20200910000000000000001116', ' ', 'LONGEN01', 'G', ' ', ' ', '20200910000000000000309027', ' ', ' ', 0.00, 'KES', 2000.00, 0.00, 31, 'D', '20200910', '20180618', '20180518', 1, 1, 0.000000, 0.000000, 0.000000, '20180518', '0', 'N', '0', 'N', 'N', 'N', '01', '20180618', 2000.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200910', ' ', ' ', '20200910', '20200910163250+08', 'loan-account.lon_u_12', '20200910', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200910000000000000003623', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '163228', 2000.00, 'SFC', 2000.00, 'O!SSWR!loanApplymca065000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000069', '205', '**y', 110000000000041, 1100000000054, '100001', 'LNS7220200910000000000000004895', 'SSWR', '20200910000000000000001287', ' ', 'LONGEN01', 'G', ' ', ' ', '20200910000000000000328017', ' ', ' ', 0.00, 'KES', 50000.00, 0.00, 31, 'D', '20200910', '20180618', '20180518', 1, 1, 0.020000, 0.000000, 0.000000, '20180518', '1', 'N', '0', 'N', 'N', 'N', '01', '20180618', 50085.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200910', ' ', ' ', '20200910', '20200910210811+08', 'loan-account.lon_u_12', '20200910', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200910000000000000004857', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '210751', 50000.00, 'SFC', 50000.00, 'O!SSWR!loanApplymca078000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000076', '205', '********u', 110000000000042, 1100000000055, '100001', 'LNS7220200911000000000000005508', 'SSWR', '20200911000000000000001390', ' ', 'LONGEN01', 'G', ' ', ' ', '20200911000000000000343033', ' ', ' ', 0.00, 'KES', 100000.00, 0.00, 31, 'D', '20200911', '20180618', '20180518', 1, 1, 0.020000, 0.000000, 0.000000, '20180518', '1', 'N', '0', 'N', 'N', 'N', '01', '20180618', 100170.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200911', ' ', ' ', '20200911', '20200911164948+08', 'loan-account.lon_u_12', '20200911', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200911000000000000005492', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '164927', 100000.00, 'SFC', 100000.00, 'O!SSWR!loanApplymca088000000000001', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');
INSERT INTO `t_lon_acmain` VALUES ('2050000000000083', '205', '********u', 110000000000042, 1100000000057, '100001', 'LNS7220200911000000000000005617', 'SSWR', '20200911000000000000001413', ' ', 'LONGEN01', 'G', ' ', ' ', '20200911000000000000344036', ' ', ' ', 0.00, 'KES', 100000.00, 0.00, 31, 'D', '20200911', '20180618', '20180518', 1, 1, 0.020000, 0.000000, 0.000000, '20180518', '1', 'N', '0', 'N', 'N', 'N', '01', '20180618', 100170.000000, '0', ' ', '0', ' ', 0, ' ', '00', '20180518', '00', ' ', '0', ' ', '1', ' ', '0', '1', ' ', ' ', '20200911', ' ', ' ', '20200911', '20200911171104+08', 'loan-account.lon_u_12', '20200911', 0.000000, 0.000000, 0.000000, 0, '0', ' ', 'N', ' ', 'NOR', ' ', ' ', 0, ' ', ' ', 'LNS0020200911000000000000005570', 'General loan', ' ', ' ', ' ', '11', 'N', 'S', 'MSHWARI', '20180518', '171039', 100000.00, 'SFC', 100000.00, 'O!SSWR!loanApplymca089000000000002', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', '20180518', '00', '1', '11', ' ', ' ');

-- ----------------------------
-- Table structure for t_lon_acmngjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_acmngjnl`;
CREATE TABLE `t_lon_acmngjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accounting date',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_CNL|Business channel',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Business channel journal number',
  `BRC_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Account organization',
  `LON_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TYP|Loan type',
  `LON_SRC` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_SRC|Loan source',
  `LON_USE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_USE_TYP|Uses of loan',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `CRED_COL` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_COL|Main guarantee mode',
  `BUSS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_NO|Business number',
  `APL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Loan application number',
  `RSL_LVL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Risk level type',
  `CONT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Contract number',
  `CONT_EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contract due date',
  `CI_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CI_NO|Client number',
  `CI_NM_CIPHER` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_CIPHER|Customer name cipher',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `CRED_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_AC|Cred account',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `LON_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Loan term',
  `TAIL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Tail of amount',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Loan date',
  `INT_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of interest',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `PAY_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_MOD|Loan payment mode',
  `PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_TYP|Loan payment type',
  `PAY_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal execution rate',
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty execution rate',
  `COMP_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound execution rate',
  `REPAY_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REPAY_MOD|Repay mode',
  `REPAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_TYP|Repayment type',
  `PAY_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_ORG_NO|Repayment transaction code',
  `REPAY_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Repayment account',
  `REPAY_AC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NM|Repayment account name',
  `REPAY_FRQ` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Repay frequency',
  `REPAY_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MONTH|Repayment month',
  `REPAY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|Repayment day',
  `TERMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Terms',
  `NXT_REPAY_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next repay date',
  `REPAY_ORDER` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_ORD|Repayment order',
  `AUTO_REPAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATO_RPY_TYP|Automatic repayment type',
  `AUTO_REPAY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_REPAY|Automatic repayment mode',
  `HOL_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'HOL_FLG|Repayment holiday handle flag',
  `PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_FLG|Early repayment flag',
  `CUR_AFT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CUR_AFT_FLG|Current period after period flag',
  `BREACH_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BREACH_MOD|Early repayment liquidated damages collection mode',
  `INT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_FLG|Interest flag',
  `ACCR_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_FLG|Accrual interest flag',
  `PEN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_FLG|Penalty interest flag',
  `PEN_ACCR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_ACCR|Penalty interest glag',
  `COMP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_FLG|Compound interest interest flag',
  `COMP_ACCR` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_ACCR|Compound interest settlement interest flag',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `OPER_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Operator',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'P' COMMENT 'TX_STS|Transaction status',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `CI_NM_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NAME_MASK|Customer name mask',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EXT_REF_NO|External business reference no',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BUS_TYP|Business type',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Transaction code',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_ACMNGJNL`(`SYS_CNL`, `REQ_JRN_NO`) USING BTREE,
  INDEX `N1_T_LON_ACMNGJNL`(`EXT_REF_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account management journal information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_acmngjnl
-- ----------------------------
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000030', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200909000000000000001856', ' ', 'G', ' ', ' ', '2050000000000015', ' ', '20200909000000000000282062', 'LNS7220200909000000000000001856', '00', '20200909000000000000000954', '99991230', '110000000000041', '03FF99E19D9E61EE81A572DC68913464', 1100000000047, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.000000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '0', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200909203428+08', 'loan-account.lon_u_12', '**y', 'O!SSWR!loanApplymca050000000000003', '20200909000000000000282062', '72', '7102', 'openAccount', '20200909', 'MSHWARI', '203409');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000043', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200910000000000000003459', ' ', 'G', ' ', ' ', '2050000000000022', ' ', '20200910000000000000304100', 'LNS7220200910000000000000003459', '00', '20200910000000000000001076', '99991230', '110000000000041', '03FF99E19D9E61EE81A572DC68913464', 1100000000050, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.000000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '0', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200910154720+08', 'loan-account.lon_u_12', '**y', 'O!SSWR!loanApplymca063000000000005', '20200910000000000000304100', '72', '7102', 'openAccount', '20200910', 'MSHWARI', '154700');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000050', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200910000000000000003505', ' ', 'G', ' ', ' ', '2050000000000039', ' ', '20200910000000000000307021', 'LNS7220200910000000000000003505', '00', '20200910000000000000001091', '99991230', '110000000000042', 'BA148F5F71C63421293877E1E0F3883A', 1100000000049, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.000000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '0', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200910155639+08', 'loan-account.lon_u_12', '********u', 'O!SSWR!loanApplymca150000000000001', '20200910000000000000307021', '72', '7102', 'openAccount', '20200910', 'MSHWARI', '155624');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000053', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200910000000000000003561', ' ', 'G', ' ', ' ', '2050000000000046', ' ', '20200910000000000000308016', 'LNS7220200910000000000000003561', '00', '20200910000000000000001099', '99991230', '110000000000026', '6FFB4919EE050B65BFFC25A88FFC7013', 1100000000028, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.000000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '0', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200910160759+08', 'loan-account.lon_u_12', '6FFB4919EE050B65BFFC25A88FFC7013', 'O!SSWR!loanApplymca064000000000001', '20200910000000000000308016', '72', '7102', 'openAccount', '20200910', 'MSHWARI', '160742');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000057', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200910000000000000003669', ' ', 'G', ' ', ' ', '2050000000000052', ' ', '20200910000000000000309027', 'LNS7220200910000000000000003669', '00', '20200910000000000000001116', '99991230', '110000000000041', '03FF99E19D9E61EE81A572DC68913464', 1100000000052, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.000000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '0', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200910163246+08', 'loan-account.lon_u_12', '**y', 'O!SSWR!loanApplymca065000000000001', '20200910000000000000309027', '72', '7102', 'openAccount', '20200910', 'MSHWARI', '163228');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000099', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200910000000000000004895', ' ', 'G', ' ', ' ', '2050000000000069', ' ', '20200910000000000000328017', 'LNS7220200910000000000000004895', '00', '20200910000000000000001287', '99991230', '110000000000041', '03FF99E19D9E61EE81A572DC68913464', 1100000000054, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.020000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '1', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200910210807+08', 'loan-account.lon_u_12', '**y', 'O!SSWR!loanApplymca078000000000001', '20200910000000000000328017', '72', '7102', 'openAccount', '20200910', 'MSHWARI', '210751');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000121', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200911000000000000005508', ' ', 'G', ' ', ' ', '2050000000000076', ' ', '20200911000000000000343033', 'LNS7220200911000000000000005508', '00', '20200911000000000000001390', '99991230', '110000000000042', 'BA148F5F71C63421293877E1E0F3883A', 1100000000055, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.020000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '1', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200911164943+08', 'loan-account.lon_u_12', '********u', 'O!SSWR!loanApplymca088000000000001', '20200911000000000000343033', '72', '7102', 'openAccount', '20200911', 'MSHWARI', '164927');
INSERT INTO `t_lon_acmngjnl` VALUES ('LON7220180518000000000000000130', '20180518', 'LNS', 'SSWR', ' ', 'LNS7220200911000000000000005617', ' ', 'G', ' ', ' ', '2050000000000083', ' ', '20200911000000000000344036', 'LNS7220200911000000000000005617', '00', '20200911000000000000001413', '99991230', '110000000000042', 'BA148F5F71C63421293877E1E0F3883A', 1100000000057, ' ', 'LONGEN01', '1', 'KES', 0.00, 0, 0.00, '20180518', '20180518', ' ', ' ', ' ', ' ', 0.020000, 0.000000, 0.000000, '01', ' ', ' ', ' ', ' ', ' ', '09', 1, 1, ' ', '1', '1', '1', ' ', 'Y', '2', '00', '1', 'Y', '0', 'Y', 'Y', 'Y', 'ApplyLoan', ' ', 'S', 'LON00000', 'SUCCESS', '20200911171058+08', 'loan-account.lon_u_12', '********u', 'O!SSWR!loanApplymca089000000000002', '20200911000000000000344036', '72', '7102', 'openAccount', '20200911', 'MSHWARI', '171039');

-- ----------------------------
-- Table structure for t_lon_acrprvjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_acrprvjnl`;
CREATE TABLE `t_lon_acrprvjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Provision Accrual date',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Risk classification level',
  `RSK_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Risk Classification Ratio',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Provision accrual amount',
  `TOT_PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total  accrual provision amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `EAD` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'EAD|EAD',
  `UN_USED_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'Un-used limit|Amount',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Risk level sequence',
  `LST_TOT_PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last provision accrual amount',
  `LST_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Last risk classification level',
  `LST_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Last risk level sequence',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_ACRPRVJNL`(`BAT_NO`, `TSK_ID`) USING BTREE,
  INDEX `NO1_T_LON_ACRPRVJNL`(`PRV_DT`) USING BTREE,
  INDEX `NO2_T_LON_ACRPRVJNL`(`PRD_CD`, `RSK_LVL`, `RSK_LVL_TYP`, `RSK_LVL_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Accrual provision record table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_actdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_actdtl`;
CREATE TABLE `t_lon_actdtl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `JRN_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'JRN_SEQ|Journal sequence',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accounting date',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account type',
  `AE_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AE_SEQ|Account sequence',
  `SEP_CD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEP_CD|Separate code',
  `DR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Debit amount',
  `CR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Credit amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `TX_DESC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DESC_LONG|Transaction description',
  `DC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DC_FLG|Debit and credit flag',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`, `JRN_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account accounting detail table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_actjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_actjnl`;
CREATE TABLE `t_lon_actjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORG_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CNL_TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_ORG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ORD_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ORD_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `POST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `POST_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `POST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `IGT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CHK_BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AE_NUM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `PERIOD` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REAL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RETRY_COUNT` bigint(20) NOT NULL DEFAULT 0,
  `MAX_RETRY_COUNT` bigint(20) NOT NULL DEFAULT 0,
  `POST_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AMT_JSON` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DSB_ACC_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_LON_ACTJNL`(`AC_DT`) USING BTREE,
  INDEX `N4_T_LON_ACTJNL`(`AC_DT`, `TX_STS`) USING BTREE,
  INDEX `NI3_T_LON_ACTJNL`(`REQ_BUS_NO`, `SYS_CNL`) USING BTREE,
  INDEX `NI2_T_LON_ACTJNL`(`ORG_JRN_NO`, `SYS_CNL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_actjnl
-- ----------------------------
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000031', 'LNS7220200909000000000000001856', 'LON7220180518000000000000000031', '20180518', '20200909', '203409', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca050000000000003', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 1.00, ' ', ' ', 'N', ' ', '20200909', '203409', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200909', 0, 0, ' ', ' ', ' ', '20200909203434+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"1.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"0.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000015', 1100000000047, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200909000000000000282062', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000044', 'LNS7220200910000000000000003459', 'LON7220180518000000000000000044', '20180518', '20200910', '154700', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca063000000000005', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 20.00, ' ', ' ', 'N', ' ', '20200910', '154700', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200910', 0, 0, ' ', ' ', ' ', '20200910154725+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"20.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"0.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000022', 1100000000050, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200910000000000000304100', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000051', 'LNS7220200910000000000000003505', 'LON7220180518000000000000000051', '20180518', '20200910', '155624', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca150000000000001', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 100.00, ' ', ' ', 'N', ' ', '20200910', '155624', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200910', 0, 0, ' ', ' ', ' ', '20200910155646+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"100.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"0.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000039', 1100000000049, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200910000000000000307021', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000054', 'LNS7220200910000000000000003561', 'LON7220180518000000000000000054', '20180518', '20200910', '160742', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca064000000000001', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 200.00, ' ', ' ', 'N', ' ', '20200910', '160742', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200910', 0, 0, ' ', ' ', ' ', '20200910160804+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"200.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"0.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000046', 1100000000028, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200910000000000000308016', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000058', 'LNS7220200910000000000000003669', 'LON7220180518000000000000000058', '20180518', '20200910', '163228', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca065000000000001', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 2000.00, ' ', ' ', 'N', ' ', '20200910', '163228', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200910', 0, 0, ' ', ' ', ' ', '20200910163251+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"2000.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"0.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000052', 1100000000052, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200910000000000000309027', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000100', 'LNS7220200910000000000000004895', 'LON7220180518000000000000000100', '20180518', '20200910', '210751', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca078000000000001', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 50085.00, ' ', ' ', 'N', ' ', '20200910', '210751', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200910', 0, 0, ' ', ' ', ' ', '20200910210811+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"50000.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"85.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000069', 1100000000054, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200910000000000000328017', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000122', 'LNS7220200911000000000000005508', 'LON7220180518000000000000000122', '20180518', '20200911', '164927', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca088000000000001', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 100170.00, ' ', ' ', 'N', ' ', '20200911', '164927', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200911', 0, 0, ' ', ' ', ' ', '20200911164949+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"100000.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"170.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000076', 1100000000055, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200911000000000000343033', '1', 'CBK', '300');
INSERT INTO `t_lon_actjnl` VALUES ('LON7220180518000000000000000131', 'LNS7220200911000000000000005617', 'LON7220180518000000000000000131', '20180518', '20200911', '171039', 'loanDisburse', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca089000000000002', 'SSWR', 'LON', '11', '72', '7194', 'loanDisburse', '100001', ' ', 100170.00, ' ', ' ', 'N', ' ', '20200911', '171039', '20180518', 'S', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '0', '201805', '20200911', 0, 0, ' ', ' ', ' ', '20200911171104+08', '{\"suspendedExciseDuty\":\"0\",\"restructureFees\":\"0\",\"suspendedInsuranceFees\":\"0\",\"VAT\":\"0\",\"maintenanceFees\":\"0\",\"pullPushFees\":\"0\",\"penaltyAccrualAmount\":\"0\",\"suspendedUnpayExciseDuty\":\"0\",\"principalAmount\":\"100000.00\",\"totalTax\":\"0.00\",\"deductionAmount\":\"0\",\"accessFees\":\"0\",\"suspendedFacilityFees\":\"0\",\"suspendedRolloverFees\":\"0\",\"exciseDuty\":\"0\",\"suspendedInterestAmount\":\"0\",\"insuranceFees\":\"0\",\"unpayTermExciseDuty\":\"0\",\"facilityFees\":\"0\",\"suspendedMaintenanceFees\":\"0\",\"suspendedVat\":\"0\",\"suspendedUnpayTermInterest\":\"0\",\"interestAmount\":\"170.00\",\"topUpFees\":\"0\",\"suspendedAccessFees\":\"0\",\"accrualAmount\":\"0\",\"totalAmt\":\"0\",\"totalFee\":\"0.00\",\"suspendedRestructureFees\":\"0\",\"suspendedTopUpFees\":\"0\",\"compoundInterestAmount\":\"0\",\"unpayTermInterest\":\"0\",\"rolloverFees\":\"0\",\"unpayTermVAT\":\"0\"}', '2050000000000083', 1100000000057, 'SFC', 'MSHWARI', 'LONGEN01', '0', '0', '00', '20200911000000000000344036', '1', 'CBK', '300');

-- ----------------------------
-- Table structure for t_lon_adjperd
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_adjperd`;
CREATE TABLE `t_lon_adjperd`  (
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
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`APL_JRN`) USING BTREE,
  INDEX `NI1_T_LON_ADJPERD`(`AC_NO`) USING BTREE,
  INDEX `NI2_T_LON_ADJPERD`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account term adjustment table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_batct
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_batct`;
CREATE TABLE `t_lon_batct`  (
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_TSK_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_TSK_TYP|Task type',
  `BAT_TSK_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Batch task  date',
  `TSK_FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|File name of batch task',
  `FIL_RCV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Batch task file recevied date',
  `TSK_BEG_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Begin time of batch time',
  `TSK_END_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Task expected end time ',
  `TOT_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|File total number of transaction',
  `TOT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|File total amount of transaction',
  `SUC_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of success',
  `FAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|The total number of failsure',
  `BAT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Batch task status',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_STS|Account status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`BAT_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_BATCT`(`BAT_TSK_TYP`, `BAT_TSK_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Day-end batch task control table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_batfilct
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_batfilct`;
CREATE TABLE `t_lon_batfilct`  (
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
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '﻿Day-end batch file task table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_cltclsjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_cltclsjnl`;
CREATE TABLE `t_lon_cltclsjnl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `CLT_AGE_RNG` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_AGE_RNG|Previous 3 loans Maximum repayment Days',
  `CLT_CLS_LVL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_CLS_LVL|Collection risk levels',
  `CLT_CLS_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'CLT_CLS_AMT|Amount at the date of classification',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_LON_CLTCLSJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Collection classification journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_cont
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_cont`;
CREATE TABLE `t_lon_cont`  (
  `CONT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Contract number',
  `CONT_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NM|Contract name',
  `CONT_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_TYP|Contract type',
  `CONT_DTL` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_DTL|Contract detail types',
  `SIGN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CON_SIGN_TYP|Contract signing method',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency ',
  `CONT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Contact Amount',
  `SIGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contact sign date',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contact effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contact expire date',
  `CONT_PTH` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_PATH|Contact File path',
  `FIL_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|Contact file name',
  `APL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Application number. Refer to the APL_NO field of the table T_LON_ACMAIN.',
  `APL_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Application date.Refer to the APL_TM field of the table T_LON_ACMAIN',
  `LMT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LMT_NO|Limit number.Refer to LMT_NO field of table T_LMT_LIMIT',
  `LMT_CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Limit creation date',
  `CRED_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_TYP|Credit type',
  `CRED_COL` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRED_COL|Guarantee method',
  `INDUSTRY` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INDUSTRY|the industry Loans to',
  `PURPOSE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PURPOSE|purpose of loan',
  `FUND_SRC` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_SRC|fund source',
  `FUND_MNG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MNG_FLG|fund manage',
  `DRW_STP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Withdrawal deadline',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of first disbursement',
  `LAW_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'NUM|Litigation time limit',
  `TOT_ADV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total loan  amount',
  `TOT_RPY_PRI` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total repayment principal',
  `TOT_RPY_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total repayment interest',
  `RPY_SCH_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_SCH_FLG|Repayment plan flag',
  `STP_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STP_FLG|Stop flag',
  `STP_RSN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'STP_RSN|Stop payment reason',
  `STP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Stop payment date',
  `CONT_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_STS|Contact status',
  `CLR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|contract clearance date',
  `MGR_NO` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MGR_NO|Account Manager',
  `CRT_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Operator who created the contract',
  `CRT_ORG` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|branch which created the contract.',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Operator who Update the contract.',
  `UPD_ORG` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Branch which Update the contract.',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `OLD_CONT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`CONT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contract Information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_cont
-- ----------------------------
INSERT INTO `t_lon_cont` VALUES ('20200909000000000000000954', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200909000000000000001856', '20200909', 'LNS0020200909000000000000001601', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca050000000000003', ' ', ' ', '20200909203427+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200910000000000000001076', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200910000000000000003459', '20200910', 'LNS0020200910000000000000003354', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca063000000000005', ' ', ' ', '20200910154718+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200910000000000000001091', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200910000000000000003505', '20200910', 'LNS0020200910000000000000002151', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca150000000000001', ' ', ' ', '20200910155637+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200910000000000000001099', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200910000000000000003561', '20200910', 'LNS0020200910000000000000003188', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca064000000000001', ' ', ' ', '20200910160759+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200910000000000000001116', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200910000000000000003669', '20200910', 'LNS0020200910000000000000003623', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca065000000000001', ' ', ' ', '20200910163245+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200910000000000000001287', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200910000000000000004895', '20200910', 'LNS0020200910000000000000004857', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca078000000000001', ' ', ' ', '20200910210806+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200911000000000000001390', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200911000000000000005508', '20200911', 'LNS0020200911000000000000005492', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca088000000000001', ' ', ' ', '20200911164942+08', 'loan-account.lon_u_12', '');
INSERT INTO `t_lon_cont` VALUES ('20200911000000000000001413', ' ', ' ', ' ', ' ', 'LONGEN01', 'KES', 0.00, ' ', ' ', ' ', ' ', ' ', 'LNS7220200911000000000000005617', '20200911', 'LNS0020200911000000000000005570', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 0.00, 0.00, 0.00, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O!SSWR!loanApplymca089000000000002', ' ', ' ', '20200911171057+08', 'loan-account.lon_u_12', '');

-- ----------------------------
-- Table structure for t_lon_conttem
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_conttem`;
CREATE TABLE `t_lon_conttem`  (
  `CONT_TEM_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_NO|Contract templet number',
  `CONT_TEM_NM` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FILE_NM|Contract templet  name',
  `CONT_TEM_CTT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_LONG|Contract templet content',
  `CONT_TEM_PLH` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CONT_PLH|Contract templet placeholder',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contact effective date',
  `EXP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Contact expire date',
  `CRT_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRT_ORG` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Created institution',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator',
  `UPD_ORG` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ORG_CD|Update institution',
  `REQ_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request id',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  PRIMARY KEY (`CONT_TEM_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account contract template table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_crbbatjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_crbbatjnl`;
CREATE TABLE `t_lon_crbbatjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `ID_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO|ID number',
  `MBL_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO|Mobile number',
  `SNT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update sent on',
  `CRB_BAT_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CRB_TU` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_LON_CRBBATJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Update CRB batch no. journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_crbbatjnl_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_crbbatjnl_copy1`;
CREATE TABLE `t_lon_crbbatjnl_copy1`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `SUR_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SUR_NM|surname',
  `FR_NM1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FR_NM|forename1',
  `FR_NM2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FR_NM|forename2',
  `BIR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of birth',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEX|sex',
  `NTLY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NATIONALITY|nationality',
  `FIL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|file type',
  `ID_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO|Identification Number',
  `REG_MBL_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Register mobile mask',
  `AC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account Product Type',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ORG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Original amount',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `ODUE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue amount',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `ARR_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|Days in arrears',
  `ARR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Instalments in arrears',
  `CLT_CLS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_CLS|Risk classification',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account status date',
  `RPY_PRD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_PRD|repayment period',
  `PMT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of payment',
  `ITL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Instalment amount',
  `LST_PMT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|latest payment amount',
  `SNT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update sent on',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  `CRB_BAT_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CRB_TU` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CRB batch flow sheet' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_crbbatjnl_copy1_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_crbbatjnl_copy1_copy1`;
CREATE TABLE `t_lon_crbbatjnl_copy1_copy1`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `SUR_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SUR_NM|surname',
  `FR_NM1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FR_NM|forename1',
  `FR_NM2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FR_NM|forename2',
  `BIR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of birth',
  `CI_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CI_NO|Client number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEX|sex',
  `NTLY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NATIONALITY|nationality',
  `FIL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|file type',
  `ID_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ID_NO|Identification Number',
  `REG_MBL_MASK` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO_MASK|Register mobile mask',
  `AC_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Account Product Type',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ORG_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Original amount',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `ODUE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue amount',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `ARR_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|Days in arrears',
  `ARR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Instalments in arrears',
  `CLT_CLS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLT_CLS|Risk classification',
  `AC_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `AC_STS_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Account status date',
  `RPY_PRD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_PRD|repayment period',
  `PMT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of payment',
  `ITL_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Instalment amount',
  `LST_PMT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|latest payment amount',
  `SNT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update sent on',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  `CRB_BAT_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CRB_TU` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CRB batch flow sheet' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_crbbatjnl_copy2
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_crbbatjnl_copy2`;
CREATE TABLE `t_lon_crbbatjnl_copy2`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `FST_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_NM|First name',
  `SUR_NM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SUR_NM|Surname',
  `FIL_TYP` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|File type',
  `FIL_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_NO|File number',
  `MBL_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MBL_NO|Mobile number',
  `DOB` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DOB|Dob',
  `SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SEX|Sex',
  `PRIN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Principal amount',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan balance',
  `CI_REF` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CI_REF|Customer ref',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ARR_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|Days in arrears',
  `NPL_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|Days npl',
  `AC_STS` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_STS|Account status',
  `CLS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CLS|Classification',
  `PRD_TYP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_TYP|Account product type',
  `SNT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update sent on',
  `CRB_BAT_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CRB_TU` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `CR_INF` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CR_INF|Credit info',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task id',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_dtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_dtl`;
CREATE TABLE `t_lon_dtl`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PAY_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_MOD|Loan payment mode',
  `TRU_PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_TYP|Trusted loan payment type',
  `TRU_PAY_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_ORG_NO|Trusted loan payment code',
  `TRU_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Trusted loan account number',
  `TRU_AC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NM|Trustee account name',
  `INT_BGN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_BGN_FLG|First interest date confirmation flag',
  `FST_INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|First interest date',
  `ACCR_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_MOD|Accrual mode',
  `ACCR_FRQ` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Accrual frequency',
  `ACCR_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MONTH|Accrual month',
  `ACCR_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|Accrual day',
  `NXT_ACCR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next accrual date',
  `ACCR_AUTO` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_AUTO|Auto accrual flag',
  `NXT_PEN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next penalty interest rate date',
  `NXT_COM_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next compound interest rate date',
  `REPAY_FRQ` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Repay frequency',
  `REPAY_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MONTH|Repay month',
  `REPAY_DAY` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAY|Repay day',
  `PAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_PAY_TYP|Repayment type',
  `PAY_CD` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'THD_ORG_NO|Repayment transaction code',
  `REPAY_AC` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Repayment account',
  `REPAY_AC_NM` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'AC_NM|Repayment account name',
  `GRC_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Repayment grace period days',
  `REPAY_ORDER` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RPY_ORD|Repayment order',
  `GRC_INT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IN_GRC_FLG|Interest type during the grace period',
  `AUTO_REPAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ATO_RPY_TYP|Automatic repayment type',
  `AUTO_REPAY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AUTO_REPAY|Automatic repayment mode',
  `PAY_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PAY_FLG|Early repayment flag',
  `CUR_AFT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CUR_AFT_FLG|Current period after period flag',
  `BREACH_MOD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BREACH_MOD|Liquidated damages collection mode',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `INT_SSP_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'INT_SSP_TYP|Interest suspension type',
  `NOR_REPAY_DAT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REPAY_DT_FLG|Normal repayment date mark',
  `NOR_REPAY_FRQ_NO` bigint(20) NOT NULL DEFAULT 1 COMMENT 'REPAY_FRQ_NO|Number of repayment periods',
  `NOR_FST_DET_MTH` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_DET_MTH|Determination method of initial repayment',
  `EQL_PRIN_INT_INIT_TRE_MTH` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EQL_PRIN_INT_INIT_TRE_MTH|Equal amount of principal and interest flag',
  `PROB_DFT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Probability of default',
  `GIVEN_DFT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Given default',
  `EPS_DFT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Exposure at default',
  `CRB_STS` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_STS|CRB check status returned by CRB',
  `CRB_BAT_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  `FST_DRW_DWN_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FST_DRW_DWN_FLG|Flag to indicate if the customer has ever taken an OD',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRB_TU` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CRB_BAT_NO|Batch number returned by CRB',
  PRIMARY KEY (`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account expansion information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_dtl
-- ----------------------------
INSERT INTO `t_lon_dtl` VALUES ('2050000000000015', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200909203433+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca050000000000003', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000022', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200910154724+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca063000000000005', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000039', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200910155645+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca150000000000001', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000046', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200910160803+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca064000000000001', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000052', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200910163250+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca065000000000001', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000069', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200910210811+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca078000000000001', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000076', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200911164948+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca088000000000001', ' ');
INSERT INTO `t_lon_dtl` VALUES ('2050000000000083', ' ', ' ', ' ', ' ', ' ', '2', '20180518', '1', ' ', '09', 1, '20180518', '1', '20180518', '20180518', 'D', '09', 1, ' ', ' ', ' ', '0', 0, '1', ' ', '1', '1', 'Y', ' ', '00', ' ', ' ', ' ', ' ', ' ', ' ', '20200911171103+08', 'loan-account.lon_u_12', '1', ' ', 31, ' ', ' ', 0.00, 0.00, 0.00, 'GOOD', ' ', ' ', 'O!SSWR!loanApplymca089000000000002', ' ');

-- ----------------------------
-- Table structure for t_lon_grprskclsjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_grprskclsjnl`;
CREATE TABLE `t_lon_grprskclsjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `CI_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CI_NO|customer number',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_GRPRSKCLSJNL`(`TSK_ID`, `BAT_NO`) USING BTREE,
  INDEX `NI1_T_LON_GRPRSKCLSJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Group risk classification journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_int
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_int`;
CREATE TABLE `t_lon_int`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `INT_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of interest',
  `INT_LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last interest date',
  `INT_LST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last interest amount',
  `INT_LST_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Last interest interest amount',
  `INT_TOT_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Total interest interest amount',
  `INT_LST_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last actual accrual interest amount',
  `PEN_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Penalty interest rate starts date',
  `PEN_LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last penalty interest rate starts date',
  `PEN_LST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last penalty interest amount',
  `PEN_LST_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Last penalty interest interest amount',
  `PEN_TOT_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Total penalty interest interest amount',
  `PEN_LST_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last actual accrual penalty interest amount',
  `COMP_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Compound interest rate start date',
  `COMP_LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last compound interest rate start date',
  `COMP_LST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last compound interest amount',
  `COMP_LST_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Last compound interest interest amount',
  `COMP_TOT_AMT` decimal(18, 6) NOT NULL DEFAULT 0.000000 COMMENT 'AMT_INT|Total compound interest interest amount',
  `COMP_LST_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last actual accrual compound interest amount',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account interest table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_int
-- ----------------------------
INSERT INTO `t_lon_int` VALUES ('2050000000000069', '20180518', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', ' ', ' ', '20200910', '20200910210807+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca078000000000001');
INSERT INTO `t_lon_int` VALUES ('2050000000000076', '20180518', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', ' ', ' ', '20200911', '20200911164943+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca088000000000001');
INSERT INTO `t_lon_int` VALUES ('2050000000000083', '20180518', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', 0.00, 0.000000, 0.000000, 0.00, ' ', ' ', ' ', ' ', '20200911', '20200911171058+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca089000000000002');

-- ----------------------------
-- Table structure for t_lon_intjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_intjnl`;
CREATE TABLE `t_lon_intjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accrual date',
  `INT_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual  interest amount',
  `PEN_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual penalty interest amount',
  `COMP_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual compound interest amount',
  `INT_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual interest  loan account balence',
  `PEN_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual penalty interest  loan account balence',
  `COMP_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual compound interest interest amount',
  `NOR_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal rate',
  `PEN_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty rate',
  `COMP_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound rate',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `ACCR_NON` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_NON|Accrual loan or non-accrual loan',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk level',
  `TAX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Excise duty',
  `PTR_ID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PTR_ID|Partner ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_INTJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account interest  accrual  record  table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_intsspjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_intsspjnl`;
CREATE TABLE `t_lon_intsspjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DT_TYP|Date type',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Transaction state',
  `DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|Days',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ACCR_NON` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_NON|Accrual loan or non-accrual loan',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_INTSSPJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan suspended journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_intstljnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_intstljnl`;
CREATE TABLE `t_lon_intstljnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `INT_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of interest',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `STL_INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of loan interest settlement',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual interest amount',
  `ACR_ADD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest subsidy on loans',
  `ACR_SUB_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Reverse interest on loans',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_INTSTLJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account settlement interest record table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_jnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_jnl`;
CREATE TABLE `t_lon_jnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0,
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `VERSION` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_INT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE1_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE2_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE3_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE4_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE5_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE6_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE7_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX1_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX2_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `OPP_BANK` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OPP_AC_NM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `INT_BGN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `COMP_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PEN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `COMP_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ATH_MNG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OLD_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_SEQ` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `TX_PRIN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `EXC_RPY_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `LES_RPY_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RVS_RES_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_CTG` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CRED_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ODUE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TERM_NO` bigint(20) NOT NULL DEFAULT 0,
  `TX_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `EXT_AMT1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `EXT_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REPAY_MTH` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PTR_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXT_REF_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE1_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE2_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE3_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE4_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE5_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE6_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE7_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX1_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX2_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ACT_TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `OUT_STD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `UN_PAY_TERMS` bigint(20) NOT NULL DEFAULT 0,
  `TX_TAX` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TRG_TX_NM` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RELIEF_INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RELIEF_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RELIEF_TAX_AMT1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RELIEF_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RELIEF_TAX_AMT2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Risk level sequence',
  `LST_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_LVL|Last risk classification level',
  `LST_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Last risk level sequence',
  `WRT_OFF_FLG` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'WRT_OFF_FLG|write-off flag',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_JNL`(`SYS_CNL`, `REQ_JRN_NO`) USING BTREE,
  INDEX `N1_T_LON_JNL`(`AC_NO`) USING BTREE,
  INDEX `NI3_T_LON_JNL`(`TX_DT`) USING BTREE,
  INDEX `N3_T_LON_JNL`(`EXT_REF_NO`) USING BTREE,
  INDEX `N2_T_LON_JNL`(`AC_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_jnl
-- ----------------------------
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000031', ' ', 'LNS', 'SSWR', 'LNS7220200909000000000000001856', '2050000000000015', 1100000000047, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200909', '203409', 'KES', 1.00, 1.00, 1.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.000000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200909203436+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 1.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200909000000000000282062', 'O!SSWR!loanApplymca050000000000003', '20200909000000000000282062', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000044', ' ', 'LNS', 'SSWR', 'LNS7220200910000000000000003459', '2050000000000022', 1100000000050, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200910', '154700', 'KES', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.000000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200910154728+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 20.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200910000000000000304100', 'O!SSWR!loanApplymca063000000000005', '20200910000000000000304100', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000051', ' ', 'LNS', 'SSWR', 'LNS7220200910000000000000003505', '2050000000000039', 1100000000049, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200910', '155624', 'KES', 100.00, 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.000000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200910155648+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 100.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200910000000000000307021', 'O!SSWR!loanApplymca150000000000001', '20200910000000000000307021', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000054', ' ', 'LNS', 'SSWR', 'LNS7220200910000000000000003561', '2050000000000046', 1100000000028, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200910', '160742', 'KES', 200.00, 200.00, 200.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.000000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200910160806+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 200.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200910000000000000308016', 'O!SSWR!loanApplymca064000000000001', '20200910000000000000308016', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 200.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000058', ' ', 'LNS', 'SSWR', 'LNS7220200910000000000000003669', '2050000000000052', 1100000000052, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200910', '163228', 'KES', 2000.00, 2000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.000000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200910163253+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 2000.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200910000000000000309027', 'O!SSWR!loanApplymca065000000000001', '20200910000000000000309027', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2000.00, 2000.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000100', ' ', 'LNS', 'SSWR', 'LNS7220200910000000000000004895', '2050000000000069', 1100000000054, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200910', '210751', 'KES', 50000.00, 50000.00, 50000.00, 0.00, 85.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.020000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200910210814+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 50000.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200910000000000000328017', 'O!SSWR!loanApplymca078000000000001', '20200910000000000000328017', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50085.00, 50085.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000122', ' ', 'LNS', 'SSWR', 'LNS7220200911000000000000005508', '2050000000000076', 1100000000055, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200911', '164927', 'KES', 100000.00, 100000.00, 100000.00, 0.00, 170.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.020000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200911164951+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 100000.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200911000000000000343033', 'O!SSWR!loanApplymca088000000000001', '20200911000000000000343033', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100170.00, 100170.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');
INSERT INTO `t_lon_jnl` VALUES ('LON7220180518000000000000000131', ' ', 'LNS', 'SSWR', 'LNS7220200911000000000000005617', '2050000000000083', 1100000000057, '1', 'KES', '72', '7102', 'loanDisburse', ' ', '20180518', '20200911', '171039', 'KES', 100000.00, 100000.00, 100000.00, 0.00, 170.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', ' ', ' ', '20180518', '20180618', 0.020000, 0.000000, 0.000000, ' ', ' ', ' ', 'S', 'N', 'N', ' ', ' ', ' ', ' ', 'LON00000', 'SUCCESS', '20200911171106+08', 'loan-account.lon_u_12', ' ', '1', 0.00, 0.00, 0.00, ' ', 'LONGEN01', '3', 100000.00, 0.00, '0', ' ', '0', 0, 0.00, 0.00, 0.00, 'ApplyLoan', ' ', '20200911000000000000344036', 'O!SSWR!loanApplymca089000000000002', '20200911000000000000344036', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100170.00, 100170.00, 1, 0.00, ' ', 'MSHWARI', 0.00, ' ', 0.00, ' ', 0.00, '0', '00', '1', '00', '1', 'NOR');

-- ----------------------------
-- Table structure for t_lon_mphjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_mphjnl`;
CREATE TABLE `t_lon_mphjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `ACCR_NON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'ACCR_NON|Accrual loan or non-accrual loan',
  `CVS_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Conversion interest amount',
  `CVS_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Conversion Penalty amount',
  `CVS_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Conversion Compound amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_MPHJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan morph transfer  record table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_mtnfeejrn
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_mtnfeejrn`;
CREATE TABLE `t_lon_mtnfeejrn`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Term adjustment journal number',
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
  `EXE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DATE|Execution date',
  `EXE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'TIME|Execution time',
  `VCH_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'VCH_NO|Voucher number',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LON_MTNFEEJRN`(`AC_NO`) USING BTREE,
  INDEX `N2_T_LON_MTNFEEJRN`(`USR_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan service maintain fee table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_mtnfeejrn_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_mtnfeejrn_copy1`;
CREATE TABLE `t_lon_mtnfeejrn_copy1`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Term adjustment journal number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Execution rate',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan balance',
  `MTN_TERM` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Maintain fee period',
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
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan service maintain fee table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_oriloaninf
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_oriloaninf`;
CREATE TABLE `t_lon_oriloaninf`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `REQ_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Request journal number',
  `CAP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CAP_TYP|Capital type',
  `CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Balance',
  `OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal',
  `OVD_PRIN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of more than 90 days',
  `BAL_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Bad debt balance',
  `PEN_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Penalty receivable',
  `COMP_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Compound interest receivable',
  `INT_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid interest receivable',
  `PEN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid penalty receivable',
  `COMP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid compound receivable',
  `INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended interest receivable',
  `PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended penalty receivable',
  `COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended compound receivable',
  `INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet interest receivable',
  `PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet penalty receivable',
  `COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet compound receivable',
  `ACT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last action date',
  `INT_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest receivable',
  `FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee',
  `FEE_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee receivable',
  `FEE_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended fee receivable',
  `FEE_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet fee receivable',
  `LON_FEE_NO1` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO2` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO3` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO4` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO5` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO6` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Fee type',
  `LON_FEE_NO7` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_NO|Fee no',
  `LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee',
  `LON_FEE_RECV7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee receivable',
  `LON_FEE_SUSP7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee Suspended',
  `LON_FEE_OFF7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan fee write off',
  `LON_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax',
  `LON_TAX_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax receivable',
  `LON_TAX_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax Suspended',
  `LON_TAX_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax write off',
  `LON_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax',
  `LON_TAX_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax receivable',
  `LON_TAX_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax Suspended',
  `LON_TAX_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan tax write off',
  `LST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last accounting date',
  `LST_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last days loan balance',
  `LST_OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of the last day',
  `LST_OVD_PRIN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Overdue principal of more than 90 days on the last day',
  `LST_BAL_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Bad debt balance on the last day',
  `LST_INT_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Interest receivable on the last day',
  `LST_PEN_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Penalty receivable on the last day',
  `LST_COMP_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Compound receivable on the last day',
  `LST_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid interest receivable on the last day',
  `LST_PEN_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid penalty receivable on the last day',
  `LST_COMP_NON` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Unpaid compound receivable on the last day',
  `LST_INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended interest receivable on the last day',
  `LST_PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended penalty receivable on the last day',
  `LST_COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended compound receivable on the last day',
  `LST_INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet interest receivable on the last day',
  `LST_PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet penalty receivable on the last day',
  `LST_COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet compound receivable on the last day',
  `LST_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last fee',
  `LST_FEE_RECV` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Fee receivable on the last day',
  `LST_FEE_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Suspended fee receivable on the last day',
  `LST_FEE_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Off-balance-sheet fee receivable on the last day',
  `LST_LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee',
  `LST_LON_FEE_RECV7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee receivable',
  `LST_LON_FEE_SUSP7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee Suspended',
  `LST_LON_FEE_OFF7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan fee write off',
  `LST_LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax',
  `LST_LON_TAX_RECV1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last tax tax receivable',
  `LST_LON_TAX_SUSP1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax Suspended',
  `LST_LON_TAX_OFF1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax write off',
  `LST_LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax',
  `LST_LON_TAX_RECV2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax receivable',
  `LST_LON_TAX_SUSP2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax Suspended',
  `LST_LON_TAX_OFF2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Last loan tax write off',
  `USE_CRED_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Credit limit used in the loan',
  `USE_COL_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Collateral limit used in the loan',
  `TX_SEQ` bigint(20) NOT NULL DEFAULT 0 COMMENT 'ORD_SEQ|Loan account transaction sequence',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`, `REQ_JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Original loan info table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_ovdjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_ovdjnl`;
CREATE TABLE `t_lon_ovdjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ODUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Over date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `OVD_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  overdue balence',
  `OVD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  current  overdue amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `GRC_DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Repayment grace period days',
  `PEN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Calculate penalty interest date',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_OVDJNL`(`BAT_NO`, `TSK_ID`) USING BTREE,
  INDEX `UI2_T_LON_OVDJNL`(`PEN_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account change to overdue journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_overintjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_overintjnl`;
CREATE TABLE `t_lon_overintjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accrual date',
  `INT_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual  interest amount',
  `PEN_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual penalty interest amount',
  `COMP_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual compound interest amount',
  `INT_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual interest  loan account balence',
  `PEN_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual penalty interest  loan account balence',
  `COMP_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual compound interest interest amount',
  `NOR_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal rate',
  `PEN_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty rate',
  `COMP_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound rate',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_OVERINTJNL`(`TSK_ID`, `BAT_NO`) USING BTREE,
  INDEX `NI1_T_LON_OVERINTJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Overdue stop interest journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_phs
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_phs`;
CREATE TABLE `t_lon_phs`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `TERM_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Term number',
  `DEL_KEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'DEL_KEY|Delete Key value',
  `TERM_BGN` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Begin date of term',
  `TERM_EXP` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Expiration date of term',
  `TERM_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term amount',
  `TERM_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term principal',
  `TERM_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term interest',
  `REPAY_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay principal',
  `REPAY_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay interest',
  `REPAY_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay penalty',
  `REPAY_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay compound',
  `TERM_CHG_CD1` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD2` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD3` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD4` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD5` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD6` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD7` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `TERM_CHG7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_CHG7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Term charge code',
  `TERM_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `REPAY_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Tax type',
  `TERM_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Tax amount',
  `REPAY_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay tax amount',
  `LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Final payment date',
  `TERM_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_STS|Term state',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `LST_PRIN_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Final return principal date',
  `LST_INT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Final return interest date',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `TERM_INT_LST_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Date of last withdrawal',
  `TERM_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Return penalty in the term',
  `TERM_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Return compound in the term',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `SUSP_CHG1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE1',
  `SUSP_CHG2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE2',
  `SUSP_CHG3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE3',
  `SUSP_CHG4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE4',
  `SUSP_CHG5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE5',
  `SUSP_CHG6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE6',
  `SUSP_CHG7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND CHARGE7',
  `SUSP_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND COMPOUND',
  `SUSP_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND PENALTY',
  `SUSP_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND INTEREST',
  `SUSP_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND TAX1',
  `SUSP_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|SUSPEND TAX2',
  PRIMARY KEY (`AC_NO`, `TERM_NO`, `DEL_KEY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan installment information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_phs
-- ----------------------------
INSERT INTO `t_lon_phs` VALUES ('2050000000000015', 1, '0', '20180518', '20180618', 1.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200909', '100001', ' ', '20200909', '20200909203433+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca050000000000003', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000022', 1, '0', '20180518', '20180618', 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200910', '100001', ' ', '20200910', '20200910154724+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca063000000000005', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000039', 1, '0', '20180518', '20180618', 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200910', '100001', ' ', '20200910', '20200910155645+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca150000000000001', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000046', 1, '0', '20180518', '20180618', 200.00, 200.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200910', '100001', ' ', '20200910', '20200910160803+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca064000000000001', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000052', 1, '0', '20180518', '20180618', 2000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200910', '100001', ' ', '20200910', '20200910163250+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca065000000000001', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000069', 1, '0', '20180518', '20180618', 50085.00, 50000.00, 85.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200910', '100001', ' ', '20200910', '20200910210811+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca078000000000001', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000076', 1, '0', '20180518', '20180618', 100170.00, 100000.00, 170.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200911', '100001', ' ', '20200911', '20200911164948+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca088000000000001', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `t_lon_phs` VALUES ('2050000000000083', 1, '0', '20180518', '20180618', 100170.00, 100000.00, 170.00, 0.00, 0.00, 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', 0.00, 0.00, ' ', '1', '100001', ' ', '20200911', '100001', ' ', '20200911', '20200911171103+08', ' ', ' ', 'loan-account.lon_u_12', ' ', 0.00, 0.00, 'O!SSWR!loanApplymca089000000000002', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ----------------------------
-- Table structure for t_lon_phsjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_phsjnl`;
CREATE TABLE `t_lon_phsjnl`  (
  `PHS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Sub journal number',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal number',
  `TERM_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Current period',
  `SYS_CNL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SYS_CNL|System channel',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_TX_FLG|Reversal transaction flag',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVS_FLG_TYP|Reversal transaction flag type',
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Sub journal number',
  `RVS_TERM_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'RVS_TERM_NO|Reversal term number',
  `OLD_PHS_JRN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|original journal number',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Loan account number',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accounting date',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Transaction date',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Transaction time',
  `TX_CCY` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CCY|Currency',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `REPAY_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay principal before this period',
  `REPAY_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay interest before this period',
  `REPAY_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay penalty before this period',
  `REPAY_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay compound before this period',
  `TERM_CHG_CD1` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `TERM_CHG_CD2` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `TERM_CHG_CD3` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Term charge',
  `TERM_CHG_CD4` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD5` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD6` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_CHG_CD7` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_CHG_CD|Term charge code',
  `REPAY_CHG7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Term charge code',
  `REPAY_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay charge',
  `TERM_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Tax type',
  `REPAY_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay tax amount',
  `TERM_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_STS|Term state',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `SUB_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Sub journal number',
  PRIMARY KEY (`PHS_JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_PHSJNL`(`JRN_NO`, `TERM_NO`) USING BTREE,
  INDEX `NI1_T_LON_PHSJNL`(`SUB_JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan installment journal information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_prvinf
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_prvinf`;
CREATE TABLE `t_lon_prvinf`  (
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `PRV_RSK_LVL` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Risk level sequence|PRM_SEQ',
  `PRV_RSK_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `CLT_PRV_RSK_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CLT_TOT_PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `CLT_LST_PRV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SGL_PRV_RSK_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `SGL_TOT_PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `SGL_LST_PRV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SUM_PRV_RSK_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `SUM_TOT_PRV_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `ACT_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `POST_AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LST_PRV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `PD` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'PD|PD',
  `MO_OF_PD` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'MO_OF_PD|MO_OF_PD',
  `LGD` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'LGD|LGD',
  `MO_OF_LGD` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'LGD_OF_PD|LGD_OF_PD',
  `CCF` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'CCF|CCF',
  `MO_OF_CCF` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'CCF_OF_PD|CCF_OF_PD',
  `EAD` decimal(18, 5) NOT NULL DEFAULT 0.00000 COMMENT 'EAD|EAD',
  `UN_USED_LMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'Un-used limit|AMT',
  PRIMARY KEY (`PRD_SET_CD`, `PRD_CD`, `RSK_LVL_TYP`, `PRV_RSK_LVL`, `RSK_LVL_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rat
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rat`;
CREATE TABLE `t_lon_rat`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account  number',
  `NOR_RATE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_RATE_TYP|Normal interest rate type',
  `NOR_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_FLT_FLG|Normal interest floating mode',
  `NOR_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Normal interest floating value',
  `NOR_BASE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_BASE|Normal benchmark interest flag',
  `NOR_RATE_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_RATE_ID|Normal benchmark interest rate code',
  `RATE_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RATE_FLG|Interest rate effective date determination flag',
  `PEN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_TYP|Penalty interest rate value method',
  `PEN_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_FLT_FLG|Penalty interest rate floating type',
  `PEN_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Penalty interest rate floating value',
  `PEN_BASE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_BASE|Penalty benchmark interest flag',
  `PEN_RATE_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_RATE_ID|Penalty benchmark interest rate code',
  `COMP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_TYP|Compound interest rate value type',
  `COMP_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_FLT_FLG|Compound interest rate floating type',
  `COMP_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Compound interest rate floating value',
  `RES_BAS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RES_BAS|Repricing benchmark',
  `RES_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RES_MOD|Repricing type',
  `RES_FRQ` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE_UNIT|Repricing period',
  `RES_MON` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MONTH|Repricing month',
  `RES_DAY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Repricing date',
  `NXT_RES_DAY` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Next repricing date',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `CHG_PEN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CHG_PEN_TYP|Charge penalty method ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account interest rate information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_rat
-- ----------------------------
INSERT INTO `t_lon_rat` VALUES ('2050000000000069', '2', '2', 0.0000, '01', ' ', '3', '2', ' ', 0.0000, ' ', ' ', '2', ' ', 0.0000, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200910', '20200910210807+08', 'loan-account.lon_u_12', ' ', 'O!SSWR!loanApplymca078000000000001');
INSERT INTO `t_lon_rat` VALUES ('2050000000000076', '2', '2', 0.0000, '01', ' ', '3', '2', ' ', 0.0000, ' ', ' ', '2', ' ', 0.0000, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911', '20200911164943+08', 'loan-account.lon_u_12', ' ', 'O!SSWR!loanApplymca088000000000001');
INSERT INTO `t_lon_rat` VALUES ('2050000000000083', '2', '2', 0.0000, '01', ' ', '3', '2', ' ', 0.0000, ' ', ' ', '2', ' ', 0.0000, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '20200911', '20200911171058+08', 'loan-account.lon_u_12', ' ', 'O!SSWR!loanApplymca089000000000002');

-- ----------------------------
-- Table structure for t_lon_rathis
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rathis`;
CREATE TABLE `t_lon_rathis`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `EFF_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Interest rate effective date',
  `NOR_RATE_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_RATE_TYP|Normal interest rate type',
  `NOR_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_FLT_FLG|Normal interest floating mode',
  `NOR_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Normal interest floating value',
  `NOR_BASE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_BASE|Normal benchmark interest flag',
  `NOR_RATE_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOR_RATE_ID|Normal benchmark interest rate code',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal execution rate',
  `PEN_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_TYP|Penalty interest rate value type',
  `PEN_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_FLT_FLG|Penalty interest rate floating type',
  `PEN_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Penalty interest rate floating value',
  `PEN_BASE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_BASE|Penalty benchmark interest flag',
  `PEN_RATE_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PEN_RATE_ID|Penalty benchmark interest rate code',
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty interest execution rate',
  `COMP_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_TYP|Compound interest rate value type',
  `COMP_FLT_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'COMP_FLT_FLG|Compound interest rate floating type',
  `COMP_FLT` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT 'NOR_FLT|Compound interest rate floating value',
  `COMP_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound interest execution rate',
  `CRT_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Create organization',
  `CRT_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_BRC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_ORG|Updated organization',
  `UPD_OPER` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Updated operator',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Updated date',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`, `EFF_DT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account interest rate information history table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_ratprcjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_ratprcjnl`;
CREATE TABLE `t_lon_ratprcjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `RES_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Interest rate reset date',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_RATPRCJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account rate repricing  record table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rcvrsktsk
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rcvrsktsk`;
CREATE TABLE `t_lon_rcvrsktsk`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RSK_JNL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_JNL_TYP|Risk journal type',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transcation status',
  `ORG_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Source risk level',
  `TGT_RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Tagrt risk level',
  `ORG_IFRS9_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFRS9_LVL|Source risk level',
  `TGT_IFRS9_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'IFRS9_LVL|Tagrt risk level',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `EFF_STR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effect start date',
  `EFF_END_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Effect end date',
  `EFF_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_FLG|Effect status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `ORG_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Original risk level sequence',
  `TGT_RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Target risk level sequence',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI2_T_LON_RCVRSKTSK`(`TX_STS`) USING BTREE,
  INDEX `NI1_T_LON_RCVRSKTSK`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Recover risk class task table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_repayjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_repayjnl`;
CREATE TABLE `t_lon_repayjnl`  (
  `SUB_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `BUS_TYP` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_CD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `AC_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `BAL` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_OVD_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PRIN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_INT` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_INT_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE1_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE2_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE3_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE4_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE5_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE6_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE7_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX1_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TX_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX2_OFF` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_TX_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_FLG_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `RVS_RES_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REPAY_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TERMS` bigint(20) NOT NULL DEFAULT 0,
  `TX_INT_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_PEN_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_COMP_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE1_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE2_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE3_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE4_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE5_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE6_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_FEE7_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX1_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `TX_TAX2_SUSP` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  INDEX `N3_T_LON_REPAYJNL`(`JRN_NO`) USING BTREE,
  INDEX `N2_T_LON_REPAYJNL`(`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_repaysum
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_repaysum`;
CREATE TABLE `t_lon_repaysum`  (
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `REPAY_PRIN` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan repayment principal',
  `REPAY_INT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan repayment interest',
  `REPAY_PENINT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan repayment penalty interest',
  `REPAY_COMPINT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan repayment compound interest',
  `REPAY_LON_FEE_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE3` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE4` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE5` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE6` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_FEE_TYP7` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FEE_TYP|Repayment fee type',
  `REPAY_LON_FEE7` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment fee',
  `REPAY_LON_TAX_TYP1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `REPAY_LON_TAX1` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment tax',
  `REPAY_LON_TAX_TYP2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TAX_TYP|Loan tax type',
  `REPAY_LON_TAX2` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repayment tax',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`AC_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account repayment amount information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_lon_repaysum
-- ----------------------------
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000015', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200909', '203409', '20200909', '203433', '20200909203433+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca050000000000003');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000022', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910', '154700', '20200910', '154725', '20200910154725+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca063000000000005');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000039', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910', '155624', '20200910', '155646', '20200910155646+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca150000000000001');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000046', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910', '160742', '20200910', '160804', '20200910160804+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca064000000000001');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000052', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910', '163228', '20200910', '163250', '20200910163250+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca065000000000001');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000069', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200910', '210751', '20200910', '210811', '20200910210811+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca078000000000001');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000076', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200911', '164927', '20200911', '164949', '20200911164949+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca088000000000001');
INSERT INTO `t_lon_repaysum` VALUES ('2050000000000083', 0.00, 0.00, 0.00, 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, ' ', 0.00, '20200911', '171039', '20200911', '171104', '20200911171104+08', 'loan-account.lon_u_12', 'O!SSWR!loanApplymca089000000000002');

-- ----------------------------
-- Table structure for t_lon_riskclassjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_riskclassjnl`;
CREATE TABLE `t_lon_riskclassjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accrual date',
  `INT_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual  interest amount',
  `PEN_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual penalty interest amount',
  `COMP_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual compound interest amount',
  `INT_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual interest  loan account balence',
  `PEN_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual penalty interest  loan account balence',
  `COMP_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual compound interest interest amount',
  `NOR_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal rate',
  `PEN_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty rate',
  `COMP_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound rate',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `CI_NO` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'CI_NO|customer number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Risk level sequence',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UI1_T_LON_RISKCLASSJNL`(`TSK_ID`, `BAT_NO`) USING BTREE,
  INDEX `NI1_T_LON_RISKCLASSJNL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan risk classification processing journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rolloverjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rolloverjnl`;
CREATE TABLE `t_lon_rolloverjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `ACR_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Accrual date',
  `INT_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual  interest amount',
  `PEN_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual penalty interest amount',
  `COMP_ACR_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Actual accrual compound interest amount',
  `INT_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual interest  loan account balence',
  `PEN_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual penalty interest  loan account balence',
  `COMP_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Accrual compound interest interest amount',
  `NOR_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal rate',
  `PEN_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty rate',
  `COMP_RAT` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Compound rate',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Task status',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_ROLLOVERJNL`(`TSK_ID`, `BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Rollover processing flow table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rskgrp
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rskgrp`;
CREATE TABLE `t_lon_rskgrp`  (
  `GRP_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Group risk classification code',
  `GRP_NM` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_NM|Group risk classification name',
  `GRP_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'GRP_LVL|Group level(01:User 02:Customer)',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
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
  PRIMARY KEY (`GRP_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Group risk class base information table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rskgrpdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rskgrpdtl`;
CREATE TABLE `t_lon_rskgrpdtl`  (
  `GRP_CD` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RSK_CD|Group risk classification code',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `RSK_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Risk amount',
  `RSK_PCT` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT 'PERCENT|Risk percent',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `CRE_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Create branch code for this piece of data',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `CRE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Create date',
  `CRE_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Create time',
  `UPD_BRC` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BRC_NO|Last update agency',
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
  PRIMARY KEY (`GRP_CD`, `PRD_CD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Group risk class detail information detail' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_rstjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_rstjnl`;
CREATE TABLE `t_lon_rstjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `RST_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Restruct loan account number',
  `NEW_AC_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'EFF_STS|Whether create new account',
  `LON_RST_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_RST_TYP|Loan restruct type',
  `DBS_AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Disburse account number',
  `DBS_AC_TYP` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_TYP|Disburse account type',
  `TERMS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'TERM|Terms',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `REPAY_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Repay amount',
  `TOP_UP_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Top up amount',
  `NOR_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Normal interest execution rate',
  `FAC_FEE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|facility fee',
  `TOP_UP_FEE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Top up fee',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `ADJ_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_ADJ_TYP|Adjust type',
  `RST_FEE` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Restruct fee',
  `LON_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan amount',
  `RST_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'LON_RST_STS|Restruct status',
  `PEN_RATE` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'RATE|Penalty interest execution rate',
  `RST_MOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RST_MOD|Restruct mode',
  `FEE_JSON` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'fee json|TEXT',
  `TAX_JSON` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'tax json|TEXT',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `LON_TERM_UN` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TERM_UN|Loan term unit',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan restruct journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_stainf
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_stainf`;
CREATE TABLE `t_lon_stainf`  (
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `PRD_SET_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_SET_CD|Product set code',
  `RSK_LVL` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RISK_LVL|Risk classification level',
  `RSK_LVL_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'RSK_LVL_TYP|Risk level type',
  `RSK_LVL_SEQ` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRM_SEQ|Risk level sequence',
  `SUM_LOAN_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total amount of loan',
  `OUT_STD_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total outstanding amount',
  `SUM_ODUE_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Total amount overdue',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Time sample',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node identifier',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK | Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `UPD_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Update date',
  `UPD_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Update time',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  PRIMARY KEY (`PRD_CD`, `PRD_SET_CD`, `RSK_LVL`, `RSK_LVL_TYP`, `RSK_LVL_SEQ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_statement
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_statement`;
CREATE TABLE `t_lon_statement`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `SEND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Send date',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'U' COMMENT 'TX_STS|Task status',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `LST_SEND_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Last send statement date',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `N1_T_LON_STATEMENT`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan account send statement table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_writeoffdtl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_writeoffdtl`;
CREATE TABLE `t_lon_writeoffdtl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `FIL_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'FIL_TYP|Batch file type 00:refound insurance fee file',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JNR_NO|Unique key of task file refers to task ID',
  `TX_TYP` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_TYP|Transaction type',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `TX_AMT` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Transaction amount',
  `TX_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_STS|Transaction status',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD|Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Message information',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `RVW_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_STS|Review status',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Inputer operator',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Checker operator',
  `ATH_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Authorizer operator',
  `CAV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Write-off date',
  `CAV_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Write-off time',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `INP_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Inputter time sample',
  `ATH_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Checker time sample',
  `CHK_TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Authorizer time sample',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  INDEX `NI1_T_LON_WRITEOFFDTL`(`BAT_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Write-off file detail table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_writeoffjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_writeoffjnl`;
CREATE TABLE `t_lon_writeoffjnl`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DT_TYP|Date type',
  `RVW_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_STS|Review status',
  `DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|days',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE,
  UNIQUE INDEX `UID1_T_LON_WRITEOFFJNL`(`BAT_NO`, `TSK_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan write-off journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_writeoffjnl_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_writeoffjnl_copy1`;
CREATE TABLE `t_lon_writeoffjnl_copy1`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DT_TYP|Date type',
  `RVW_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_STS|Review status',
  `DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|days',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan write-off journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_writeoffjnl_copy2
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_writeoffjnl_copy2`;
CREATE TABLE `t_lon_writeoffjnl_copy2`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DT_TYP|Date type',
  `RVW_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_STS|Review status',
  `DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|days',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan write-off journal table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lon_writeoffjnl_copy3
-- ----------------------------
DROP TABLE IF EXISTS `t_lon_writeoffjnl_copy3`;
CREATE TABLE `t_lon_writeoffjnl_copy3`  (
  `JRN_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO|Journal No',
  `BAT_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'BAT_NO|Batch No',
  `TSK_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JRN_NO| Task ID',
  `AC_NO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'AC_NO|Account number',
  `PRD_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'PRD_CD|Product code',
  `USR_NO` bigint(20) NOT NULL DEFAULT 0 COMMENT 'USR_NO|User number',
  `DUE_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Due date',
  `ADV_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Advance date',
  `LON_BAL` decimal(18, 2) NOT NULL DEFAULT 0.00 COMMENT 'AMT|Loan  account  balence',
  `DT_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DT_TYP|Date type',
  `RVW_STS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RVW_STS|Review status',
  `DAYS` bigint(20) NOT NULL DEFAULT 0 COMMENT 'DAYS|days',
  `RMK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `CRT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'DATE|Created date',
  `CRT_TM` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TIME|Created time',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|timestamp',
  `RTY_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Retries count',
  `REQ_BUS_NO` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_BUS_NO|Request business number',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `MSG_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_CD | Message code',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF | Message information',
  PRIMARY KEY (`JRN_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loan write-off journal table' ROW_FORMAT = Dynamic;

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
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'node',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'timestamp',
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
INSERT INTO `t_pub_btpinf` VALUES ('BAT_TSK_STATISTICS_TEMP', 'SELECT BAT_NO ,BAT_TSK_TYP TSK_TYP  from T_LON_BATCT  WHERE BAT_STS  IN (\'I\',\'P\') AND BAT_NO = \'${bat_no}\'', 'lonportfolio', 'batTskStatistics', 2, '1586765394', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task result calculate', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CHANGE_OVERDUE_TEMP', 'SELECT jnl.BAT_NO,jnl.TSK_ID,jnl.AC_NO,jnl.TX_STS,jnl.RTY_CNT,jnl.JRN_NO,jnl.DUE_DT FROM T_LON_OVDJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleChangeOverdue', 2, '1586577942', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task change overdue ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CLT_CLS_TEMP', 'SELECT jnl.JRN_NO FROM T_LON_CLTCLSJNL jnl,T_LON_BATFILCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND jnl.TX_STS = \'U\' AND bat.BAT_STS = \'P\'', 'lonportfolio', 'singleCollectClassificat', 5, '1590121178', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Collection classification', '20200522121938+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CRB_BATCH_TEMP', 'SELECT JRN_NO FROM T_LON_CRBBATJNL jnl, T_LON_BATCT bat WHERE jnl.BAT_NO = bat.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleCRBBath', 5, '1586832839', 1000, '000000', '235959', 1, '0', ' ', ' ', 'CRB bath', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('CRB_BATCH_TEMP_FILE', 'SELECT JRN_NO FROM T_LON_CRBBATJNL jnl, T_LON_BATFILCT bat WHERE jnl.BAT_NO = bat.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleCRBBath', 5, '1588146768', 1000, '000000', '235959', 1, '0', ' ', ' ', 'CRB bath', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('GROUP_CLASSIFICATION_TEMP', 'SELECT CI_NO,JRN_NO,TX_STS,RTY_CNT FROM T_LON_GRPRSKCLSJNL WHERE TX_STS = \'U\' AND BAT_NO = \'${bat_no}\'', 'lonportfolio', 'singleGroupClassification', 5, '1586594703', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task group classification ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('INTEREST_ACCRUAL_TEMP', 'SELECT jrn_no, ac_no, acr_dt FROM T_LON_INTJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleInterestAccrual', 2, '1591325171', 1000, '000000', '235959', 10, '0', 'loan-account.lon.s_0_16', ' ', 'Interest accrual process', '20200605054613+03', 'U', 'PUB', 'loan-account.lon.s_0_16', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('INTEREST_RATE_REPRICING_TEMP', 'SELECT jnl.* FROM T_LON_RATPRCJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleInterestRateRepricing', 5, '1585419478', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task interest rate repricing', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('INTEREST_SUSPEND_TEMP', 'SELECT jnl.JRN_NO FROM T_LON_INTSSPJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleInterestSuspend', 2, '1585385317', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task interest suspend ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('RISK_CLASSIFICATION_TEMP', 'select jnl.jrn_no req_jrn_no, jnl.ac_no, jnl.prd_cd, \'1\' rsk_jnl_type, jnl.tx_sts tx_status from T_LON_RISKCLASSJNL jnl, T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND TX_STS = \'U\'', 'lonportfolio', 'singleRiskClassification', 2, '1586570308', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task risk classification ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('RISK_CLASS_FOR_DUE_SETTLED', 'select jnl.jrn_no req_jrn_no, jnl.ac_no, jnl.prd_cd, \'2\' rsk_jnl_type, jnl.tx_sts tx_status from T_LON_RISKCLASSJNL jnl WHERE jnl.TX_STS = \'U\' and tsk_id = \' \'', 'lonportfolio', 'singleRiskClassification', 2, '1599822230', 1000, '000000', '235959', 1, '1', 'loan-account.lon_u_12', ' ', 'Risk class for due settled', '20200911190350+08', 'U', 'PUB', 'loan-account.lon_u_12', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('RISK_CLASS_FOR_RECOVER', 'select jrn_no req_jrn_no, ac_no, prd_cd, rsk_jnl_typ rsk_jnl_type, org_rsk_lvl src_rsk_lvl, org_rsk_lvl_seq src_rsk_lvl_seq, tgt_rsk_lvl, tgt_rsk_lvl_seq, org_ifrs9_lvl src_ifrs9_lvl, tgt_ifrs9_lvl, tx_sts tx_status from T_LON_RCVRSKTSK where tx_sts = \'I\' and (select cur_ac_dt from t_pub_rsts)>= eff_str_dt and (select cur_ac_dt from t_pub_rsts)<= eff_end_dt', 'lonportfolio', 'singleRiskClassification', 120, '1599822208', 1000, '000000', '235959', 1, '1', 'loan-account.lon_u_12', ' ', 'Risk class for recover', '20200911190328+08', 'U', 'PUB', 'loan-account.lon_u_12', 'N', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SEND_STATEMENT_TEMP', 'SELECT jnl.AC_NO,jnl.JRN_NO,jnl.TX_STS,jnl.PRD_CD,jnl.SEND_DT,jnl.LST_SEND_DT FROM T_LON_STATEMENT jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND  jnl.TX_STS=\'U\'', 'lonportfolio', 'singleSendStatement', 5, '1590584337', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task send statement ', '20200527205858+08', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SINGLE_MARKLOAN_WRITEOFF_TEMP', 'SELECT jnl.JRN_NO FROM T_LON_WRITEOFFJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.RVW_STS = \'U\'', 'lonportfolio', 'singleMarkLoanWriteoff', 2, '1586860899', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task mark loan write-off', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('SINGLE_WRITEOFF_FIL_TEMP', 'SELECT dtl.AC_NO,dtl.RVW_FLG,dtl.JRN_NO FROM T_LON_WRITEOFFDTL dtl,T_LON_BATFILCT bat WHERE bat.BAT_NO = dtl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND dtl.TX_STS = \'U\' AND bat.BAT_STS = \'P\'', 'lonmbu', 'loanWriteOff', 5, '1586916055', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task file write-off', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('STOP_INTEREST_TEMP', 'SELECT jnl.AC_NO,jnl.PRD_CD,jnl.TX_STS,jnl.JRN_NO FROM T_LON_OVERINTJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleStopInterest', 5, '1586868271', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task stop interest ', ' ', 'U', 'PUB', ' ', 'T', ' ');
INSERT INTO `t_pub_btpinf` VALUES ('TERMS_LOANDUE_TEMP', 'SELECT jnl.AC_NO,jnl.BAT_NO,jnl.USR_NO,jnl.PRD_CD,jnl.JRN_NO,jnl.STL_INT_DT FROM T_LON_INTSTLJNL jnl,T_LON_BATCT bat WHERE bat.BAT_NO = jnl.BAT_NO AND bat.BAT_NO = \'${bat_no}\' AND bat.BAT_STS = \'P\' AND jnl.TX_STS = \'U\'', 'lonportfolio', 'singleTermsLoanDue', 2, '1586577942', 1000, '000000', '235959', 1, '0', ' ', ' ', 'Batch task terms loan due process ', ' ', 'U', 'PUB', ' ', 'T', ' ');

-- ----------------------------
-- Table structure for t_pub_btpinf_bk200218
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_bk200218`;
CREATE TABLE `t_pub_btpinf_bk200218`  (
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
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf_bk200219
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_bk200219`;
CREATE TABLE `t_pub_btpinf_bk200219`  (
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
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf_bk20021901
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_bk20021901`;
CREATE TABLE `t_pub_btpinf_bk20021901`  (
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
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_btpinf_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_copy1`;
CREATE TABLE `t_pub_btpinf_copy1`  (
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
-- Table structure for t_pub_btpinf_eod_02
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_btpinf_eod_02`;
CREATE TABLE `t_pub_btpinf_eod_02`  (
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
-- Table structure for t_pub_jobshardinf
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_jobshardinf`;
CREATE TABLE `t_pub_jobshardinf`  (
  `JOB_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JOB_ID|Job ID',
  `APP_NM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PUB' COMMENT 'APP_NM|Application name',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JOB_NM|Job name',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SQL_TEXT|SQL statement',
  `OBJ_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'C' COMMENT 'SVR_TYP|Target type (C-component, T-transaction)',
  `OBJ_SVR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SVR_NM|Target service',
  `OBJ_TXNCD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TX_CD|Target transaction',
  `SHARD_CNT` bigint(20) NOT NULL DEFAULT 1 COMMENT 'CNT|Number of shards',
  `SHARD_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'SHARD_KEY|Shards key',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'RMK|Remark',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JOB_EFF_FLG|Status (0-invalid, 1-valid)',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Create operator',
  `CRE_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Create timestamp',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'OPER_NO|Update operator',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `EXEC_NODE` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Execute node',
  `LOG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT 'FLG|Log flg'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Task Shard Information Table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pub_jobshardinf
-- ----------------------------
INSERT INTO `t_pub_jobshardinf` VALUES ('Provision', 'LON', 'Provision', 'SELECT * FROM T_LON_ACRPRVJNL WHERE BAT_NO = ${batNo} and TX_STS not IN (\'S\',\'F\')', 'C', 'provisionCompute', ' ', 200, 'AC_NO', 'Provision batch process', '1', 'T00001', '20200108121212', 'T00001', '20200108121212', '20200108121212', 'loan-account.loan-account_1', ' ', '1');

-- ----------------------------
-- Table structure for t_pub_jobshardinf_eod_01
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_jobshardinf_eod_01`;
CREATE TABLE `t_pub_jobshardinf_eod_01`  (
  `JOB_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `APP_NM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SQL_TEXT` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_TYP` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_SVR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `OBJ_TXNCD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `SHARD_CNT` bigint(20) NOT NULL,
  `SHARD_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `CRE_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `UPD_OPR` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `EXEC_NODE` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `LOG_FLG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pub_jobshardjnl
-- ----------------------------
DROP TABLE IF EXISTS `t_pub_jobshardjnl`;
CREATE TABLE `t_pub_jobshardjnl`  (
  `EXEC_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `JOB_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'JOB_ID|Job ID',
  `SEQ_NO` bigint(20) NOT NULL COMMENT 'BAT_SEQ|Serial number',
  `APP_NM` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'APP_NM|Application name',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT 'SHARD_JOB_STS|Status (I-initialization, P-processing, S-success, F-failure)',
  `MSG_INF` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'MSG_INF|Error message',
  `STR_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Starting time',
  `END_SMP` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|End Time',
  `EXEC_NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Execution node',
  `RERUN_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Reruns times',
  `TM_SMP` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TM_SMP|Timestamp',
  `REQ_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'REQ_ID|Request ID',
  `NOD_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'NOD_ID|Node ID',
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Name',
  `BUS_KEY` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'Business key',
  `TOTAL_CNT` bigint(20) NOT NULL DEFAULT 0 COMMENT 'CNT|Total number',
  `PARAMS` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' COMMENT 'TEXT_MIDDLE|Batch job params'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Task Shard journal table' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_LONACNO', 10, 999999999999, 1, 1, 'N', '20200911171057+08', ' ', 'O!SSWR!loanApplymca089000000000002');
INSERT INTO `t_pub_sequence` VALUES ('999999', 'S_PUBSJRN', 161, 9999999999, 0, 1, 'Y', '20200911190202+08', ' ', 'loan-account.lon_u_12');

-- ----------------------------
-- View structure for t_pub_rsts
-- ----------------------------
DROP VIEW IF EXISTS `t_pub_rsts`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `t_pub_rsts` AS select `csdacm`.`t_pub_rsts`.`SYS_VER_NO` AS `SYS_VER_NO`,`csdacm`.`t_pub_rsts`.`SYS_STUS` AS `SYS_STUS`,`csdacm`.`t_pub_rsts`.`WIN_MODE` AS `WIN_MODE`,`csdacm`.`t_pub_rsts`.`WIN_STS` AS `WIN_STS`,`csdacm`.`t_pub_rsts`.`WIN_SW_TM` AS `WIN_SW_TM`,`csdacm`.`t_pub_rsts`.`WIN_DT1` AS `WIN_DT1`,`csdacm`.`t_pub_rsts`.`WIN_DT2` AS `WIN_DT2`,`csdacm`.`t_pub_rsts`.`WIN_BEG_TM` AS `WIN_BEG_TM`,`csdacm`.`t_pub_rsts`.`WIN_END_TM` AS `WIN_END_TM`,`csdacm`.`t_pub_rsts`.`LAST_AC_DT` AS `LAST_AC_DT`,`csdacm`.`t_pub_rsts`.`LAST_AC_DT_FLG` AS `LAST_AC_DT_FLG`,`csdacm`.`t_pub_rsts`.`LAST_AC_DT2` AS `LAST_AC_DT2`,`csdacm`.`t_pub_rsts`.`LAST_AC_DT2_FLG` AS `LAST_AC_DT2_FLG`,`csdacm`.`t_pub_rsts`.`CUR_AC_DT` AS `CUR_AC_DT`,`csdacm`.`t_pub_rsts`.`CUR_AC_DT_FLG` AS `CUR_AC_DT_FLG`,`csdacm`.`t_pub_rsts`.`NEXT_AC_DT` AS `NEXT_AC_DT`,`csdacm`.`t_pub_rsts`.`NEXT_AC_DT_FLG` AS `NEXT_AC_DT_FLG`,`csdacm`.`t_pub_rsts`.`AC_DT_SW_FLG` AS `AC_DT_SW_FLG`,`csdacm`.`t_pub_rsts`.`LAST_UPD_DT` AS `LAST_UPD_DT`,`csdacm`.`t_pub_rsts`.`LAST_UPD_TM` AS `LAST_UPD_TM`,`csdacm`.`t_pub_rsts`.`LAST_UPD_OPR` AS `LAST_UPD_OPR`,`csdacm`.`t_pub_rsts`.`TM_SMP` AS `TM_SMP`,`csdacm`.`t_pub_rsts`.`NOD_ID` AS `NOD_ID`,`csdacm`.`t_pub_rsts`.`REQ_ID` AS `REQ_ID` from `csdacm`.`t_pub_rsts`;

SET FOREIGN_KEY_CHECKS = 1;
