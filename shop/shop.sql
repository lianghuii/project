/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-06-25 12:13:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admininfo`
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `catelog`
-- ----------------------------
DROP TABLE IF EXISTS `catelog`;
CREATE TABLE `catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catelog
-- ----------------------------
INSERT INTO `catelog` VALUES ('2', '小提琴', 'no');
INSERT INTO `catelog` VALUES ('3', '钢琴', 'no');
INSERT INTO `catelog` VALUES ('4', '电子琴', 'no');
INSERT INTO `catelog` VALUES ('5', '长笛', 'no');
INSERT INTO `catelog` VALUES ('6', '单簧管', 'no');
INSERT INTO `catelog` VALUES ('7', '古筝', 'no');
INSERT INTO `catelog` VALUES ('8', '长号', 'no');
INSERT INTO `catelog` VALUES ('9', '圆号', 'no');
INSERT INTO `catelog` VALUES ('10', '萨克斯', 'no');
INSERT INTO `catelog` VALUES ('11', '手风琴', 'no');
INSERT INTO `catelog` VALUES ('12', '马头琴', 'no');
INSERT INTO `catelog` VALUES ('13', '琵琶', 'no');
INSERT INTO `catelog` VALUES ('14', 'wudao', 'yes');
INSERT INTO `catelog` VALUES ('15', '111', 'yes');

-- ----------------------------
-- Table structure for `courseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `goods_miaoshu` text,
  `goods_pic` varchar(50) DEFAULT NULL,
  `goods_ISBN` varchar(50) DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_tejia` int(11) DEFAULT NULL,
  `goods_isnottejia` varchar(50) DEFAULT NULL,
  `goods_isnottuijian` varchar(50) DEFAULT NULL,
  `goods_catelog_id` int(11) DEFAULT NULL,
  `goods_kucun` int(11) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfo
-- ----------------------------
INSERT INTO `courseinfo` VALUES ('1', '小提琴初级', '练习最基本的小提琴，针对初级学者', '/upload/444.jpg', '汤爱民', '300', '200', 'yes', 'no', '2', '-2', 'no');
INSERT INTO `courseinfo` VALUES ('2', '小提琴班课', '一起来学习小提琴这门艺术吧', '/upload/333.jpg', '王昊', '200', '200', 'no', 'no', '2', '0', 'no');
INSERT INTO `courseinfo` VALUES ('3', '小提琴', '小提琴，国际的艺术范', '/upload/555.jpg', '汤爱民', '500', '500', 'no', 'no', '2', '0', 'no');
INSERT INTO `courseinfo` VALUES ('4', '钢琴初级', '针对刚刚学习钢琴的学生，只要练习指法', '/upload/666.jpg', '李峥嵘', '300', '300', 'no', 'no', '3', '0', 'no');
INSERT INTO `courseinfo` VALUES ('5', '钢琴一对一', '专门的一对一辅导，帮助考级', '/upload/777.jpg', '赵敏', '500', '400', 'yes', 'no', '3', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('6', '电子琴', '乐队的伙伴，电子琴的艺术', '/upload/888.jpg', '李强', '200', '200', 'no', 'no', '4', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('7', '长笛', '长笛的风采', '/upload/999.jpg', '马东', '200', '150', 'yes', 'no', '5', '0', 'no');
INSERT INTO `courseinfo` VALUES ('8', '单簧管', '单簧管不一般的乐器', '/upload/000.jpg', '卢汉', '300', '300', 'no', 'no', '6', '0', 'no');
INSERT INTO `courseinfo` VALUES ('9', '古筝', '古典乐器，优美艺术', '/upload/11.jpg', '杨光', '400', '400', 'no', 'no', '7', '-2', 'no');
INSERT INTO `courseinfo` VALUES ('10', '古筝指法', '针对初级学者，练习指法', '/upload/22.jpg', '赵丽', '300', '200', 'yes', 'no', '7', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('11', '长号', '长号，气息冗长的体现', '/upload/33.jpg', '赫敏', '200', '150', 'yes', 'no', '8', '-2', 'no');
INSERT INTO `courseinfo` VALUES ('12', '圆号班课', '一起来上圆号课', '/upload/44.jpg', '赵董明', '200', '200', 'no', 'no', '9', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('13', '圆号', '圆号，诗的写意', '/upload/55.jpg', '李哲', '300', '300', 'no', 'no', '9', '0', 'yes');
INSERT INTO `courseinfo` VALUES ('14', '萨克斯', '国际范的标准', '/upload/66.jpg', '于昂红', '500', '500', 'no', 'no', '10', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('15', '手风琴指法', '初级使用者练习基础指法', '/upload/77.jpg', '孙皓', '300', '300', 'no', 'no', '11', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('16', '手风琴', '肢体与指法的结合，演奏出非一般的音乐', '/upload/88.jpg', '李侃', '300', '300', 'no', 'no', '11', '-11', 'no');
INSERT INTO `courseinfo` VALUES ('17', '马头琴', '草原英雄的乐器', '/upload/99.jpg', '杨过', '600', '600', 'no', 'no', '12', '0', 'yes');
INSERT INTO `courseinfo` VALUES ('18', '马头琴班课', '一起来领略马头琴的风采', '/upload/00.jpg', '谢娜', '400', '400', 'no', 'no', '12', '-2', 'no');
INSERT INTO `courseinfo` VALUES ('19', '琵琶', '琵琶的风采，古代仕女的专属', '/upload/1.jpg', '何炅', '500', '500', 'no', 'no', '13', '-1', 'no');
INSERT INTO `courseinfo` VALUES ('20', '琵琶一对一', '专门针对喜欢。热爱古典琵琶的学生', '/upload/2.jpg', '王俊凯', '700', '700', 'no', 'no', '13', '-2', 'no');
INSERT INTO `courseinfo` VALUES ('21', '111', 'shiyimen henhaode ke', '/upload/1498234981453.jpg', 'zhao', '33', '34', 'yes', 'no', '11', '0', 'yes');
INSERT INTO `courseinfo` VALUES ('22', '111111', '1111111请输入内容', '', '111111', '111111', '111111', 'no', 'no', '13', '0', 'yes');

-- ----------------------------
-- Table structure for `courselist`
-- ----------------------------
DROP TABLE IF EXISTS `courselist`;
CREATE TABLE `courselist` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courselist
-- ----------------------------
INSERT INTO `courselist` VALUES ('11', '3', '20', '1');
INSERT INTO `courselist` VALUES ('14', '5', '1', '1');
INSERT INTO `courselist` VALUES ('15', '5', '9', '1');
INSERT INTO `courselist` VALUES ('16', '5', '11', '1');
INSERT INTO `courselist` VALUES ('17', '6', '11', '1');
INSERT INTO `courselist` VALUES ('18', '7', '18', '1');
INSERT INTO `courselist` VALUES ('19', '7', '20', '1');

-- ----------------------------
-- Table structure for `gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) DEFAULT NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES ('2', '333333333333333333333333333333333333', '333333333333333333333333333333333333', '2015-03-31 13:18');
INSERT INTO `gonggao` VALUES ('3', '11111111111111111111', '1111111111111111111111111请输入内容', '2017-06-24 07:28');

-- ----------------------------
-- Table structure for `liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) DEFAULT NULL,
  `liuyan_content` text,
  `liuyan_date` varchar(50) DEFAULT NULL,
  `liuyan_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('2', '11111111111111111', '111111111111111111111111请输入内容', '2017-6-24 7:25:01', 'liusan');

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(50) DEFAULT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `order_zhuangtai` varchar(50) DEFAULT NULL,
  `order_fukuangfangshi` varchar(50) DEFAULT NULL,
  `order_jine` int(11) DEFAULT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  `order_songhuodizhi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('5', '20170623103317', '2017-06-23 10:33:17', 'no', '银行付款', '750', '7', null);
INSERT INTO `orderinfo` VALUES ('6', '20170624072354', '2017-06-24 07:23:54', 'no', '银行付款', '150', '7', null);
INSERT INTO `orderinfo` VALUES ('7', '20170624093730', '2017-06-24 09:37:30', 'no', '银行付款', '1100', '7', null);

-- ----------------------------
-- Table structure for `studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_age` varchar(50) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('7', 'liusan', '000000', '刘三', '女', '22', '北京路', '13555555555', 'liusan@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('8', 'kitty', '111111', '张三', '男', '21', '上海路', '13222221111', 'liusdsfdfn@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('9', 'hello', '123132', '张五', '男', '22', '北京东路', '13512231211', 'sdfsdfn@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('10', 'szzzzz', '111222', '王二', '女', '19', '天津路', '13574112312', 'ldgh@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('11', 'wang', '321332', '王大', '男', '20', '云南路', '13123441111', '4556an@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('12', 'lihong', 'sdfdf', '王三', '女', '22', '北京西路', '13574112355', 'ldg3h@yahoo.cn', 'no');
INSERT INTO `studentinfo` VALUES ('13', '123', '123', '123', '男', '20', '123', '123', '123', 'no');

-- ----------------------------
-- Table structure for `teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `tid` int(4) NOT NULL DEFAULT '0',
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `tname` varchar(10) DEFAULT NULL,
  `tgender` varchar(2) DEFAULT NULL,
  `tage` int(3) DEFAULT NULL,
  `tqq` varchar(20) DEFAULT NULL,
  `temail` varchar(20) DEFAULT NULL,
  `tmajor` varchar(20) DEFAULT NULL,
  `tstatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('0', 'na', '000000', '谢娜', '女', '34', '78787878', '78787878@qq.com', '乐器', '讲师');
INSERT INTO `teacherinfo` VALUES ('1', 'tang', '111111', '汤爱民 ', '女', '45', '34343434', '34343434@qq.com', '美声', '教授');
INSERT INTO `teacherinfo` VALUES ('2', 'jiong', '222222', '何炅', '男', '45', '45454544', '45454544@qq.com', '乐器', '副教授');
