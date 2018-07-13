/*
Navicat MySQL Data Transfer

Source Server         : aaaa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : dbbigzhang

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-13 18:33:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbadmininfo`
-- ----------------------------
DROP TABLE IF EXISTS `tbadmininfo`;
CREATE TABLE `tbadmininfo` (
  `AdminId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(20) DEFAULT NULL,
  `IsSeniorAdmin` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbadmininfo
-- ----------------------------

-- ----------------------------
-- Table structure for `tbagency`
-- ----------------------------
DROP TABLE IF EXISTS `tbagency`;
CREATE TABLE `tbagency` (
  `AgencyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AgencyName` varchar(20) DEFAULT NULL,
  `FatherSupervisorId` int(10) DEFAULT NULL,
  PRIMARY KEY (`AgencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbagency
-- ----------------------------

-- ----------------------------
-- Table structure for `tbcustomerserver`
-- ----------------------------
DROP TABLE IF EXISTS `tbcustomerserver`;
CREATE TABLE `tbcustomerserver` (
  `CustomerServerId` int(11) NOT NULL,
  `CustomerServerName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerServerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcustomerserver
-- ----------------------------

-- ----------------------------
-- Table structure for `tbfinance`
-- ----------------------------
DROP TABLE IF EXISTS `tbfinance`;
CREATE TABLE `tbfinance` (
  `FinanceId` int(11) NOT NULL,
  `FinanceName` varchar(255) DEFAULT NULL,
  `FatherAdminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`FinanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbfinance
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmanager`
-- ----------------------------
DROP TABLE IF EXISTS `tbmanager`;
CREATE TABLE `tbmanager` (
  `ManagerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ManagerName` varchar(20) DEFAULT NULL,
  `IsRegionalManager` varchar(3) DEFAULT NULL,
  `FatherAdminId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ManagerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmanager
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmerchant`
-- ----------------------------
DROP TABLE IF EXISTS `tbmerchant`;
CREATE TABLE `tbmerchant` (
  `MerchantId` int(10) unsigned NOT NULL,
  `MerchantName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MerchantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmerchant
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmission`
-- ----------------------------
DROP TABLE IF EXISTS `tbmission`;
CREATE TABLE `tbmission` (
  `MissionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MissionCreateTime` datetime DEFAULT NULL,
  `MissionName` varchar(200) DEFAULT NULL,
  `MissionStage` varchar(10) DEFAULT NULL,
  `MissionAdoptStudentId` int(11) NOT NULL,
  `MissionCustomerServerId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`MissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmission
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmoney`
-- ----------------------------
DROP TABLE IF EXISTS `tbmoney`;
CREATE TABLE `tbmoney` (
  `MoneyId` int(11) NOT NULL,
  `IssueMoney` int(11) DEFAULT NULL,
  `ReturnMoney` int(11) DEFAULT NULL,
  `IssueMerchantId` int(11) DEFAULT NULL,
  `IssueFinanceId` int(11) DEFAULT NULL,
  `IssueAgencyId` int(11) DEFAULT NULL,
  `IssueTime` datetime DEFAULT NULL,
  `RecaptionTime` datetime DEFAULT NULL,
  `MoneyType` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`MoneyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmoney
-- ----------------------------

-- ----------------------------
-- Table structure for `tbpromotionalsupervisor`
-- ----------------------------
DROP TABLE IF EXISTS `tbpromotionalsupervisor`;
CREATE TABLE `tbpromotionalsupervisor` (
  `PromotionalSupervisorId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PromotionalSupervisorName` varchar(20) DEFAULT NULL,
  `FatherManagerId` int(10) DEFAULT NULL,
  PRIMARY KEY (`PromotionalSupervisorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbpromotionalsupervisor
-- ----------------------------

-- ----------------------------
-- Table structure for `tbstudents`
-- ----------------------------
DROP TABLE IF EXISTS `tbstudents`;
CREATE TABLE `tbstudents` (
  `StudentId` int(10) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(20) DEFAULT NULL,
  `FatherAgencyId` int(10) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbstudents
-- ----------------------------
