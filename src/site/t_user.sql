-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.16 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 imooc 的数据库结构
CREATE DATABASE IF NOT EXISTS `imooc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `imooc`;


-- 导出  表 imooc.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `pass_word` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `nick_name` varchar(50) NOT NULL COMMENT '昵称',
  `reg_time` varchar(50) NOT NULL COMMENT '注册日期',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  imooc.t_user 的数据：~4 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `user_name`, `pass_word`, `email`, `nick_name`, `reg_time`) VALUES
	(1, '1', '123', '123@qq.com', 'ss', '2017'),
	(2, 'joe', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 11:39:41'),
	(3, 'joe123', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 11:40:02'),
	(4, 'joe spring b', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 12:03:12');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
