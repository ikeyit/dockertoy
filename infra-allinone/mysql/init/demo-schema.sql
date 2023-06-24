CREATE DATABASE `demo`;
USE `demo`;
CREATE TABLE `user`
(
    `id`         bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `password`   char(64)            DEFAULT NULL COMMENT '密码，存放MD5后的值',
    `loginName`  char(64)            DEFAULT NULL COMMENT '用户名',
    `mobile`     char(32)            DEFAULT NULL COMMENT '手机号',
    `sex`        tinyint(1)          DEFAULT NULL,
    `createTime` timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
    `updateTime` timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改日期',
    PRIMARY KEY (`id`),
    UNIQUE KEY `loginName` (`loginName`),
    UNIQUE KEY `mobile` (`mobile`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT ='用户表';
INSERT INTO `user` (`password`, `loginName`, `mobile`, `sex`)
VALUES ('$2a$10$7euayjUpvbMPdj2rG1H2ueysP/AezgRaHlDAstZgN5Cw9Li/PXwOi', 'Jack', '12344445555', '1');