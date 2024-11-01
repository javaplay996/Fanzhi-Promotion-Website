/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd3ysa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd3ysa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd3ysa`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809459880 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-15 19:47:28',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-15 19:47:28',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-15 19:47:28',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-15 19:47:28',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-15 19:47:28',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-15 19:47:28',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615809459879,'2021-03-15 19:57:38',1615809227249,'广东省梅州市梅江区江南街道凤尾苑二巷19号3百花洲市场','123','12345678910','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'fanzhizhoubian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809354675 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd3ysa/upload/1615809198122.jpg'),(2,'picture2','http://localhost:8080/ssmd3ysa/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmd3ysa/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussfanzhilishi` */

DROP TABLE IF EXISTS `discussfanzhilishi`;

CREATE TABLE `discussfanzhilishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809273138 DEFAULT CHARSET=utf8 COMMENT='繁峙历史评论表';

/*Data for the table `discussfanzhilishi` */

insert  into `discussfanzhilishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-15 19:47:29',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-15 19:47:29',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-15 19:47:29',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-15 19:47:29',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-15 19:47:29',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-15 19:47:29',6,6,'用户名6','评论内容6','回复内容6'),(1615809273137,'2021-03-15 19:54:32',21,1615809227249,'123','123',NULL);

/*Table structure for table `discussfanzhimeishi` */

DROP TABLE IF EXISTS `discussfanzhimeishi`;

CREATE TABLE `discussfanzhimeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809322171 DEFAULT CHARSET=utf8 COMMENT='繁峙美食评论表';

/*Data for the table `discussfanzhimeishi` */

insert  into `discussfanzhimeishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-03-15 19:47:29',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-03-15 19:47:29',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-03-15 19:47:29',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-03-15 19:47:29',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-03-15 19:47:29',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-03-15 19:47:29',6,6,'用户名6','评论内容6','回复内容6'),(1615809322170,'2021-03-15 19:55:21',41,1615809227249,'123','这里的东西在刚刚的后台可以自行更改',NULL);

/*Table structure for table `discussfanzhimingren` */

DROP TABLE IF EXISTS `discussfanzhimingren`;

CREATE TABLE `discussfanzhimingren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809291522 DEFAULT CHARSET=utf8 COMMENT='繁峙名人评论表';

/*Data for the table `discussfanzhimingren` */

insert  into `discussfanzhimingren`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-15 19:47:29',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-15 19:47:29',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-15 19:47:29',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-15 19:47:29',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-15 19:47:29',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-15 19:47:29',6,6,'用户名6','评论内容6','回复内容6'),(1615809291521,'2021-03-15 19:54:51',31,1615809227249,'123','123',NULL);

/*Table structure for table `discussfanzhizhoubian` */

DROP TABLE IF EXISTS `discussfanzhizhoubian`;

CREATE TABLE `discussfanzhizhoubian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809347926 DEFAULT CHARSET=utf8 COMMENT='繁峙周边评论表';

/*Data for the table `discussfanzhizhoubian` */

insert  into `discussfanzhizhoubian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-03-15 19:47:29',1,1,'用户名1','评论内容1','回复内容1'),(182,'2021-03-15 19:47:29',2,2,'用户名2','评论内容2','回复内容2'),(183,'2021-03-15 19:47:29',3,3,'用户名3','评论内容3','回复内容3'),(184,'2021-03-15 19:47:29',4,4,'用户名4','评论内容4','回复内容4'),(185,'2021-03-15 19:47:29',5,5,'用户名5','评论内容5','回复内容5'),(186,'2021-03-15 19:47:29',6,6,'用户名6','评论内容6','回复内容6'),(1615809347925,'2021-03-15 19:55:47',61,1615809227249,'123','123',NULL);

/*Table structure for table `discussjingqujingdian` */

DROP TABLE IF EXISTS `discussjingqujingdian`;

CREATE TABLE `discussjingqujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='景区景点评论表';

/*Data for the table `discussjingqujingdian` */

insert  into `discussjingqujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-03-15 19:47:29',1,1,'用户名1','评论内容1','回复内容1'),(172,'2021-03-15 19:47:29',2,2,'用户名2','评论内容2','回复内容2'),(173,'2021-03-15 19:47:29',3,3,'用户名3','评论内容3','回复内容3'),(174,'2021-03-15 19:47:29',4,4,'用户名4','评论内容4','回复内容4'),(175,'2021-03-15 19:47:29',5,5,'用户名5','评论内容5','回复内容5'),(176,'2021-03-15 19:47:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fanzhilishi` */

DROP TABLE IF EXISTS `fanzhilishi`;

CREATE TABLE `fanzhilishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `jianjie` longtext COMMENT '简介',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xiangqing` longtext COMMENT '详情',
  `bianjiriqi` date DEFAULT NULL COMMENT '编辑日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='繁峙历史';

/*Data for the table `fanzhilishi` */

insert  into `fanzhilishi`(`id`,`addtime`,`mingcheng`,`jianjie`,`zhaopian`,`shipin`,`xiangqing`,`bianjiriqi`,`thumbsupnum`,`crazilynum`) values (21,'2021-03-15 19:47:28','123','123','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian1.jpg','http://localhost:8080/ssmd3ysa/upload/1615809056523.mp4','<p>123<img src=\"http://localhost:8080/ssmd3ysa/upload/1615809070191.jpg\"></p>','2021-03-15',2,1),(22,'2021-03-15 19:47:28','名称2','简介2','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian2.jpg','','详情2','2021-03-15',2,2),(23,'2021-03-15 19:47:28','名称3','简介3','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian3.jpg','','详情3','2021-03-15',3,3),(24,'2021-03-15 19:47:28','名称4','简介4','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian4.jpg','','详情4','2021-03-15',4,4),(25,'2021-03-15 19:47:28','名称5','简介5','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian5.jpg','','详情5','2021-03-15',5,5),(26,'2021-03-15 19:47:28','名称6','简介6','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian6.jpg','','详情6','2021-03-15',6,6);

/*Table structure for table `fanzhimeishi` */

DROP TABLE IF EXISTS `fanzhimeishi`;

CREATE TABLE `fanzhimeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `bieming` varchar(200) DEFAULT NULL COMMENT '别名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `tezheng` varchar(200) DEFAULT NULL COMMENT '特征',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `zhuyaoyuanliao` longtext COMMENT '主要原料',
  `youlai` longtext COMMENT '由来',
  `xiangqing` longtext COMMENT '详情',
  `bianjiriqi` date DEFAULT NULL COMMENT '编辑日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='繁峙美食';

/*Data for the table `fanzhimeishi` */

insert  into `fanzhimeishi`(`id`,`addtime`,`mingcheng`,`bieming`,`zhaopian`,`tezheng`,`jianjie`,`zhuyaoyuanliao`,`youlai`,`xiangqing`,`bianjiriqi`,`thumbsupnum`,`crazilynum`) values (41,'2021-03-15 19:47:28','123','123','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian1.jpg','123','123','123','123','<p>123</p>','2021-03-15',1,1),(42,'2021-03-15 19:47:28','名称2','别名2','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian2.jpg','特征2','简介2','主要原料2','由来2','详情2','2021-03-15',2,2),(43,'2021-03-15 19:47:28','名称3','别名3','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian3.jpg','特征3','简介3','主要原料3','由来3','详情3','2021-03-15',3,3),(44,'2021-03-15 19:47:28','名称4','别名4','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian4.jpg','特征4','简介4','主要原料4','由来4','详情4','2021-03-15',4,4),(45,'2021-03-15 19:47:28','名称5','别名5','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian5.jpg','特征5','简介5','主要原料5','由来5','详情5','2021-03-15',5,5),(46,'2021-03-15 19:47:28','名称6','别名6','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian6.jpg','特征6','简介6','主要原料6','由来6','详情6','2021-03-15',6,6);

/*Table structure for table `fanzhimingren` */

DROP TABLE IF EXISTS `fanzhimingren`;

CREATE TABLE `fanzhimingren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `bieming` varchar(200) DEFAULT NULL COMMENT '别名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `mingzu` varchar(200) DEFAULT NULL COMMENT '名族',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `zhuyaochengjiu` longtext COMMENT '主要成就',
  `xiangqing` longtext COMMENT '详情',
  `bianjiriqi` date DEFAULT NULL COMMENT '编辑日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='繁峙名人';

/*Data for the table `fanzhimingren` */

insert  into `fanzhimingren`(`id`,`addtime`,`mingcheng`,`bieming`,`zhaopian`,`chushengriqi`,`mingzu`,`jiguan`,`zhuyaochengjiu`,`xiangqing`,`bianjiriqi`,`thumbsupnum`,`crazilynum`) values (31,'2021-03-15 19:47:28','123','123','http://localhost:8080/ssmd3ysa/upload/1615809086938.jpg','2021-03-15','名族1','123','123','<p>123<img src=\"http://localhost:8080/ssmd3ysa/upload/1615809098420.jpg\"></p>','2021-03-15',2,1),(32,'2021-03-15 19:47:28','名称2','别名2','http://localhost:8080/ssmd3ysa/upload/fanzhimingren_zhaopian2.jpg','2021-03-15','名族2','籍贯2','主要成就2','详情2','2021-03-15',2,2),(33,'2021-03-15 19:47:28','名称3','别名3','http://localhost:8080/ssmd3ysa/upload/fanzhimingren_zhaopian3.jpg','2021-03-15','名族3','籍贯3','主要成就3','详情3','2021-03-15',3,3),(34,'2021-03-15 19:47:28','名称4','别名4','http://localhost:8080/ssmd3ysa/upload/fanzhimingren_zhaopian4.jpg','2021-03-15','名族4','籍贯4','主要成就4','详情4','2021-03-15',4,4),(35,'2021-03-15 19:47:28','名称5','别名5','http://localhost:8080/ssmd3ysa/upload/fanzhimingren_zhaopian5.jpg','2021-03-15','名族5','籍贯5','主要成就5','详情5','2021-03-15',5,5),(36,'2021-03-15 19:47:28','名称6','别名6','http://localhost:8080/ssmd3ysa/upload/fanzhimingren_zhaopian6.jpg','2021-03-15','名族6','籍贯6','主要成就6','详情6','2021-03-15',6,6);

/*Table structure for table `fanzhizhoubian` */

DROP TABLE IF EXISTS `fanzhizhoubian`;

CREATE TABLE `fanzhizhoubian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='繁峙周边';

/*Data for the table `fanzhizhoubian` */

insert  into `fanzhizhoubian`(`id`,`addtime`,`mingcheng`,`zhaopian`,`leixing`,`jianjie`,`xiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (61,'2021-03-15 19:47:28','123','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian1.jpg','类型1','123','<p>测试</p>',1,1,1000),(62,'2021-03-15 19:47:28','名称2','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian2.jpg','类型2','简介2','详情2',2,2,99.9),(63,'2021-03-15 19:47:28','名称3','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian3.jpg','类型3','简介3','详情3',3,3,99.9),(64,'2021-03-15 19:47:28','名称4','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian4.jpg','类型4','简介4','详情4',4,4,99.9),(65,'2021-03-15 19:47:28','名称5','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian5.jpg','类型5','简介5','详情5',5,5,99.9),(66,'2021-03-15 19:47:28','名称6','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian6.jpg','类型6','简介6','详情6',6,6,99.9);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809378042 DEFAULT CHARSET=utf8 COMMENT='繁峙论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-03-15 19:47:28','123','<p>帖子内容1</p>',1,1,'用户名1','开放'),(73,'2021-03-15 19:47:28','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-15 19:47:28','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-15 19:47:28','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-15 19:47:28','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615809369021,'2021-03-15 19:56:08','这里可以发帖子','<p>123</p>',0,1615809227249,'123','开放'),(1615809378041,'2021-03-15 19:56:17',NULL,'123',71,1615809227249,'123',NULL);

/*Table structure for table `jingqujingdian` */

DROP TABLE IF EXISTS `jingqujingdian`;

CREATE TABLE `jingqujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `bieming` varchar(200) DEFAULT NULL COMMENT '别名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhandimianji` int(11) DEFAULT NULL COMMENT '占地面积',
  `zhumingjingdian` longtext COMMENT '著名景点',
  `dilihuanjing` varchar(200) DEFAULT NULL COMMENT '地理环境',
  `lishiyanan` longtext COMMENT '历史沿岸',
  `jingguantese` longtext COMMENT '景观特色',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景区景点';

/*Data for the table `jingqujingdian` */

insert  into `jingqujingdian`(`id`,`addtime`,`mingcheng`,`bieming`,`zhaopian`,`zhandimianji`,`zhumingjingdian`,`dilihuanjing`,`lishiyanan`,`jingguantese`,`jingdianxiangqing`,`thumbsupnum`,`crazilynum`) values (51,'2021-03-15 19:47:28','123','别名1','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian1.jpg',1,'著名景点1','地理环境1','历史沿岸1','景观特色1','<p>景点详情1</p>',1,1),(52,'2021-03-15 19:47:28','名称2','别名2','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian2.jpg',2,'著名景点2','地理环境2','历史沿岸2','景观特色2','景点详情2',2,2),(53,'2021-03-15 19:47:28','名称3','别名3','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian3.jpg',3,'著名景点3','地理环境3','历史沿岸3','景观特色3','景点详情3',3,3),(54,'2021-03-15 19:47:28','名称4','别名4','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian4.jpg',4,'著名景点4','地理环境4','历史沿岸4','景观特色4','景点详情4',4,4),(55,'2021-03-15 19:47:28','名称5','别名5','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian5.jpg',5,'著名景点5','地理环境5','历史沿岸5','景观特色5','景点详情5',5,5),(56,'2021-03-15 19:47:28','名称6','别名6','http://localhost:8080/ssmd3ysa/upload/jingqujingdian_zhaopian6.jpg',6,'著名景点6','地理环境6','历史沿岸6','景观特色6','景点详情6',6,6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809389933 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (132,'2021-03-15 19:47:29',2,'用户名2','留言内容2','回复内容2'),(133,'2021-03-15 19:47:29',3,'用户名3','留言内容3','回复内容3'),(134,'2021-03-15 19:47:29',4,'用户名4','留言内容4','回复内容4'),(135,'2021-03-15 19:47:29',5,'用户名5','留言内容5','回复内容5'),(136,'2021-03-15 19:47:29',6,'用户名6','留言内容6','回复内容6'),(1615809389932,'2021-03-15 19:56:29',1615809227249,'123','123',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-03-15 19:47:28','123','简介1','http://localhost:8080/ssmd3ysa/upload/news_picture1.jpg','<p>内容1</p>'),(122,'2021-03-15 19:47:28','标题2','简介2','http://localhost:8080/ssmd3ysa/upload/news_picture2.jpg','内容2'),(123,'2021-03-15 19:47:28','标题3','简介3','http://localhost:8080/ssmd3ysa/upload/news_picture3.jpg','内容3'),(124,'2021-03-15 19:47:28','标题4','简介4','http://localhost:8080/ssmd3ysa/upload/news_picture4.jpg','内容4'),(125,'2021-03-15 19:47:28','标题5','简介5','http://localhost:8080/ssmd3ysa/upload/news_picture5.jpg','内容5'),(126,'2021-03-15 19:47:28','标题6','简介6','http://localhost:8080/ssmd3ysa/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'fanzhizhoubian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809471942 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615809471941,'2021-03-15 19:57:51','202131519575112333151','fanzhizhoubian',1615809227249,61,'123','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian1.jpg',1,1000,1000,1000,1000,1,'已支付','广东省梅州市梅江区江南街道凤尾苑二巷19号3百花洲市场');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809343915 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615809264562,'2021-03-15 19:54:23',1615809227249,21,'fanzhilishi','123','http://localhost:8080/ssmd3ysa/upload/fanzhilishi_zhaopian1.jpg'),(1615809286139,'2021-03-15 19:54:45',1615809227249,31,'fanzhimingren','123','http://localhost:8080/ssmd3ysa/upload/1615809086938.jpg'),(1615809300176,'2021-03-15 19:54:59',1615809227249,41,'fanzhimeishi','123','http://localhost:8080/ssmd3ysa/upload/fanzhimeishi_zhaopian1.jpg'),(1615809343914,'2021-03-15 19:55:43',1615809227249,61,'fanzhizhoubian','123','http://localhost:8080/ssmd3ysa/upload/fanzhizhoubian_zhaopian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','h9ivpo423hp10lfw4s1zfni29b12l0ww','2021-03-15 19:50:25','2021-03-15 20:50:26'),(2,1615809227249,'123','yonghu','用户','c1ww0w20rp9ws1e87lthylbu0v7mz09f','2021-03-15 19:53:52','2021-03-15 20:53:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-15 19:47:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gerenjianjie` longtext COMMENT '个人简介',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615809227250 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`xingming`,`mima`,`zhaopian`,`nianling`,`xingbie`,`shouji`,`youxiang`,`gerenjianjie`,`money`) values (12,'2021-03-15 19:47:28','用户2','姓名2','123456','http://localhost:8080/ssmd3ysa/upload/yonghu_zhaopian2.jpg',2,'男','13823888882','773890002@qq.com','个人简介2',100),(13,'2021-03-15 19:47:28','用户3','姓名3','123456','http://localhost:8080/ssmd3ysa/upload/yonghu_zhaopian3.jpg',3,'男','13823888883','773890003@qq.com','个人简介3',100),(14,'2021-03-15 19:47:28','用户4','姓名4','123456','http://localhost:8080/ssmd3ysa/upload/yonghu_zhaopian4.jpg',4,'男','13823888884','773890004@qq.com','个人简介4',100),(15,'2021-03-15 19:47:28','用户5','姓名5','123456','http://localhost:8080/ssmd3ysa/upload/yonghu_zhaopian5.jpg',5,'男','13823888885','773890005@qq.com','个人简介5',100),(16,'2021-03-15 19:47:28','用户6','姓名6','123456','http://localhost:8080/ssmd3ysa/upload/yonghu_zhaopian6.jpg',6,'男','13823888886','773890006@qq.com','个人简介6',100),(1615809227249,'2021-03-15 19:53:47','123','123','123','http://localhost:8080/ssmd3ysa/upload/1615809406749.jpg',123,'男','12345678910','123@qq.com','123',99999000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
