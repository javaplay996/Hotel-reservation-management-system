/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd539t
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd539t` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd539t`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-17 17:24:24',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-17 17:24:24',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-17 17:24:24',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-17 17:24:24',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-17 17:24:24',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-17 17:24:24',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618651673573 DEFAULT CHARSET=utf8 COMMENT='酒店客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (101,'2021-04-17 17:24:24',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (102,'2021-04-17 17:24:24',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (103,'2021-04-17 17:24:24',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (104,'2021-04-17 17:24:24',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (105,'2021-04-17 17:24:24',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (106,'2021-04-17 17:24:24',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618651673572,'2021-04-17 17:27:53',11,NULL,'呜呜呜',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd539t/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmd539t/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmd539t/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fangjianfenlei` */

DROP TABLE IF EXISTS `fangjianfenlei`;

CREATE TABLE `fangjianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房间分类';

/*Data for the table `fangjianfenlei` */

insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (41,'2021-04-17 17:24:24','房间类型1');
insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (42,'2021-04-17 17:24:24','房间类型2');
insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (43,'2021-04-17 17:24:24','房间类型3');
insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (44,'2021-04-17 17:24:24','房间类型4');
insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (45,'2021-04-17 17:24:24','房间类型5');
insert  into `fangjianfenlei`(`id`,`addtime`,`fangjianleixing`) values (46,'2021-04-17 17:24:24','房间类型6');

/*Table structure for table `jiudiankefu` */

DROP TABLE IF EXISTS `jiudiankefu`;

CREATE TABLE `jiudiankefu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefuhao` varchar(200) NOT NULL COMMENT '客服号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kefuxingming` varchar(200) NOT NULL COMMENT '客服姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kefuhao` (`kefuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='酒店客服';

/*Data for the table `jiudiankefu` */

insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (21,'2021-04-17 17:24:24','酒店客服1','123456','客服姓名1','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian1.jpg','性别1',1,'13823888881','773890001@qq.com',100);
insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (22,'2021-04-17 17:24:24','酒店客服2','123456','客服姓名2','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian2.jpg','性别2',2,'13823888882','773890002@qq.com',100);
insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (23,'2021-04-17 17:24:24','酒店客服3','123456','客服姓名3','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian3.jpg','性别3',3,'13823888883','773890003@qq.com',100);
insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (24,'2021-04-17 17:24:24','酒店客服4','123456','客服姓名4','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian4.jpg','性别4',4,'13823888884','773890004@qq.com',100);
insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (25,'2021-04-17 17:24:24','酒店客服5','123456','客服姓名5','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian5.jpg','性别5',5,'13823888885','773890005@qq.com',100);
insert  into `jiudiankefu`(`id`,`addtime`,`kefuhao`,`mima`,`kefuxingming`,`zhaopian`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`money`) values (26,'2021-04-17 17:24:24','酒店客服6','123456','客服姓名6','http://localhost:8080/ssmd539t/upload/jiudiankefu_zhaopian6.jpg','性别6',6,'13823888886','773890006@qq.com',100);

/*Table structure for table `kefangdingcan` */

DROP TABLE IF EXISTS `kefangdingcan`;

CREATE TABLE `kefangdingcan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dingcanshijian` datetime DEFAULT NULL COMMENT '订餐时间',
  `dingcanshipin` varchar(200) DEFAULT NULL COMMENT '订餐食品',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客房订餐';

/*Data for the table `kefangdingcan` */

insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (81,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian1.jpg','2021-04-17 17:24:24','订餐食品1','账号1','姓名1',1);
insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (82,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian2.jpg','2021-04-17 17:24:24','订餐食品2','账号2','姓名2',2);
insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (83,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian3.jpg','2021-04-17 17:24:24','订餐食品3','账号3','姓名3',3);
insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (84,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian4.jpg','2021-04-17 17:24:24','订餐食品4','账号4','姓名4',4);
insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (85,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian5.jpg','2021-04-17 17:24:24','订餐食品5','账号5','姓名5',5);
insert  into `kefangdingcan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`dingcanshijian`,`dingcanshipin`,`zhanghao`,`xingming`,`userid`) values (86,'2021-04-17 17:24:24','房间编号6','房间名称6','房间类型6','http://localhost:8080/ssmd539t/upload/kefangdingcan_tupian6.jpg','2021-04-17 17:24:24','订餐食品6','账号6','姓名6',6);

/*Table structure for table `kefangxinxi` */

DROP TABLE IF EXISTS `kefangxinxi`;

CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) NOT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) NOT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fangjiansheshi` varchar(200) DEFAULT NULL COMMENT '房间设施',
  `fangjianzhuangtai` varchar(200) DEFAULT NULL COMMENT '房间状态',
  `fangjianjieshao` longtext COMMENT '房间介绍',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianbianhao` (`fangjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='客房信息';

/*Data for the table `kefangxinxi` */

insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/kefangxinxi_tupian1.jpg','房间设施1','可预订','房间介绍1',1,'2021-04-17 17:24:24',1,99.9);
insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (32,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/kefangxinxi_tupian2.jpg','房间设施2','可预订','房间介绍2',2,'2021-04-17 17:24:24',2,99.9);
insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (33,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/kefangxinxi_tupian3.jpg','房间设施3','可预订','房间介绍3',3,'2021-04-17 17:24:24',3,99.9);
insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (34,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/kefangxinxi_tupian4.jpg','房间设施4','可预订','房间介绍4',4,'2021-04-17 17:24:24',4,99.9);
insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (35,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/kefangxinxi_tupian5.jpg','房间设施5','可预订','房间介绍5',5,'2021-04-17 17:24:24',5,99.9);
insert  into `kefangxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjiansheshi`,`fangjianzhuangtai`,`fangjianjieshao`,`fangjianjiage`,`clicktime`,`clicknum`,`price`) values (36,'2021-04-17 17:24:24','房间编号6','海天盛宴','房间类型6','http://localhost:8080/ssmd539t/upload/1618651566034.jpg','房间设施6','可预订','房间介绍6',6,'2021-04-17 17:26:54',10,300);

/*Table structure for table `kefangxuzu` */

DROP TABLE IF EXISTS `kefangxuzu`;

CREATE TABLE `kefangxuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuzushijian` datetime DEFAULT NULL COMMENT '续租时间',
  `xuzutianshu` int(11) DEFAULT NULL COMMENT '续租天数',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618651649125 DEFAULT CHARSET=utf8 COMMENT='客房续租';

/*Data for the table `kefangxuzu` */

insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (91,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian1.jpg','2021-04-17 17:24:24',1,'账号1','姓名1',1);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (92,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian2.jpg','2021-04-17 17:24:24',2,'账号2','姓名2',2);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (93,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian3.jpg','2021-04-17 17:24:24',3,'账号3','姓名3',3);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (94,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian4.jpg','2021-04-17 17:24:24',4,'账号4','姓名4',4);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (95,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian5.jpg','2021-04-17 17:24:24',5,'账号5','姓名5',5);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (96,'2021-04-17 17:24:24','房间编号6','房间名称6','房间类型6','http://localhost:8080/ssmd539t/upload/kefangxuzu_tupian6.jpg','2021-04-17 17:24:24',6,'账号6','姓名6',6);
insert  into `kefangxuzu`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xuzushijian`,`xuzutianshu`,`zhanghao`,`xingming`,`userid`) values (1618651649124,'2021-04-17 17:27:29','房间编号6','海天盛宴','房间类型6','http://localhost:8080/ssmd539t/upload/1618651566034.jpg','2021-04-17 17:27:24',5,'用户1','姓名1',11);

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
) ENGINE=InnoDB AUTO_INCREMENT=1618651666102 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (141,'2021-04-17 17:24:24',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (142,'2021-04-17 17:24:24',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (143,'2021-04-17 17:24:24',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (144,'2021-04-17 17:24:24',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (145,'2021-04-17 17:24:24',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (146,'2021-04-17 17:24:24',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618651666101,'2021-04-17 17:27:45',11,'用户1','哈哈哈哈','呜呜呜呜');

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='酒店新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-04-17 17:24:24','标题1','简介1','http://localhost:8080/ssmd539t/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (132,'2021-04-17 17:24:24','标题2','简介2','http://localhost:8080/ssmd539t/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (133,'2021-04-17 17:24:24','标题3','简介3','http://localhost:8080/ssmd539t/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (134,'2021-04-17 17:24:24','标题4','简介4','http://localhost:8080/ssmd539t/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (135,'2021-04-17 17:24:24','标题5','简介5','http://localhost:8080/ssmd539t/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (136,'2021-04-17 17:24:24','标题6','简介6','http://localhost:8080/ssmd539t/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yudingfangjiandingdan' COMMENT '商品表名',
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
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `ruzhuxinxi` */

DROP TABLE IF EXISTS `ruzhuxinxi`;

CREATE TABLE `ruzhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618651632502 DEFAULT CHARSET=utf8 COMMENT='入住信息';

/*Data for the table `ruzhuxinxi` */

insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (61,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian1.jpg','姓名1','13823888881',1);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (62,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian2.jpg','姓名2','13823888882',2);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (63,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian3.jpg','姓名3','13823888883',3);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (64,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian4.jpg','姓名4','13823888884',4);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (65,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian5.jpg','姓名5','13823888885',5);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (66,'2021-04-17 17:24:24','房间编号6','房间名称6','房间类型6','http://localhost:8080/ssmd539t/upload/ruzhuxinxi_tupian6.jpg','姓名6','13823888886',6);
insert  into `ruzhuxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`xingming`,`lianxidianhua`,`userid`) values (1618651632501,'2021-04-17 17:27:12','房间编号6','海天盛宴','房间类型6','http://localhost:8080/ssmd539t/upload/1618651566034.jpg','姓名1','13823888881',11);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','od9rhvnv8mjly6lkq2djcfg9ozodu8hx','2021-04-17 17:25:40','2021-04-17 18:28:32');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'酒店客服1','jiudiankefu','管理员','p1kex7452oxfdb2hqqq2p1etobcgm43q','2021-04-17 17:25:53','2021-04-17 18:28:08');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','euqo0n5qyjo29nhvoi7owqsfnf611h7y','2021-04-17 17:25:58','2021-04-17 18:28:18');

/*Table structure for table `tuidingxinxi` */

DROP TABLE IF EXISTS `tuidingxinxi`;

CREATE TABLE `tuidingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tuidingshijian` datetime DEFAULT NULL COMMENT '退订时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tuidingyuanyin` longtext COMMENT '退订原因',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='退订信息';

/*Data for the table `tuidingxinxi` */

insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (71,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian1.jpg','2021-04-17 17:24:24','账号1','姓名1','退订原因1',1);
insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (72,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian2.jpg','2021-04-17 17:24:24','账号2','姓名2','退订原因2',2);
insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (73,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian3.jpg','2021-04-17 17:24:24','账号3','姓名3','退订原因3',3);
insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (74,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian4.jpg','2021-04-17 17:24:24','账号4','姓名4','退订原因4',4);
insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (75,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian5.jpg','2021-04-17 17:24:24','账号5','姓名5','退订原因5',5);
insert  into `tuidingxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`tuidingshijian`,`zhanghao`,`xingming`,`tuidingyuanyin`,`userid`) values (76,'2021-04-17 17:24:24','房间编号6','房间名称6','房间类型6','http://localhost:8080/ssmd539t/upload/tuidingxinxi_tupian6.jpg','2021-04-17 17:24:24','账号6','姓名6','退订原因6',6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 17:24:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (11,'2021-04-17 17:24:24','用户1','123456','姓名1','男',1,'13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian1.jpg',5100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (12,'2021-04-17 17:24:24','用户2','123456','姓名2','男',2,'13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (13,'2021-04-17 17:24:24','用户3','123456','姓名3','男',3,'13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (14,'2021-04-17 17:24:24','用户4','123456','姓名4','男',4,'13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (15,'2021-04-17 17:24:24','用户5','123456','姓名5','男',5,'13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`lianxidianhua`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (16,'2021-04-17 17:24:24','用户6','123456','姓名6','男',6,'13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssmd539t/upload/yonghu_zhaopian6.jpg',100);

/*Table structure for table `yudingfangjiandingdan` */

DROP TABLE IF EXISTS `yudingfangjiandingdan`;

CREATE TABLE `yudingfangjiandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `price` float NOT NULL COMMENT '价格',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618651611992 DEFAULT CHARSET=utf8 COMMENT='预订房间订单';

/*Data for the table `yudingfangjiandingdan` */

insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (51,'2021-04-17 17:24:24','房间编号1','房间名称1','房间类型1','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian1.jpg',1,'账号1','姓名1','13823888881','备注1','是','',99.9,1);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (52,'2021-04-17 17:24:24','房间编号2','房间名称2','房间类型2','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian2.jpg',2,'账号2','姓名2','13823888882','备注2','是','',99.9,2);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (53,'2021-04-17 17:24:24','房间编号3','房间名称3','房间类型3','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian3.jpg',3,'账号3','姓名3','13823888883','备注3','是','',99.9,3);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (54,'2021-04-17 17:24:24','房间编号4','房间名称4','房间类型4','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian4.jpg',4,'账号4','姓名4','13823888884','备注4','是','',99.9,4);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (55,'2021-04-17 17:24:24','房间编号5','房间名称5','房间类型5','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian5.jpg',5,'账号5','姓名5','13823888885','备注5','是','',99.9,5);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (56,'2021-04-17 17:24:24','房间编号6','房间名称6','房间类型6','http://localhost:8080/ssmd539t/upload/yudingfangjiandingdan_tupian6.jpg',6,'账号6','姓名6','13823888886','备注6','是','',99.9,6);
insert  into `yudingfangjiandingdan`(`id`,`addtime`,`fangjianbianhao`,`fangjianmingcheng`,`fangjianleixing`,`tupian`,`fangjianjiage`,`zhanghao`,`xingming`,`lianxidianhua`,`beizhu`,`sfsh`,`shhf`,`price`,`userid`) values (1618651611991,'2021-04-17 17:26:51','房间编号6','海天盛宴','房间类型6','http://localhost:8080/ssmd539t/upload/1618651566034.jpg',6,'用户1','姓名1','13823888881','<p>请输入备注</p>','是',NULL,300,11);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
