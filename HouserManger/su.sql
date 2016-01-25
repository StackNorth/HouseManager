/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : su

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-01-25 11:53:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user` varchar(32) NOT NULL,
  `password` varchar(32) default NULL,
  `loginNum` int(11) NOT NULL default '0',
  `level` int(11) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '123456', '0', '1');
INSERT INTO `admin` VALUES ('su', '123456', '0', '1');
INSERT INTO `admin` VALUES ('dt', '123456', '0', '1');

-- ----------------------------
-- Table structure for `home`
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `roomid` varchar(32) NOT NULL,
  `address` varchar(32) default NULL,
  `area` varchar(32) default NULL,
  `type` varchar(32) default NULL,
  `mode` varchar(32) default NULL,
  `mark` int(11) default '0',
  PRIMARY KEY  (`roomid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('1001', '阿萨德发好看就啊哈', '120', '两室一厅', 'rent', '1');
INSERT INTO `home` VALUES ('1002', '大师傅', '120', '大师傅', 'rent', '0');
INSERT INTO `home` VALUES ('1003', '阿萨德发卡机回复', '124', '第三季啊付款就好', 'rent', '0');
INSERT INTO `home` VALUES ('156', '123', '123', '132', '出租', '1');
INSERT INTO `home` VALUES ('101', '大声叫妇科', '120', '阿斯蒂芬', '出售', '0');
INSERT INTO `home` VALUES ('1111', '阿萨德', '120', '两室一厅', '出租', '0');
INSERT INTO `home` VALUES ('111111', '111', '111', '111', '出租', '0');

-- ----------------------------
-- Table structure for `logg`
-- ----------------------------
DROP TABLE IF EXISTS `logg`;
CREATE TABLE `logg` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(32) default NULL,
  `page` text,
  `time` varchar(64) default NULL,
  `browseinfo` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logg
-- ----------------------------
INSERT INTO `logg` VALUES ('1', 'admin', '/HouserMange/Main.php', '2015-11-28 17:08:54', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('2', 'admin', '/HouserMange/Main.php', '2015-11-28 17:10:11', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('3', 'admin', '/HouserMange/Main.php', '2015-11-28 17:10:38', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('4', 'admin', '/HouserMange/Main.php', '2015-11-28 17:14:48', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('5', 'admin', '/HouserMange/Message.php', '2015-11-28 17:14:52', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('8', 'admin', '/HouserMange/Main.php', '2015-11-28 18:08:15', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('7', 'admin', '/HouserMange/Main.php', '2015-11-28 17:14:52', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('9', 'su', '/HouserMange/Main.php', '2015-11-28 18:08:49', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('10', 'su', '/HouserMange/count.php', '2015-11-28 18:08:53', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('11', 'su', '/HouserMange/Main.php', '2015-11-28 18:08:53', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('12', 'su', '/HouserMange/count.php', '2015-11-28 18:12:42', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('13', 'su', '/HouserMange/Main.php', '2015-11-28 18:12:42', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('14', 'su', '/HouserMange/count.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('15', 'su', '/HouserMange/count.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('16', 'su', '/HouserMange/check.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('17', 'su', '/HouserMange/check.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('18', 'su', '/HouserMange/count.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('19', 'su', '/HouserMange/Main.php', '2015-11-28 18:12:46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('20', 'su', '/HouserMange/loginOut.php', '2015-11-28 18:13:00', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('21', '', '/HouserMange/Main.php', '2015-11-28 15:04:49', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('22', 'su', '/HouserMange/Message.php', '2015-11-28 18:14:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('23', '', '/HouserMange/Main.php', '2015-11-28 15:42:55', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('24', 'admin', '/HouserMange/count.php', '2015-11-28 18:14:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('25', 'admin', '/HouserMange/check.php', '2015-11-28 18:14:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('26', 'admin', '/HouserMange/check.php', '2015-11-28 18:14:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('27', 'admin', '/HouserMange/check.php', '2015-11-28 18:14:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('28', 'su', '/HouserMange/Main.php', '2015-11-28 18:14:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('29', '', '/HouserMange/check.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('30', 'admin', '/HouserMange/Main.php', '2015-11-28 18:14:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('31', 'su', '/HouserMange/Publish.php', '2015-11-28 18:14:52', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('32', 'su', '/HouserMange/Main.php', '2015-11-28 18:14:52', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('33', 'admin', '/HouserMange/Main.php', '2015-11-28 18:14:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('34', '', '/HouserMange/check.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('35', 'admin', '/HouserMange/Main.php', '2015-11-28 18:15:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('36', 'su', '/HouserMange/Main.php', '2015-11-28 18:14:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('37', 'admin', '/HouserMange/loginOut.php', '2015-11-28 18:15:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('38', 'su', '/HouserMange/count.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('39', 'su', '/HouserMange/check.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('40', 'su', '/HouserMange/count.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('41', 'su', '/HouserMange/count.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('42', 'su', '/HouserMange/count.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('43', 'su', '/HouserMange/check.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('44', 'su', '/HouserMange/check.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('45', '', '/HouserMange/Main.php', '2015-11-28 18:15:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('46', 'su', '/HouserMange/Message.php', '2015-11-28 18:18:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('47', 'su', '/HouserMange/Main.php', '2015-11-28 18:18:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('48', 'su', '/HouserMange/Publish.php', '2015-11-28 18:18:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('49', 'su', '/HouserMange/Main.php', '2015-11-28 18:18:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('50', 'su', '/HouserMange/Main.php', '2015-11-28 18:18:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('51', 'su', '/HouserMange/Main.php', '2015-11-28 18:19:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('52', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:21:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('53', 'su', '/HouserMange/Main.php', '2015-11-28 18:21:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('54', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('55', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('56', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('57', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('58', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('59', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('60', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('61', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('62', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('63', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('64', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('65', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('66', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('67', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('68', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('69', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('70', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('71', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('72', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('73', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('74', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('75', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('76', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('77', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('78', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('79', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('80', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('81', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('82', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('83', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('84', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('85', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('86', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('87', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('88', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('89', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('90', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('91', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('92', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('93', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('94', 'su', '/HouserMange/Main.php', '2015-11-28 18:22:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('95', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('96', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('97', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('98', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('99', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('100', 'su', '/HouserMange/Main.php', '2015-11-28 18:47:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('101', 'su', '/HouserMange/count.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('102', 'su', '/HouserMange/check.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('103', 'su', '/HouserMange/check.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('104', 'su', '/HouserMange/check.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('105', 'su', '/HouserMange/count.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('106', 'su', '/HouserMange/Main.php', '2015-11-28 18:47:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('107', 'su', '/HouserMange/Main.php', '2015-11-28 18:49:17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('108', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:56:22', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('109', 'su', '/HouserMange/delPublish.php', '2015-11-28 18:56:22', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('110', 'su', '/HouserMange/Main.php', '2015-11-28 18:56:22', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('111', 'su', '/HouserMange/Main.php', '2015-11-28 18:56:29', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('112', 'su', '/HouserMange/count.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('113', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('416', '', '/HouserMange/check.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('115', '', '/HouserMange/count.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('116', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('117', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('118', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('119', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('120', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('121', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('122', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('123', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('124', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('125', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('126', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('127', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('128', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('129', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('130', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('131', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('132', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('133', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('134', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('135', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('136', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('137', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('138', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('139', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('140', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('141', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('142', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('143', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('144', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('145', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('146', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('147', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('148', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('149', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('150', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('151', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('152', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('153', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('154', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('155', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('156', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('157', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('158', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('159', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('160', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('161', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('162', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('163', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('164', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('165', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('166', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('167', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('168', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('169', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('170', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('171', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('172', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('173', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('174', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('175', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('176', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('177', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('178', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('179', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('180', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('181', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('182', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('183', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('184', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('185', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('186', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('187', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('188', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('189', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('190', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('191', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('192', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('193', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('194', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('195', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('196', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('197', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('198', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('199', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('200', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('201', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('202', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('203', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('204', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('205', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('206', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('207', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('208', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('209', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('210', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('211', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('212', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('213', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('214', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('215', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('216', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('217', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('218', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('219', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('220', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('221', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('222', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('223', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('224', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('225', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('226', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('227', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('228', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('229', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('230', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('231', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('232', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('233', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('234', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('235', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('236', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('237', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('238', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('239', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('240', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('241', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('242', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('243', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('244', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('245', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('246', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('247', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('248', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('249', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('250', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('251', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('252', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('253', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('254', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('255', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('256', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('257', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('258', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('259', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('260', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('261', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('262', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('263', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('264', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('265', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('266', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('267', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('268', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('269', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('270', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('271', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('272', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('273', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('274', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('275', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('276', 'su', '/HouserMange/check.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('277', 'su', '/HouserMange/Main.php', '2015-11-28 18:56:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('278', 'su', '/HouserMange/Main.php', '2015-11-28 19:17:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('279', 'su', '/HouserMange/count.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('280', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('281', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('282', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('283', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('284', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('285', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('286', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('287', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('288', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('289', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('290', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('291', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('292', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('293', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('294', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('295', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('296', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('297', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('298', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('299', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('300', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('301', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('302', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('303', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('304', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('305', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('306', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('307', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('308', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('309', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('310', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('311', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('312', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('313', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('314', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('315', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('316', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('317', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('318', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('319', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('320', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('321', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('322', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('323', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('324', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('325', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('326', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('327', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('328', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('329', 'su', '/HouserMange/check.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('330', 'su', '/HouserMange/Main.php', '2015-11-28 19:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('331', 'su', '/HouserMange/count.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('332', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('333', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('334', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('335', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('336', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('337', 'su', '/HouserMange/count.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('338', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('339', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('340', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('341', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('342', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('343', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('344', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('345', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('346', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('347', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('348', 'su', '/HouserMange/check.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('349', 'su', '/HouserMange/Main.php', '2015-11-28 19:21:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('350', 'su', '/HouserMange/count.php', '2015-11-28 19:24:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('351', 'su', '/HouserMange/count.php', '2015-11-28 19:24:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('352', 'su', '/HouserMange/check.php', '2015-11-28 19:24:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('353', 'su', '/HouserMange/Main.php', '2015-11-28 19:24:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('354', '', '/HouserMange/Main.php', '2015-11-28 18:15:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('355', 'su', '/HouserMange/loginOut.php', '2015-11-28 19:25:08', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('356', '', '/HouserMange/Main.php', '2015-11-28 19:25:08', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('357', 'admin', '/HouserMange/Main.php', '2015-11-28 19:25:14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('358', 'admin', '/HouserMange/count.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('359', 'admin', '/HouserMange/count.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('360', 'admin', '/HouserMange/count.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('361', 'admin', '/HouserMange/check.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('362', 'admin', '/HouserMange/check.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('363', 'admin', '/HouserMange/check.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('364', 'su', '/HouserMange/count.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('365', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('366', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('367', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('368', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('369', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('370', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('371', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('372', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('373', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('374', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('375', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('376', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('377', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('378', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('379', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('380', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('381', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('382', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('383', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('384', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('385', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('386', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('387', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('388', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('389', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('390', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('391', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('392', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('393', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('394', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('395', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('396', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('397', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('398', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('399', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('400', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('401', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('402', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('403', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('404', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('405', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('406', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('407', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('408', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('409', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('410', 'su', '/HouserMange/check.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('411', 'su', '/HouserMange/count.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('412', 'su', '/HouserMange/Main.php', '2015-11-28 19:25:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('413', 'su', '/HouserMange/Main.php', '2015-11-28 19:27:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('414', 'su', '/HouserMange/Main.php', '2015-11-28 19:28:13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('415', 'su', '/HouserMange/loginOut.php', '2015-11-28 19:28:26', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('417', '', '/HouserMange/Main.php', '2015-11-28 19:26:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('418', '', '/HouserMange/Main.php', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('419', 'admin', '/HouserMange/Publish.php', '2015-11-30 00:03:47', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('420', 'admin', '/HouserMange/Main.php', '2015-11-30 00:03:47', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('421', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('422', '', '/HouserMange/Main.php', '2015-12-01 16:54:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('423', 'su', '/HouserMange/loginOut.php', '2015-12-01 16:59:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('424', '', '/HouserMange/Main.php', '2015-12-01 16:59:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('425', 'su', '/HouserMange/Message.php', '2015-12-01 17:01:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('426', 'su', '/HouserMange/Message.php', '2015-12-01 17:01:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('427', 'su', '/HouserMange/Main.php', '2015-12-01 17:01:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('428', 'su', '/HouserMange/Publish.php', '2015-12-01 17:01:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('429', 'su', '/HouserMange/delPublish.php', '2015-12-01 17:01:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('430', 'su', '/HouserMange/Main.php', '2015-12-01 17:01:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('431', 'su', '/HouserMange/Main.php', '2015-12-01 17:01:36', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('432', 'su', '/HouserMange/count.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('433', 'su', '/HouserMange/count.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('434', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('435', 'su', '/HouserMange/count.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('436', 'su', '/HouserMange/count.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('437', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('438', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('439', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('440', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('441', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('442', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('443', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('444', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('445', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('446', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('447', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('448', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('449', 'su', '/HouserMange/check.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('450', 'su', '/HouserMange/count.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('451', 'su', '/HouserMange/Main.php', '2015-12-01 17:01:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('452', 'su', '/HouserMange/loginOut.php', '2015-12-01 17:03:09', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('453', '', '/HouserMange/Main.php', '2015-12-01 17:03:09', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('454', 'su', '/HouserMange/count.php', '2015-12-01 17:03:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('455', 'su', '/HouserMange/Main.php', '2015-12-01 17:03:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('456', 'su', '/HouserMange/delPublish.php', '2015-12-01 17:03:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('457', 'su', '/HouserMange/Main.php', '2015-12-01 17:03:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('458', 'su', '/HouserMange/Message.php', '2015-12-01 17:03:54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('459', 'su', '/HouserMange/Main.php', '2015-12-01 17:03:54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('460', 'su', '/HouserMange/Publish.php', '2015-12-01 17:03:56', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('461', 'su', '/HouserMange/Main.php', '2015-12-01 17:03:56', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('462', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('463', 'admin', '/HouserMange/Main.php', '2015-12-01 17:41:45', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('464', 'admin', '/HouserMange/Message.php', '2015-12-01 17:46:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('465', 'admin', '/HouserMange/loginOut.php', '2015-12-01 17:46:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.87 Safari/537.36 QQBrowser/9.2.5584.400');
INSERT INTO `logg` VALUES ('466', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('467', '', '/HouserMange/Message.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('468', '', '/HouserMange/loginOut.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('469', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-URL-Manager Mobile Safari/537.36');
INSERT INTO `logg` VALUES ('470', '', '/HouserMange/Main.php', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('471', 'admin', '/HouserMange/Message.php', '2015-12-07 20:50:22', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('472', 'admin', '/HouserMange/Main.php', '2015-12-07 20:50:22', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('473', 'admin', '/HouserMange/Publish.php', '2015-12-07 20:50:29', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('474', 'admin', '/HouserMange/Main.php', '2015-12-07 20:50:29', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('475', 'admin', '/HouserMange/delPublish.php', '2015-12-07 20:50:32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('476', 'admin', '/HouserMange/Main.php', '2015-12-07 20:50:32', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('477', 'admin', '/HouserMange/Main.php', '2015-12-07 20:50:35', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('478', '', '/HouserMange/Main.php', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('479', 'su', '/HouserMange/Message.php', '2015-12-15 08:37:43', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('480', 'su', '/HouserMange/Main.php', '2015-12-15 08:37:43', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('481', 'su', '/HouserMange/delPublish.php', '2015-12-15 08:37:59', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('482', 'su', '/HouserMange/Main.php', '2015-12-15 08:37:59', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('483', 'su', '/HouserMange/Main.php', '2015-12-15 08:38:07', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('484', 'su', '/HouserMange/count.php', '2015-12-15 08:38:13', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('485', 'su', '/HouserMange/Main.php', '2015-12-15 08:38:13', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('486', 'su', '/HouserMange/Publish.php', '2015-12-15 08:38:16', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('487', 'su', '/HouserMange/Main.php', '2015-12-15 08:38:16', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('488', '', '/HouserMange/Main.php', '2015-12-15 08:38:34', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('489', 'su', '/HouserMange/Main.php', '2015-12-15 18:38:35', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('490', 'su', '/HouserMange/Main.php', '2015-12-15 18:53:26', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('491', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('492', '', '/HouserMange//Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('493', 'su', '/HouserMange//Main.php', '2015-12-20 15:44:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('494', 'su', '/HouserMange//Main.php', '2015-12-20 15:46:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('495', 'su', '/HouserMange//Main.php', '2015-12-20 15:46:08', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('496', 'su', '/HouserMange//Main.php', '2015-12-20 15:49:49', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('497', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('498', 'su', '/HouserMange/error.php', '2015-12-23 12:51:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('499', 'su', '/HouserMange/Main.php', '2015-12-23 12:51:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('500', 'su', '/HouserMange/Publish.php', '2015-12-23 12:51:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('501', 'su', '/HouserMange/Main.php', '2015-12-23 12:51:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('502', 'su', '/HouserMange/delPublish.php', '2015-12-23 12:53:11', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('503', 'su', '/HouserMange/Main.php', '2015-12-23 12:53:11', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('504', 'su', '/HouserMange/Main.php', '2015-12-23 12:53:17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('505', 'su', '/HouserMange/count.php', '2015-12-23 12:53:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('506', 'su', '/HouserMange/Main.php', '2015-12-23 12:53:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('507', 'su', '/HouserMange/loginOut.php', '2015-12-23 12:53:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('508', '', '/HouserMange/Main.php', '2015-12-23 12:53:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('509', 'su', '/HouserMange/Main.php', '2015-12-23 15:08:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('510', 'su', '/HouserMange/Main.php', '2015-12-23 15:08:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('511', 'su', '/HouserMange/count.php', '2015-12-23 15:08:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('512', 'su', '/HouserMange/Main.php', '2015-12-23 15:08:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('513', '', '/HouserMange/Main.php', '2015-12-23 15:08:47', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('514', 'su', '/HouserMange/loginOut.php', '2015-12-23 15:26:36', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('515', '', '/HouserMange/Main.php', '2015-12-23 15:26:36', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('516', 'su', '/HouserMange/loginOut.php', '2015-12-23 15:27:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('517', '', '/HouserMange/Main.php', '2015-12-23 15:27:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('518', 'su', '/HouserMange/Main.php', '2015-12-23 15:27:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('519', 'su', '/HouserMange/error.php', '2015-12-23 15:27:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('520', 'su', '/HouserMange/Main.php', '2015-12-23 15:27:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('521', 'su', '/HouserMange/Main.php', '2015-12-23 15:27:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('522', 'su', '/HouserMange/Main.php', '2015-12-23 15:28:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('523', 'su', '/HouserMange/loginOut.php', '2015-12-23 15:28:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('524', '', '/HouserMange/Main.php', '2015-12-23 15:28:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('525', 'su', '/HouserMange/Main.php', '2015-12-23 15:47:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('526', 'su', '/HouserMange/Main.php', '2015-12-23 15:48:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('527', 'su', '/HouserMange/Publish.php', '2015-12-23 15:48:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('528', 'su', '/HouserMange/Main.php', '2015-12-23 15:48:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('529', 'su', '/HouserMange/count.php', '2015-12-23 15:48:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('530', 'su', '/HouserMange/Main.php', '2015-12-23 15:48:35', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('531', 'su', '/HouserMange/Publish.php', '2015-12-23 15:48:38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('532', 'su', '/HouserMange/Main.php', '2015-12-23 15:48:38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('533', 'su', '/HouserMange/Message.php', '2015-12-23 15:48:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('534', 'su', '/HouserMange/Main.php', '2015-12-23 15:48:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('535', '', '/HouserMange/Main.php', '2015-12-23 15:48:43', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('536', 'su', '/HouserMange/Publish.php', '2015-12-23 16:27:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('537', 'su', '/HouserMange/Main.php', '2015-12-23 16:27:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('538', '', '/HouserMange/Main.php', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('539', 'su', '/HouserMange/Publish.php', '2015-12-23 16:28:35', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('540', 'su', '/HouserMange/publish.php', '2015-12-23 16:28:35', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)');
INSERT INTO `logg` VALUES ('541', 'su', '/HouserMange/count.php', '2015-12-23 16:27:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('542', 'su', '/HouserMange/check.php', '2015-12-23 16:27:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('543', 'su', '/HouserMange/Main.php', '2015-12-23 16:27:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('544', 'su', '/HouserMange/Main.php', '2015-12-23 16:44:04', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('545', 'su', '/HouserMange/loginOut.php', '2015-12-23 16:44:14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('546', '', '/HouserMange/Main.php', '2015-12-23 16:44:14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('547', 'su', '/HouserMange/Main.php', '2015-12-23 16:44:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('548', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('549', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('550', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('551', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('552', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('553', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('554', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('555', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('556', '', '/HouserMange/loginOut.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('557', '', '/HouserMange/Main.php', '2015-12-25 09:17:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('558', '', '/HouserMange/Message.php', '2015-12-25 11:18:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('559', '', '/HouserMange/Main.php', '2015-12-25 11:18:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('560', '', '/HouserMange/Message.php', '2015-12-25 11:20:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('561', '', '/HouserMange/Message.php', '2015-12-25 11:20:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('562', '', '/HouserMange/Main.php', '2015-12-25 11:20:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('563', '', '/HouserMange/loginOut.php', '2015-12-25 11:20:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('564', '', '/HouserMange/Main.php', '2015-12-25 11:20:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('565', 'admin', '/HouserMange/Message.php', '2015-12-25 11:22:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('566', 'admin', '/HouserMange/Main.php', '2015-12-25 11:22:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('567', 'admin', '/HouserMange/Message.php', '2015-12-25 11:22:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('568', 'admin', '/HouserMange/Main.php', '2015-12-25 11:22:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('569', 'admin', '/HouserMange/loginOut.php', '2015-12-25 11:22:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('570', '', '/HouserMange/loginOut.php', '2015-12-25 11:22:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('571', '', '/HouserMange/Main.php', '2015-12-25 11:22:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('572', 'admin', '/HouserMange/Message.php', '2015-12-25 11:23:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('573', 'admin', '/HouserMange/Main.php', '2015-12-25 11:23:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('574', 'admin', '/HouserMange/loginOut.php', '2015-12-25 11:27:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('575', '', '/HouserMange/loginOut.php', '2015-12-25 11:27:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('576', '', '/HouserMange/Main.php', '2015-12-25 11:27:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('577', 'su', '/HouserMange/Message.php', '2015-12-25 14:37:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('578', 'su', '/HouserMange/Main.php', '2015-12-25 14:37:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('579', 'su', '/HouserMange/Publish.php', '2015-12-25 14:37:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('580', 'su', '/HouserMange/Main.php', '2015-12-25 14:37:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('581', 'su', '/HouserMange/Main.php', '2015-12-25 14:37:38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('582', 'su', '/HouserMange/Main.php', '2015-12-25 14:37:43', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('583', 'su', '/HouserMange/count.php', '2015-12-25 14:37:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('584', 'su', '/HouserMange/check.php', '2015-12-25 14:37:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('585', 'su', '/HouserMange/count.php', '2015-12-25 14:37:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('586', 'su', '/HouserMange/count.php', '2015-12-25 14:37:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('587', 'su', '/HouserMange/Main.php', '2015-12-25 14:37:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('588', 'su', '/HouserMange/loginOut.php', '2015-12-25 14:37:58', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('589', '', '/HouserMange/Main.php', '2015-12-25 14:37:58', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('590', '', '/HouserMange/Main.php', '2015-12-25 14:40:18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('591', '', '/HouserMange/Main.php', '2015-12-25 14:40:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('592', '', '/HouserMange/Main.php', '2015-12-25 14:40:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('593', '', '/HouserMange/Main.php', '2015-12-25 14:40:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('594', '', '/HouserMange/Main.php', '2015-12-25 14:40:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('595', '', '/HouserMange/Message.php', '2015-12-25 14:40:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('596', '', '/HouserMange/Message.php', '2015-12-25 14:40:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('597', '', '/HouserMange/Main.php', '2015-12-25 14:40:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('598', '', '/HouserMange/Main.php', '2015-12-25 14:40:32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('599', '', '/HouserMange/loginOut.php', '2015-12-25 14:41:17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('600', '', '/HouserMange/Main.php', '2015-12-25 14:41:17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('601', '', '/HouserMange/Main.php', '2015-12-25 14:41:22', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('602', '', '/HouserMange/Main.php', '2015-12-25 14:41:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('603', '', '/HouserMange/Main.php', '2015-12-25 14:41:40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('604', '', '/HouserMange/loginOut.php', '2015-12-25 14:41:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('605', '', '/HouserMange/Main.php', '2015-12-25 14:41:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('606', '', '/HouserMange/Main.php', '2015-12-25 14:41:45', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('607', '', '/HouserMange/Main.php', '2015-12-25 14:42:19', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('608', '', '/HouserMange/Main.php', '2015-12-25 14:42:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('609', '', '/HouserMange/Main.php', '2015-12-25 14:42:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('610', '', '/HouserMange/Main.php', '2015-12-25 14:43:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('611', '', '/HouserMange/Main.php', '2015-12-25 14:43:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('612', '', '/HouserMange/Main.php', '2015-12-25 14:43:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('613', '', '/HouserMange/Main.php', '2015-12-25 14:43:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('614', '', '/HouserMange/Main.php', '2015-12-25 14:43:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('615', '', '/HouserMange/Main.php', '2015-12-25 14:43:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('616', '', '/HouserMange/Main.php', '2015-12-25 14:43:45', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('617', '', '/HouserMange/Main.php', '2015-12-25 14:44:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('618', '', '/HouserMange/Main.php', '2015-12-25 14:44:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('619', '', '/HouserMange/Main.php', '2015-12-25 14:44:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('620', '', '/HouserMange/Main.php', '2015-12-25 14:44:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('621', '', '/HouserMange/Main.php', '2015-12-25 14:44:04', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('622', '', '/HouserMange/Main.php', '2015-12-25 14:44:14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('623', '', '/HouserMange/Main.php', '2015-12-25 14:44:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('624', '', '/HouserMange/Main.php', '2015-12-25 14:44:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('625', '', '/HouserMange/Main.php', '2015-12-25 14:44:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('626', '', '/HouserMange/Main.php', '2015-12-25 14:44:40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('627', '', '/HouserMange/Main.php', '2015-12-25 14:44:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('628', '', '/HouserMange/Main.php', '2015-12-25 14:45:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('629', '', '/HouserMange/Main.php', '2015-12-25 14:45:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('630', '', '/HouserMange/Main.php', '2015-12-25 14:45:33', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('631', '', '/HouserMange/Main.php', '2015-12-25 14:45:34', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('632', '', '/HouserMange/Main.php', '2015-12-25 14:45:54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('633', '', '/HouserMange/Main.php', '2015-12-25 14:46:18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('634', '', '/HouserMange/Main.php', '2015-12-25 14:46:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('635', 'admin', '/HouserMange/Main.php', '2015-12-25 14:46:55', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('636', 'admin', '/HouserMange/Main.php', '2015-12-25 14:47:10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('637', 'admin', '/HouserMange/Main.php', '2015-12-25 14:47:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('638', 'admin', '/HouserMange/Main.php', '2015-12-25 14:47:47', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('639', 'admin', '/HouserMange/Main.php', '2015-12-25 14:47:49', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('640', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:48:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('641', '', '/HouserMange/Main.php', '2015-12-25 14:48:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('642', 'admin', '/HouserMange/Main.php', '2015-12-25 14:48:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('643', 'admin', '/HouserMange/Main.php', '2015-12-25 14:48:10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('644', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:48:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('645', '', '/HouserMange/Main.php', '2015-12-25 14:48:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('646', 'admin', '/HouserMange/Main.php', '2015-12-25 14:48:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('647', 'admin', '/HouserMange/Main.php', '2015-12-25 14:48:27', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('648', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:48:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('649', '', '/HouserMange/Main.php', '2015-12-25 14:48:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('650', 'admin', '/HouserMange/Main.php', '2015-12-25 14:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('651', 'admin', '/HouserMange/Main.php', '2015-12-25 14:49:10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('652', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:49:52', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('653', '', '/HouserMange/Main.php', '2015-12-25 14:49:52', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('654', 'admin', '/HouserMange/Message.php', '2015-12-25 14:49:56', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('655', 'admin', '/HouserMange/Main.php', '2015-12-25 14:49:56', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('656', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:50:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('657', '', '/HouserMange/Main.php', '2015-12-25 14:50:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('658', 'admin', '/HouserMange/Message.php', '2015-12-25 14:52:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('659', 'admin', '/HouserMange/Main.php', '2015-12-25 14:52:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('660', 'admin', '/HouserMange/Publish.php', '2015-12-25 14:52:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('661', 'admin', '/HouserMange/Main.php', '2015-12-25 14:52:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('662', 'admin', '/HouserMange/Main.php', '2015-12-25 14:52:55', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('663', 'admin', '/HouserMange/delPublish.php', '2015-12-25 14:52:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('664', 'admin', '/HouserMange/Main.php', '2015-12-25 14:52:57', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('665', 'admin', '/HouserMange/Main.php', '2015-12-25 14:52:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('666', 'admin', '/HouserMange/count.php', '2015-12-25 14:53:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('667', 'admin', '/HouserMange/Main.php', '2015-12-25 14:53:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('668', 'admin', '/HouserMange/loginOut.php', '2015-12-25 14:53:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('669', '', '/HouserMange/loginOut.php', '2015-12-25 14:53:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('670', '', '/HouserMange/loginOut.php', '2015-12-25 14:53:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('671', '', '/HouserMange/Main.php', '2015-12-25 14:53:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('672', 'admin', '/HouserMange/loginOut.php', '2015-12-25 17:52:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('673', '', '/HouserMange/Main.php', '2015-12-25 17:52:25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36');
INSERT INTO `logg` VALUES ('674', '', '/HouserMange/Main.php', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('675', 'admin', '/HouserMange/Message.php', '2015-12-31 20:48:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('676', 'admin', '/HouserMange/Main.php', '2015-12-31 20:48:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('677', 'admin', '/HouserMange/Publish.php', '2015-12-31 20:48:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('678', 'admin', '/HouserMange/Main.php', '2015-12-31 20:48:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('679', 'admin', '/HouserMange/Main.php', '2015-12-31 20:48:47', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('680', 'admin', '/HouserMange/Main.php', '2015-12-31 20:48:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('681', 'admin', '/HouserMange/Main.php', '2015-12-31 20:48:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('682', 'admin', '/HouserMange/count.php', '2015-12-31 20:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('683', 'admin', '/HouserMange/check.php', '2015-12-31 20:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('684', 'admin', '/HouserMange/check.php', '2015-12-31 20:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('685', 'admin', '/HouserMange/check.php', '2015-12-31 20:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');
INSERT INTO `logg` VALUES ('686', 'admin', '/HouserMange/check.php', '2015-12-31 20:49:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36');

-- ----------------------------
-- Table structure for `pubinfo`
-- ----------------------------
DROP TABLE IF EXISTS `pubinfo`;
CREATE TABLE `pubinfo` (
  `userid` int(11) NOT NULL auto_increment,
  `roomId` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mode` varchar(32) NOT NULL,
  `price` int(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `area` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `tel` varchar(32) NOT NULL,
  `user` varchar(32) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pubinfo
-- ----------------------------
INSERT INTO `pubinfo` VALUES ('14', '101', 'su', '出售', '1202', '大声叫妇科', '120', '阿斯蒂芬', '15600266816', 'admin');
INSERT INTO `pubinfo` VALUES ('13', '123', '231', '123', '123123', '13241', '1341414', '1341341', '1343124', '312414');
INSERT INTO `pubinfo` VALUES ('15', '101', 'su', '出售', '1202', '大声叫妇科', '120', '阿斯蒂芬', '15600266816', 'admin');
INSERT INTO `pubinfo` VALUES ('16', '1111', 'SU', '出租', '1000000', '阿萨德', '120', '两室一厅', '1212131311', 'su');
INSERT INTO `pubinfo` VALUES ('17', '1111', 'SU', '出租', '1000000', '阿萨德', '120', '两室一厅', '1212131311', 'su');
INSERT INTO `pubinfo` VALUES ('18', '111111', 'da', '出租', '111', '111', '111', '111', '111', 'su');
INSERT INTO `pubinfo` VALUES ('19', '111111', 'da', '出租', '111', '111', '111', '111', '111', 'su');

-- ----------------------------
-- Table structure for `register`
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `user` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sex` varchar(32) NOT NULL default '男',
  `email` varchar(64) default NULL,
  `tel` int(16) NOT NULL,
  `address` varchar(32) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('su', '123456', '女', '1340652578@qq.com', '2147483647', '上海');
