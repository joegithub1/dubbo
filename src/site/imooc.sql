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


-- 导出  表 imooc.account 结构
CREATE TABLE IF NOT EXISTS `account` (
  `accid` int(11) NOT NULL,
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  imooc.account 的数据：~2 rows (大约)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`accid`, `money`) VALUES
	(1, 0.00),
	(2, 110.00);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- 导出  表 imooc.teacher_student_ref 结构
CREATE TABLE IF NOT EXISTS `teacher_student_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL COMMENT '关联教师ID',
  `student_id` int(11) NOT NULL COMMENT '关联学生ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='教师与学生关系表';

-- 正在导出表  imooc.teacher_student_ref 的数据：~0 rows (大约)
DELETE FROM `teacher_student_ref`;
/*!40000 ALTER TABLE `teacher_student_ref` DISABLE KEYS */;
INSERT INTO `teacher_student_ref` (`id`, `teacher_id`, `student_id`) VALUES
	(1, 1, 17);
/*!40000 ALTER TABLE `teacher_student_ref` ENABLE KEYS */;


-- 导出  表 imooc.test 结构
CREATE TABLE IF NOT EXISTS `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  imooc.test 的数据：~0 rows (大约)
DELETE FROM `test`;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;


-- 导出  表 imooc.t_department 结构
CREATE TABLE IF NOT EXISTS `t_department` (
  `depa_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '部门ID 主键',
  `depa_name` varchar(50) NOT NULL COMMENT '部门名称',
  `depa_no` int(8) NOT NULL COMMENT '部门编号',
  `is_del` int(8) DEFAULT '0' COMMENT '是否删除',
  `depa_status` int(8) NOT NULL COMMENT '状态 0生效 1禁用',
  PRIMARY KEY (`depa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  imooc.t_department 的数据：~5 rows (大约)
DELETE FROM `t_department`;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` (`depa_id`, `depa_name`, `depa_no`, `is_del`, `depa_status`) VALUES
	(1, '财务部update', 1007, NULL, 0),
	(2, '业务部save', 1001, NULL, 0),
	(3, '事业部', 1003, NULL, 0),
	(4, '安全部update', 1002, NULL, 0),
	(5, '安全防御部', 1006, NULL, 0),
	(6, '测试部门', 10009, 0, 0);
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;


-- 导出  表 imooc.t_student 结构
CREATE TABLE IF NOT EXISTS `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  imooc.t_student 的数据：~2 rows (大约)
DELETE FROM `t_student`;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` (`id`, `age`, `name`) VALUES
	(17, 10, 'AAA'),
	(18, 20, 'BBB');
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;


-- 导出  表 imooc.t_tearcher 结构
CREATE TABLE IF NOT EXISTS `t_tearcher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_age` int(11) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  imooc.t_tearcher 的数据：~2 rows (大约)
DELETE FROM `t_tearcher`;
/*!40000 ALTER TABLE `t_tearcher` DISABLE KEYS */;
INSERT INTO `t_tearcher` (`t_id`, `t_age`, `t_name`) VALUES
	(1, 18, 'zhangsan'),
	(2, 28, 'lisi');
/*!40000 ALTER TABLE `t_tearcher` ENABLE KEYS */;


-- 导出  表 imooc.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `pass_word` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `nick_name` varchar(50) NOT NULL COMMENT '昵称',
  `reg_time` varchar(50) NOT NULL COMMENT '注册日期',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  imooc.t_user 的数据：~11 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `user_name`, `pass_word`, `email`, `nick_name`, `reg_time`) VALUES
	(1, '1', '123', '123@qq.com', 'ss', '2017'),
	(2, 'joe', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 11:39:41'),
	(3, 'joe123', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 11:40:02'),
	(4, 'joe spring b', '123456', 'joe@qq.com', 'spring boot', '2017-09-16 12:03:12'),
	(5, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:10:02'),
	(6, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:12:54'),
	(7, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:14:51'),
	(8, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:15:55'),
	(9, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:25:42'),
	(10, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:25:42'),
	(11, 'zhangsan', '123456', 'zhangsan@126.com', '张三', '2018-04-06 18:26:09');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
