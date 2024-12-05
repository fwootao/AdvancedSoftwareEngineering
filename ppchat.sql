SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS `ppchat`;
CREATE DATABASE `ppchat`;
use `ppchat`;

-- ----------------------------
-- Table structure for imgroup
-- ----------------------------
DROP TABLE IF EXISTS `imgroup`;
CREATE TABLE `imgroup`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '群组聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for imsingle
-- ----------------------------
DROP TABLE IF EXISTS `imsingle`;
CREATE TABLE `imsingle`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `fromuser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发送人',
  `fromavatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发送人头像',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `touser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '接收人',
  `toavatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '接收人头像',
  `readed` int(10) NULL DEFAULT 0 COMMENT '是否已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '单人聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (42, '重要！使用该系统注意事项', '为了给大家营造一个良好的聊天氛围，请大家务必不要发送一些不良信息，聊天内容请符合社会主义核心价值观，感谢配合！', '2023-09-11 11:10:29');
INSERT INTO `notice` VALUES (45, 'PP超核聊天室正式上线啦！！', '大家好，这里是PP超核聊天室，您可以在这里畅所欲言，支持单聊、群聊场景，请尽情的放飞自我吧！！', '2023-09-11 11:10:31');
INSERT INTO `notice` VALUES (46, 'PP聊天室升级迭代计划', 'PP超核聊天室1.0版本已经完成了核心的聊天功能，基于websocket实现。后续可能会进行技术上的升级，比如加入Redis，MQ消息等。', '2023-09-11 11:10:18');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(10) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'admin', '123456', '男', 25, '18888222999', 'ADMIN', 'http://localhost:8080/files/1694259927315-柴犬.jpeg');
INSERT INTO `user` VALUES (4, 'admin2', '123456%&', '男', 25, '18844489999', 'ADMIN', 'http://localhost:8080/files/1694259951557-柯基.jpeg');
INSERT INTO `user` VALUES (6, '赵老师', '123456', '男', 25, '18888889999', 'TEACHER', 'http://localhost:8080/files/1694260063562-拉布拉多.jpeg');
INSERT INTO `user` VALUES (7, '张三', '123456', '男', 25, '18888889999', 'STUDENT', 'http://localhost:8080/files/1694260094999-金毛.jpeg');
INSERT INTO `user` VALUES (8, '李四', '123456', '男', 25, '18888889999', 'STUDENT', 'http://localhost:8080/files/1694260169975-奥西猫.jpg');
INSERT INTO `user` VALUES (30, '王五', '123456', '男', 25, '18800001111', 'STUDENT', 'http://localhost:8080/files/1694260192199-伯曼猫.jpg');
INSERT INTO `user` VALUES (31, '赵六', '123456', '女', 25, '18899992222', 'STUDENT', 'http://localhost:8080/files/1694260213765-布偶猫.jpg');
INSERT INTO `user` VALUES (32, '李大嘴', '123456', '女', 25, '18899992222', 'STUDENT', 'http://localhost:8080/files/qy-default.png');
INSERT INTO `user` VALUES (33, '钱老师', '123456', '女', 25, '18899992222', 'TEACHER', 'http://localhost:8080/files/qy-default.png');

SET FOREIGN_KEY_CHECKS = 1;
