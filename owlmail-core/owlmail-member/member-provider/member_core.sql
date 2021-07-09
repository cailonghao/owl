create database IF NOT EXISTS `owlmail` default character set utf8 collate utf8_general_ci;

USE owlmail;

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
                               `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                               `username` varchar(50) NOT NULL COMMENT '用户名',
                               `password` varchar(100) DEFAULT NULL COMMENT '密码',
                               `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
                               `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
                               `status` int(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
                               `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
                               `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               `shop_id` bigint(20) DEFAULT NULL COMMENT '用户所在的商城Id',
                               PRIMARY KEY (`user_id`),
                               UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户';