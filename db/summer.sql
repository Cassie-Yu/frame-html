-- MySQL Script generated by MySQL Workbench
-- Mon Aug 29 15:33:02 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema summer
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `summer` ;

-- -----------------------------------------------------
-- Schema summer
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `summer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
SHOW WARNINGS;
USE `summer` ;

-- -----------------------------------------------------
-- Table `summer`.`sys_power`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_power` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_power` (
  `id` VARCHAR(145) NOT NULL COMMENT '权限表id',
  `del_flag` INT NULL COMMENT '是否删除的标识字段,1正常,2删除',
  `menu_id` VARCHAR(145) NULL COMMENT '所属栏目的id',
  `name` VARCHAR(145) NULL COMMENT '权限名称',
  `description` VARCHAR(145) NULL COMMENT '简介',
  `icon` VARCHAR(45) NULL COMMENT '图标',
  `sort` INT NULL COMMENT '排序',
  `permission` VARCHAR(75) NULL COMMENT '权限标识',
  `is_show` INT NULL COMMENT '是否显示',
  `create_time` VARCHAR(45) NULL COMMENT '添加时间',
  `create_by` VARCHAR(145) NULL COMMENT '添加人',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL COMMENT '更新人',
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '权限表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_menu` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_menu` (
  `id` VARCHAR(145) NOT NULL COMMENT '菜单表id',
  `del_flag` INT NULL COMMENT '是否删除的标识字段,1正常,2删除',
  `place` INT NULL COMMENT '栏目位置,前台栏目/后台栏目',
  `parent_id` VARCHAR(145) NULL COMMENT '父级菜单id',
  `name` VARCHAR(145) NULL COMMENT '菜单名称',
  `description` VARCHAR(245) NULL COMMENT '菜单的详细描述',
  `href` VARCHAR(245) NULL COMMENT '连接地址',
  `target` VARCHAR(45) NULL COMMENT '目标(mainFrame,_blank,_self,_parent,_top)',
  `icon` VARCHAR(45) NULL COMMENT '图标',
  `sort` INT NULL COMMENT '排列顺序',
  `permission` VARCHAR(75) NULL COMMENT '权限标识',
  `is_show` INT NULL COMMENT '是否显示',
  `create_time` VARCHAR(45) NULL COMMENT '创建时间',
  `create_by` VARCHAR(145) NULL COMMENT '创建人',
  `update_time` VARCHAR(45) NULL COMMENT '修改时间',
  `update_by` VARCHAR(145) NULL COMMENT '修改人',
  `remark` VARCHAR(245) NULL COMMENT '备注',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '菜单表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`wech_msg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`wech_msg` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`wech_msg` (
  `id` VARCHAR(145) NOT NULL COMMENT '消息id',
  `del_flag` INT NULL COMMENT '是否删除的标识字段,1正常,2删除',
  `name` VARCHAR(75) NULL COMMENT '消息的标题,从微信公众平台获取或者自己设定的值',
  `keyword` VARCHAR(145) NULL COMMENT '关键字',
  `msg_type` VARCHAR(45) NULL COMMENT '消息类型',
  `media_id` VARCHAR(254) NULL COMMENT '媒体消息的id,可能是:image_id,music_id,video_id,voice_id',
  `content` VARCHAR(345) NULL COMMENT '当消息为文本时,',
  `title` VARCHAR(145) NULL COMMENT '消息的台头',
  `description` VARCHAR(345) NULL COMMENT '消息的描述',
  `music_url` VARCHAR(245) NULL COMMENT 'music类型的数据,music的连接地址',
  `hq_music_url` VARCHAR(245) NULL COMMENT 'music类型的数据,高品质音乐的连接地址',
  `create_time` VARCHAR(45) NULL COMMENT '添加时间',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '微信,用来存储消息的数据库';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`wech_base`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`wech_base` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`wech_base` (
  `id` VARCHAR(145) NOT NULL COMMENT 'id',
  `del_flag` INT NULL COMMENT '是否删除的标识字段,1正常,2删除',
  `access_token` VARCHAR(245) NULL COMMENT '用于验证的access_token',
  `refresh_token` VARCHAR(245) NULL COMMENT '用于刷新的refresh_token',
  `create_time` VARCHAR(45) NULL COMMENT '添加时间',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '微信基础信息数据';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_user` (
  `id` VARCHAR(145) NOT NULL COMMENT '用户id',
  `del_flag` INT NULL COMMENT '是否删除的标识字段,1正常,2删除',
  `user_name` VARCHAR(145) NULL COMMENT '用户名',
  `pwd` VARCHAR(245) NULL COMMENT '密码',
  `age` INT NULL COMMENT '年龄',
  `gender` INT NULL COMMENT '年龄',
  `phone` VARCHAR(145) NULL COMMENT '电话',
  `phone_state` INT NULL COMMENT '电话状态,是否绑定',
  `email` VARCHAR(145) NULL COMMENT '邮箱',
  `email_state` INT NULL COMMENT '邮件状态,是否绑定',
  `open_id` VARCHAR(145) NULL COMMENT '微信绑定时的openid',
  `wechat_state` INT NULL COMMENT '微信状态,是否绑定',
  `addr` VARCHAR(145) NULL COMMENT '外键',
  `company` INT NULL COMMENT '公司',
  `department` INT NULL COMMENT '部门',
  `position` INT NULL COMMENT '职位',
  `is_lock` INT NULL COMMENT '用户的可使用状态,1:正常,2:锁定',
  `create_time` VARCHAR(45) NULL COMMENT '添加时间',
  `create_by` VARCHAR(145) NULL,
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL,
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '用户表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_role` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_role` (
  `id` VARCHAR(145) NOT NULL COMMENT '角色表id',
  `del_flag` INT NULL COMMENT '伪删除标记字段',
  `name` VARCHAR(45) NULL COMMENT '角色名称',
  `enname` VARCHAR(45) NULL COMMENT '英文名称',
  `create_time` VARCHAR(45) NULL COMMENT '创建时间',
  `create_by` VARCHAR(145) NULL COMMENT '创建者',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL COMMENT '更新者',
  `remark` VARCHAR(245) NULL COMMENT '备注',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '角色表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_user_role` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_user_role` (
  `user_id` VARCHAR(145) NOT NULL COMMENT '用户外键',
  `role_id` VARCHAR(145) NOT NULL COMMENT '角色外键',
  PRIMARY KEY (`user_id`, `role_id`))
ENGINE = InnoDB
COMMENT = '用户角色中间表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_addr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_addr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_addr` (
  `id` VARCHAR(145) NOT NULL COMMENT '地址表id',
  `del_flag` INT NULL COMMENT '伪删除标记字段',
  `user_id` VARCHAR(145) NULL COMMENT '用户外键',
  `type` INT NULL COMMENT '地址类型,(和用户的关系)',
  `is_default` INT NULL COMMENT '是否是默认地址',
  `province` VARCHAR(45) NULL COMMENT '省/直辖市',
  `province_code` INT NULL COMMENT '省/直辖市编码',
  `city` VARCHAR(45) NULL COMMENT '市/县级市',
  `city_code` INT NULL COMMENT '市编码',
  `county` VARCHAR(45) NULL COMMENT '县',
  `county_code` INT NULL COMMENT '县编码',
  `info_addr` VARCHAR(245) NULL COMMENT '详细地址',
  `addressee` VARCHAR(45) NULL COMMENT '收件人',
  `phone` VARCHAR(45) NULL COMMENT '收件人电话',
  `create_time` VARCHAR(45) NULL COMMENT '创建时间',
  `create_by` VARCHAR(145) NULL COMMENT '创建者',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL COMMENT '更新者',
  `remark` VARCHAR(245) NULL COMMENT '备注',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '地址表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_role_menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_role_menu` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_role_menu` (
  `role_id` VARCHAR(145) NOT NULL COMMENT '角色外键',
  `menu_id` VARCHAR(145) NOT NULL COMMENT '栏目外键',
  PRIMARY KEY (`role_id`, `menu_id`))
ENGINE = InnoDB
COMMENT = '角色栏目中间表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_role_power`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_role_power` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_role_power` (
  `role_id` VARCHAR(145) NOT NULL COMMENT '角色id外键',
  `power_id` VARCHAR(145) NULL COMMENT '权限id外键',
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB
COMMENT = '角色权限中间表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_file`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_file` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_file` (
  `id` VARCHAR(145) NOT NULL COMMENT '文件表id',
  `del_flag` INT NULL COMMENT '伪删除字段',
  `sort` INT NULL COMMENT '排序',
  `source_name` VARCHAR(145) NULL COMMENT '原文件名',
  `name` VARCHAR(45) NULL COMMENT '文件名(现在的)',
  `src` VARCHAR(145) NULL COMMENT '文件路径',
  `size` INT NULL COMMENT '文件大小',
  `type` INT NULL COMMENT '文件类型',
  `suffix` VARCHAR(45) NULL COMMENT '文件后缀',
  `create_time` VARCHAR(45) NULL COMMENT '创建时间',
  `create_by` VARCHAR(145) NULL COMMENT '创建人',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL COMMENT '更新人',
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '文件表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_message`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_message` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_message` (
  `id` VARCHAR(145) NOT NULL COMMENT '消息表id',
  `del_flag` INT NULL COMMENT '伪删除字段',
  `title` VARCHAR(75) NULL COMMENT '消息标题',
  `content` VARCHAR(245) NULL COMMENT '消息内容',
  `msg_from` VARCHAR(145) NULL COMMENT '消息发送者',
  `msg_to` VARCHAR(145) NULL COMMENT '消息接收者',
  `read_type` INT NULL COMMENT '消息阅读状态',
  `create_time` VARCHAR(45) NULL COMMENT '创建时间',
  `create_by` VARCHAR(145) NULL COMMENT '创建者',
  `update_time` VARCHAR(45) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL COMMENT '更新者',
  `remark` VARCHAR(145) NULL COMMENT '备注',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '消息表';

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;