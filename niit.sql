/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : niit

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-08-30 10:36:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `coures_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数学');
INSERT INTO `course` VALUES ('2', '英语');
INSERT INTO `course` VALUES ('3', '政治');

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `mark_id` int(11) DEFAULT NULL,
  `couse_id` int(11) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  KEY `stuNum` (`stu_id`),
  KEY `courseId` (`couse_id`),
  CONSTRAINT `courseId` FOREIGN KEY (`couse_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `stuNum` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('1', '1', '80', '2');
INSERT INTO `mark` VALUES ('2', '3', '90', '4');

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `rollno` int(11) NOT NULL AUTO_INCREMENT,
  `
stu_name` varchar(255) NOT NULL DEFAULT '',
  `
gender` varchar(255) DEFAULT '',
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('1', '刘大', 'M');
INSERT INTO `stu` VALUES ('2', '刘二', 'F');
INSERT INTO `stu` VALUES ('3', '刘三', 'M');
INSERT INTO `stu` VALUES ('4', '刘四', 'F');
INSERT INTO `stu` VALUES ('5', '刘五', 'M');
