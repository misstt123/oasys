/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : oasys

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-10-28 23:16:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aoa_attachment_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_attachment_list`;
CREATE TABLE `aoa_attachment_list` (
  `attachment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `attachment_shuffix` varchar(255) DEFAULT NULL,
  `attachment_size` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_attachment_list
-- ----------------------------
INSERT INTO `aoa_attachment_list` VALUES ('3', '5.jpg', '/2017/09/罗密欧/a554a26e-546f-4da5-b9ed-80454851e590.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-09-18 16:33:25', '1');
INSERT INTO `aoa_attachment_list` VALUES ('6', '4.jpg', '/2017/09/罗密欧/74b9678a-1689-4a62-9345-68825e256cd6.jpg', 'jpg', '133831', 'image/jpeg', 'note', '2019-09-15 11:01:08', '1');
INSERT INTO `aoa_attachment_list` VALUES ('7', '3.jpg', '/2017/09/罗密欧/fb8d46c2-fe8c-4e5e-9d1e-a7e937a16d77.jpg', 'jpg', '231999', 'image/jpeg', 'note', '2019-09-15 11:04:38', '1');
INSERT INTO `aoa_attachment_list` VALUES ('8', '3.jpg', '/2017/09/罗密欧/67ea8f24-1a07-4618-acf8-7a4b2f093e0d.jpg', 'jpg', '231999', 'image/jpeg', 'note', '2019-09-15 11:09:21', '1');
INSERT INTO `aoa_attachment_list` VALUES ('9', 'Spring面试题（含答案）_20190220222455.pdf', '/2019/10/venom/3b634fb1-b56f-4466-ae01-b31643ff7dd9.pdf', 'pdf', '359363', 'application/pdf', 'note', '2019-10-27 12:30:08', '1');
INSERT INTO `aoa_attachment_list` VALUES ('10', '5.jpg', '/2017/09/罗密欧/e9a07fda-551f-4351-af86-68dfe5e8bad4.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-09-15 20:11:22', '1');
INSERT INTO `aoa_attachment_list` VALUES ('11', '5.jpg', '/2017/09/罗密欧/0cdd59d1-1d49-4e03-aa9c-2f56779303f1.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-09-15 20:14:50', '1');
INSERT INTO `aoa_attachment_list` VALUES ('12', '5.jpg', '/2017/09/罗密欧/9700c576-58bc-4036-aecd-e704b22f7175.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-09-15 20:37:24', '1');
INSERT INTO `aoa_attachment_list` VALUES ('13', '5.jpg', '/2017/09/罗密欧/eec316a6-f7e8-4b85-a8d5-72f2af01256a.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-09-15 23:06:24', '1');
INSERT INTO `aoa_attachment_list` VALUES ('44', '1.jpg', '/2017/09/罗密欧/aa5be2a8-5705-4199-b1ba-0df2424e3eb8.jpg', 'jpg', '191177', 'image/jpeg', 'note', '2019-09-23 15:30:09', '1');
INSERT INTO `aoa_attachment_list` VALUES ('46', '4.jpg', '/2017/09/罗密欧/f459a35a-439a-4d4d-a684-731d3bc48c88.jpg', 'jpg', '133831', 'image/jpeg', 'note', '2019-09-23 16:11:11', '1');
INSERT INTO `aoa_attachment_list` VALUES ('47', '1.jpg', '/2017/09/罗密欧/44bc1ad7-0e2e-4569-afc1-385783a955bf.jpg', 'jpg', '191177', 'image/jpeg', 'note', '2019-09-23 16:37:05', '1');
INSERT INTO `aoa_attachment_list` VALUES ('48', 'touxiang.jpg', '/2017/09/罗密欧/32bd13b9-40f6-4273-bb4a-96a064db8931.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 19:40:05', '1');
INSERT INTO `aoa_attachment_list` VALUES ('49', '30D06FF1176D3C568E37CBE221D2E542.png', '/2017/09/罗密欧/db7577dd-c8aa-4276-a0af-44a1a19866f8.png', 'png', '71260', 'image/png', 'mail', '2019-09-28 21:24:38', '1');
INSERT INTO `aoa_attachment_list` VALUES ('50', 'wenwu.gif', '/2017/09/罗密欧/ebbf1830-0808-4cd8-ac43-f40bef5eb514.gif', 'gif', '3532', 'image/gif', 'mail', '2019-09-28 21:27:45', '1');
INSERT INTO `aoa_attachment_list` VALUES ('51', 'wenwu.gif', '/2017/09/罗密欧/f86b2292-0ebe-4d34-bf44-ef042b9b7869.gif', 'gif', '3532', 'image/gif', 'mail', '2019-09-28 21:30:40', '1');
INSERT INTO `aoa_attachment_list` VALUES ('52', 'touxiang.jpg', '/2017/09/罗密欧/8235e27e-3ad3-4b86-bd6d-f26503d9f394.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 21:37:44', '1');
INSERT INTO `aoa_attachment_list` VALUES ('53', 'touxiang.jpg', '/2017/09/罗密欧/fc55113a-d2ed-4d7a-bed1-8659c9cb301e.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 21:46:48', '1');
INSERT INTO `aoa_attachment_list` VALUES ('54', 'touxiang.jpg', '/2017/09/罗密欧/e2bbea23-4b30-4407-b0c2-0fdced499a54.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 21:53:24', '1');
INSERT INTO `aoa_attachment_list` VALUES ('55', 'touxiang.jpg', '/2017/09/罗密欧/3e3f94aa-b956-460f-811a-91af4438f9f3.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 22:00:37', '1');
INSERT INTO `aoa_attachment_list` VALUES ('56', 'touxiang.jpg', '/2017/09/罗密欧/0c75fe6e-0e3b-4e3e-b1c2-50de92f09664.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 22:03:46', '1');
INSERT INTO `aoa_attachment_list` VALUES ('57', 'touxiang.jpg', '/2017/09/罗密欧/9ef69729-1a49-4d3c-9ed1-75a601d0ae20.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-09-28 22:20:12', '1');
INSERT INTO `aoa_attachment_list` VALUES ('58', '截图.png', '/2017/09/罗密欧/61c319da-b1ea-4d83-815c-5abb824e977c.png', 'png', '195652', 'image/png', 'mail', '2019-09-29 22:09:51', '1');
INSERT INTO `aoa_attachment_list` VALUES ('59', 'touxiang.jpg', '/2017/10/朱丽叶/e59201dd-65ef-4f0f-801d-999d31be6d75.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-01 12:46:44', '2');
INSERT INTO `aoa_attachment_list` VALUES ('60', 'touxiang.jpg', '/2017/10/罗密欧/e54faef8-b6aa-4451-8fef-a7c14aea2b86.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-01 19:39:14', '1');
INSERT INTO `aoa_attachment_list` VALUES ('61', '30D06FF1176D3C568E37CBE221D2E542.png', '/2017/10/罗密欧/7ab2398a-0295-4e53-8037-10e10b5519fb.png', 'png', '71260', 'image/png', 'mail', '2019-10-02 14:49:56', '1');
INSERT INTO `aoa_attachment_list` VALUES ('62', 'touxiang.jpg', '/2017/10/罗密欧/e2036a84-4bf0-4637-bf0f-18888745986d.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-06 11:02:49', '1');
INSERT INTO `aoa_attachment_list` VALUES ('64', '4.jpg', '/2017/10/罗密欧/280308d8-2aca-40af-8868-b138aee8d71d.jpg', 'jpg', '133831', 'image/jpeg', 'note', '2019-10-07 16:03:03', '1');
INSERT INTO `aoa_attachment_list` VALUES ('65', '1.jpg', '/2017/10/罗密欧/eabc7cbe-5406-491a-a7f5-52214af201cc.jpg', 'jpg', '191177', 'image/jpeg', 'note', '2019-10-07 16:03:58', '1');
INSERT INTO `aoa_attachment_list` VALUES ('66', 'touxiang.jpg', '/2017/10/光宇/ea6c9723-9a0f-46e0-adbc-1cf41b44a805.jpg', 'jpg', '12124', 'image/jpeg', 'aoa_bursement', '2019-10-12 23:25:57', '18');
INSERT INTO `aoa_attachment_list` VALUES ('67', 'touxiang.jpg', '/2017/10/伊丽莎白/b11342e1-bcf1-4196-b6a3-b900a5ce1c7a.jpg', 'jpg', '12124', 'image/jpeg', 'aoa_bursement', '2019-10-14 21:22:35', '3');
INSERT INTO `aoa_attachment_list` VALUES ('68', 'touxiang.jpg', '/2017/10/光宇/d2377f04-95b7-49a3-95d1-e7ea7d51b204.jpg', 'jpg', '12124', 'image/jpeg', 'aoa_bursement', '2019-10-15 19:17:46', '18');
INSERT INTO `aoa_attachment_list` VALUES ('69', 'touxiang.jpg', '/2017/10/光宇/ab5ebe75-a3ca-482f-96ea-ab353b3521fd.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-16 17:17:51', '18');
INSERT INTO `aoa_attachment_list` VALUES ('70', 'touxiang.jpg', '/2017/10/罗密欧/3190c54b-ccdd-435c-8796-59f3d714b605.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-16 17:42:16', '1');
INSERT INTO `aoa_attachment_list` VALUES ('71', '3.jpg', '/2017/10/罗密欧/49cca32e-a317-4cb3-b804-7a7ffe6b70ea.jpg', 'jpg', '231999', 'image/jpeg', 'note', '2019-10-18 16:13:02', '1');
INSERT INTO `aoa_attachment_list` VALUES ('72', 'touxiang.jpg', '/2017/10/罗密欧/9bb7b8a0-cdc2-4e6a-bbf9-76741ec6d9f8.jpg', 'jpg', '12124', 'image/jpeg', 'mail', '2019-10-18 17:45:16', '1');
INSERT INTO `aoa_attachment_list` VALUES ('73', 'timg.jpeg', '/2017/10/soli/f8055ab3-eb20-47bd-b015-b5b602ddb905.jpeg', 'jpeg', '696381', 'image/jpeg', 'note', '2019-10-19 23:37:37', '5');
INSERT INTO `aoa_attachment_list` VALUES ('74', '2.jpg', '/2017/10/小李父斯基/294ccc18-1710-4fbf-8fff-4d547102d9d4.jpg', 'jpg', '302654', 'image/jpeg', 'note', '2019-10-20 10:35:00', '4');
INSERT INTO `aoa_attachment_list` VALUES ('75', '3.jpg', '/2017/10/小李父斯基/7d7ffa12-5120-4c2d-85f0-71f3e61cde78.jpg', 'jpg', '231999', 'image/jpeg', 'note', '2019-10-20 10:36:07', '4');
INSERT INTO `aoa_attachment_list` VALUES ('76', '5.jpg', '/2017/10/甄姬/9fbe4e2b-21be-40a4-bc95-0e10fdbc6183.jpg', 'jpg', '175797', 'image/jpeg', 'note', '2019-10-20 10:40:03', '7');
INSERT INTO `aoa_attachment_list` VALUES ('77', '3.jpg', '/2017/10/罗密欧/1b01a1e2-17bf-4e96-98e5-dc8f30526c1c.jpg', 'jpg', '231999', 'image/jpeg', 'note', '2019-10-22 09:21:27', '1');
INSERT INTO `aoa_attachment_list` VALUES ('78', '4.jpg', '/2017/10/罗密欧/96d0f196-b218-4e26-88e5-5ec1116271a1.jpg', 'jpg', '133831', 'image/jpeg', 'note', '2019-10-22 09:13:12', '1');
INSERT INTO `aoa_attachment_list` VALUES ('80', '2.jpg', '/2017/10/罗密欧/5026b08c-354d-427d-8fb2-37c0f7b70199.jpg', 'jpg', '302654', 'image/jpeg', 'note', '2019-10-22 09:33:49', '1');
INSERT INTO `aoa_attachment_list` VALUES ('81', '1.jpg', '/2017/10/罗密欧/000d6a4f-1a29-44fc-8daf-fe4208eebc54.jpg', 'jpg', '191177', 'image/jpeg', 'note', '2019-10-22 10:00:19', '1');
INSERT INTO `aoa_attachment_list` VALUES ('82', '1.jpg', '/2017/10/罗密欧/976c2665-b059-4303-8e59-1ebc1a495ea5.jpg', 'jpg', '191177', 'image/jpeg', 'note', '2019-10-22 11:28:16', '1');
INSERT INTO `aoa_attachment_list` VALUES ('85', '国税协同办公平台纳税服务系统简历 - 简历部分.docx', '2019/10/venom/51d16e35-3400-453a-a7e1-67791ed0e94f.docx', 'docx', '19779', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'note', '2019-10-26 22:44:44', '8');
INSERT INTO `aoa_attachment_list` VALUES ('87', '招聘宣讲会.jpg', '/2019/10/venom/81e796bc-6a56-4fe8-8387-90289b3d8a27.jpg', 'jpg', '51988', 'image/jpeg', 'note', '2019-10-27 12:39:40', '8');
INSERT INTO `aoa_attachment_list` VALUES ('89', 'jiaban.jpg', '2019/10/test/9db4711e-9085-4afd-ae91-f86763a5d36b.jpg', 'jpg', '22603', 'image/jpeg', 'aoa_bursement', '2019-10-28 16:46:21', '36');

-- ----------------------------
-- Table structure for aoa_attends_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_attends_list`;
CREATE TABLE `aoa_attends_list` (
  `attends_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attends_ip` varchar(20) DEFAULT NULL,
  `attends_remark` varchar(20) DEFAULT NULL,
  `attends_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `attends_user_id` bigint(20) DEFAULT NULL,
  `attend_hmtime` varchar(255) DEFAULT NULL,
  `week_ofday` varchar(255) DEFAULT NULL,
  `holiday_days` double(255,0) DEFAULT '0',
  `holiday_start` date DEFAULT NULL,
  PRIMARY KEY (`attends_id`),
  KEY `FKaxgqsm98npnl1rxysh9upfjee` (`attends_user_id`),
  CONSTRAINT `FKaxgqsm98npnl1rxysh9upfjee` FOREIGN KEY (`attends_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_attends_list
-- ----------------------------
INSERT INTO `aoa_attends_list` VALUES ('1', '127.0.0.1', '上班正常4', '2019-10-24 12:55:56', '10', '8', '4', '08:16', '星期三', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('2', '127.0.0.1', '上班迟到2', '2019-10-24 12:55:56', '11', '8', '4', '12:40', '星期二', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('3', '127.0.0.1', '下班正常', '2019-10-24 12:55:56', '10', '9', '4', '18:49', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('12', null, null, '2019-10-24 12:55:56', '11', '8', '2', '22:17', '星期四', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('13', null, null, '2019-10-24 12:55:56', '10', '9', '2', '22:35', '星期四', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('14', null, null, '2019-10-24 12:55:56', '11', '8', '2', '09:50', '星期五', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('15', null, null, '2019-10-24 12:55:56', '10', '9', '2', '18:49', '星期五', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('22', null, null, '2019-10-24 12:55:56', null, '8', '2', null, null, '0', null);
INSERT INTO `aoa_attends_list` VALUES ('23', null, null, '2019-10-24 12:55:56', null, '8', '2', null, null, '0', null);
INSERT INTO `aoa_attends_list` VALUES ('24', null, null, '2019-10-24 12:55:56', '11', '8', '2', '10:49', '星期日', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('25', null, null, '2019-10-24 12:55:56', '10', '9', '2', '20:29', '星期日', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('26', null, null, '2019-10-24 12:55:56', '11', '8', '2', '13:10', '星期一', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('27', null, null, '2019-10-24 12:55:56', '10', '9', '2', '18:53', '星期一', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('28', null, null, '2019-10-24 12:55:56', '11', '8', '2', '12:30', '星期二', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('29', null, null, '2019-10-24 12:55:56', '11', '8', '2', '13:26', '星期四', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('30', null, null, '2019-10-24 12:55:56', '12', '9', '2', '13:29', '星期四', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('32', null, null, '2019-10-24 12:55:56', '10', '9', '2', '16:24', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('33', null, null, '2019-10-24 12:55:56', '11', '8', '2', '10:19', '星期日', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('34', null, null, '2019-10-24 12:55:56', '11', '8', '2', '10:59', '星期一', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('35', '192.168.43.91', null, '2019-10-24 12:55:56', '12', '9', '2', '14:05', '星期一', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('36', '172.31.16.188', null, '2019-10-24 12:55:56', '11', '8', '1', '16:08', '星期一', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('37', '192.168.43.91', null, '2019-10-24 12:55:56', '11', '8', '1', '15:22', '星期四', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('39', '172.31.17.170', null, '2019-10-24 12:55:56', '11', '8', '5', '15:08', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('40', '172.31.17.170', null, '2019-10-24 12:55:56', '12', '9', '5', '15:09', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('41', '172.31.17.170', '娃娃', '2019-10-24 12:55:56', '11', '8', '6', '15:09', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('42', '172.31.17.170', null, '2019-10-24 12:55:56', '12', '9', '6', '15:10', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('43', '172.31.17.170', null, '2019-10-24 12:55:56', '11', '8', '7', '15:10', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('44', '172.31.17.170', null, '2019-10-24 12:55:56', '12', '9', '7', '15:11', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('45', '172.31.17.170', '迟到了 尴尬', '2019-10-24 12:55:56', '11', '8', '4', '16:03', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('46', null, null, '2019-10-24 12:55:56', '46', null, '7', null, null, '3', '2017-10-19');
INSERT INTO `aoa_attends_list` VALUES ('47', '172.31.17.170', null, '2019-10-24 12:55:56', '11', '8', '3', '16:18', '星期六', '0', null);
INSERT INTO `aoa_attends_list` VALUES ('48', '192.168.1.233', null, '2019-10-24 12:55:56', '11', '8', '7', '10:28', '星期日', null, null);
INSERT INTO `aoa_attends_list` VALUES ('49', '192.168.56.1', null, '2019-10-24 12:55:56', '11', '8', '1', '12:55', '星期四', null, null);
INSERT INTO `aoa_attends_list` VALUES ('50', '192.168.56.1', null, '2019-10-24 12:56:09', '12', '9', '1', '12:56', '星期四', null, null);
INSERT INTO `aoa_attends_list` VALUES ('51', '192.168.56.1', null, '2019-10-24 16:09:50', '11', '8', '8', '16:09', '星期四', null, null);
INSERT INTO `aoa_attends_list` VALUES ('52', '192.168.56.1', null, '2019-10-24 16:25:04', '12', '9', '8', '16:25', '星期四', null, null);
INSERT INTO `aoa_attends_list` VALUES ('53', '192.168.56.1', null, '2019-10-25 08:03:38', '11', '8', '8', '08:03', '星期五', null, null);
INSERT INTO `aoa_attends_list` VALUES ('54', '192.168.56.1', null, '2019-10-25 11:05:16', '12', '9', '8', '11:05', '星期五', null, null);
INSERT INTO `aoa_attends_list` VALUES ('55', '192.168.56.1', null, '2019-10-26 10:27:40', '11', '8', '1', '10:27', '星期六', null, null);
INSERT INTO `aoa_attends_list` VALUES ('56', '192.168.56.1', null, '2019-10-26 10:27:58', '12', '9', '1', '10:27', '星期六', null, null);
INSERT INTO `aoa_attends_list` VALUES ('57', '192.168.56.1', null, '2019-10-26 10:29:05', '11', '8', '8', '10:29', '星期六', null, null);
INSERT INTO `aoa_attends_list` VALUES ('58', '192.168.56.1', null, '2019-10-26 10:29:10', '12', '9', '8', '10:29', '星期六', null, null);
INSERT INTO `aoa_attends_list` VALUES ('59', '192.168.56.1', null, '2019-10-27 08:56:47', '11', '8', '8', '08:56', '星期日', null, null);
INSERT INTO `aoa_attends_list` VALUES ('60', '192.168.56.1', null, '2019-10-27 08:57:23', '11', '8', '1', '08:57', '星期日', null, null);
INSERT INTO `aoa_attends_list` VALUES ('61', '192.168.56.1', null, '2019-10-27 12:32:16', '12', '9', '8', '12:32', '星期日', null, null);
INSERT INTO `aoa_attends_list` VALUES ('62', '192.168.56.1', null, '2019-10-27 15:56:06', '12', '9', '1', '15:56', '星期日', null, null);
INSERT INTO `aoa_attends_list` VALUES ('63', '192.168.56.1', null, '2019-10-28 08:21:45', '11', '8', '2', '08:21', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('64', '192.168.56.1', null, '2019-10-28 08:22:09', '11', '8', '8', '08:22', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('65', '192.168.56.1', null, '2019-10-28 08:29:16', '12', '9', '8', '08:29', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('66', '192.168.56.1', null, '2019-10-28 08:29:34', '11', '8', '36', '08:29', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('67', '192.168.56.1', null, '2019-10-28 08:38:30', '12', '9', '36', '08:38', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('68', '192.168.56.1', null, '2019-10-28 10:23:54', '11', '8', '4', '10:23', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('69', '192.168.56.1', null, '2019-10-28 10:23:59', '12', '9', '4', '10:23', '星期一', null, null);
INSERT INTO `aoa_attends_list` VALUES ('70', null, null, null, '46', null, '36', null, null, '1', '2019-10-28');
INSERT INTO `aoa_attends_list` VALUES ('71', null, null, null, '46', null, '10', null, null, '3', '2019-10-19');
INSERT INTO `aoa_attends_list` VALUES ('72', null, null, null, '46', null, '10', null, null, '3', '2019-10-19');
INSERT INTO `aoa_attends_list` VALUES ('73', null, null, null, '46', null, '36', null, null, '0', '2019-10-28');

-- ----------------------------
-- Table structure for aoa_bursement
-- ----------------------------
DROP TABLE IF EXISTS `aoa_bursement`;
CREATE TABLE `aoa_bursement` (
  `bursement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `all_money` double DEFAULT NULL,
  `allinvoices` int(11) DEFAULT NULL,
  `burse_time` datetime DEFAULT NULL,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `operation_name` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`bursement_id`),
  KEY `FKt3xu5y23deh0mtqkfk3ly6219` (`operation_name`),
  KEY `FK666vswh4nl3voq8qalu73v2sq` (`pro_id`),
  KEY `FKgnqp4eax31sh7mn3lt2su7olr` (`user_name`),
  CONSTRAINT `FK666vswh4nl3voq8qalu73v2sq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`),
  CONSTRAINT `FKgnqp4eax31sh7mn3lt2su7olr` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt3xu5y23deh0mtqkfk3ly6219` FOREIGN KEY (`operation_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_bursement
-- ----------------------------
INSERT INTO `aoa_bursement` VALUES ('1', '25', '3', null, null, null, '刘敏', '25', null, '1', '1');
INSERT INTO `aoa_bursement` VALUES ('2', '11', '1', '2019-10-11 22:40:26', '防微杜渐返回为子发hi黯然无光狂热就', '防微杜渐返回为子发hi黯然无光狂热就', '咕咕咕咕', '25', '5', '2', '3');
INSERT INTO `aoa_bursement` VALUES ('3', '33', '3', null, null, null, '刘敏', '25', null, '3', '9');
INSERT INTO `aoa_bursement` VALUES ('4', '11', '1', null, null, null, '刘敏', '25', null, '4', '8');
INSERT INTO `aoa_bursement` VALUES ('5', '11', '1', '2019-10-11 22:31:50', '范德萨地方大发地方撒大', '范德萨地方大发地方撒大', '宋佳', '25', null, '5', '9');
INSERT INTO `aoa_bursement` VALUES ('6', '11', '1', null, null, null, '多对多', '25', null, '6', '4');
INSERT INTO `aoa_bursement` VALUES ('7', '5', '1', null, null, '属实', '宋佳', '25', null, '7', '9');
INSERT INTO `aoa_bursement` VALUES ('8', '1000', '1', null, null, null, '宋佳', '25', null, '8', '2');
INSERT INTO `aoa_bursement` VALUES ('9', '1000', '1', null, null, null, '刘敏', '25', null, '9', '9');
INSERT INTO `aoa_bursement` VALUES ('10', '100', '1', null, null, null, 'jluzh', '25', null, '26', '4');

-- ----------------------------
-- Table structure for aoa_catalog
-- ----------------------------
DROP TABLE IF EXISTS `aoa_catalog`;
CREATE TABLE `aoa_catalog` (
  `catalog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cata_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `FKbsk5nkjlqmd8j9rmkarse6j1x` (`cata_user_id`),
  CONSTRAINT `FKbsk5nkjlqmd8j9rmkarse6j1x` FOREIGN KEY (`cata_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_catalog
-- ----------------------------
INSERT INTO `aoa_catalog` VALUES ('1', 'note', '1', '1');
INSERT INTO `aoa_catalog` VALUES ('2', '诗词记录', '1', '1');
INSERT INTO `aoa_catalog` VALUES ('9', '秒懂百科', '1', '2');
INSERT INTO `aoa_catalog` VALUES ('11', '上课要案', '1', '3');
INSERT INTO `aoa_catalog` VALUES ('12', '错题收集', '1', '3');
INSERT INTO `aoa_catalog` VALUES ('32', '规划(3)', '1', '1');
INSERT INTO `aoa_catalog` VALUES ('33', '根目录', '1', null);
INSERT INTO `aoa_catalog` VALUES ('34', '规划(4)', '1', '1');
INSERT INTO `aoa_catalog` VALUES ('39', '重要笔记', null, '8');

-- ----------------------------
-- Table structure for aoa_comment_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_comment_list`;
CREATE TABLE `aoa_comment_list` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment_user_id` bigint(20) DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK2k00kkfhh93949ybod7qn56ax` (`comment_user_id`),
  KEY `FKeopff14rxco5thbwwlu7exglo` (`reply_id`),
  CONSTRAINT `FK2k00kkfhh93949ybod7qn56ax` FOREIGN KEY (`comment_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKeopff14rxco5thbwwlu7exglo` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_comment_list
-- ----------------------------
INSERT INTO `aoa_comment_list` VALUES ('2', '范德萨发', '2019-10-01 22:07:29', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('8', '@朱丽叶 你要干嘛？', '2019-10-02 13:37:48', '1', '2');
INSERT INTO `aoa_comment_list` VALUES ('9', '哇哇哇，interesting', '2019-10-02 13:38:20', '1', '3');
INSERT INTO `aoa_comment_list` VALUES ('10', 'N这个死鬼', '2019-10-02 13:48:28', '1', '4');
INSERT INTO `aoa_comment_list` VALUES ('15', '有什么问题么？', '2019-10-02 16:48:21', '1', '8');
INSERT INTO `aoa_comment_list` VALUES ('21', 'fasd fds ', '2019-10-03 00:35:14', '1', '7');
INSERT INTO `aoa_comment_list` VALUES ('23', '年轻人，年轻的一批', '2019-10-03 00:52:28', '1', '16');
INSERT INTO `aoa_comment_list` VALUES ('24', '你要干嘛？', '2019-10-03 00:55:03', '1', '14');
INSERT INTO `aoa_comment_list` VALUES ('25', ' 哇哇，你真的是过分呀', '2019-10-03 00:55:27', '1', '9');
INSERT INTO `aoa_comment_list` VALUES ('26', '大四范德萨', '2019-10-03 01:03:01', '1', '17');
INSERT INTO `aoa_comment_list` VALUES ('27', '范德萨发爱迪生', '2019-10-03 01:03:43', '1', '17');
INSERT INTO `aoa_comment_list` VALUES ('29', '@罗密欧 你好；', '2019-10-03 11:20:37', '1', '17');
INSERT INTO `aoa_comment_list` VALUES ('30', '@罗密欧 你好；；', '2019-10-03 11:21:25', '1', '17');
INSERT INTO `aoa_comment_list` VALUES ('31', ' 回复你又没有问题；', '2019-10-03 11:22:06', '1', '18');
INSERT INTO `aoa_comment_list` VALUES ('34', '发生大法师', '2019-10-04 01:33:18', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('35', '富士达发', '2019-10-04 01:36:40', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('36', '范德萨', '2019-10-04 01:36:48', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('37', '@朱丽叶 有意思', '2019-10-04 01:37:51', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('38', '你哟啊干嘛？', '2019-10-04 01:38:05', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('39', '@朱丽叶 回复可以么？', '2019-10-04 01:40:22', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('40', ' 来恢复把', '2019-10-04 01:41:28', '2', '62');
INSERT INTO `aoa_comment_list` VALUES ('41', '第一次回复是可以的', '2019-10-04 01:45:47', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('42', '@朱丽叶 第二次回复', '2019-10-04 01:46:07', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('43', '@朱丽叶 第二次回复，第三次回复', '2019-10-04 01:46:25', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('44', '@朱丽叶  你就是朱丽叶呀', '2019-10-04 01:46:43', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('45', '@朱丽叶  你就是朱丽叶呀，我不是，我什么都不是', '2019-10-04 01:46:58', '2', '61');
INSERT INTO `aoa_comment_list` VALUES ('46', ' 没有东西是吧', '2019-10-04 01:51:41', '2', '64');
INSERT INTO `aoa_comment_list` VALUES ('47', '@朱丽叶  克可达', '2019-10-04 01:51:51', '2', '64');
INSERT INTO `aoa_comment_list` VALUES ('48', '你要干啥？', '2019-10-04 01:52:00', '2', '64');
INSERT INTO `aoa_comment_list` VALUES ('49', ' 我也想知道为什么？', '2019-10-04 01:53:02', '2', '66');
INSERT INTO `aoa_comment_list` VALUES ('50', ' 来，再加一条', '2019-10-04 01:54:12', '2', '66');
INSERT INTO `aoa_comment_list` VALUES ('51', '这一次试试', '2019-10-04 01:56:16', '2', '67');
INSERT INTO `aoa_comment_list` VALUES ('52', '第八条', '2019-10-04 01:57:53', '2', '67');
INSERT INTO `aoa_comment_list` VALUES ('53', ' 再试一下', '2019-10-04 01:59:52', '2', '67');
INSERT INTO `aoa_comment_list` VALUES ('54', '发生', '2019-10-04 03:25:38', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('55', '范德萨', '2019-10-04 03:25:43', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('56', '@朱丽叶发 是粉色是', '2019-10-04 03:25:59', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('57', '@朱丽叶 现在开始没有entity了', '2019-10-04 03:26:34', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('58', ' 再是一次', '2019-10-04 03:29:28', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('59', ' 回复一下', '2019-10-04 03:30:23', '2', '60');
INSERT INTO `aoa_comment_list` VALUES ('60', ' 没有评论，我怎么办嘛\n', '2019-10-04 03:31:42', '2', '71');
INSERT INTO `aoa_comment_list` VALUES ('61', '再来一次', '2019-10-04 03:31:56', '2', '72');
INSERT INTO `aoa_comment_list` VALUES ('64', '@朱丽叶6666666', '2019-10-05 23:02:39', '2', '73');
INSERT INTO `aoa_comment_list` VALUES ('65', '@朱丽叶 地方撒', '2019-10-05 23:03:14', '2', '73');
INSERT INTO `aoa_comment_list` VALUES ('66', '@朱丽叶6767', '2019-10-05 23:04:05', '2', '73');
INSERT INTO `aoa_comment_list` VALUES ('67', '@朱丽叶鼎折覆餗', '2019-10-05 23:04:24', '2', '73');
INSERT INTO `aoa_comment_list` VALUES ('68', '让他', '2019-10-05 23:07:36', '2', '58');
INSERT INTO `aoa_comment_list` VALUES ('69', '手动阀', '2019-10-05 23:07:47', '2', '58');
INSERT INTO `aoa_comment_list` VALUES ('70', '@朱丽叶大', '2019-10-05 23:07:54', '2', '58');
INSERT INTO `aoa_comment_list` VALUES ('71', '发生', '2019-10-05 23:18:47', '7', '73');
INSERT INTO `aoa_comment_list` VALUES ('72', '@甄姬而我若', '2019-10-05 23:19:06', '7', '73');
INSERT INTO `aoa_comment_list` VALUES ('73', ' 加一条评论', '2019-10-06 13:38:56', '1', '33');
INSERT INTO `aoa_comment_list` VALUES ('74', ' 再加一条', '2019-10-06 13:39:19', '1', '33');
INSERT INTO `aoa_comment_list` VALUES ('75', ' 哟哟\n', '2019-10-06 13:46:02', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('76', '@朱丽叶  回复有问题么？', '2019-10-06 13:46:13', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('81', '回复jia1', '2019-10-06 14:16:20', '2', '84');
INSERT INTO `aoa_comment_list` VALUES ('82', ' 有问题么？', '2019-10-06 15:25:41', '2', '58');
INSERT INTO `aoa_comment_list` VALUES ('83', '没有问题撒', '2019-10-06 16:53:48', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('84', '', '2019-10-06 16:54:05', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('85', '@朱丽叶 一点点小小的问题', '2019-10-06 16:54:05', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('86', '', '2019-10-06 16:54:18', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('87', '@朱丽叶 ？？', '2019-10-06 16:54:18', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('88', '', '2019-10-06 16:54:18', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('89', '', '2019-10-06 16:54:18', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('90', ' 不知道发生什么问题了', '2019-10-06 16:56:22', '2', '2');
INSERT INTO `aoa_comment_list` VALUES ('91', '该配合你演出的我视而不见???', '2019-10-08 15:24:03', '8', '73');
INSERT INTO `aoa_comment_list` VALUES ('92', '@罗密欧 好吧，你很棒棒', '2019-10-08 15:27:41', '8', '3');

-- ----------------------------
-- Table structure for aoa_dept
-- ----------------------------
DROP TABLE IF EXISTS `aoa_dept`;
CREATE TABLE `aoa_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_addr` varchar(255) DEFAULT NULL,
  `dept_fax` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deptmanager` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_dept
-- ----------------------------
INSERT INTO `aoa_dept` VALUES ('1', '五楼', '', '总经办', '888888888', 'hq@fjhirg.com', '2', '2017-11-15 22:50:05', '2017-11-07 22:50:11');
INSERT INTO `aoa_dept` VALUES ('2', '四楼', null, '研发部', '66666666', 'as@fwgh', '4', '2017-09-13 19:04:07', '2010-05-23 00:00:00');
INSERT INTO `aoa_dept` VALUES ('3', '三楼', null, '财务部', '233333', '153@qq.com', '5', '2017-09-19 16:46:26', '2016-09-19 16:46:32');
INSERT INTO `aoa_dept` VALUES ('4', '六楼', null, '市场部', '666888', 'aaluoxiang@foxmail.com', '6', '2016-07-19 16:48:09', '2014-09-19 16:48:20');
INSERT INTO `aoa_dept` VALUES ('5', '六楼', null, '人事部', '33332222', '103@qq.com', '7', '2017-10-07 14:12:05', '2017-05-09 14:12:14');
INSERT INTO `aoa_dept` VALUES ('20', '一楼', '06545454654', '帅哥部', '13543020126', '923219711@qq.com', null, null, null);

-- ----------------------------
-- Table structure for aoa_detailsburse
-- ----------------------------
DROP TABLE IF EXISTS `aoa_detailsburse`;
CREATE TABLE `aoa_detailsburse` (
  `detailsburse_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descript` varchar(255) DEFAULT NULL,
  `detailmoney` double NOT NULL,
  `invoices` int(11) DEFAULT NULL,
  `produce_time` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bursment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`detailsburse_id`),
  KEY `FKi02w0bghxr73fsc5sbpeyqdnn` (`bursment_id`),
  CONSTRAINT `FKi02w0bghxr73fsc5sbpeyqdnn` FOREIGN KEY (`bursment_id`) REFERENCES `aoa_bursement` (`bursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_detailsburse
-- ----------------------------
INSERT INTO `aoa_detailsburse` VALUES ('1', '油费', '12', '1', '2019-10-06 21:53:50', '车辆油费', '1');
INSERT INTO `aoa_detailsburse` VALUES ('2', '推广', '13', '2', '2019-10-06 21:54:28', '市场推广费', '1');
INSERT INTO `aoa_detailsburse` VALUES ('3', '得到', '11', '1', '2019-10-07 19:42:14', '投标保证金', '2');
INSERT INTO `aoa_detailsburse` VALUES ('4', '方法', '11', '1', '2019-10-07 20:34:53', '车辆油费', '3');
INSERT INTO `aoa_detailsburse` VALUES ('5', '车费', '22', '2', '2019-10-07 20:36:04', '市场推广费', '3');
INSERT INTO `aoa_detailsburse` VALUES ('6', '发发发', '11', '1', '2019-10-07 20:36:53', '房租', '4');
INSERT INTO `aoa_detailsburse` VALUES ('7', '房租', '11', '1', '2019-10-07 20:40:56', '房租', '5');
INSERT INTO `aoa_detailsburse` VALUES ('8', '发发发', '11', '1', '2019-10-07 22:08:08', '市内交通费', '6');
INSERT INTO `aoa_detailsburse` VALUES ('9', '电话费', '5', '1', '2019-10-12 12:56:28', '固定电话费', '7');
INSERT INTO `aoa_detailsburse` VALUES ('10', '交房租', '1000', '1', '2019-10-12 22:06:09', '房租', '8');
INSERT INTO `aoa_detailsburse` VALUES ('11', '交季度房租', '1000', '1', '2019-10-12 23:24:51', '房租', '9');
INSERT INTO `aoa_detailsburse` VALUES ('12', '住宿费', '100', '1', '2019-10-28 09:01:30', '差旅费', '10');

-- ----------------------------
-- Table structure for aoa_director
-- ----------------------------
DROP TABLE IF EXISTS `aoa_director`;
CREATE TABLE `aoa_director` (
  `director_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_path` int(11) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  KEY `FKi6pfdnqhbc6js940e2o1vape5` (`user_id`),
  CONSTRAINT `FKi6pfdnqhbc6js940e2o1vape5` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_director
-- ----------------------------
INSERT INTO `aoa_director` VALUES ('1', '', '', '153@qq.com', null, '18173328976', 'zhangsan', '', '男', '张三', '1', '百度科技有限公司');
INSERT INTO `aoa_director` VALUES ('2', '35栋517', '66666', '123@qq.com', null, '18634344455', 'xiongtao', 'nice！', '男', '熊涛', '1', '517小分队');
INSERT INTO `aoa_director` VALUES ('3', '湖南省株洲市', '10023', '153@gmail.com', null, '18877665544', 'wangwu', '范德萨', '男', '王五', '1', 'google公司');
INSERT INTO `aoa_director` VALUES ('5', '湖南省株洲市天元区', '96578888888', '1899999@qq.com', null, '18899999900', 'zhangqifeng', '卫龙、你爱吗？，我不是很爱', '女', '张奇风', '2', '辣条有限公司+百度');
INSERT INTO `aoa_director` VALUES ('6', '34栋', '888666', '188@qq.com', null, '18866554433', 'songjia', '宋氏集团总裁', '男', '宋佳', '1', '宋氏集团');
INSERT INTO `aoa_director` VALUES ('7', '泰山西路', '41233243', '123@qq.com', null, '18877665544', 'xiaoli', '没有什么备注', '男', '小李', '2', 'xi小小公司');
INSERT INTO `aoa_director` VALUES ('8', '湖工大', '98877', '123@qq.com', null, '18877665544', 'xiongxiong', 'interesting', '男', '熊熊', '1', '工大ccu');
INSERT INTO `aoa_director` VALUES ('9', '35栋517', '517666', 'asdf@163.com', null, '18899887766', 'xuxu', '小分队的名字不错', '男', 'xuxu', '1', '517小分队');
INSERT INTO `aoa_director` VALUES ('10', '团员去', '98877', '12345@qq.com', null, '18173328976', 'aa', '有事', '男', 'aa', '18', 'google');
INSERT INTO `aoa_director` VALUES ('11', 'timg.jpeg', '12342', '12345@qq.com', '73', '18876665544', 'wanglaowu', '有意思', '男', '王老五', '5', '联通');

-- ----------------------------
-- Table structure for aoa_director_users
-- ----------------------------
DROP TABLE IF EXISTS `aoa_director_users`;
CREATE TABLE `aoa_director_users` (
  `director_users_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catelog_name` varchar(255) DEFAULT NULL,
  `is_handle` int(11) DEFAULT NULL,
  `director_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `share_user_id` bigint(20) DEFAULT NULL,
  `sharetime` datetime DEFAULT NULL,
  PRIMARY KEY (`director_users_id`),
  KEY `FK675oqfmv4kx9w6bgi9rgsb8nw` (`director_id`),
  KEY `FK7hq4xk2ja9eka4210qkqq03hi` (`user_id`),
  KEY `FKibwkjvmp9383ltkfew1kyy6ny` (`share_user_id`),
  CONSTRAINT `FK675oqfmv4kx9w6bgi9rgsb8nw` FOREIGN KEY (`director_id`) REFERENCES `aoa_director` (`director_id`),
  CONSTRAINT `FK7hq4xk2ja9eka4210qkqq03hi` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKibwkjvmp9383ltkfew1kyy6ny` FOREIGN KEY (`share_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_director_users
-- ----------------------------
INSERT INTO `aoa_director_users` VALUES ('2', '大学咯', '1', '2', '1', null, '2017-10-15 18:49:46');
INSERT INTO `aoa_director_users` VALUES ('4', '大学同学', '1', null, '2', null, null);
INSERT INTO `aoa_director_users` VALUES ('5', '', '1', '5', '1', null, null);
INSERT INTO `aoa_director_users` VALUES ('10', '', '1', '1', '1', null, null);
INSERT INTO `aoa_director_users` VALUES ('14', '', '1', '6', '1', null, '2017-10-15 18:39:36');
INSERT INTO `aoa_director_users` VALUES ('15', '同学情', '1', '3', '2', '1', '2017-10-14 16:20:49');
INSERT INTO `aoa_director_users` VALUES ('19', null, '1', '1', '3', '1', '2017-10-14 16:30:26');
INSERT INTO `aoa_director_users` VALUES ('20', '小李父斯基的分类', '1', '1', '4', '1', '2017-10-14 16:30:27');
INSERT INTO `aoa_director_users` VALUES ('21', null, '0', '1', '5', '1', '2017-10-14 16:30:27');
INSERT INTO `aoa_director_users` VALUES ('22', '重要客户', '1', '5', '2', '1', '2017-10-14 16:31:31');
INSERT INTO `aoa_director_users` VALUES ('23', null, '1', '5', '3', '1', '2017-10-14 16:31:31');
INSERT INTO `aoa_director_users` VALUES ('25', null, '0', '5', '5', '1', '2017-10-14 16:31:31');
INSERT INTO `aoa_director_users` VALUES ('26', null, '1', '3', '8', '1', '2017-10-14 16:32:35');
INSERT INTO `aoa_director_users` VALUES ('27', null, '0', '3', '10', '1', '2017-10-14 16:33:23');
INSERT INTO `aoa_director_users` VALUES ('28', null, '0', '2', '9', '1', '2017-10-14 16:37:02');
INSERT INTO `aoa_director_users` VALUES ('29', null, '0', '6', '6', '1', '2017-10-14 16:39:48');
INSERT INTO `aoa_director_users` VALUES ('30', null, '0', '3', '14', '1', '2017-10-14 16:40:55');
INSERT INTO `aoa_director_users` VALUES ('31', null, '0', '3', '22', '1', '2017-10-14 16:42:22');
INSERT INTO `aoa_director_users` VALUES ('32', '', '1', '3', '23', '1', '2017-10-14 16:48:06');
INSERT INTO `aoa_director_users` VALUES ('33', null, '0', '5', '14', '1', '2017-10-14 16:48:39');
INSERT INTO `aoa_director_users` VALUES ('34', '重要客户', '1', '7', '1', '2', '2017-10-14 21:46:48');
INSERT INTO `aoa_director_users` VALUES ('36', '', '1', '8', '1', null, '2017-10-15 18:46:05');
INSERT INTO `aoa_director_users` VALUES ('37', '大学咯', '0', null, '1', null, '2017-10-15 18:48:56');
INSERT INTO `aoa_director_users` VALUES ('38', null, '0', null, '1', null, '2017-10-15 18:50:57');
INSERT INTO `aoa_director_users` VALUES ('39', null, '1', '9', '1', null, '2017-10-15 18:52:05');
INSERT INTO `aoa_director_users` VALUES ('40', '重要客户', '0', null, '1', null, '2017-10-15 18:53:02');
INSERT INTO `aoa_director_users` VALUES ('41', '同学情', '0', null, '2', null, '2017-10-15 18:58:34');
INSERT INTO `aoa_director_users` VALUES ('42', null, '0', null, '3', null, '2017-10-15 19:01:00');
INSERT INTO `aoa_director_users` VALUES ('43', '第二分类', '0', null, '3', null, '2017-10-15 19:01:35');
INSERT INTO `aoa_director_users` VALUES ('44', '小李父斯基的分类', '0', null, '4', null, '2017-10-15 19:11:54');
INSERT INTO `aoa_director_users` VALUES ('45', null, '0', '1', '7', '4', '2017-10-15 19:13:26');
INSERT INTO `aoa_director_users` VALUES ('46', '', '1', '1', '8', '4', '2017-10-15 19:13:26');
INSERT INTO `aoa_director_users` VALUES ('47', null, '0', '1', '9', '4', '2017-10-15 19:13:27');
INSERT INTO `aoa_director_users` VALUES ('48', 'yoyo', '0', null, '4', null, '2017-10-15 23:54:26');
INSERT INTO `aoa_director_users` VALUES ('49', null, '0', '5', '7', '4', '2017-10-15 23:54:50');
INSERT INTO `aoa_director_users` VALUES ('50', '', '1', '10', '18', null, '2017-10-18 19:54:11');
INSERT INTO `aoa_director_users` VALUES ('51', 'aaa', '0', null, '18', null, '2017-10-18 19:54:46');
INSERT INTO `aoa_director_users` VALUES ('52', '', '1', '11', '5', null, '2017-10-19 23:37:37');
INSERT INTO `aoa_director_users` VALUES ('53', null, '0', '3', '9', '23', '2018-02-03 22:16:38');
INSERT INTO `aoa_director_users` VALUES ('54', null, '0', '3', '13', '23', '2018-02-03 22:20:57');
INSERT INTO `aoa_director_users` VALUES ('55', null, '0', '5', '11', '1', '2018-02-03 22:34:09');

-- ----------------------------
-- Table structure for aoa_discuss_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_discuss_list`;
CREATE TABLE `aoa_discuss_list` (
  `discuss_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `visit_num` int(11) DEFAULT NULL,
  `discuss_user_id` bigint(20) DEFAULT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`discuss_id`),
  KEY `FKt8hvx0ai5fto20mmxmy2g8j4g` (`discuss_user_id`),
  KEY `FK17yi8arj4vjdr5mm5dhjov10j` (`vote_id`),
  CONSTRAINT `FK17yi8arj4vjdr5mm5dhjov10j` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`),
  CONSTRAINT `FKt8hvx0ai5fto20mmxmy2g8j4g` FOREIGN KEY (`discuss_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_discuss_list
-- ----------------------------
INSERT INTO `aoa_discuss_list` VALUES ('1', null, 'fdsfasfdsfasfsa', '2019-10-17 21:48:28', null, 'fsda', '19', '13', '1', null, '2017-09-29 21:48:28');
INSERT INTO `aoa_discuss_list` VALUES ('6', null, '富士达奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥', '2019-10-17 21:48:28', null, 'what????', '20', '8', '2', null, '2017-10-04 18:06:39');
INSERT INTO `aoa_discuss_list` VALUES ('7', null, '发生地方撒范德萨反反复复付付付付付付付付付付付付8', '2019-10-17 13:07:03', null, '发生富士达', '19', '20', '2', null, '2017-10-05 22:58:38');
INSERT INTO `aoa_discuss_list` VALUES ('8', null, 'fsdaaaaaaaaaaaaaaafsaaaaaaaaaaa', '2019-10-17 13:12:33', null, '同一人', '19', '36', '2', null, '2017-10-05 22:59:02');
INSERT INTO `aoa_discuss_list` VALUES ('9', null, '发生的多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多', '2019-10-17 13:16:51', null, '范德萨', '20', '11', '2', null, '2017-09-30 13:07:03');
INSERT INTO `aoa_discuss_list` VALUES ('12', null, 'fsdaaaaaaaaaaaaaaafsaaaaaaaaaaa', '2019-09-30 15:30:26', null, '修改了这个名字2333', '19', '98', '2', null, '2017-10-04 21:24:09');
INSERT INTO `aoa_discuss_list` VALUES ('13', null, '<p>\r\n	今天还是不错的，完成了一些内容，比如：修复了分页的小bug；还有一些其他的东西；再把讨论区好好的晚上一下\r\n</p>', '2019-10-01 14:25:26', null, '第一天的公告,++小整合', '19', '354', '1', null, '2017-10-01 14:25:26');
INSERT INTO `aoa_discuss_list` VALUES ('14', null, 'afsdddddddd fasdddddddddddddddd', '2019-10-01 14:37:39', null, 'fads ', '19', '30', '1', null, '2017-10-01 14:37:39');
INSERT INTO `aoa_discuss_list` VALUES ('15', null, 'afsddddddddddddddddddddddddddddddddddddddd', '2019-10-01 14:40:08', null, 'dsaf ', '19', '24', '1', null, '2017-10-01 14:40:08');
INSERT INTO `aoa_discuss_list` VALUES ('17', null, '<p style=\"color:#3F3F3F;font-family:&quot;background-color:#FFFFFF;\">\r\n	每个对象在出生的时候就有一把钥匙（监视器Monitor），那么被synchronized 修饰的方法相当于给方法加了一个锁，这个方法就可以进行同步，在多线程的时候，不会出现线程安全问题。\r\n</p>\r\n<p style=\"color:#3F3F3F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>注：Monitor是 Java中用以实现线程之间的互斥与协作的主要手段，它可以看成是对象或者 Class的锁。每一个对象都有，也仅有一个 Monitor。</span>\r\n</p>\r\n<p style=\"color:#3F3F3F;font-family:&quot;background-color:#FFFFFF;\">\r\n	下面通过一张图片进行讲解：\r\n</p>\r\n<h4 id=\"1一张图片\" style=\"font-family:&quot;font-weight:300;color:#3F3F3F;font-size:1.25em;background-color:#FFFFFF;\">\r\n	<a name=\"t0\"></a>1.一张图片\r\n</h4>\r\n<p style=\"color:#3F3F3F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>图片看不清，请点击这里 ：</span>&nbsp;<a href=\"http://img.blog.csdn.net/20170929230249738?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvdTAxMDY0ODU1NQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast\" target=\"_blank\">高清大图</a>\r\n</p>\r\n<p style=\"color:#3F3F3F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.blog.csdn.net/20170929230249738?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvdTAxMDY0ODU1NQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast\" alt=\"这里写图片描述\" title=\"\" style=\"height:auto;\" />\r\n</p>\r\n<h4 id=\"2图片对应的代码\" style=\"font-family:&quot;font-weight:300;color:#3F3F3F;font-size:1.25em;background-color:#FFFFFF;\">\r\n	<a name=\"t1\"></a>2.图片对应的代码\r\n</h4>\r\n<pre class=\"prettyprint\"><span class=\"hljs-keyword\" style=\"color:#000088;\">import</span> java.util.Date; <span class=\"hljs-javadoc\" style=\"color:#880000;\">/**\r\n * 测试的object类\r\n *\r\n *<span class=\"hljs-javadoctag\" style=\"color:#660066;\"> @author</span>:dufy\r\n *<span class=\"hljs-javadoctag\" style=\"color:#660066;\"> @version</span>:1.0.0\r\n *<span class=\"hljs-javadoctag\" style=\"color:#660066;\"> @date</span> 2017/9/29\r\n *<span class=\"hljs-javadoctag\" style=\"color:#660066;\"> @email</span> 742981086@qq.com\r\n */</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\" style=\"color:#000088;\">class</span> <span class=\"hljs-title\" style=\"color:#660066;\">ObjectTest</span> {</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">public</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">synchronized</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">void</span> <span class=\"hljs-title\">methodA</span>(){ <span class=\"hljs-keyword\" style=\"color:#000088;\">try</span> {\r\n            System.out.println(<span class=\"hljs-string\" style=\"color:#008800;\">\"This is methodA ....\"</span> + Thread.currentThread().getName() + <span class=\"hljs-string\" style=\"color:#008800;\">\": \"</span> + <span class=\"hljs-keyword\" style=\"color:#000088;\">new</span> Date());\r\n            Thread.sleep(<span class=\"hljs-number\" style=\"color:#006666;\">1000</span>);\r\n        } <span class=\"hljs-keyword\" style=\"color:#000088;\">catch</span> (InterruptedException e) {\r\n            e.printStackTrace();\r\n        }\r\n\r\n    } <span class=\"hljs-keyword\" style=\"color:#000088;\">public</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">void</span> <span class=\"hljs-title\">methodB</span>(){\r\n\r\n        System.out.println(<span class=\"hljs-string\" style=\"color:#008800;\">\"This is methodB ....\"</span> + Thread.currentThread().getName() + <span class=\"hljs-string\" style=\"color:#008800;\">\": \"</span> + <span class=\"hljs-keyword\" style=\"color:#000088;\">new</span> Date());\r\n    } <span class=\"hljs-keyword\" style=\"color:#000088;\">public</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">synchronized</span> <span class=\"hljs-keyword\" style=\"color:#000088;\">void</span> <span class=\"hljs-title\">methodC</span>(){ <span class=\"hljs-keyword\" style=\"color:#000088;\">try</span> {\r\n            System.out.println(<span class=\"hljs-string\" style=\"color:#008800;\">\"This is methodC ....\"</span> + Thread.currentThread().getName() + <span class=\"hljs-string\" style=\"color:#008800;\">\": \"</span> + <span class=\"hljs-keyword\" style=\"color:#000088;\">new</span> Date());\r\n            Thread.sleep(<span class=\"hljs-number\" style=\"color:#006666;\">3000</span>);\r\n        } <span class=\"hljs-keyword\" style=\"color:#000088;\">catch</span> (InterruptedException e) {\r\n            e.printStackTrace();\r\n        }\r\n\r\n    }\r\n\r\n\r\n}</pre>', '2019-10-01 15:18:40', null, 'fsdaaaaaaaaaa ', '21', '8', '1', null, '2017-10-01 15:18:40');
INSERT INTO `aoa_discuss_list` VALUES ('23', null, 'afdsssssssssssssssssssssssssssssssssssssssssfffffffffffffffffHHHHHHFFFFFFFFFF1111112222222', '2019-10-01 16:38:44', null, 'yyyyyyyyyyHHHHHHHHHFFFFFF11111112222', '21', '4', '1', null, '2017-10-01 16:38:44');
INSERT INTO `aoa_discuss_list` VALUES ('31', null, '投票标题test1111投票标题test1111投票标题test1111投票标题test1111', '2019-10-03 21:53:12', null, '投票标题test1111', '21', '15', '2', '1', '2017-10-03 21:53:12');
INSERT INTO `aoa_discuss_list` VALUES ('32', null, '他的44444他的44444他的44444他的44444', '2019-10-03 21:55:10', null, '他的44444', '21', '71', '2', '2', '2017-10-03 21:55:09');
INSERT INTO `aoa_discuss_list` VALUES ('33', null, '&nbsp;投票的测试&nbsp;投票的测试&nbsp;投票的测试&nbsp;投票的测试', '2019-10-03 23:25:08', null, ' 投票的测试随机颜色的测试', '21', '92', '2', '3', '2017-10-03 23:25:07');
INSERT INTO `aoa_discuss_list` VALUES ('34', null, '这是一个多选的投票这是一个多选的投票这是一个多选的投票', '2019-10-04 02:58:16', null, '这是一个多选的投票', '21', '16', '2', '4', '2017-10-04 02:58:15');
INSERT INTO `aoa_discuss_list` VALUES ('35', null, '想去哪个地方，尽情发言，，，，，，，反正我们也不会去的，<img src=\"http://localhost:8080/plugins/kindeditor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:8080/plugins/kindeditor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:8080/plugins/kindeditor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />', '2019-10-04 03:19:52', null, '旅欧地点投票，单选', '21', '24', '2', '5', '2017-10-04 03:19:52');
INSERT INTO `aoa_discuss_list` VALUES ('37', null, '未开始时间投票测试未开始时间投票测试未开始时间投票测试', '2019-10-04 15:27:36', null, 'xiugai ；未开始时间投票测试', '21', '23', '2', '7', '2017-10-04 18:05:52');
INSERT INTO `aoa_discuss_list` VALUES ('38', null, 'dfasfsdfafdsfsfasddddddddddddddddddd222', '2019-10-04 16:01:49', null, '修改d  ;我知道能够修改成功,在修改依稀呢？', '21', '11', '2', '8', '2017-10-04 18:03:16');
INSERT INTO `aoa_discuss_list` VALUES ('39', null, '333333333333333333333333333333333333333333333333333333', '2019-10-05 22:54:27', null, '电风扇', '21', '1', '2', '9', '2017-10-05 22:54:26');
INSERT INTO `aoa_discuss_list` VALUES ('40', null, '<h2>\r\n	这是投票11234这是投票11234这是投票11234这是投票11234这是投票11234这是投票11234这是投票11234\r\n</h2>', '2019-10-05 22:57:41', null, '这是投票11234', '21', '3', '2', '10', '2017-10-05 22:57:41');
INSERT INTO `aoa_discuss_list` VALUES ('41', null, '4555555555555555555555555555555555555555555', '2019-10-05 22:58:29', null, '手动阀123', '21', '3', '2', '11', '2017-10-06 17:03:53');
INSERT INTO `aoa_discuss_list` VALUES ('42', null, '4444444444444这是投票11234这是投票11234', '2019-10-05 23:17:52', null, '大师傅', '20', '5', '7', null, '2017-10-05 23:17:52');
INSERT INTO `aoa_discuss_list` VALUES ('43', null, '188@qq.com188@qq.com188@qq.com188@qq.com188@qq.com188@qq.com', '2019-10-05 23:25:50', null, '范德萨', '21', '2', '7', '12', '2017-10-05 23:25:50');
INSERT INTO `aoa_discuss_list` VALUES ('44', null, '<p class=\"has-medium-font-size\">\r\n	微服务这几年很火，做后端开发的，如果没听过微服务，出去见同行都有点不好意思的。那么大部分后端开发人员都应该听说过了，但真正用过的，可能就少一些，这也可能是因为公司的旧系统一直能正常工作，没有推翻改造的必要，也可能是团队人员对微服务不熟悉，不敢尝试新的技术架构。不管怎样，我们一般提倡，合适的就是最好的，别管它是否时髦。\r\n</p>\r\n<p class=\"has-medium-font-size\">\r\n	最近微信群里有关于微服务相关的讨论，主要围绕是否应该使用微服务、何时应该采用微服务架构。有人觉得是看人数，因此会问一般团队里有多少人了可以开始使用微服务，比如曾听到有些架构师说大概100人以上的团队适合采用微服务，另外一些人觉得是看业务，就是怎样的业务适合采用微服务。\r\n</p>', '2019-10-26 10:15:52', null, '公司项目是否改用微服务架构', '20', '8', '8', null, '2019-10-26 10:15:52');
INSERT INTO `aoa_discuss_list` VALUES ('45', null, '<p style=\"text-indent:2em;color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	证券公司年度报告内容与格式准则 （2008年修订）\r\n</p>\r\n<p style=\"text-indent:2em;color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	第一章 总则\r\n</p>\r\n<p style=\"text-indent:2em;color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	第一条 为规范证券公司年度报告的编制及信息披露行为，提高证券公司财务信息的质量，根据《公司法》、《证券法》等法律、法规，《企业会计准则》、《企业会计准则――应用指南》及中国证券监督管理委员会（以下简称“中国证监会”）的有关规定，制订本准则。\r\n</p>\r\n<p style=\"text-indent:2em;color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	第二条 凡根据《公司法》、《证券法》规定经批准设立的证券公司（以下简称公司）应当按照本准则的要求编制年度报告。\r\n</p>\r\n<p style=\"text-indent:2em;color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">\r\n	第三条 公司董事会、监事会及董事、监事、高级管理人员应当保证年度报告内容的真实性、准确性与完整性,承诺其中不存在虚假记载、误导性陈述或重大遗漏,并就其保证承担个别和连带责任。\r\n</p>', '2019-10-26 17:01:05', null, '公司招标选定方案', '21', '3', '1', '13', '2019-10-26 17:01:05');

-- ----------------------------
-- Table structure for aoa_evection
-- ----------------------------
DROP TABLE IF EXISTS `aoa_evection`;
CREATE TABLE `aoa_evection` (
  `evection_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evection_id`),
  KEY `FKql1c10e5u2vefisjqjbu2d5pa` (`pro_id`),
  CONSTRAINT `FKql1c10e5u2vefisjqjbu2d5pa` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_evection
-- ----------------------------
INSERT INTO `aoa_evection` VALUES ('1', '28', '12', null, '发发发');
INSERT INTO `aoa_evection` VALUES ('2', '28', '21', null, null);
INSERT INTO `aoa_evection` VALUES ('3', '28', '22', null, null);
INSERT INTO `aoa_evection` VALUES ('4', '28', '23', null, null);
INSERT INTO `aoa_evection` VALUES ('5', '28', '27', null, null);

-- ----------------------------
-- Table structure for aoa_evectionmoney
-- ----------------------------
DROP TABLE IF EXISTS `aoa_evectionmoney`;
CREATE TABLE `aoa_evectionmoney` (
  `evectionmoney_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `pro` int(255) DEFAULT NULL,
  PRIMARY KEY (`evectionmoney_id`),
  KEY `FKcpuubnshaf2cg47hns9m0h1dq` (`pro_id`),
  CONSTRAINT `FKcpuubnshaf2cg47hns9m0h1dq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_evectionmoney
-- ----------------------------
INSERT INTO `aoa_evectionmoney` VALUES ('1', null, '去项目支持', '1100', '刘敏', '10', null);
INSERT INTO `aoa_evectionmoney` VALUES ('2', '批准', '情况属实！！！！', '2800', '刘敏', '11', null);
INSERT INTO `aoa_evectionmoney` VALUES ('3', null, '', '940', '得到', '24', '23');

-- ----------------------------
-- Table structure for aoa_file_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_file_list`;
CREATE TABLE `aoa_file_list` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_shuffix` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `path_id` bigint(20) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `file_user_id` bigint(20) DEFAULT NULL,
  `file_istrash` bigint(1) unsigned zerofill DEFAULT '0',
  `file_isshare` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FKfshy9n300pqxjsweo9247jgqs` (`path_id`),
  KEY `FKlj6l9qroivus28aiqluue4bew` (`file_user_id`),
  CONSTRAINT `FKfshy9n300pqxjsweo9247jgqs` FOREIGN KEY (`path_id`) REFERENCES `aoa_file_path` (`path_id`),
  CONSTRAINT `FKlj6l9qroivus28aiqluue4bew` FOREIGN KEY (`file_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_file_list
-- ----------------------------
INSERT INTO `aoa_file_list` VALUES ('146', 'venom.jpg', '2019/10/venom/224a3f12-6921-43b3-8d15-cd86a0cb63c5.jpg', 'jpg', 'image/jpeg', null, '96', '65341', '2019-10-24 21:30:08', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('147', 'vhr.xls', '2019/10/venom/636305c0-f923-4dcb-918a-042179c5f162.xls', 'xls', 'application/vnd.ms-excel', null, '96', '19456', '2019-10-24 21:31:39', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('148', 'oasys.pdf', '2019/10/venom/471c13a8-b29a-4998-97cf-4b64a585b4c2.pdf', 'pdf', 'application/pdf', null, '96', '64171', '2019-10-24 21:31:58', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('149', '158. Set接口_HashSet常用方法_JDK源码解读.mp4', '2019/10/venom/f86680f6-51cd-4b28-8117-7ee9b1a5d78e.mp4', 'mp4', 'video/mp4', null, '97', '24841163', '2019-10-25 22:36:37', '8', '0', '1');
INSERT INTO `aoa_file_list` VALUES ('150', '51job_王xxx.doc', '2019/10/venom/24100205-7629-47bd-a8b7-0bb19a2d01fc.doc', 'doc', 'application/msword', null, '99', '99840', '2019-10-26 23:04:46', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('151', '_android开发工程师.doc', '2019/10/venom/0a2db3fd-4f07-4fe2-a1ca-57195e593c7a.doc', 'doc', 'application/msword', null, '96', '86787', '2019-10-26 23:14:27', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('152', 'Android---区卓辉6000.doc', '2019/10/venom/8a5c7574-5568-4910-988d-e6f4619640c7.doc', 'doc', 'application/msword', null, '96', '54784', '2019-10-26 23:14:51', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('153', 'Android---焦典6500.doc', '2019/10/venom/c85bb131-83ab-4f66-ba27-776111e51442.doc', 'doc', 'application/msword', null, '96', '40448', '2019-10-26 23:14:52', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('154', 'JavaEE---赖科兴7500.doc', '2019/10/venom/a06a764f-14fc-447f-b29e-f092b3997dec.doc', 'doc', 'application/msword', null, '96', '39424', '2019-10-26 23:14:52', '8', '0', '0');
INSERT INTO `aoa_file_list` VALUES ('156', '拷贝 JavaEE---赖科兴7500.doc', '2019/10/venom/74910a9f-4acd-4275-afeb-c4043c7fdcb7.doc', 'doc', 'application/msword', null, '99', '39424', '2019-10-27 00:03:18', '8', '0', '0');

-- ----------------------------
-- Table structure for aoa_file_path
-- ----------------------------
DROP TABLE IF EXISTS `aoa_file_path`;
CREATE TABLE `aoa_file_path` (
  `path_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `path_name` varchar(255) DEFAULT NULL,
  `path_user_id` bigint(20) DEFAULT NULL,
  `path_istrash` bigint(20) DEFAULT '0',
  PRIMARY KEY (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_file_path
-- ----------------------------
INSERT INTO `aoa_file_path` VALUES ('1', '0', '根目录', null, '0');
INSERT INTO `aoa_file_path` VALUES ('6', '1', '罗密欧', '1', '0');
INSERT INTO `aoa_file_path` VALUES ('89', '1', '无双', '10', '0');
INSERT INTO `aoa_file_path` VALUES ('90', '1', '甄姬', '7', '0');
INSERT INTO `aoa_file_path` VALUES ('91', '90', '新建文件夹', '7', '0');
INSERT INTO `aoa_file_path` VALUES ('92', '91', '新建文件5夹', '7', '0');
INSERT INTO `aoa_file_path` VALUES ('93', '1', '于彤', '13', '0');
INSERT INTO `aoa_file_path` VALUES ('94', '1', 'admin', '1', '0');
INSERT INTO `aoa_file_path` VALUES ('95', '1', '上上签', '28', '0');
INSERT INTO `aoa_file_path` VALUES ('96', '1', 'venom', '8', '0');
INSERT INTO `aoa_file_path` VALUES ('97', '96', '重要资料', '8', '0');
INSERT INTO `aoa_file_path` VALUES ('99', '96', '工作简历', '8', '0');

-- ----------------------------
-- Table structure for aoa_holiday
-- ----------------------------
DROP TABLE IF EXISTS `aoa_holiday`;
CREATE TABLE `aoa_holiday` (
  `holiday_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `leave_days` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`holiday_id`),
  KEY `FK1glo2wpb4kuiop1ymjxs0knxj` (`pro_id`),
  CONSTRAINT `FK1glo2wpb4kuiop1ymjxs0knxj` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_holiday
-- ----------------------------
INSERT INTO `aoa_holiday` VALUES ('1', '2', '38', '16', '准假', null);
INSERT INTO `aoa_holiday` VALUES ('2', '1', '37', '25', '', '');
INSERT INTO `aoa_holiday` VALUES ('3', '1', '37', '29', '', null);
INSERT INTO `aoa_holiday` VALUES ('4', '0', '37', '30', '批准，加把劲', '批准');
INSERT INTO `aoa_holiday` VALUES ('5', '31', '41', '31', null, null);

-- ----------------------------
-- Table structure for aoa_in_mail_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_in_mail_list`;
CREATE TABLE `aoa_in_mail_list` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail_content` text,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_file_id` bigint(20) DEFAULT NULL,
  `mail_title` varchar(255) NOT NULL,
  `mail_type` bigint(20) DEFAULT NULL,
  `mail_in_push_user_id` bigint(20) DEFAULT NULL,
  `in_receiver` varchar(255) DEFAULT NULL,
  `mail_status_id` bigint(20) DEFAULT NULL,
  `mail_number_id` bigint(20) DEFAULT NULL,
  `mail_del` int(11) DEFAULT NULL,
  `mail_push` int(11) DEFAULT NULL,
  `mail_star` int(11) DEFAULT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `FK33o7j8f0xk8n8vrk576iktglc` (`mail_file_id`),
  KEY `FK933q7ouoddu584qg08rbvwvxi` (`mail_in_push_user_id`),
  KEY `FKghibt111d1yvc3f02x06sihjp` (`mail_number_id`),
  CONSTRAINT `FK33o7j8f0xk8n8vrk576iktglc` FOREIGN KEY (`mail_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`),
  CONSTRAINT `FK933q7ouoddu584qg08rbvwvxi` FOREIGN KEY (`mail_in_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKghibt111d1yvc3f02x06sihjp` FOREIGN KEY (`mail_number_id`) REFERENCES `aoa_mailnumber` (`mail_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_in_mail_list
-- ----------------------------
INSERT INTO `aoa_in_mail_list` VALUES ('2', '<p>\r\n	咕咕咕咕\r\n</p>\r\n<p>\r\n	一月又一月\r\n</p>', '2017-09-28 19:40:05', '48', '啊啊啊啊', '16', '1', '朱丽叶', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('3', '<p>\r\n	哈哈哈哈或\r\n</p>\r\n<p>\r\n	哈哈哈哈或或\r\n</p>', '2017-09-28 20:08:25', null, '啊啊啊啊啊', '16', '1', '664303632@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('4', '<p>\r\n	的点点滴滴多多多多\r\n</p>\r\n<p>\r\n	咯咯咯咯咯过过过\r\n</p>\r\n<p>\r\n	哈哈哈哈或或或或\r\n</p>', '2017-09-28 21:24:39', '49', '趣味体育活动当天的决定', '16', '1', '1533047354@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('5', '反反复复付', '2017-09-28 21:27:45', '50', '多对多', '16', '1', '伊丽莎白', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('6', '凄凄切切群群群群群', '2017-09-28 21:30:40', '51', '凄凄切切', '16', '1', '1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('7', '<p>\r\n	咯咯咯咯咯\r\n</p>\r\n<p>\r\n	哈哈哈哈或\r\n</p>', '2017-09-28 21:37:44', '52', '凄凄切切', '16', '1', '1533047354@qq.com', '20', '1', '1', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('8', '沉浸在这美好的安然中，你会喜欢上这最绚丽的色彩，爱上这段沉静的时光，恋上这份清怡的静美。', '2017-09-28 21:46:48', '53', '试试', '16', '1', '1057245260@qq.com；1533047354@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('9', '<p>\r\n	沉浸在这美好的安然中，你会喜欢上这最绚丽的色彩，\r\n</p>\r\n<p>\r\n	爱上这段沉静的时光，恋上这份清怡的静美。\r\n</p>', '2017-09-28 21:53:25', '54', '试试', '16', '1', '1057245260@qq.com;1533047354@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('10', '<p>\r\n	<span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">他便过来抱着我说：“孩子，爸爸也想给你一个妈妈。”可是，爸爸真的做不到。</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">爸爸会尽力像妈妈一样的爱你。我总是能从他的眼里看到晶莹闪光的东西，想掉又掉不下来。</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">那一年我四岁半,似懂非懂的点点头，迎合着我唯一能抓住的亲人。</span>\r\n</p>', '2017-09-28 22:00:37', '55', '再试试', '16', '1', '1533047354@qq.com;1057245260@qq.com', '20', '1', '1', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('11', '<a href=\"http://www.jj59.com/zti/tongnian/\" class=\"keywordlink\">童年</a><span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">的时光总是很短暂，最</span><a href=\"http://www.jj59.com/zti/kuaile/\" class=\"keywordlink\">快乐</a><span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">的几年都在恍惚的小学中度过了，那个时候学习没有什么压力，爸爸每天忙着赚钱。基本上也不怎么过问我的功课，但是只要我成绩下来了。就一定尝到劈头盖脸的一顿臭骂。无论他怎么忙，每天下班回家一定陪我，周末的</span><a href=\"http://www.jj59.com/zti/time/\" class=\"keywordlink\">时间</a><span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\">全是我的。所以，我放学就可以和朋友尽情玩耍。白天有同学陪，放学有爸爸陪。渐渐的也就忘却了妈妈的存在。随着时光的推移也就理解了爸爸口中的遥远是什么含义。</span><br />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;background-color:#FFFFFF;\"> </span>', '2017-09-28 22:03:46', '56', '咯咯咯咯咯过过过', '16', '1', '1533047357@qq.com;1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('12', '<span style=\"color:#111111;font-family:Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;\">最近有个朋友生日，聚会上有人送了他一对精致的杯子做礼物，据说这对杯子做工质地讲究，连配图都出自绘画大师之手。然而，就在朋友得知这对杯子价格近千块的时候，他直接炸了：“不就是个盛水的东西，跟我用的十块钱的玻璃杯有什么区别？这俩杯子哪里值千多块钱啊！</span>', '2017-09-28 22:20:12', '57', '最后一次', '16', '1', '1533047354@qq.com;1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('13', '发发发发发发付或或或', '2017-09-29 13:57:20', null, '大家点击度假酒店', '16', '1', '朱丽叶;伊丽莎白', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('15', '通过副本', '2017-09-29 19:53:52', null, '根本', '16', '2', '罗密欧', '20', null, '1', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('16', '<p>\r\n	我去复制一段话来\r\n</p>\r\n<p>\r\n	<span style=\"color:#404040;font-family:&quot;font-size:18px;background-color:#FFFFFF;\">1953年秋天，27岁的赫夫纳向亲友借了8000美元，花500美元买下梦露半裸照的版权，创办了《花花公子》</span>\r\n</p>', '2017-09-29 22:09:52', '58', '我自己这边发的', '16', '1', '1057245260@qq.com;664303632@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('17', '儿歌个TV登革热vgt', '2017-09-30 15:52:07', null, '私事客服', '16', '2', '伊丽莎白;小李父斯基', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('18', '柔柔弱弱', '2017-09-30 16:24:46', null, '呃呃呃', '18', '2', '罗密欧', '20', null, '1', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('19', '哈哈不过', '2017-09-30 17:02:22', null, '得到', '16', '2', '小李父斯基', '21', null, '0', '1', '1');
INSERT INTO `aoa_in_mail_list` VALUES ('20', '闺女胡', '2017-09-30 17:04:19', null, '嘉年华', '16', '2', '朱丽叶', '22', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('21', '房地产和好', '2017-09-30 17:26:05', null, '办法VSX', '16', '2', '朱丽叶', '20', null, '1', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('22', '还好吧GV', '2017-09-30 21:01:57', null, '密密麻麻', '16', '2', null, '20', null, '0', '0', '1');
INSERT INTO `aoa_in_mail_list` VALUES ('23', '发v', '2017-10-01 12:46:44', '59', '信息', '16', '2', '罗密欧;朱丽叶', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('24', '得出', '2017-10-01 12:47:15', null, '就你那', '17', '2', '朱丽叶;伊丽莎白', '22', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('25', '反复发热的是v车<br />\r\n<hr />\r\n调查色粉', '2017-10-01 16:59:41', null, '【回复】发v显示', '16', '1', '朱丽叶;罗密欧', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('26', '湖不过均', '2017-10-01 12:48:07', null, '客家话', '16', '2', '朱丽叶;伊丽莎白', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('27', '护肤措施', '2017-10-01 12:48:25', null, '举横幅', '16', '2', '朱丽叶;伊丽莎白', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('28', '高铁都不', '2017-10-01 12:48:46', null, '好一点v', '16', '2', '小李父斯基;soli;红之花', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('29', '谷朊粉', '2017-10-01 12:49:10', null, '共同市场', '16', '2', '伊丽莎白;soli', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('30', '柔肤水过一遍', '2017-10-01 12:49:33', null, '枯黄的', '16', '2', '朱丽叶;伊丽莎白;soli;红之花', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('32', '包含', '2017-10-01 14:36:12', null, '包含', '18', '1', '朱丽叶;伊丽莎白', '22', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('33', '<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;八月的夜空，月色清明，云彩轻扬；八月的芳草地，花香迷朦，一池秋水清浅温婉。在花开花谢的流转里，时光坐在月色背后，冷艳如初。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; ——题记\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 月光开始沉醉，起初，只是一抹淡淡的凝脂色，夜色宁静，慢慢明亮，圆润。像极了伊宁静盈暖的眼眸。七夕刚过，夜带着神秘的气息，薄薄的云彩，清透含蓄。抬头寻找，记忆中的渺渺银河，偌大的天宇，两三点星光，若隐若无，温柔的隔海相望。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 月光总是太美，让人遐想，让人怜爱。夏天的花影，次第流转，清风明月思年华，而爱情总是太美，遥远如星空，茫茫人间，有烟火色便为红尘，遇见，爱上，一生何求？\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 如果可以，有一片海可以穿越爱的极限，我愿意，与你一同前往。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 轻拨心灵的琴弦，远处，是否有伊在轻轻和奏？\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<img src=\"https://www.yueduwen.com/uploads/allimg/c1408/140920921250-H521.jpg\" /><span class=\"yueduwencom\">（<a href=\"http://www.yueduwen.com/\">悦读文网</a>&nbsp;www.yueduwen.com）</span>\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 爱是感动，爱是相守，爱是牵挂，爱是月光里最美的诗行。我知道，有一片天空，始终有我的等待，那是你的方向。只是，天涯咫尺，我只能执手泪眼问相思。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 用心把远方托付给远方，把故事深藏在星光深处。那些苦涩的回忆不是忧伤，那甜美的记忆已成芬芳，是我幸福的奢华，余有暗香。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 恬淡，遥远。像今夜的月亮。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 我还站在昨天的月光里，用心轻吻一朵月色下的玫瑰。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 今夜的月光是行走的思念，静静与我，相守。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 内心，一半是海水的潮湿，一半是火焰的炽热。守在月色下，开始朝着你的方向一路飞奔，把爱放在温热的掌心，一路小心的呵护，担心遗落在风雨中。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 月下的人间，盛开一条河流，我坐在河对岸，静静祈祷，相思过去，一切如旧，不曾挑明，只是以一种形式的相守，坚守你我的这份爱。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp; 就像今晚的月亮，这么明亮，这么清澈，是你么，带着温暖的耳语，仿佛遥远，又近在咫尺。\r\n</p>', '2017-10-01 15:21:25', null, '的放入他', '16', '1', '朱丽叶', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('34', '发发发通天塔<br />\r\n<hr />\r\n反复发热的是v车<br />\r\n<hr />\r\n调查色粉', '2017-10-01 17:16:14', null, '【回复】【回复】发v显示', '16', '1', '朱丽叶', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('35', '给你<br />\r\n<hr />\r\n发v', '2017-10-01 17:24:15', null, '【转发】信息', '16', '1', '朱丽叶', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('37', '<table width=\"100%\" style=\"padding:0px;margin:0px;color:#333333;font-family:Helvetica, Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<div id=\"contentMidPicAD\" style=\"padding:0px;margin:0px;vertical-align:top;\">\r\n				</div>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					<img alt=\"唯美图片爱情\" src=\"https://www.yueduwen.com/uploads/allimg/1702/1-1F226213T1602.jpg\" />\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					太过用力，会纠缠于内心，会让所有的饱满太过张力，是一张拉满了的弓，射得一定远吗?怕是会断掉。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					一场情事，泼墨太多了，用力太猛了，自己都收不住。洪水泛滥的结果是将自己淹没了。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					也许好的爱情应该是云淡风轻，安静地看着对方，对方是自己的一块清新的糖，想起时，安静地抿一下，就够了，有的时候，爱情需要距离，需要空间。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					爱上一个人，总会动荡些时日，半夜跑去写情书，私情这东西总怕沉溺。但不沉溺又是错的。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					爱这个人，哪怕知道他坏他烂，可是，因为贪恋这人世间的一点点爱一点点温暖，便飞蛾一样，扑向了火。这一场盛宴，是一个人的盛宴，与现实的爱情如此格格不入，不温暖，不体贴，不妥当，带着罂粟的邪恶与放荡——但她一意孤行，一定要一意孤行。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					最坚固的爱情是懂得一个人的灵魂与心，就像杨绛懂得钱钟书，这种懂得，似读一本值得读的好书，读一生，也不会倦。而他们的用力，是持续的温度，是持续的力度，一直是这样，不高，不低，不温，不火。<span class=\"yueduwencom\">（<a href=\"http://www.yueduwen.com/\">悦读文网</a>&nbsp;www.yueduwen.com）</span>\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					用力地爱一个人，趁着还有一颗爱的心，其实是幸福——哪怕最后碎了灭了，而心里，永远会有这个人，永远会有。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					女人总对事物有所迷恋，而迷人比迷东西更诱人。大体说来，一是迷恋衣服，二是迷恋男人。衣服和男人同时到来，则男人第一。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					爱情是最不实用的东西，伤筋动骨的，不如迷恋别的东西实惠。迷恋这个东西，带着痴的成分，爱情这个东西，当个点缀时还好，可是，一用力起来就会盛大，又惊心动魄又无聊。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					太浓烈的爱情，来得快，一定去得也快。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					爱情原来是有条件的，原来是和别的气氛在一起的——特别是人前，如果感觉到他们在相爱，一个眼神就足够了。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					最干净的爱情，一定清淡似水，应该浓烈时浓烈，应该清淡时就清淡。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					只剩下爱情，一定离分手很近了，因为再也没有别的话——有趣的爱情，是和趣味、气味、气场相互联系的，比如两个人的共同爱好，哪怕一起爱上美食，其实最后拼的是生活习惯和灵魂距离。如果单纯色相吸引，爱情最难维持，时间最短的爱情一定是一见钟情——只凭貌相，那样的爱情过于单薄，连维持下去都要努力。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					最厚实的爱情，一定是踏实肯定，连缺点也要喜欢，连习惯都雷同，爱到忘记了爱是怎么回事，只记得他爱吃茴香馅，她爱穿安瑞井……如果只是为爱而爱，哪怕私奔到天涯，一定还要离散。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					爱一个人，需要傻到没有自己，和爱情相比，自己太轻了，太单了，太势孤了，而只有爱情，可以让人焕发了光彩，那样的熠熠夺目，是自己没有过的样子。就像张中行老先生说，还是男女之情最有意思。因为像鸦片，有瘾，有毒，离不了，忘不了，相互吸引，又相互刺痛。\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2017-10-01 19:39:14', '60', '来了', '16', '1', '664303632@qq.com；1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('42', '咕咕咕咕拖拖拖拖多多多多多', '2017-10-01 20:29:51', null, '点点滴滴', '16', '1', '1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('43', '麻烦得很', '2017-10-02 14:49:56', '61', '给你给你', '16', '1', '1071766245@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('44', '<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	在一档电视节目中，主持人问马云，如果人生可以重来，你有什么遗憾需要弥补?马云淡淡地说，我的人生一切都刚刚好。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	这样的回答，可以说是自信，因为一切都恰到好处;也可以说是知足，因为没有留下遗憾。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	一切都刚刚好，这话说出来简单，做起来却大不易。什么叫刚刚好，理性一点说就是适度。什么叫度，理科老师告诉你，度就是一定事物保持自己质的数量界限，比如说冰点、熔点、沸点;文科老师告诉你，度就是事物所达到的境界，比如说高度、风度、气度。在《登徒子好色赋》中，宋玉用两个排比句，来描述东邻女孩的美貌：增之一分则太长，减之一分则太短;着粉则太白，施朱则太赤。这话听起来有些夸张，其实不过是说这个女孩长得恰如其分，刚刚好。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	世间一切事物，都是由过程表现出来的，这个过程无非是由量变到质变，由渐变到突变。变与不变的节点就是度。作为人生哲学的度，则是指在做人处世中拿捏的分寸，掌握的火候，遵循的法则。这种度，不是衡器测量出来的，而是用心掂量出来的。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	古代圣贤留给我们的人生智慧和哲理很多，以至于穷其一生也未必都能学完、用好，但若看多了、悟透了，就会觉得，大道至简，道法自然，归根结底不过两个字：适度。就是说，凡事有度，适可而止，过犹不及，物极必反。即便是优点，过了头也会坏事;即便是美德，过了头也会显得不美;只有恰到好处，才会趋于完美。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	比方说，性情耿直的人心直口快是优点，倘若不注意场合与对象，出言不逊，出口伤人，就会让人讨厌。蔡明表演的以“毒舌”为语言特征的小品，为什么会一再登上央视春晚舞台，并非人们喜欢“毒舌”，而是因为她塑造的“毒舌”，形象惟妙惟肖，语言尖酸刻薄，对缺乏口德者的讽刺力度入木三分，从而使人们在爆笑的同时，更加讨厌“毒舌”，远离“毒舌”，也能让那些以“刀子嘴豆腐心”自诩的人反观自照，明心见性，在社会交往中不再以“毒舌”相向。即便以“毒舌”显示幽默，也要看对方的接受能力，顾及他人的尊严。\r\n</p>', '2017-10-02 14:55:07', null, '多对多多对多多', '16', '1', '1071766245@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('45', '<table width=\"100%\" style=\"padding:0px;margin:0px;color:#333333;font-family:Helvetica, Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<div id=\"contentMidPicAD\" style=\"padding:0px;margin:0px;vertical-align:top;\">\r\n				</div>\r\n<img alt=\"\" height=\"441\" src=\"http://www.yueduwen.com/uploads/allimg/c170225/14X01CI261Z-1131J.jpg\" width=\"590\" />\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					他一岁的时候，父亲被打成右派，被送进江西某农场劳动改造。他的母亲是一名小学教师，因为身边还带着大他一岁的哥哥，母亲自知没有多余的精力把他拉扯成人。就在一个雨夜，母亲怀抱着他，把他托付给原来的老邻居，即他日后经常挂在嘴边的张公张婆。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					张公是安徽人，人长得高大，心地善良，日本侵华时，他挑着担子，逃难来到湖南沅陵麻溪铺。张公的左脚就是在逃难时被日本飞机丢响的炸弹震坏的，因此，走起路来，一颠一颠的。保姆婆是从凤凰逃难到本地，当年她只有十五岁。两位苦难的人在异乡相依为命，他们一生没有生育。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					在麻溪铺镇上，临着街，张公和张婆拥有一间不大的屋子，那屋子由裱有报纸的隔板分成两小间。靠外的一间，是现代意义上的客厅。中间有一个火塘，火塘上有一个木架，常年挂着几排黑乎乎的东西，那是当地人喜欢的腊肉。在隆冬季节，大雪封山的日子，张婆会切下一段腊肉，把肉皮在炭火上烧烤。几分钟，洗出来之后，黑色的肉皮就变成黄金糕的颜色了。腊肉的香味极具诱惑。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					靠里那一间，他和张公张婆挤在一张木板床上，怕他半夜摔下来，老人让他睡在中间。那屋子下雨时漏雨，刮风时透风。于是，张公就在屋顶扯起一块塑料布。每逢下雨，瓦缝的水有节奏地滴进塑料布里，发出嗒—嗒—嗒—的声音。南方雨水多，那嗒嗒嗒的雨声就成了他的催眠曲。为了防止泥巴地发潮，张公张婆在那木板床的下面，塞满了黑乎乎的木炭，果木的清香残留在木炭的骨子里，伴着他一天天长大成人。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					转眼，他六岁了，到了读书的时候。有一天，张公拿过他削得尖尖的铅笔说，崽呀，这铅笔你若削尖了，一用力就断了，很浪费。张公示范着说，铅笔只要用菜刀把木头削掉，露出铅笔芯就可以写字了，这样既节省又不易折断。他一直按照张公的办法去做，以至于现在不仅能写得一手好字，关键是字粗而且大，极易辨认。在每一个小鸟啼叫的早晨和炊烟袅袅的黄昏，像吊死鬼儿一样贴在他屁股上的黄色书包里，除了几本卷了角的书本，就是一支秃头秃脑的铅笔。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					张婆做得一手好菜。当他还没有灶台高的时候，张婆搬来一个高脚竹椅子摆在灶台边，把他抱上去，他就趴在灶台上，看张婆怎样炒菜，怎样放佐料。他打小就明白了切菜的刀功极为重要，也懂得炒菜的时候哪些应该盖锅盖，哪些菜是不需要盖锅盖的。在每一道菜出锅的时候，他记得张婆都会用洁白的抹布在碗口边缘擦一圈，残留的痕迹便不复存在了。张婆常说，孔夫子不吃豆腐，吃东西讲究色香味，讲究刀法，老祖宗留下的够我们一辈子去学。\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					如今，他做饭做得可口，全家人都跟着他享口福。看到全家老小一脸享受地吃着他做的饭菜，他一脸的幸福。他夹一口菜，刨一口饭，敲一下碗边儿，嗯，可以，可以，这味道可以。<span class=\"yueduwencom\">（<a href=\"http://www.yueduwen.com/\">悦读文网</a>&nbsp;www.yueduwen.com）</span>\r\n				</p>\r\n				<p style=\"color:#434343;font-size:16px;text-indent:2em;\">\r\n					距离张公张婆的屋不远，有一所女子中学，张公是那学校的校工。当时的学校，没有电铃，上课下课，都是靠敲钟。张公就是那敲钟的人。钟也不是什么好材料做的，是一个长锈的铁环，用麻绳系着，挂在一根房梁上面。\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2017-10-06 11:02:49', '62', '最后一试', '16', '1', '1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('46', '<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<img alt=\"\" src=\"https://www.yueduwen.com/uploads/allimg/1705/1-1F520161G2E9.jpg\" /><img src=\"https://www.yueduwen.com/uploads/allimg/1705/1-1F520161G2E9.jpg\" />\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	去岁盛夏返乡，时近黄昏，禽鸟归巢，晚风吹拂，我独自漫步在房前不远处的三米宽的水泥质地镶有不锈钢围栏的小桥上。桥下流水潺潺，清澈见底。举目四望，满眼青翠，一片碧绿：周围稻田碧浪翻滚，稻穗飘香;稍远处玉米吐穗，绿叶婆娑;远处青山含黛，松柏飘香。白练似的水泥小路盘旋乡间逶迤远方，随之一同飘去的还有我的一片思绪。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	小时候，穿过一条狭窄蜿蜒的田埂来到小河边，就见一座木石结构的小桥横跨河上。小桥宽约两米，长有丈余，全桥由三根直径约二十公分的柏树为基底，上以质地坚硬的青石板严密覆盖，下有两根柏木立柱在河中支撑。我们村两个组的近三百群众都要通过该桥来往，去到对岸的碎石公路，走向远方。印象中，小桥从我记事起就一直存在，它是我们对外联系的纽带。尽管它外形单调，结构简单，却十分坚固，即使人们牵着体型硕大的黑水牛从上面悠然走过也安然无恙，而且还经受住了几次巨大洪水冲击的考验呢。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	童年的夏天，好像比现在还要炎热许多，蝉也叫得特别响亮，我和小伙伴们常在桥下游泳，河中嬉戏。有时仰头看着小桥，感觉它无比高大雄伟。如果有人敢站在桥上做出各种姿势往下跳水，常会赢得孩子们的无比羡慕和大声喝彩。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	小桥也是通向对岸外婆家的唯一大道，傍晚回家，外婆家的大黄狗必要送我回来。让我百思不得其解的是，大黄狗每次都是把我送到小桥边就默默离去了，从来不越雷池半步，好像它对桥心存敬畏，很放心把我交给小桥似的。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	遗憾的是，我长大成年了，小桥却衰老了。年久失修，上面的青石板风化掉落得厉害，最后只剩下三根孤零零的朽木了，大人们在上面还能如履平地，年幼的孩子们就惨了，很多只能在上面缓缓爬行，战战兢兢，如履薄冰。又过了一年，小桥的通过能力几乎完全丧失，大人们也早将关注的重点转移到了农作上，忙于打理自家的承包地。再加上雨水连年减少，河床干涸见底，河底裂纹密布，人们下河底爬河堤也不甚费力，小桥就渐渐被人们遗忘了，最后就连几根枯朽的柏木也不见踪影，可能是被村民扛回去作柴禾了吧。河水充盈时，人们往往行走于集体夯筑的土堰上，但不得不面对土堰随时崩塌的危险。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	一年夏天，暴发了三十年未遇的特大洪水。顷刻间，一切堤堰土崩瓦解，想要出行十分困难，况且还有许多农产品要运出去许多农资要运进来呢。人们这才认识到架座小桥的必要性，于是乎发动群众，有钱出钱，有力出力，准备建一座有两个桥墩的水泥板桥。<span class=\"yueduwencom\">（<a href=\"http://www.yueduwen.com/\">悦读文网</a>&nbsp;www.yueduwen.com）</span>\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	乡民的本性始终是淳朴良善的，认为修桥补路是积德行善，都踊跃出钱出力，很快前期准备就完成了。修桥由经验丰富的老石匠亲自掌墨，开始挖基脚，抬石头，拌水泥，砌桥墩，搭桥板。老石匠认为这可能是自己人生最后一件大作品，认真到了严苛的程度，所谓慢工出细活，这桥修了近半年之久。看到这座新落成的水泥板桥，听到人们的啧啧称赞，老石匠就好像看着自己的刚出生的孩子，高兴得裂开干瘪的嘴唇，嘿嘿地笑出声来。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	这一下，新桥很快就成了人们聚集谈天的场所。盛夏的夜晚，在桥上休憩纳凉的人语声久久不绝，争相述说着生活的美好;严冬的中午，沐浴暖阳的人笑声不断，竞相谈论着故乡的变迁。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	后来，村民个人集资，再加上国家补贴，开始将小桥两边安上不锈钢栏杆，并将穿过小桥两边的乡间小道拓宽硬化，通到家家户户，大大方便了人们出行。远在他乡多年未归的游子也纷纷驾车返乡，当漂亮舒适的轿车轻吻小桥时，他们说分明听到了小桥的咯咯笑声，好像是独自在家的慈母在热烈欢迎久别孩子的归来。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	突然“滴——滴——”声起，将我的思绪拉回眼前，原来是阔别多年的儿时好友晓敏在打招呼。我俩就在桥头攀谈起来，诉说着各自的生活和家乡的美好。\r\n</p>\r\n<p style=\"color:#434343;font-size:16px;text-indent:2em;font-family:Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	此时，夜色渐浓，小桥无语。是啊，故乡的小桥不仅见证了家乡由贫穷到富裕的发展变化，见证了家乡人们从奔波到闲适的生活，也必将见证家乡不可限量的辉煌未来。\r\n</p>', '2017-10-07 21:51:26', null, 'ssss', '16', '1', '1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('47', '发发发发发发付付付', '2017-10-16 17:17:51', '69', '啛啛喳喳', '16', '18', '甄嬛;无双', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('48', '多对多', '2017-10-16 17:42:16', '70', '多对多', '16', '1', '无双', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('49', '少时诵诗书所所所所所', '2017-10-18 17:45:16', '72', '少时诵诗书', '16', '1', '1057245260@qq.com', '20', '1', '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('50', '12313', '2019-10-25 00:17:38', null, 'i love you', '16', '8', 'admin', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('51', '今天之内吧请假表发过来', '2019-10-25 12:52:18', null, '好久不见了', '16', '8', 'admin', '20', null, '0', '1', '0');
INSERT INTO `aoa_in_mail_list` VALUES ('53', '反反复复付付付付付付付付付付付付付付付付付付付', '2019-10-25 19:25:34', null, 'aaa', '16', '8', '923219711@qq.com', '20', '14', '0', '1', '0');

-- ----------------------------
-- Table structure for aoa_love_discuss_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_love_discuss_user`;
CREATE TABLE `aoa_love_discuss_user` (
  `discuss_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`discuss_id`,`user_id`),
  KEY `FKkl0fitgg3qixkg5gg9mmjp5e7` (`user_id`),
  CONSTRAINT `FKkl0fitgg3qixkg5gg9mmjp5e7` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKnhdtxclyun4is9ne5o99nqw1c` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_love_discuss_user
-- ----------------------------
INSERT INTO `aoa_love_discuss_user` VALUES ('8', '1');
INSERT INTO `aoa_love_discuss_user` VALUES ('12', '1');
INSERT INTO `aoa_love_discuss_user` VALUES ('15', '1');
INSERT INTO `aoa_love_discuss_user` VALUES ('33', '1');
INSERT INTO `aoa_love_discuss_user` VALUES ('44', '1');
INSERT INTO `aoa_love_discuss_user` VALUES ('7', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('12', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('13', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('33', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('37', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('38', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('39', '2');
INSERT INTO `aoa_love_discuss_user` VALUES ('33', '3');
INSERT INTO `aoa_love_discuss_user` VALUES ('33', '7');
INSERT INTO `aoa_love_discuss_user` VALUES ('44', '8');

-- ----------------------------
-- Table structure for aoa_love_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_love_user`;
CREATE TABLE `aoa_love_user` (
  `reply_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FK7fv96y8gbqcnb44qao4ey4rmn` (`user_id`),
  KEY `FKcuptpmm0l1e0b9pjv0xksqqai` (`reply_id`),
  CONSTRAINT `FK7fv96y8gbqcnb44qao4ey4rmn` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcuptpmm0l1e0b9pjv0xksqqai` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_love_user
-- ----------------------------
INSERT INTO `aoa_love_user` VALUES ('7', '2');
INSERT INTO `aoa_love_user` VALUES ('9', '2');
INSERT INTO `aoa_love_user` VALUES ('6', '1');
INSERT INTO `aoa_love_user` VALUES ('3', '1');
INSERT INTO `aoa_love_user` VALUES ('2', '1');
INSERT INTO `aoa_love_user` VALUES ('9', '1');
INSERT INTO `aoa_love_user` VALUES ('16', '1');
INSERT INTO `aoa_love_user` VALUES ('15', '1');
INSERT INTO `aoa_love_user` VALUES ('14', '1');
INSERT INTO `aoa_love_user` VALUES ('17', '1');
INSERT INTO `aoa_love_user` VALUES ('18', '1');
INSERT INTO `aoa_love_user` VALUES ('62', '2');
INSERT INTO `aoa_love_user` VALUES ('61', '2');
INSERT INTO `aoa_love_user` VALUES ('67', '2');
INSERT INTO `aoa_love_user` VALUES ('4', '2');
INSERT INTO `aoa_love_user` VALUES ('2', '2');
INSERT INTO `aoa_love_user` VALUES ('2', '2');
INSERT INTO `aoa_love_user` VALUES ('3', '2');
INSERT INTO `aoa_love_user` VALUES ('3', '2');
INSERT INTO `aoa_love_user` VALUES ('60', '2');
INSERT INTO `aoa_love_user` VALUES ('68', '2');
INSERT INTO `aoa_love_user` VALUES ('69', '2');
INSERT INTO `aoa_love_user` VALUES ('72', '2');
INSERT INTO `aoa_love_user` VALUES ('72', '2');
INSERT INTO `aoa_love_user` VALUES ('73', '2');
INSERT INTO `aoa_love_user` VALUES ('73', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('59', '2');
INSERT INTO `aoa_love_user` VALUES ('84', '2');
INSERT INTO `aoa_love_user` VALUES ('73', '8');
INSERT INTO `aoa_love_user` VALUES ('73', '1');
INSERT INTO `aoa_love_user` VALUES ('5', '8');
INSERT INTO `aoa_love_user` VALUES ('2', '8');

-- ----------------------------
-- Table structure for aoa_mailnumber
-- ----------------------------
DROP TABLE IF EXISTS `aoa_mailnumber`;
CREATE TABLE `aoa_mailnumber` (
  `mail_number_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail_account` varchar(255) NOT NULL,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_des` varchar(255) DEFAULT NULL,
  `mail_type` bigint(20) DEFAULT NULL,
  `mail_user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` bigint(20) DEFAULT NULL,
  `mail_num_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mail_number_id`),
  KEY `FKn9qg20uba4xn2k5m62jrcyc6c` (`mail_num_user_id`),
  CONSTRAINT `FKn9qg20uba4xn2k5m62jrcyc6c` FOREIGN KEY (`mail_num_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_mailnumber
-- ----------------------------
INSERT INTO `aoa_mailnumber` VALUES ('1', '1057245260@qq.com', '2017-09-24 12:23:26', null, '1', '宋佳', 'scdvszfjjfrpbeaa', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('2', '664303632@qq.com', '2017-09-13 13:29:28', null, '1', '李明', '123456', '2', '1');
INSERT INTO `aoa_mailnumber` VALUES ('3', 'ffffff', '2017-09-22 14:02:51', null, '2', 'ggg', '33333', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('4', '66@qq.com', '2017-09-24 18:26:31', '的点点滴滴', '1', '私事', '333', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('5', '66@qq.com', '2017-09-24 18:27:26', '的点点滴滴', '1', '哈哈哈哈', '55555', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('6', '66@qq.com', '2017-09-24 18:37:06', '的点点滴滴', '1', '滚滚滚', '55555', '2', '1');
INSERT INTO `aoa_mailnumber` VALUES ('8', 'ggg', '2017-09-28 20:33:06', 'hhh', '1', 'llll', '11111', '1', '2');
INSERT INTO `aoa_mailnumber` VALUES ('9', '10@qq.com', '2017-09-25 18:45:52', '', '1', '多对多', '发vwv ', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('10', '45@qq.com', '2017-09-25 18:46:22', '是是是', '1', '吗vwjrerg ', '14982', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('11', '1234@qq.com', '2017-09-25 18:46:53', '', '1', '点点滴滴', 'dbetet', '2', '1');
INSERT INTO `aoa_mailnumber` VALUES ('12', '12@qq.com', '2017-09-25 18:47:15', '', '1', '反反复复', '34455', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('13', '34@qq.com', '2017-09-25 18:47:35', '', '1', '别发额', '457895780', '1', '1');
INSERT INTO `aoa_mailnumber` VALUES ('14', '923219711@qq.com', '2019-10-25 19:21:47', '', '2', 'TFboy', 'Qqasd12580', '1', '8');

-- ----------------------------
-- Table structure for aoa_mail_reciver
-- ----------------------------
DROP TABLE IF EXISTS `aoa_mail_reciver`;
CREATE TABLE `aoa_mail_reciver` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) NOT NULL,
  `mail_id` bigint(20) DEFAULT NULL,
  `mail_reciver_id` bigint(20) DEFAULT NULL,
  `is_star` int(11) DEFAULT NULL,
  `is_del` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FKj8ki52vm052q6qdal2rkh2c9q` (`mail_id`),
  KEY `FK65vdrbmq9hu4hrhvtw6slwxlc` (`mail_reciver_id`),
  CONSTRAINT `FK65vdrbmq9hu4hrhvtw6slwxlc` FOREIGN KEY (`mail_reciver_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKj8ki52vm052q6qdal2rkh2c9q` FOREIGN KEY (`mail_id`) REFERENCES `aoa_in_mail_list` (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_mail_reciver
-- ----------------------------
INSERT INTO `aoa_mail_reciver` VALUES ('3', '1', '5', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('5', '0', '13', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('6', '0', '15', '1', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('7', '1', '18', '1', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('8', '0', '19', '4', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('10', '1', '21', '2', '1', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('11', '1', '23', '1', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('12', '0', '23', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('13', '0', '24', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('14', '0', '24', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('15', '1', '25', '1', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('16', '0', '25', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('17', '0', '25', '4', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('18', '0', '26', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('19', '0', '26', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('20', '0', '27', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('21', '0', '27', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('22', '0', '28', '4', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('23', '0', '28', '5', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('24', '0', '28', '6', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('25', '0', '29', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('26', '0', '29', '5', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('27', '0', '30', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('28', '0', '30', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('29', '0', '30', '5', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('30', '0', '30', '6', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('31', '0', '32', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('32', '0', '32', '3', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('33', '0', '33', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('36', '1', '34', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('37', '1', '35', '2', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('38', '1', '47', '9', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('39', '0', '47', '10', '0', '0');
INSERT INTO `aoa_mail_reciver` VALUES ('40', '0', '48', '10', '0', '0');

-- ----------------------------
-- Table structure for aoa_notepaper
-- ----------------------------
DROP TABLE IF EXISTS `aoa_notepaper`;
CREATE TABLE `aoa_notepaper` (
  `notepaper_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `concent` text,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notepaper_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notepaper_id`),
  KEY `FKsavcqw29haox5bu7y90it8jb7` (`notepaper_user_id`),
  CONSTRAINT `FKsavcqw29haox5bu7y90it8jb7` FOREIGN KEY (`notepaper_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_notepaper
-- ----------------------------
INSERT INTO `aoa_notepaper` VALUES ('1', '反反复复付付', '2019-09-22 15:08:28', 'wergfbebhet', '1');
INSERT INTO `aoa_notepaper` VALUES ('2', 'gggggg', '2019-09-22 15:08:28', 'ggggg', '1');
INSERT INTO `aoa_notepaper` VALUES ('3', '咯咯咯咯咯', '2019-09-22 15:08:28', '点点滴滴', null);
INSERT INTO `aoa_notepaper` VALUES ('5', '密密麻麻木木木木木木', '2019-09-22 15:08:28', '咕咕咕咕', '1');
INSERT INTO `aoa_notepaper` VALUES ('6', '呃呃呃', '2019-09-22 15:08:28', '凄凄切切', '1');
INSERT INTO `aoa_notepaper` VALUES ('9', '巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不巴巴爸爸不不', '2019-09-22 15:08:28', '凄凄切切', '1');
INSERT INTO `aoa_notepaper` VALUES ('10', '反反复复', '2019-09-25 17:05:18', '咕咕咕咕', '1');
INSERT INTO `aoa_notepaper` VALUES ('11', '呜呜呜呜', '2019-09-25 17:05:18', '额鹅鹅鹅', '1');
INSERT INTO `aoa_notepaper` VALUES ('12', '哈哈哈哈或', '2019-09-25 17:05:18', '哈哈哈哈或', '1');
INSERT INTO `aoa_notepaper` VALUES ('13', '短发儿童heat哈人员建议他已经拿到挥汗如雨', '2019-09-25 17:05:18', '啦啦啦啦绿', '1');
INSERT INTO `aoa_notepaper` VALUES ('14', '斤斤计较军军军', '2019-09-25 17:05:18', '咯咯咯咯咯过过过过', '1');
INSERT INTO `aoa_notepaper` VALUES ('15', '郭碧婷混合双打国庆套qyy6u7ugv ', '2019-09-25 17:05:18', '点点滴滴', '1');
INSERT INTO `aoa_notepaper` VALUES ('16', 'dsadssssssssss', '2019-10-18 18:50:07', 'fd', '1');
INSERT INTO `aoa_notepaper` VALUES ('17', '此夜星辰非昨夜', '2019-10-18 18:50:07', '今天', '1');
INSERT INTO `aoa_notepaper` VALUES ('18', '的说法', '2019-10-18 18:50:07', '是滴', '1');
INSERT INTO `aoa_notepaper` VALUES ('23', '的说法', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('24', '士大夫', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('25', '的说法', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('26', '网速慢', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('27', '哈哈ui', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('28', '范德萨', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('29', '范德萨', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('30', '123456789', '2019-10-18 18:50:07', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('31', '范德萨', '2019-10-18 18:50:07', '无标题', '18');
INSERT INTO `aoa_notepaper` VALUES ('32', '我们不一样', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('33', '我们不一样', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('34', '我们不一样', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('35', '我们不一样', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('36', '我们不一样', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('37', '一万头草泥吗', '2019-10-22 00:35:47', '无标题', '1');
INSERT INTO `aoa_notepaper` VALUES ('38', '10.24节快乐', '2019-10-24 00:05:19', '程序员节', '1');
INSERT INTO `aoa_notepaper` VALUES ('39', '谷歌公司回归中国', '2019-10-24 16:12:11', '今日早闻', '8');
INSERT INTO `aoa_notepaper` VALUES ('40', '据韩网报道，预计于明日退伍的权志龙退伍场所改为龙仁，因为原本定的退伍地江原道铁原检测了出非洲猪瘟(ASF)病毒，所以不得已临时更换，据悉，今日（25日）权志龙前往了在龙仁的陆军地面作战司令部，退伍时间确定为明早8时（韩国时间），中国的迷妹看来得早上7点起来看欧巴退伍帅照啦！', '2019-10-27 00:46:00', 'GD权志龙回归', '8');
INSERT INTO `aoa_notepaper` VALUES ('41', '习近平强调，要强化基础研究，提升原始创新能力，努力让我国在区块链这个新兴领域走在理论最前沿、占据创新制高点、取得产业新优势。要推动协同攻关，加快推进核心技术突破，为区块链应用发展提供安全可控的技术支撑。要加强区块链标准化研究，提升国际话语权和规则制定权。要加快产业发展，发挥好市场优势，进一步打通创新链、应用链、价值链。要构建区块链产业生态，加快区块链和人工智能、大数据、物联网等前沿信息技术的深度融合，推动集成创新和融合应用。要加强人才队伍建设，建立完善人才培养体系，打造多种形式的高层次人才培养平台，培育一批领军人物和高水平创新团队。', '2019-10-27 12:33:41', '习近平强调把区块链作为核心技术自主创新重要突破口 ', '8');
INSERT INTO `aoa_notepaper` VALUES ('42', '由中国卫星海上测控部所属远望21号、22号船组成的火箭运输船队于10月22日从天津港启航，经过5昼夜航行，经受住了复杂海况环境考验，安全抵达海南文昌清澜港码头', '2019-10-28 08:25:37', '长征五号遥三运载火箭运抵海南文昌 将择机发射', '2');
INSERT INTO `aoa_notepaper` VALUES ('43', '可能我这么说大多数果粉听了会不高兴，管理能力上面，库克比乔布斯成功，用事实说话。\r\n在苹果公司成立之初，乔布斯就没有被视为出色的商业领袖。毫无疑问，他作为领袖能够激发和说服听众的人的才能。因此，他有能力思考客户真正想要的尚未见过的产品。', '2019-10-28 22:06:21', '没有乔布斯的苹果，库克是救星还是罪', '7');
INSERT INTO `aoa_notepaper` VALUES ('44', '电影插曲《不得了》由影视音乐战略合作伙伴：奔跑怪物（北京）文化娱乐有限公司营销推广，电影《受益人》11月8日全国上映，“真的骗你，也是真的爱你”，一起相约电影院，跟着音乐魔性循环！', '2019-10-28 22:34:09', '电影《受益人》将映 柳岩元气演绎插曲《不得了》', '24');

-- ----------------------------
-- Table structure for aoa_note_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_note_list`;
CREATE TABLE `aoa_note_list` (
  `note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(15000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `catalog_id` bigint(20) DEFAULT NULL,
  `attach_id` bigint(20) DEFAULT NULL,
  `is_collected` bigint(20) DEFAULT '0',
  `createman_id` bigint(20) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  KEY `FK3e1rxyyg851r231ln3ucnrg7q` (`catalog_id`),
  CONSTRAINT `FK3e1rxyyg851r231ln3ucnrg7q` FOREIGN KEY (`catalog_id`) REFERENCES `aoa_catalog` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_note_list
-- ----------------------------
INSERT INTO `aoa_note_list` VALUES ('1', 'sdfa', '2017-09-08 20:43:08', '8', 'hg', '6', '1', '46', '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('90', 'zxc', '2017-09-07 19:12:07', '8', '90', '6', '2', '3', '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('93', 'dfasf', '2017-09-14 10:04:34', '9', '93', '6', '1', '3', '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('96', '哈哈', '2017-09-15 11:01:08', '8', '这张图片必须显示96', '5', '1', '6', '0', '2', null);
INSERT INTO `aoa_note_list` VALUES ('101', '分享应该可以了吧', '2017-09-15 20:11:23', '8', '666101', '7', '1', '10', '1', '2', null);
INSERT INTO `aoa_note_list` VALUES ('102', '快点老兄', '2017-09-15 20:14:51', '8', '666102', '7', '1', '11', '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('111', '的说法', '2017-09-15 23:53:04', '8', '地方撒111', '7', '1', '7', '0', '1', '小李父斯基');
INSERT INTO `aoa_note_list` VALUES ('120', 'dsaf', '2017-09-18 11:04:48', '8', 'werq 120', '5', '1', '9', '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('122', 'dsaf但是', '2017-09-18 11:06:24', '8', '修改122', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('126', '大', '2017-09-23 11:43:05', '8', '地方撒发生126', '7', '1', null, '0', '1', 'soli;红之花');
INSERT INTO `aoa_note_list` VALUES ('127', 'dsfa', '2017-09-23 12:34:05', '8', 'dfsa的127', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('128', 'sdaf', '2017-09-23 12:37:21', '8', 'dsa128', '6', '1', '42', '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('137', '第三方', '2017-10-01 14:18:54', '8', '大师傅137', '7', '1', null, '0', '1', ';伊丽莎白');
INSERT INTO `aoa_note_list` VALUES ('138', '发多少', '2017-10-01 14:30:48', '8', '分公司', '7', '1', null, '0', '1', '伊丽莎白');
INSERT INTO `aoa_note_list` VALUES ('139', '士大夫', '2017-10-01 14:31:26', '8', '士大夫', '6', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('140', '士大夫', '2017-10-01 14:36:19', '8', '手动阀', '7', '1', null, '0', '1', '伊丽莎白;小李父斯基');
INSERT INTO `aoa_note_list` VALUES ('143', '发多少', '2017-10-01 14:57:13', '8', 'fdas ', '7', '1', null, '1', '1', ';发给');
INSERT INTO `aoa_note_list` VALUES ('145', 'fd', '2017-10-01 16:01:33', '8', 'fggfd', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('146', '', '2017-10-01 16:02:51', '8', '新建发给', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('149', '地方撒1222222222222222', '2017-10-01 17:50:20', '8', '范德萨', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('150', '士大夫1111111111111', '2017-10-01 17:55:31', '8', '的是非得失', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('151', '更丰富付付付付付付付付付付付付付付付付', '2017-10-01 18:06:21', '8', '华哥', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('152', '22222222222222222222', '2017-10-01 18:09:32', '8', '地方撒', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('153', '1111111111111111111111', '2017-10-01 18:11:05', '8', '大师', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('154', '222222222222222222222', '2017-10-01 18:19:10', '8', '第三方', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('155', '哈哈哈哈或或或或或或或或或或或或或或或或或或或或或或或发凡方法付付', '2017-10-01 18:25:10', '8', '过后会或或', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('156', '东方时尚所说付发的大多多多多多多多', '2017-10-01 18:30:08', '8', ' 胡歌封帝', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('157', '东方时尚所所所所所所所所所', '2017-10-01 18:35:07', '8', '咯咯咯咯咯滚滚滚', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('158', '333333333333333', '2017-10-01 19:20:29', '8', '第三方', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('159', '2111111111111111111111111111', '2017-10-01 19:38:13', '8', '的说法', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('160', '2222222222222222222222222', '2017-10-01 19:42:55', '8', '的说法', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('161', '2222222222222222222222222222', '2017-10-01 19:49:55', '8', '大方法', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('162', '43333333333333333333333333', '2017-10-01 19:57:19', '8', '的说法', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('163', '444444444444444444444444444444444', '2017-10-01 19:59:18', '8', '第三方', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('164', '55555555555555555555555555555555', '2017-10-01 20:03:07', '8', '的说法', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('165', '3443242243333333333333', '2017-10-01 20:05:10', '8', '范德萨', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('166', '22222222222222222222222222', '2017-10-01 20:08:25', '8', '大对方是否收费', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('167', '3333333333333333333333', '2017-10-01 20:17:13', '8', '发生的', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('168', '11111111111111111111111', '2017-10-01 20:26:29', '8', '地方撒', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('169', '333333333333333333333', '2017-10-01 20:26:58', '8', '第', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('170', '知道吗 这个世界 随处都有万有引力', '2017-10-05 19:49:17', '8', '无语的n此房', '7', '1', null, '0', '1', '罗密欧;甄姬');
INSERT INTO `aoa_note_list` VALUES ('171', '11111111111111111111111111111111111', '2017-10-05 20:19:31', '8', '的说法', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('172', '阿斯蒂芬三分333333333333', '2017-10-05 20:23:02', '8', '地方撒', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('173', '(⊙o⊙)…334334', '2017-10-05 20:23:27', '8', '的说法', '5', '2', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('174', '1321131314124', '2017-10-05 20:25:30', '8', '三大东方', '7', '2', null, '0', '1', '罗密欧;伊丽莎白');
INSERT INTO `aoa_note_list` VALUES ('175', '213131对方是否收费 23', '2017-10-05 20:27:17', '8', '范德萨23', '7', '1', null, '0', '1', '罗密欧;伊丽莎白');
INSERT INTO `aoa_note_list` VALUES ('176', '2222222222222222222222222222', '2017-10-05 20:40:18', '8', '听说对方', '6', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('177', '233333333333333333333333', '2017-10-05 20:43:01', '8', '发生的发生', '7', '2', null, '0', '1', '小李父斯基;soli');
INSERT INTO `aoa_note_list` VALUES ('178', '2333333333333333333333333333333', '2017-10-05 20:43:31', '9', '地方撒发生', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('179', '2333333333333333333333333333', '2017-10-05 20:48:03', '8', '大三', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('180', '33333333333333333333333', '2017-10-05 20:48:49', '8', '地方', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('181', '22222222222222222222222222222222', '2017-10-05 20:50:57', '8', '33333333333333', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('182', '3333333333333333', '2017-10-05 20:57:28', '9', '地方撒', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('183', '大师傅444444444444444444444', '2017-10-05 21:01:41', '8', '的说法', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('184', '3333333333333333333333333333333333', '2017-10-05 21:03:03', '8', 'ad231', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('187', '44444444444444444444444444444444444444', '2017-10-05 21:22:28', '8', '安抚第三方', '5', '1', null, '1', '1', null);
INSERT INTO `aoa_note_list` VALUES ('188', '324242533333333333333333390', '2017-10-05 22:48:20', '8', '大三', '5', '1', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('189', 'dsafffffff555555555555555555555555', '2017-10-06 11:15:14', '8', 'dfas ', '5', '33', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('190', '3333333333333333333333333333333333333', '2017-10-06 11:23:34', '8', 'sdfa ', '5', '33', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('191', '222222222222222222222222222222222222222222222222', '2017-10-06 11:29:14', '8', '34242423', '5', '33', null, '0', '7', null);
INSERT INTO `aoa_note_list` VALUES ('192', '2323232323232323232323232323232323', '2017-10-06 22:29:33', '8', '发给', '5', '33', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('193', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">1995年，互联网的蓬勃发展给了Oak机会。业界为了使死板、单调的静态网页能够“灵活”起来，急需一种软件技术来开发一种程序，这种程序可以通过网络传播并且能够跨平台运行。于是，世界各大</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/IT/16684878\">IT</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">企业为此纷纷投入了大量的人力、物力和财力。这个时候，Sun公司想起了那个被搁置起来很久的Oak，并且重新审视了那个用软件编写的试验平台，由于它是按照嵌入式系统硬件平台体系结构进行编写的，所以非常小，特别适用于网络上的传输系统，而Oak也是一种精简的语言，程序非常小，适合在网络上传输。Sun公司首先推出了可以嵌入网页并且可以随同网页在网络上传输的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Applet\">Applet</a><i>（Applet是一种将小程序嵌入到网页中进行执行的技术）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，并将Oak更名为Java</span>', '2017-10-06 22:32:04', '8', '最终版本', '7', '33', '81', '0', '1', '丹琪;于彤');
INSERT INTO `aoa_note_list` VALUES ('194', '444444444444444444444444444444', '2017-10-07 16:03:03', '8', '有附件', '5', '33', '64', '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('195', '322222222222222222222222222222222222222222222', '2017-10-07 20:14:48', '9', '范德萨', '6', '33', null, '0', '23', null);
INSERT INTO `aoa_note_list` VALUES ('196', '<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java/85979\">Java</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">是一门</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1\">面向对象</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">编程语言，不仅吸收了</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/C%2B%2B\">C++</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">语言的各种优点，还摒弃了C++里难以理解的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A4%9A%E7%BB%A7%E6%89%BF\">多继承</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8C%87%E9%92%88\">指针</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[1]</span><a name=\"ref_[1]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。</span>', '2017-10-08 16:22:44', '8', '上课要义', '5', '33', '77', '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('198', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">由于在开发Oak语言时，尚且不存在运行字节码的硬件平台，所以为了在开发时可以对这种语言进行实验研究，他们就在已有的硬件和软件平台基础上，按照自己所指定的规范，用软件建设了一个运行平台，整个系统除了比C++更加简单之外，没有什么大的区别。1992年的夏天，当Oak语言开发成功后，研究者们向硬件生产商进行演示了Green操作系统、Oak的程序设计语言、类库和其硬件，以说服他们使用Oak语言生产硬件芯片，但是，硬件生产商并未对此产生极大的热情。因为他们认为，在所有人对Oak语言还一无所知的情况下，就生产硬件产品的风险实在太大了，所以Oak语言也就因为缺乏硬件的支持而无法进入市场，从而被搁置了下来</span>', '2017-10-18 15:39:45', '8', '测试', '5', '33', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('199', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">由于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/C%2B%2B\">C++</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">所具有的优势，该项目组的研究人员首先考虑采用C++来编写程序。但对于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A1%AC%E4%BB%B6\">硬件</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">资源极其匮乏的单片式系统来说，C++程序过于复杂和庞大。另外由于消费电子产品所采用的嵌入式处理器芯片的种类繁杂，如何让编写的程序</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%B7%A8%E5%B9%B3%E5%8F%B0\">跨平台</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">运行也是个难题。为了解决困难，他们首先着眼于语言的开发，假设了一种结构简单、符合嵌入式应用需要的硬件平台体系结构并为其制定了相应的规范，其中就定义了这种硬件平台的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%8C%E8%BF%9B%E5%88%B6\">二进制</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">机器码指令系统</span><i>（即后来成为“</i><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AD%97%E8%8A%82%E7%A0%81\"><i>字节码</i></a><i>”的指令系统）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，以待语言开发成功后，能有</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8D%8A%E5%AF%BC%E4%BD%93%E8%8A%AF%E7%89%87\">半导体芯片</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">生产商开发和生产这种硬件平台。对于新语言的设计，Sun公司研发人员并没有开发一种全新的语言，而是根据嵌入式软件的要求，对C++进行了改造，去除了留在C++的一些不太实用及影响安全的成分，并结合嵌入式系统的实时性要求，开发了一种称为</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Oak\">Oak</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1%E8%AF%AD%E8%A8%80\">面向对象语言</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">。</span>', '2017-10-18 15:40:44', '8', '讨论', '7', '33', '84', '0', '8', '甄姬2;无双');
INSERT INTO `aoa_note_list` VALUES ('201', '312111111111111111111111111111111111111111111111111111111111', '2017-10-19 23:15:51', '8', '1231321', '5', '33', null, '0', '10', null);
INSERT INTO `aoa_note_list` VALUES ('202', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">20世纪90年代，硬件领域出现了单片式计算机系统，这种价格低廉的系统一出现就立即引起了自动控制领域人员的注意，因为使用它可以大幅度提升消费类电子产品</span><i>（如电视机顶盒、面包烤箱、移动电话等）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%99%BA%E8%83%BD%E5%8C%96\">智能化</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">程度。Sun公司为了抢占市场先机，在1991年成立了一个称为Green的项目小组，</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B8%95%E7%89%B9%E9%87%8C%E5%85%8B/4831889\">帕特里克</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A9%B9%E5%A7%86%E6%96%AF%C2%B7%E9%AB%98%E6%96%AF%E6%9E%97\">詹姆斯·高斯林</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、麦克·舍林丹和其他几个工程师一起组成的工作小组在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8A%A0%E5%88%A9%E7%A6%8F%E5%B0%BC%E4%BA%9A\">加利福尼亚</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">州</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%97%A8%E6%B4%9B%E5%B8%95%E5%85%8B\">门洛帕克</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">市沙丘路的一个小工作室里面研究开发新技术，专攻计算机在家电产品上的嵌入式应用。</span>', '2017-10-22 01:04:54', '9', '2019某次笔记', '7', '33', '79', '0', '8', '甄姬;甄姬2');
INSERT INTO `aoa_note_list` VALUES ('203', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">毛不易，网综《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%98%8E%E6%97%A5%E4%B9%8B%E5%AD%90/20478071\">明日之子</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》参赛选手，参加海选状况不断，他是明日之子唯一一个刚上场就录了三次音的选手，结果刚开口就被薛之谦闻到一股酒味，原来他上场前喝了几两白酒来缓解紧张，好不容易开始唱了，刚弹吉他，弦就断了，节目组帮忙换掉，张大大说不管怎么样都会送给他一把吉他，看起来他是一个十分有趣的小男生，一首《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A6%82%E6%9E%9C%E6%9C%89%E4%B8%80%E5%A4%A9%E6%88%91%E5%8F%98%E5%BE%97%E5%BE%88%E6%9C%89%E9%92%B1\">如果有一天我变得很有钱</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》内容很有趣，但是其中的落寞自嘲讥讽味道被薛之谦敏锐的发现了，他觉得毛不易可以走向更大的舞台，最终毛不易成功晋级。此后《巨星》唱出生活中的无奈，和《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A6%82%E6%9E%9C%E6%9C%89%E4%B8%80%E5%A4%A9%E6%88%91%E5%8F%98%E5%BE%97%E5%BE%88%E6%9C%89%E9%92%B1\">如果有一天我变得很有钱</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》异曲同工。之后他独创的《消愁》《像我这样的人》歌词字字扎入人心，听哭无数深夜里迷茫的人，“你写词写到我想给你跪”薛之谦这样赞赏他，“你被生活打了多少巴掌？”杨幂这样问到，一夜之间毛不易的《消愁》《像我这样的人》置顶流行音乐榜单，然而扎心依旧不断，一曲《借》直接让华晨宇给了他满分，他不仅歌唱的 好，词写的好，作曲的旋律也很美妙，其词曲不华丽不酷炫，却深深击中黑暗中迷茫前进的心。</span>', '2017-10-22 08:08:10', '9', '变重要', '7', '33', '80', '0', '1', '小李父斯基;甄姬');
INSERT INTO `aoa_note_list` VALUES ('204', '<div>\r\n	<div>\r\n		<p>\r\n			从2014年以来，知乎就成为了我最重要的社交和资讯平台。<br />\r\n天涯几乎再没上过，微博都是地震了才会用一下。<br />\r\n《一人饮酒醉》这首歌。我就是上个月从这个问题知道的。<br />\r\n当时看了最高票的答案觉得挺有意思。<br />\r\n百度搜了一下，第一段就把我震地关了浏览器，太炸耳朵了。<br />\r\n转身就回来把写的不错嘲讽的答案都点了个赞。\r\n		</p>\r\n		<p>\r\n			两天以后，我反思了一下，这样好像不太好。<br />\r\n我记得自己在30岁生日的时候警醒过自己，万事不可太狭隘。<br />\r\n你不应该强烈排斥尚未真正了解的东西。<br />\r\n于是我去下了个直播软件。\r\n		</p>\r\n		<p>\r\n			我出身知识分子家庭，受过高等教育，从事传统行业，衣食无忧生活稳定。<br />\r\n说实话，我挺保守甚至有些落后。<br />\r\n天天看网上说直播怎么赚钱了，快手怎么样了，我都从来没了解过。\r\n		</p>\r\n	</div>\r\n<br />\r\n作者：柯阿卡<br />\r\n链接：https://www.zhihu.com/question/38130123/answer/131454481<br />\r\n来源：知乎<br />\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n</div>', '2017-10-22 08:14:15', '8', '一人饮酒', '7', '33', null, '0', '1', '伊丽莎白;小李父斯基');
INSERT INTO `aoa_note_list` VALUES ('205', '<div>\r\n	<div>\r\n		<p>\r\n			下了直播软件我都不知道怎么玩，就在推荐的热门里面一个个点开看。纯粹好奇。<br />\r\n主播小姑娘绝大多数都很漂亮，小伙子也各有风采。<br />\r\n有的真的美丽俊朗到我想不通。\r\n		</p>\r\n		<p>\r\n			直播间里放烟花一样的撒礼物，哗啦哗啦的，浓妆艳抹的小姑娘不停的谢谢哥谢谢哥谢谢哥。<br />\r\n然后那些“哥”就继续哗啦哗啦的撒礼物。<br />\r\n一个比我胖3圈的胖妹直播吃火锅粉，全程无话，就呼哧呼哧的吃。收了2000金币……<br />\r\n简直颠覆我的认知。天上掉钱是不是就这个意思？\r\n		</p>\r\n		<p>\r\n			就在我准备关掉软件直接卸载的时候，鬼使神差看到了一个小伙子，戴着个大墨镜的头像，写着满满的“喊麦”两个字。<br />\r\n巧了，进去看看你吧。\r\n		</p>\r\n	</div>\r\n<br />\r\n作者：柯阿卡<br />\r\n链接：https://www.zhihu.com/question/38130123/answer/131454481<br />\r\n来源：知乎<br />\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n</div>', '2017-10-22 09:12:41', '8', '今日笔记', '5', '33', '78', '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('206', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">1998年12月8日，第二代Java平台的企业版J2EE发布。1999年6月，Sun公司发布了第二代Java平台（简称为Java2）的3个版本：</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2ME\">J2ME</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java2 Micro Edition，Java2平台的微型版），应用于移动、无线及有限资源的环境；</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2SE\">J2SE</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java 2 Standard Edition，Java 2平台的标准版），应用于桌面环境；</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2EE\">J2EE</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java 2Enterprise Edition，Java 2平台的企业版），应用于基于Java的应用服务器。Java 2平台的发布，是Java发展过程中最重要的一个里程碑，标志着Java的应用开始普及。</span>', '2017-10-22 11:28:16', '9', '论讲究', '7', '32', '82', '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('207', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">2000年5月，JDK1.3、JDK1.4和J2SE1.3相继发布，几周后其获得了</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Apple/3860362\">Apple</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">公司Mac OS X的工业标准的支持。2001年9月24日，J2EE1.3发布。2002年2月26日，J2SE1.4发布。自此Java的计算能力有了大幅提升，与J2SE1.3相比，其多了近62%的类和接口。在这些新特性当中，还提供了广泛的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/XML\">XML</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">支持、安全套接字</span><i>（Socket）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">支持</span><i>（通过SSL与TLS协议）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、全新的I/OAPI、正则表达式、日志与断言。2004年9月30日，J2SE1.5发布，成为Java语言发展史上的又一里程碑。为了表示该版本的重要性，J2SE 1.5更名为Java SE 5.0</span><i>（内部版本号1.5.0）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，代号为“Tiger”，Tiger包含了从1996年发布1.0版本以来的最重大的更新，其中包括泛型支持、基本类型的自动装箱、改进的循环、枚举类型、格式化I/O及可变参数。</span>', '2017-10-22 11:33:02', '8', '我的', '5', '2', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('208', '<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	2005年6月，在Java One大会上，Sun公司发布了Java SE 6。此时，Java的各种版本已经更名，已取消其中的数字2，如J2EE更名为<a target=\"_blank\" href=\"https://baike.baidu.com/item/JavaEE\">JavaEE</a>，J2SE更名为JavaSE，J2ME更名为<a target=\"_blank\" href=\"https://baike.baidu.com/item/JavaME\">JavaME</a>。<span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;\">[8]</span><a name=\"ref_[8]_12654100\"></a>&nbsp;\r\n</div>\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	2006年11月13日，Java技术的发明者Sun公司宣布，将Java技术作为免费软件对外发布。Sun公司正式发布的有关Java平台标准版的第一批源代码，以及Java迷你版的可执行源代码。从2007年3月起，全世界所有的开发人员均可对Java源代码进行修改<span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;\">[9]</span><a name=\"ref_[9]_12654100\"></a>&nbsp;&nbsp;。\r\n</div>', '2017-10-22 11:34:15', '8', '编程', '5', '33', null, '0', '1', null);
INSERT INTO `aoa_note_list` VALUES ('209', '<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">2009年，甲骨文公司宣布收购Sun</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[10]</span><a name=\"ref_[10]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。2010年，Java编程语言的共同创始人之一詹姆斯·高斯林从Oracle公司辞职。2011年，甲骨文公司举行了全球性的活动，以庆祝Java7的推出，随后Java7正式发布。2014年，甲骨文公司发布了Java8正式版</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[11]</span><a name=\"ref_[11]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。</span>', '2017-10-22 11:38:37', '8', '已经建立了', '5', '33', null, '0', '1', null);

-- ----------------------------
-- Table structure for aoa_notice_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_notice_list`;
CREATE TABLE `aoa_notice_list` (
  `notice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `is_top` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_notice_list
-- ----------------------------
INSERT INTO `aoa_notice_list` VALUES ('1', 'fdsa范德萨', '0', '2019-09-21 12:40:10', '2019-09-21 12:39:36', '14', 'interesting', '10', 'http://baidu.com', '1');
INSERT INTO `aoa_notice_list` VALUES ('3', 'fsd fd a', '1', '2019-09-21 12:40:10', '2019-08-21 12:39:07', '14', 'fsa ', '12', 'fs ', '1');
INSERT INTO `aoa_notice_list` VALUES ('4', 'fsdafds fdsa ', '1', '2019-09-21 12:40:10', '2019-09-21 12:39:13', '16', 'fdsafsa', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('5', 'fsd afs afsdf  s', '0', '2019-09-21 12:40:10', '2019-09-18 12:39:18', '14', 'what？？', '10', 'http://gson.cn/stu/996_1_20_2_cdetail_.html', '1');
INSERT INTO `aoa_notice_list` VALUES ('7', '额，这个怎么描述呢？', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '15', '今天新增一个任务', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('8', '11111111', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '11111', '11', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('9', '2222222222', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '2222222', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('10', '33333333333333', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '333333333', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('11', '444444444444', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '4444444444444', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('12', '555555555', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '555555555', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('13', '6666666666', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '66666666', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('14', '77777777777', '0', '2019-09-21 12:40:10', '2019-09-23 16:41:12', '14', '77777777', '10', 'http://www.zxyoo.cn', '1');
INSERT INTO `aoa_notice_list` VALUES ('15', 'fdsfa fdsa fds ', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', 'fdsfa ', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('16', 'fsd afsdf sa', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', 'fsd fs afa ', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('17', '312321', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '31231', '11', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('18', '312413123', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '321313', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('19', '312312314121414', '1', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '31231', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('20', '', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '312312', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('21', '41241', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '21313', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('22', '412431', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '321312', '10', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('23', '', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '14', '31231231', '12', '', '1');
INSERT INTO `aoa_notice_list` VALUES ('24', '怎么办嘛？ 我没有树下？', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '16', '我下面没有员工，', '10', '', '2');
INSERT INTO `aoa_notice_list` VALUES ('25', 'ijdfd', '0', '2019-09-21 12:40:10', '2019-09-24 15:35:55', '15', 'tonight so beatiful', '10', '', '1');

-- ----------------------------
-- Table structure for aoa_notice_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `aoa_notice_user_relation`;
CREATE TABLE `aoa_notice_user_relation` (
  `relatin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) DEFAULT NULL,
  `relatin_notice_id` bigint(20) DEFAULT NULL,
  `relatin_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`relatin_id`),
  KEY `FKhxq8glkpb5qi1smn5gu142rky` (`relatin_notice_id`),
  KEY `FK52evvby6j47j24624ydi0o221` (`relatin_user_id`),
  CONSTRAINT `FK52evvby6j47j24624ydi0o221` FOREIGN KEY (`relatin_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKhxq8glkpb5qi1smn5gu142rky` FOREIGN KEY (`relatin_notice_id`) REFERENCES `aoa_notice_list` (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_notice_user_relation
-- ----------------------------
INSERT INTO `aoa_notice_user_relation` VALUES ('1', '1', '3', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('2', '0', '3', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('3', '0', '3', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('4', '1', '4', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('5', '0', '4', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('6', '0', '4', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('7', '0', '5', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('8', '0', '5', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('9', '0', '5', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('14', '1', '3', '1');
INSERT INTO `aoa_notice_user_relation` VALUES ('15', '1', '4', '1');
INSERT INTO `aoa_notice_user_relation` VALUES ('16', '1', '5', '1');
INSERT INTO `aoa_notice_user_relation` VALUES ('17', '1', '7', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('18', '0', '7', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('19', '0', '7', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('20', '0', '8', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('21', '0', '8', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('22', '0', '8', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('23', '0', '9', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('24', '0', '9', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('25', '0', '9', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('26', '0', '10', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('27', '0', '10', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('28', '0', '10', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('29', '0', '11', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('30', '0', '11', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('31', '0', '11', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('32', '0', '12', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('33', '0', '12', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('34', '0', '12', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('35', '0', '13', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('36', '0', '13', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('37', '0', '13', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('38', '0', '14', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('39', '0', '14', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('40', '0', '14', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('41', '0', '15', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('42', '0', '15', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('43', '0', '15', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('44', '0', '16', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('45', '0', '16', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('46', '0', '16', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('47', '0', '17', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('48', '0', '17', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('49', '0', '17', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('50', '0', '18', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('51', '0', '18', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('52', '0', '18', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('53', '1', '19', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('54', '0', '19', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('55', '1', '19', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('56', '0', '20', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('57', '0', '20', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('58', '0', '20', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('59', '1', '21', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('60', '0', '21', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('61', '0', '21', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('62', '0', '22', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('63', '0', '22', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('64', '0', '22', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('65', '1', '23', '2');
INSERT INTO `aoa_notice_user_relation` VALUES ('66', '0', '23', '3');
INSERT INTO `aoa_notice_user_relation` VALUES ('67', '0', '23', '4');
INSERT INTO `aoa_notice_user_relation` VALUES ('68', '0', '24', '5');
INSERT INTO `aoa_notice_user_relation` VALUES ('69', '0', '24', '6');
INSERT INTO `aoa_notice_user_relation` VALUES ('70', '1', '24', '7');
INSERT INTO `aoa_notice_user_relation` VALUES ('71', '1', '24', '8');
INSERT INTO `aoa_notice_user_relation` VALUES ('72', '1', '25', '2');

-- ----------------------------
-- Table structure for aoa_overtime
-- ----------------------------
DROP TABLE IF EXISTS `aoa_overtime`;
CREATE TABLE `aoa_overtime` (
  `overtime_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`),
  KEY `FK5o36fvdsrrhvr9q4dvffxkuoc` (`pro_id`),
  CONSTRAINT `FK5o36fvdsrrhvr9q4dvffxkuoc` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_overtime
-- ----------------------------
INSERT INTO `aoa_overtime` VALUES ('1', '33', '14', null, '公司没人');
INSERT INTO `aoa_overtime` VALUES ('2', '33', '28', null, null);

-- ----------------------------
-- Table structure for aoa_plan_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_plan_list`;
CREATE TABLE `aoa_plan_list` (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `plan_comment` varchar(5000) DEFAULT '',
  `plan_content` varchar(10000) DEFAULT NULL,
  `plan_summary` varchar(800) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `plan_user_id` bigint(20) DEFAULT NULL,
  `attach_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`start_time`),
  KEY `FKsqqfaj3e7rdl3jalr2sm0y4ln` (`plan_user_id`),
  CONSTRAINT `FKsqqfaj3e7rdl3jalr2sm0y4ln` FOREIGN KEY (`plan_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_plan_list
-- ----------------------------
INSERT INTO `aoa_plan_list` VALUES ('1', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '无语', 'dsadsa', 'sadadfa1的说法3222222222222', '', '2019-09-17 10:29:49', '17', 'sadadfadsfds1', '13', '1', '9');
INSERT INTO `aoa_plan_list` VALUES ('3', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', '发大水saddsf dsf dsfafdds ', 'sadadfad2', 'nice', '2019-09-17 10:29:49', '18', 'sadadfadsfds3', '13', '1', '47');
INSERT INTO `aoa_plan_list` VALUES ('5', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', '', 'sadadfad3', '', '2019-09-17 10:29:49', '18', 'sadadfadsfds5', '13', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('6', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', 'sdfafdsadsf22233dfaf111', 'sadadfads4', '', '2019-09-17 10:29:49', '18', 'sadadfadsfds6', '13', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('7', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', 'fdasdsfdfsd', 'sadadfad5', '', '2019-09-17 10:29:49', '18', 'sadadfadsfds7', '13', '2', null);
INSERT INTO `aoa_plan_list` VALUES ('11', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', 'sa', 'dsafdfsafssdadsdsadfsadsaf', '', '2019-09-17 10:29:49', '17', 'adsfsaf的', '13', '3', null);
INSERT INTO `aoa_plan_list` VALUES ('12', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', '', 'asddddddddffffffffffffffffffffffffffffffffffffffffffffffffff', '', '2019-09-17 10:29:49', '17', 'dasfasfdsa', '14', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('13', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', '', 'sadffdsadafsadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('14', '2019-09-14 11:29:27', '2019-12-01 20:13:53', '', '', 'sadffdsadafsadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('15', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '15', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('16', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('17', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('18', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('19', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('20', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', 'hah ', 'sadffdsadafsadffdsadafsadffdsadaf', '', '2019-09-17 10:29:49', '17', 'sadffdsadaf', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('21', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', '2222222222222222222222222222222222222222', '', '2019-09-17 10:29:49', '17', '创造性', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('22', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', '', '55555555555555555555555', '', '2019-09-17 10:29:49', '17', '士大夫', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('23', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '2313', '222二维222222222222222222222222222222222', '22222222222222222222222222222222222222222', '222二维222222222222222222222222222222222', '2019-09-17 10:29:49', '17', '发生的', '13', '1', '65');
INSERT INTO `aoa_plan_list` VALUES ('24', '2019-09-14 11:29:27', '2019-11-11 15:45:57', 'dsf', 'sd', '33333333333333333333333333333333333333333333333', '33333333333333333333333333333333333333333333333', '2019-09-17 10:29:49', '17', 'sdf ', '13', '2', null);
INSERT INTO `aoa_plan_list` VALUES ('25', '2019-09-14 11:29:27', '2019-11-11 15:45:57', 'dsfad', 'dsafdsffdsfds哈哈的说法但是哈哈', '3333333333333333333333333333324', 'ewwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', '2019-09-17 10:29:49', '18', 'dsfdf', '14', '2', null);
INSERT INTO `aoa_plan_list` VALUES ('26', '2019-09-14 11:29:27', '2019-11-11 15:45:57', '', null, '3333333333333333333333333333333333333333333333333', '3333333333333333333333333333333333333333333333333', '2019-09-17 10:29:49', '17', 'ok', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('27', '2019-09-14 11:29:27', '2017-10-19 15:46:27', '', null, '321444444444444444444444444444444444444444444', '', '2019-09-17 10:29:49', '17', '地方', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('28', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '纳尼', null, '超级不爽 真是无语 哈哈  。。，，，，，，，，，，，，，，，，，，，，，', '', '2019-09-17 10:29:49', '17', '无语 ', '13', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('29', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '哈哈', null, '带你去看海带你去看海带你去看海带你去看海', '', '2019-09-17 10:29:49', '17', '带你去看海', '13', '1', '71');
INSERT INTO `aoa_plan_list` VALUES ('30', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '', null, '真无语啊真无语啊真无语啊真无语啊真无语啊真无语啊', '', '2019-09-17 10:29:49', '17', '真是无语', '14', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('31', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '', null, '。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。', '', '2019-09-17 10:29:49', '17', '无语', '15', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('32', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '', '感觉啥都没有干 库', '无语的n此房无语的n此房无语的n此房无语的n此房无语的n此房', '', '2019-09-17 10:29:49', '17', '无语的n此房', '14', '3', null);
INSERT INTO `aoa_plan_list` VALUES ('33', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '', null, '我也很无奈我也很无奈我也很无奈我也很无奈我也很无奈我也很无奈', '', '2019-09-17 10:29:49', '17', '我也很无奈', '15', '3', null);
INSERT INTO `aoa_plan_list` VALUES ('34', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '', '666', '也无语是吧也无语是吧也无语是吧也无语是吧也无语是吧也无语是吧', '', '2019-09-17 10:29:49', '17', '也无语是吧', '15', '3', null);
INSERT INTO `aoa_plan_list` VALUES ('35', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '这首歌', null, '仅仅代表着仅仅代表着仅仅代表着仅仅代表着仅仅代表着仅仅代表着', '', '2019-09-17 10:29:49', '18', '仅仅代表着', '14', '1', null);
INSERT INTO `aoa_plan_list` VALUES ('36', '2019-09-14 11:29:27', '2019-10-27 10:21:44', '在人间彷徨', null, '三月春花三月春花三月春花三月春花三月春花三月春花', '', '2019-09-17 10:29:49', '18', '三月春花', '14', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('37', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '远方有情', null, '轻轻唱轻轻唱轻轻唱轻轻唱轻轻唱轻轻唱轻轻唱轻轻唱轻轻唱', '', '2019-09-17 10:29:49', '17', '轻轻唱', '13', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('38', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '泪已拆两行', null, '雨打死了眼眶雨打死了眼眶雨打死了眼眶雨打死了眼眶雨打死了眼眶雨打死了眼眶', '', '2019-09-17 10:29:49', '18', '雨打死了眼眶', '15', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('39', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '轻轻唱', null, '折菊寄到你身旁折菊寄到你身旁折菊寄到你身旁折菊寄到你身旁折菊寄到你身旁折菊寄到你身旁', '', '2019-09-17 10:29:49', '18', '折菊寄到你身旁', '14', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('40', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '谁一颦一笑摇曳了星云', null, '多年不减你深情多年不减你深情多年不减你深情多年不减你深情多年不减你深情', '', '2019-09-17 10:29:49', '17', '多年不减你深情', '13', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('41', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '和落下的老爷爷一样', '小伙子可以啊', '又是一个安静的晚上又是一个安静的晚上又是一个安静的晚上又是一个安静的晚上又是一个安静的晚上又是一个安静的晚上', '', '2019-09-17 10:29:49', '18', '又是一个安静的晚上', '14', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('42', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '素面朝天要多纯洁有多纯洁', null, '我做我的改成又何必纠结我做我的改成又何必纠结我做我的改成又何必纠结我做我的改成又何必纠结我做我的改成又何必纠结', '', '2019-09-17 10:29:49', '17', '我做我的改成又何必纠结', '15', '5', null);
INSERT INTO `aoa_plan_list` VALUES ('43', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '曾经对上的瞬间曾经对上的瞬间曾经对上的瞬间曾经对上的瞬间曾经对上的瞬间曾经对上的瞬间', '', '2019-09-17 10:29:49', '17', '曾经对上的瞬间', '13', '4', null);
INSERT INTO `aoa_plan_list` VALUES ('44', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '瘦马未得好歌瘦马未得好歌瘦马未得好歌瘦马未得好歌瘦马未得好歌瘦马未得好歌', '', '2019-09-17 10:29:49', '17', '瘦马未得好歌', '14', '4', null);
INSERT INTO `aoa_plan_list` VALUES ('45', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '千百度千百度千百度千百度千百度千百度千百度千百度千百度千百度千百度千百度', '', '2019-09-17 10:29:49', '18', '千百度', '14', '4', null);
INSERT INTO `aoa_plan_list` VALUES ('46', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '课你却不在灯火阑珊处课你却不在灯火阑珊处课你却不在灯火阑珊处课你却不在灯火阑珊处课你却不在灯火阑珊处课你却不在灯火阑珊处', '', '2019-09-17 10:29:49', '17', '课你却不在灯火阑珊处', '15', '4', '74');
INSERT INTO `aoa_plan_list` VALUES ('47', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '日出到迟暮日出到迟暮日出到迟暮日出到迟暮日出到迟暮日出到迟暮日出到迟暮日出到迟暮日出到迟暮', '', '2019-09-17 10:29:49', '17', '日出到迟暮', '13', '4', '75');
INSERT INTO `aoa_plan_list` VALUES ('48', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', 'df', '灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处灯火阑珊处', '', '2019-09-17 10:29:49', '17', '灯火阑珊处', '13', '4', null);
INSERT INTO `aoa_plan_list` VALUES ('49', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '为你解冻冰河为你解冻冰河为你解冻冰河为你解冻冰河为你解冻冰河为你解冻冰河为你解冻冰河', '', '2019-09-17 10:29:49', '17', '如果有时不那么开心', '13', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('50', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '为你辗转反侧为你辗转反侧为你辗转反侧为你辗转反侧为你辗转反侧为你辗转反侧为你辗转反侧', '', '2019-09-17 10:29:49', '17', '为你辗转反侧', '14', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('51', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '天空好像下雨天空好像下雨天空好像下雨天空好像下雨天空好像下雨天空好像下雨天空好像下雨', '', '2019-09-17 10:29:49', '17', '天空好像下雨', '13', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('52', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '亲手买冰激凌亲手买冰激凌亲手买冰激凌亲手买冰激凌亲手买冰激凌亲手买冰激凌', '', '2019-09-17 10:29:49', '17', '亲手买冰激凌', '14', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('53', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '为你做一只铺货的飞蛾为你做一只铺货的飞蛾为你做一只铺货的飞蛾为你做一只铺货的飞蛾为你做一只铺货的飞蛾为你做一只铺货的飞蛾', '', '2019-09-17 10:29:49', '18', '为你做一只铺货的飞蛾', '13', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('54', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '', null, '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '', '2019-09-17 10:29:49', '19', '啦啦啦啦', '14', '7', '76');
INSERT INTO `aoa_plan_list` VALUES ('55', '2019-09-14 11:29:27', '2019-10-01 20:37:29', '这次计划', '这个计划 nice', '1996年1月，Sun公司发布了Java的第一个开发工具包（JDK 1.0），这是Java发展历程中的重要里程碑，标志着Java成为一种独立的开发工具。9月，约8.3万个网页应用了Java技术来制作。10月，Sun公司发布了Java平台的第一个即时（JIT）编译器。\r\n1997年2月，JDK 1.1面世，在随后的3周时间里，达到了22万次的下载量。4月2日，Java One会议召开，参会者逾一万人，创当时全球同类会议规模之纪录。9月，Java Developer Connection社区成员超过10万。', 'Java One会议召开，参会者逾一万人，创当时全球同类会议规模之纪录。9月，Java Developer Connection社区成员超过10万。', '2019-09-17 10:29:49', '19', '周计划', '14', '7', null);
INSERT INTO `aoa_plan_list` VALUES ('56', '2019-10-27 00:39:09', '2019-11-27 00:36:53', '微服务改造', null, '边行车边换胎三步走演进策略。\r\n隔离网关接管新旧系统间交互。\r\n单体式应用拆解微服务的方法。\r\n旧模块微服务改造优先级原则。\r\n微服务改造是否结束判断标准。\r\n微服务架构新挑战与解决方案', '1. SOA与微服务\r\n　　面向服务（SOA）已经不是一个新名词了，跟Paxos有一样古老的年龄，其本质是一种软件架构的设计思想。类似“云计算”的分层和服务提供概念（IaaS==>PaaS==>SaaS），SOA是把企业应用的业务功能以能力开放的形式提供出来，比如通过构建企业服务总线ESB来实现企业应用间的服务集成和编排。\r\n\r\n而微服务更多的是对SOA的一种实践方式（ESB也是SOA的一种实现方式），主要针对企业应用系统本身的架构设计做解耦和组件服务化，从业务上把原来庞大的系统拆分为多个可以独立设计、独立开发、独立部署的小应用，小应用之间通过特定的交互协议（RPC/HTTP等）完成服务的暴露和调用。', '2019-10-27 00:36:53', '18', '完成对本系统的微服务改造', '15', '8', '9');
INSERT INTO `aoa_plan_list` VALUES ('57', '2019-10-27 12:39:40', '2019-11-03 12:35:07', '现场宣讲招聘', null, '1） 研发管理培训生\r\n（一）职责:\r\n1、协助新产品概念及配方开发、功效验证；\r\n2、确保新产品配方、工艺等的开发符合设计标准；\r\n3、协调并推进新产品开发项目；\r\n4、严格遵守公司质量要求，做好文件化及技术传递工作。\r\n（二）要求:\r\n1、本科或以上学历；\r\n2、微生物、化学、医药或材料科学等相关专业；', '宣讲会 | 下周深圳、珠海等多家名企来学校现场宣讲招聘', '2019-10-27 12:35:07', '17', '吉林大学珠海学院校招', '14', '8', '87');
INSERT INTO `aoa_plan_list` VALUES ('58', '2019-10-27 12:43:20', '2019-10-28 12:40:20', '公司系统', null, '一、exp/imp逻辑备份与恢复：\r\n二、Storage存储迁移：\r\n将数据文件、控制文件、日志文件、spfile挂到新机器上，然后在新机器上启动数据库。\r\n三、利用data guard迁移：\r\n四、用rman做迁移：', '限制迁移的速度中除了工具性能外，估计在网络速度方面也会有较大限制；按照每秒可以达到10M（万条数据左右）的网络传输速度，1T需要1024*1024/3600*10约30小时，实际估计还没有这么快。具体的方法工具使用网上有比较多的教程', '2019-10-27 12:40:20', '17', '数据系统迁移', '13', '8', null);

-- ----------------------------
-- Table structure for aoa_position
-- ----------------------------
DROP TABLE IF EXISTS `aoa_position`;
CREATE TABLE `aoa_position` (
  `position_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describtion` varchar(255) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_position
-- ----------------------------
INSERT INTO `aoa_position` VALUES ('1', '1', '超级管理员', '管理系统最高权限', '1');
INSERT INTO `aoa_position` VALUES ('2', '2', 'CEO', 'CEO类！~', '1');
INSERT INTO `aoa_position` VALUES ('3', '3', '总经理', '总经理类！~', '1');
INSERT INTO `aoa_position` VALUES ('4', '4', '研发部经理', null, '2');
INSERT INTO `aoa_position` VALUES ('5', '5', '财务部经理', null, '3');
INSERT INTO `aoa_position` VALUES ('6', '6', '市场部经理', null, '4');
INSERT INTO `aoa_position` VALUES ('7', '7', '人事部经理', null, '5');
INSERT INTO `aoa_position` VALUES ('8', '8', '人事专员', null, '5');
INSERT INTO `aoa_position` VALUES ('9', '9', '劳资专员', null, '5');
INSERT INTO `aoa_position` VALUES ('10', '10', '程序员', null, '2');
INSERT INTO `aoa_position` VALUES ('11', '11', '初级工程师', null, '2');
INSERT INTO `aoa_position` VALUES ('12', '12', '中级工程师', null, '2');
INSERT INTO `aoa_position` VALUES ('13', '13', '高级工程师', null, '2');
INSERT INTO `aoa_position` VALUES ('14', '14', '系统架构师', null, '2');
INSERT INTO `aoa_position` VALUES ('15', '15', '需求分析师', null, '2');
INSERT INTO `aoa_position` VALUES ('16', '16', '调查专员', null, '4');
INSERT INTO `aoa_position` VALUES ('17', '17', '企业推广员', null, '4');
INSERT INTO `aoa_position` VALUES ('18', '18', '平面设计师', null, '4');
INSERT INTO `aoa_position` VALUES ('19', '19', '培训专员', null, '4');
INSERT INTO `aoa_position` VALUES ('20', '20', '市场督导员', null, '4');
INSERT INTO `aoa_position` VALUES ('21', '21', '核算会计', null, '3');
INSERT INTO `aoa_position` VALUES ('22', '22', '税务会计', null, '3');
INSERT INTO `aoa_position` VALUES ('23', '23', '出纳员', null, '3');
INSERT INTO `aoa_position` VALUES ('25', '2222', '测试岗位！~', 'emmm！~~', null);
INSERT INTO `aoa_position` VALUES ('26', '1', '测试职位1', '啊实打实的', '19');
INSERT INTO `aoa_position` VALUES ('27', null, '经理', null, '20');
INSERT INTO `aoa_position` VALUES ('28', null, '文员', null, '20');

-- ----------------------------
-- Table structure for aoa_process_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_process_list`;
CREATE TABLE `aoa_process_list` (
  `process_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apply_time` datetime DEFAULT NULL,
  `deeply_id` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `process_des` text,
  `process_name` varchar(255) DEFAULT NULL,
  `procsee_days` int(11) DEFAULT NULL,
  `is_checked` int(10) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `pro_file_id` bigint(20) DEFAULT NULL,
  `process_user_id` bigint(20) DEFAULT NULL,
  `shenuser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_id`),
  KEY `FKiltoi9iw3vjixl6u4cd60fi1p` (`pro_file_id`),
  KEY `FKhtdg4du5ryotah5v1dgyjfh2t` (`process_user_id`),
  CONSTRAINT `FKhtdg4du5ryotah5v1dgyjfh2t` FOREIGN KEY (`process_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKiltoi9iw3vjixl6u4cd60fi1p` FOREIGN KEY (`pro_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_process_list
-- ----------------------------
INSERT INTO `aoa_process_list` VALUES ('1', '2019-10-06 21:54:42', '22', null, null, '费用报销', null, '0', null, '23', '费用报销', null, '1', null);
INSERT INTO `aoa_process_list` VALUES ('2', '2019-10-07 19:43:26', '22', null, null, '报销费用', null, '0', null, '25', '费用报销', null, '16', null);
INSERT INTO `aoa_process_list` VALUES ('3', '2019-10-07 20:36:29', '22', null, null, '车费', null, '0', null, '23', '费用报销', null, '14', null);
INSERT INTO `aoa_process_list` VALUES ('4', '2019-10-07 20:37:50', '22', null, null, '车回家', null, '0', null, '23', '费用报销', null, '14', null);
INSERT INTO `aoa_process_list` VALUES ('5', '2019-10-07 20:41:40', '22', null, null, '得到', null, '0', null, '25', '费用报销', null, '15', null);
INSERT INTO `aoa_process_list` VALUES ('6', '2019-10-07 22:08:53', '22', null, null, '得到', null, '0', null, '23', '费用报销', null, '18', null);
INSERT INTO `aoa_process_list` VALUES ('7', '2019-10-12 12:58:25', '22', null, '打了电话', '报销电话费', null, '0', null, '24', '费用报销', null, '11', null);
INSERT INTO `aoa_process_list` VALUES ('8', '2019-10-12 22:07:35', '22', null, '该交房租了', '房费', null, '0', null, '23', '费用报销', null, '18', null);
INSERT INTO `aoa_process_list` VALUES ('9', '2019-10-12 23:25:57', '22', null, '该交房租了', '房租', null, '0', null, '23', '费用报销', '66', '18', null);
INSERT INTO `aoa_process_list` VALUES ('10', '2019-10-13 17:02:36', '22', '2019-11-29 17:01:11', '出差两天', '出差', '1', '0', '2019-10-13 17:01:11', '24', '出差费用', null, '18', null);
INSERT INTO `aoa_process_list` VALUES ('11', '2019-10-14 00:13:20', '22', '2019-11-29 17:01:11', '经理安排到广州出差', '到广州出差', '2', '0', '2019-10-16 00:10:06', '25', '出差费用', null, '18', null);
INSERT INTO `aoa_process_list` VALUES ('12', '2019-10-14 13:06:12', '22', '2019-11-29 17:01:11', '到北京出差两天', '出差', '1', '0', '2019-10-14 13:01:35', '24', '出差申请', null, '10', null);
INSERT INTO `aoa_process_list` VALUES ('14', '2019-10-14 20:19:19', '22', '2019-11-29 17:01:11', '加班', '加班呀', '1', '0', '2019-10-14 20:19:00', '24', '加班申请', null, '4', null);
INSERT INTO `aoa_process_list` VALUES ('16', '2019-10-14 21:22:35', '22', '2019-11-29 17:01:11', '家里有急事', '请假', '2', '0', '2019-10-14 21:21:29', '24', '请假申请', '67', '3', null);
INSERT INTO `aoa_process_list` VALUES ('17', '2019-10-14 22:17:29', '22', '2019-11-29 17:01:11', null, '转正', '90', '0', '2019-07-14 22:32:20', '24', '转正申请', null, '28', null);
INSERT INTO `aoa_process_list` VALUES ('19', '2019-10-15 00:04:31', '22', null, '不干了', '离职', null, '0', null, '24', '离职申请', null, '28', null);
INSERT INTO `aoa_process_list` VALUES ('20', '2019-10-15 16:13:20', '22', null, '双宿双飞人', '得到', null, '0', null, '24', '离职申请', null, '18', '红之花;soli');
INSERT INTO `aoa_process_list` VALUES ('21', '2019-10-15 19:17:46', '22', '2019-11-11 19:16:37', '销售需要', '来看几个特别', '2', '0', '2019-10-17 19:16:37', '23', '出差申请', '68', '18', '红之花');
INSERT INTO `aoa_process_list` VALUES ('22', '2019-10-15 20:04:02', '22', '2019-11-11 19:16:37', '反反复复', '哈哈', '1', '0', '2019-10-15 20:03:07', '23', '出差申请', null, '10', '小李父斯基');
INSERT INTO `aoa_process_list` VALUES ('23', '2019-10-15 20:12:22', '22', '2019-11-11 19:16:37', '反反复复', '还有', '4', '0', '2019-10-18 20:11:40', '23', '出差申请', null, '10', '小李父斯基');
INSERT INTO `aoa_process_list` VALUES ('24', '2019-10-15 20:14:13', '22', '2019-11-11 19:16:37', '得到', '女', '4', '0', '2019-10-18 20:12:25', '26', '出差费用', null, '10', '小李父斯基');
INSERT INTO `aoa_process_list` VALUES ('25', '2019-10-19 23:43:29', '22', '2019-11-11 19:16:37', '大大方方大锅饭哈哈', '试试', '3', '0', '2019-10-19 23:43:14', '25', '请假申请', null, '10', '小李父斯基;甄姬');
INSERT INTO `aoa_process_list` VALUES ('26', '2019-10-28 09:22:28', '22', null, '培训java后台', '培训费', null, '0', null, '23', '费用报销', null, '36', 'Bill');
INSERT INTO `aoa_process_list` VALUES ('27', '2019-10-28 11:33:43', '22', '2019-10-29 11:31:06', '美团项目招标，大数据项目招标', '美团项目招标', '1', '0', '2019-10-28 11:31:06', '23', '出差申请', null, '4', 'Bill');
INSERT INTO `aoa_process_list` VALUES ('28', '2019-10-28 16:08:16', '22', '2019-10-28 20:06:32', '测试加班申请。。。。。。', '测试加班申请', '0', '0', '2019-10-28 16:06:32', '23', '加班申请', null, '36', 'Bill');
INSERT INTO `aoa_process_list` VALUES ('29', '2019-10-28 16:09:35', '22', '2019-10-29 16:08:24', '测试请假。。。。。。。。', '测试请假', '1', '0', '2019-10-28 16:08:24', '25', '请假申请', null, '36', 'Bill');
INSERT INTO `aoa_process_list` VALUES ('30', '2019-10-28 16:46:20', '22', '2019-10-29 16:21:36', '测试请假.......', '测试请假', '0', '0', '2019-10-28 16:21:36', '25', '请假申请', '89', '36', 'Bill;kuke');
INSERT INTO `aoa_process_list` VALUES ('31', '2019-10-28 22:37:50', '22', '2019-11-28 22:36:02', '产假哺乳期', '产假', '31', '0', '2019-10-28 22:36:02', '23', '请假申请', null, '24', 'kuke');

-- ----------------------------
-- Table structure for aoa_receiver_note
-- ----------------------------
DROP TABLE IF EXISTS `aoa_receiver_note`;
CREATE TABLE `aoa_receiver_note` (
  `note_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK904cmor3q468pj3ft6mdrnqwk` (`user_id`),
  KEY `FKcx7spjjefkofw62v8yxmgjxao` (`note_id`),
  CONSTRAINT `FK904cmor3q468pj3ft6mdrnqwk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK_NOTE_LIST` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcx7spjjefkofw62v8yxmgjxao` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_receiver_note
-- ----------------------------
INSERT INTO `aoa_receiver_note` VALUES ('128', '1', '19');
INSERT INTO `aoa_receiver_note` VALUES ('122', '1', '22');
INSERT INTO `aoa_receiver_note` VALUES ('127', '1', '24');
INSERT INTO `aoa_receiver_note` VALUES ('120', '1', '25');
INSERT INTO `aoa_receiver_note` VALUES ('137', '3', '42');
INSERT INTO `aoa_receiver_note` VALUES ('126', '6', '43');
INSERT INTO `aoa_receiver_note` VALUES ('126', '5', '44');
INSERT INTO `aoa_receiver_note` VALUES ('111', '4', '45');
INSERT INTO `aoa_receiver_note` VALUES ('138', '3', '46');
INSERT INTO `aoa_receiver_note` VALUES ('139', '1', '47');
INSERT INTO `aoa_receiver_note` VALUES ('140', '4', '48');
INSERT INTO `aoa_receiver_note` VALUES ('140', '3', '49');
INSERT INTO `aoa_receiver_note` VALUES ('1', '1', '57');
INSERT INTO `aoa_receiver_note` VALUES ('143', '1', '59');
INSERT INTO `aoa_receiver_note` VALUES ('145', '1', '61');
INSERT INTO `aoa_receiver_note` VALUES ('146', '1', '63');
INSERT INTO `aoa_receiver_note` VALUES ('149', '1', '66');
INSERT INTO `aoa_receiver_note` VALUES ('150', '1', '67');
INSERT INTO `aoa_receiver_note` VALUES ('151', '1', '68');
INSERT INTO `aoa_receiver_note` VALUES ('152', '1', '69');
INSERT INTO `aoa_receiver_note` VALUES ('153', '1', '70');
INSERT INTO `aoa_receiver_note` VALUES ('154', '1', '71');
INSERT INTO `aoa_receiver_note` VALUES ('155', '1', '72');
INSERT INTO `aoa_receiver_note` VALUES ('156', '1', '73');
INSERT INTO `aoa_receiver_note` VALUES ('157', '1', '74');
INSERT INTO `aoa_receiver_note` VALUES ('158', '1', '75');
INSERT INTO `aoa_receiver_note` VALUES ('159', '1', '76');
INSERT INTO `aoa_receiver_note` VALUES ('160', '1', '77');
INSERT INTO `aoa_receiver_note` VALUES ('161', '1', '78');
INSERT INTO `aoa_receiver_note` VALUES ('162', '1', '79');
INSERT INTO `aoa_receiver_note` VALUES ('163', '1', '80');
INSERT INTO `aoa_receiver_note` VALUES ('164', '1', '81');
INSERT INTO `aoa_receiver_note` VALUES ('165', '1', '82');
INSERT INTO `aoa_receiver_note` VALUES ('166', '1', '83');
INSERT INTO `aoa_receiver_note` VALUES ('167', '1', '84');
INSERT INTO `aoa_receiver_note` VALUES ('168', '1', '85');
INSERT INTO `aoa_receiver_note` VALUES ('169', '1', '87');
INSERT INTO `aoa_receiver_note` VALUES ('170', '7', '117');
INSERT INTO `aoa_receiver_note` VALUES ('171', '1', '118');
INSERT INTO `aoa_receiver_note` VALUES ('172', '1', '119');
INSERT INTO `aoa_receiver_note` VALUES ('173', '1', '120');
INSERT INTO `aoa_receiver_note` VALUES ('174', '1', '121');
INSERT INTO `aoa_receiver_note` VALUES ('174', '3', '122');
INSERT INTO `aoa_receiver_note` VALUES ('175', '1', '123');
INSERT INTO `aoa_receiver_note` VALUES ('175', '3', '124');
INSERT INTO `aoa_receiver_note` VALUES ('176', '1', '125');
INSERT INTO `aoa_receiver_note` VALUES ('177', '1', '126');
INSERT INTO `aoa_receiver_note` VALUES ('177', '4', '127');
INSERT INTO `aoa_receiver_note` VALUES ('177', '5', '128');
INSERT INTO `aoa_receiver_note` VALUES ('178', '1', '129');
INSERT INTO `aoa_receiver_note` VALUES ('179', '1', '130');
INSERT INTO `aoa_receiver_note` VALUES ('180', '1', '131');
INSERT INTO `aoa_receiver_note` VALUES ('181', '1', '132');
INSERT INTO `aoa_receiver_note` VALUES ('182', '1', '133');
INSERT INTO `aoa_receiver_note` VALUES ('183', '1', '134');
INSERT INTO `aoa_receiver_note` VALUES ('184', '1', '135');
INSERT INTO `aoa_receiver_note` VALUES ('187', '1', '142');
INSERT INTO `aoa_receiver_note` VALUES ('189', '1', '144');
INSERT INTO `aoa_receiver_note` VALUES ('190', '1', '145');
INSERT INTO `aoa_receiver_note` VALUES ('191', '7', '146');
INSERT INTO `aoa_receiver_note` VALUES ('192', '1', '147');
INSERT INTO `aoa_receiver_note` VALUES ('194', '1', '151');
INSERT INTO `aoa_receiver_note` VALUES ('195', '23', '152');
INSERT INTO `aoa_receiver_note` VALUES ('188', '1', '155');
INSERT INTO `aoa_receiver_note` VALUES ('201', '10', '162');
INSERT INTO `aoa_receiver_note` VALUES ('204', '4', '170');
INSERT INTO `aoa_receiver_note` VALUES ('204', '3', '171');
INSERT INTO `aoa_receiver_note` VALUES ('204', '1', '172');
INSERT INTO `aoa_receiver_note` VALUES ('205', '1', '174');
INSERT INTO `aoa_receiver_note` VALUES ('196', '1', '175');
INSERT INTO `aoa_receiver_note` VALUES ('203', '4', '193');
INSERT INTO `aoa_receiver_note` VALUES ('203', '7', '194');
INSERT INTO `aoa_receiver_note` VALUES ('203', '1', '195');
INSERT INTO `aoa_receiver_note` VALUES ('198', '1', '202');
INSERT INTO `aoa_receiver_note` VALUES ('193', '12', '218');
INSERT INTO `aoa_receiver_note` VALUES ('193', '13', '219');
INSERT INTO `aoa_receiver_note` VALUES ('193', '1', '220');
INSERT INTO `aoa_receiver_note` VALUES ('199', '8', '226');
INSERT INTO `aoa_receiver_note` VALUES ('199', '10', '227');
INSERT INTO `aoa_receiver_note` VALUES ('202', '8', '232');
INSERT INTO `aoa_receiver_note` VALUES ('202', '7', '233');

-- ----------------------------
-- Table structure for aoa_regular
-- ----------------------------
DROP TABLE IF EXISTS `aoa_regular`;
CREATE TABLE `aoa_regular` (
  `regular_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `deficiency` varchar(255) DEFAULT NULL,
  `dobetter` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `pullulate` varchar(255) DEFAULT NULL,
  `understand` varchar(255) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`regular_id`),
  KEY `FK96uphskhww1otsi3fe916dfor` (`pro_id`),
  CONSTRAINT `FK96uphskhww1otsi3fe916dfor` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_regular
-- ----------------------------
INSERT INTO `aoa_regular` VALUES ('1', '咕咕咕咕', '是是是', '反反复复', '是是是', null, '是是是', '是是是', '17', '经过实习期间观察，合格', '90');

-- ----------------------------
-- Table structure for aoa_reply_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_reply_list`;
CREATE TABLE `aoa_reply_list` (
  `reply_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `replay_time` datetime DEFAULT NULL,
  `discuss_id` bigint(20) DEFAULT NULL,
  `reply_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK94s0c9f8hxomde6bede3d20y2` (`discuss_id`),
  KEY `FK2bn8fpyqw7mom14ks4kvrhtp9` (`reply_user_id`),
  CONSTRAINT `FK2bn8fpyqw7mom14ks4kvrhtp9` FOREIGN KEY (`reply_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK94s0c9f8hxomde6bede3d20y2` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_reply_list
-- ----------------------------
INSERT INTO `aoa_reply_list` VALUES ('2', '富士达发的所所所所所\n范德萨发啊', '2019-10-01 22:05:46', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('3', '内容应该要清空了', '2019-10-01 22:06:05', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('4', '阿西吧，这么好', '2019-10-01 22:06:17', '13', '2');
INSERT INTO `aoa_reply_list` VALUES ('5', 'what？\n', '2019-10-02 13:51:26', '13', '2');
INSERT INTO `aoa_reply_list` VALUES ('6', '发生的多多多', '2019-10-02 13:52:28', '13', '2');
INSERT INTO `aoa_reply_list` VALUES ('7', '发生的范德萨', '2019-10-02 13:54:23', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('8', '范德萨', '2019-10-02 13:55:04', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('9', 'yayaya,不错', '2019-10-02 16:52:35', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('14', 'fdsa fsdf afsdfasdf', '2019-10-03 00:35:42', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('15', 'fdsa fdsf', '2019-10-03 00:36:57', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('16', 'fsdfas fsd', '2019-10-03 00:37:03', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('17', '加一条讨论的记录', '2019-10-03 01:02:48', '14', '1');
INSERT INTO `aoa_reply_list` VALUES ('18', '范德萨是', '2019-10-03 01:03:54', '14', '1');
INSERT INTO `aoa_reply_list` VALUES ('33', 'fdsa', '2019-10-03 01:38:58', '15', '1');
INSERT INTO `aoa_reply_list` VALUES ('36', 'fdsa', '2019-10-03 01:42:04', '15', '1');
INSERT INTO `aoa_reply_list` VALUES ('37', 'fsdafds', '2019-10-03 01:42:19', '15', '1');
INSERT INTO `aoa_reply_list` VALUES ('38', 'fsfsd', '2019-10-03 01:43:23', '15', '1');
INSERT INTO `aoa_reply_list` VALUES ('39', 'fsdfasdfs', '2019-10-03 01:43:49', '15', '1');
INSERT INTO `aoa_reply_list` VALUES ('47', 'ljljllj;', '2019-10-03 01:55:34', '1', '1');
INSERT INTO `aoa_reply_list` VALUES ('49', 'ds', '2019-10-03 02:01:20', '23', '1');
INSERT INTO `aoa_reply_list` VALUES ('50', '回复', '2019-10-03 11:21:38', '14', '1');
INSERT INTO `aoa_reply_list` VALUES ('51', ' 回复你之后会怎么样？ 第13楼么？', '2019-10-03 11:26:50', '13', '1');
INSERT INTO `aoa_reply_list` VALUES ('58', 'fsdfsdfjl', '2019-10-03 15:18:37', '7', '1');
INSERT INTO `aoa_reply_list` VALUES ('59', 'fdsfasd ', '2019-10-03 15:19:06', '7', '1');
INSERT INTO `aoa_reply_list` VALUES ('60', '发的发', '2019-10-03 23:25:25', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('61', '发范德萨', '2019-10-04 01:33:05', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('62', ' 回复可以么？', '2019-10-04 01:39:49', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('63', '@朱丽叶 回复可以么？ 可以么？', '2019-10-04 01:40:58', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('64', '回复试试', '2019-10-04 01:50:57', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('65', '没意义问题的', '2019-10-04 01:52:20', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('66', ' 接下来就不会报错了', '2019-10-04 01:52:46', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('67', ' 加第七条', '2019-10-04 01:56:01', '32', '2');
INSERT INTO `aoa_reply_list` VALUES ('68', '富士达', '2019-10-04 03:24:56', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('69', '好吧，合情合理', '2019-10-04 03:25:15', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('70', '范德萨', '2019-10-04 03:25:48', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('71', '没有问题吧？', '2019-10-04 03:26:08', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('72', '再加一个呢？', '2019-10-04 03:27:00', '33', '2');
INSERT INTO `aoa_reply_list` VALUES ('73', '地方撒', '2019-10-05 23:00:14', '8', '2');
INSERT INTO `aoa_reply_list` VALUES ('74', '让人头疼', '2019-10-05 23:05:59', '7', '2');
INSERT INTO `aoa_reply_list` VALUES ('75', '大师傅', '2019-10-05 23:06:18', '7', '2');
INSERT INTO `aoa_reply_list` VALUES ('76', '都是', '2019-10-05 23:06:26', '7', '2');
INSERT INTO `aoa_reply_list` VALUES ('77', '大师傅发的', '2019-10-05 23:06:42', '7', '2');
INSERT INTO `aoa_reply_list` VALUES ('78', '12312', '2019-10-06 10:22:11', '38', '1');
INSERT INTO `aoa_reply_list` VALUES ('79', '范德萨发生', '2019-10-06 10:53:53', '42', '1');
INSERT INTO `aoa_reply_list` VALUES ('80', 'fdsfadsaf', '2019-10-06 10:55:54', '42', '1');
INSERT INTO `aoa_reply_list` VALUES ('81', 'fdfa fdsa ', '2019-10-06 10:58:10', '42', '1');
INSERT INTO `aoa_reply_list` VALUES ('82', 'fdsaffdsaf', '2019-10-06 10:59:12', '42', '1');
INSERT INTO `aoa_reply_list` VALUES ('83', 'fdsfafd', '2019-10-06 10:59:28', '42', '1');
INSERT INTO `aoa_reply_list` VALUES ('84', '回复test', '2019-10-06 13:47:03', '37', '2');
INSERT INTO `aoa_reply_list` VALUES ('85', ' 哟哟；interesting', '2019-10-06 13:47:18', '37', '2');
INSERT INTO `aoa_reply_list` VALUES ('86', ' 好吧，有趣', '2019-10-06 13:47:29', '37', '2');
INSERT INTO `aoa_reply_list` VALUES ('87', '你很有意思', '2019-10-06 14:22:59', '9', '2');
INSERT INTO `aoa_reply_list` VALUES ('88', '你也不错', '2019-10-06 14:23:18', '6', '2');
INSERT INTO `aoa_reply_list` VALUES ('89', '目前项目能容纳的人数刚好处于饱和状态，但照审计部门的预测，下半年会有一定打额度增长\n', '2019-10-26 15:26:39', '44', '1');
INSERT INTO `aoa_reply_list` VALUES ('90', '当下虽然不急于调整架构，但也是是时候开始考虑微服务架构了\n', '2019-10-26 15:27:20', '44', '1');

-- ----------------------------
-- Table structure for aoa_resign
-- ----------------------------
DROP TABLE IF EXISTS `aoa_resign`;
CREATE TABLE `aoa_resign` (
  `resign_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `is_finish` bit(1) DEFAULT NULL,
  `nofinish` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `suggest` varchar(255) DEFAULT NULL,
  `hand_user` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resign_id`),
  KEY `FK3t0d1mt9o7g5q59ha10e3mwpr` (`hand_user`),
  KEY `FKam7ii5j1kdforxq8s6q3mm13n` (`pro_id`),
  CONSTRAINT `FK3t0d1mt9o7g5q59ha10e3mwpr` FOREIGN KEY (`hand_user`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKam7ii5j1kdforxq8s6q3mm13n` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_resign
-- ----------------------------
INSERT INTO `aoa_resign` VALUES ('1', null, '\0', '没有', null, null, '8', '19', '准了');
INSERT INTO `aoa_resign` VALUES ('2', null, '', '没有', null, null, '10', '20', '多对多');

-- ----------------------------
-- Table structure for aoa_reviewed
-- ----------------------------
DROP TABLE IF EXISTS `aoa_reviewed`;
CREATE TABLE `aoa_reviewed` (
  `reviewed_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `reviewed_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `del` int(11) DEFAULT NULL,
  PRIMARY KEY (`reviewed_id`),
  KEY `FKevjvy6myxg1l0ibiuph3i7jw2` (`pro_id`),
  KEY `FK2iljei0wvy0cylwwyfh5dr9yk` (`user_id`),
  CONSTRAINT `FK2iljei0wvy0cylwwyfh5dr9yk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKevjvy6myxg1l0ibiuph3i7jw2` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_reviewed
-- ----------------------------
INSERT INTO `aoa_reviewed` VALUES ('1', null, null, '23', '1', '1', '0');
INSERT INTO `aoa_reviewed` VALUES ('2', '防微杜渐返回为子发hi黯然无光狂热就', '2019-10-11 22:40:25', '25', '2', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('3', null, null, '23', '3', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('4', null, null, '23', '4', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('5', '范德萨地方大发地方撒大', '2019-10-11 22:31:50', '25', '5', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('6', null, null, '23', '6', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('7', '属实', '2019-10-12 13:15:53', '25', '7', '4', '1');
INSERT INTO `aoa_reviewed` VALUES ('8', null, null, '23', '7', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('9', null, null, '23', '8', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('10', null, null, '23', '9', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('11', '去项目支持', '2019-10-14 00:04:05', '25', '10', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('12', null, null, '23', '10', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('13', '情况属实！！！！', '2019-10-14 00:32:44', '25', '11', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('17', '批准', '2019-10-14 00:43:16', '25', '11', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('18', '发发发', '2019-10-14 16:42:19', '25', '12', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('19', '公司没人', '2019-10-14 20:34:45', '23', '12', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('20', '公司没人', '2019-10-14 20:30:02', '26', '14', '3', '0');
INSERT INTO `aoa_reviewed` VALUES ('21', null, null, '23', '14', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('22', '准假', '2019-10-14 21:38:03', '25', '16', '2', '0');
INSERT INTO `aoa_reviewed` VALUES ('23', null, null, '23', '16', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('24', '经过实习期间观察，合格', '2019-10-14 23:02:48', '25', '17', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('26', null, null, '23', '17', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('27', '准了', '2019-10-15 00:15:36', '25', '19', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('28', null, null, '23', '19', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('29', '多对多', '2017-10-15 16:17:18', '26', '20', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('30', null, null, '23', '20', '5', '0');
INSERT INTO `aoa_reviewed` VALUES ('31', null, null, '23', '21', '6', '0');
INSERT INTO `aoa_reviewed` VALUES ('32', null, null, '23', '22', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('33', null, null, '23', '23', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('34', '', '2019-10-16 16:06:03', '26', '24', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('35', '', '2019-10-28 20:51:53', '25', '25', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('36', '', '2019-10-28 22:08:16', '25', '25', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('37', null, null, '23', '26', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('38', null, null, '23', '27', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('39', null, null, '23', '28', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('40', '', '2019-10-28 20:50:30', '25', '29', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('41', '批准，加把劲', '2019-10-28 22:09:36', '25', '30', '4', '0');
INSERT INTO `aoa_reviewed` VALUES ('42', '批准', '2019-10-28 22:10:12', '25', '30', '7', '0');
INSERT INTO `aoa_reviewed` VALUES ('43', null, null, '23', '31', '7', '0');

-- ----------------------------
-- Table structure for aoa_role_
-- ----------------------------
DROP TABLE IF EXISTS `aoa_role_`;
CREATE TABLE `aoa_role_` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_role_
-- ----------------------------
INSERT INTO `aoa_role_` VALUES ('1', '超级管理员', null);
INSERT INTO `aoa_role_` VALUES ('2', 'CEO', null);
INSERT INTO `aoa_role_` VALUES ('3', '总经理', null);
INSERT INTO `aoa_role_` VALUES ('4', '部门经理', null);
INSERT INTO `aoa_role_` VALUES ('5', '职员', null);
INSERT INTO `aoa_role_` VALUES ('6', '实习生', null);
INSERT INTO `aoa_role_` VALUES ('7', '试用生', null);

-- ----------------------------
-- Table structure for aoa_role_power_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_role_power_list`;
CREATE TABLE `aoa_role_power_list` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_show` int(11) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2f9f91f213gwtglofko5r429s` (`menu_id`),
  KEY `FK7b71lfkstl47tston4lrd8066` (`role_id`),
  CONSTRAINT `FK2f9f91f213gwtglofko5r429s` FOREIGN KEY (`menu_id`) REFERENCES `aoa_sys_menu` (`menu_id`),
  CONSTRAINT `FK7b71lfkstl47tston4lrd8066` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_role_power_list
-- ----------------------------
INSERT INTO `aoa_role_power_list` VALUES ('56', '1', '1', '1');
INSERT INTO `aoa_role_power_list` VALUES ('57', '1', '2', '1');
INSERT INTO `aoa_role_power_list` VALUES ('58', '1', '3', '1');
INSERT INTO `aoa_role_power_list` VALUES ('59', '1', '4', '1');
INSERT INTO `aoa_role_power_list` VALUES ('60', '1', '5', '1');
INSERT INTO `aoa_role_power_list` VALUES ('61', '1', '6', '1');
INSERT INTO `aoa_role_power_list` VALUES ('62', '1', '7', '1');
INSERT INTO `aoa_role_power_list` VALUES ('63', '1', '8', '1');
INSERT INTO `aoa_role_power_list` VALUES ('64', '1', '9', '1');
INSERT INTO `aoa_role_power_list` VALUES ('65', '1', '10', '1');
INSERT INTO `aoa_role_power_list` VALUES ('66', '1', '11', '1');
INSERT INTO `aoa_role_power_list` VALUES ('67', '1', '12', '1');
INSERT INTO `aoa_role_power_list` VALUES ('68', '1', '13', '1');
INSERT INTO `aoa_role_power_list` VALUES ('69', '1', '14', '1');
INSERT INTO `aoa_role_power_list` VALUES ('70', '1', '15', '1');
INSERT INTO `aoa_role_power_list` VALUES ('71', '1', '16', '1');
INSERT INTO `aoa_role_power_list` VALUES ('72', '1', '17', '1');
INSERT INTO `aoa_role_power_list` VALUES ('73', '1', '18', '1');
INSERT INTO `aoa_role_power_list` VALUES ('74', '1', '19', '1');
INSERT INTO `aoa_role_power_list` VALUES ('75', '1', '20', '1');
INSERT INTO `aoa_role_power_list` VALUES ('76', '1', '21', '1');
INSERT INTO `aoa_role_power_list` VALUES ('77', '1', '22', '1');
INSERT INTO `aoa_role_power_list` VALUES ('78', '1', '23', '1');
INSERT INTO `aoa_role_power_list` VALUES ('79', '1', '24', '1');
INSERT INTO `aoa_role_power_list` VALUES ('80', '1', '25', '1');
INSERT INTO `aoa_role_power_list` VALUES ('81', '1', '26', '1');
INSERT INTO `aoa_role_power_list` VALUES ('82', '1', '27', '1');
INSERT INTO `aoa_role_power_list` VALUES ('83', '1', '28', '1');
INSERT INTO `aoa_role_power_list` VALUES ('84', '1', '29', '1');
INSERT INTO `aoa_role_power_list` VALUES ('85', '1', '30', '1');
INSERT INTO `aoa_role_power_list` VALUES ('86', '1', '31', '1');
INSERT INTO `aoa_role_power_list` VALUES ('87', '1', '32', '1');
INSERT INTO `aoa_role_power_list` VALUES ('88', '1', '33', '1');
INSERT INTO `aoa_role_power_list` VALUES ('89', '1', '34', '1');
INSERT INTO `aoa_role_power_list` VALUES ('90', '1', '35', '1');
INSERT INTO `aoa_role_power_list` VALUES ('91', '1', '36', '1');
INSERT INTO `aoa_role_power_list` VALUES ('92', '1', '37', '1');
INSERT INTO `aoa_role_power_list` VALUES ('93', '1', '38', '1');
INSERT INTO `aoa_role_power_list` VALUES ('94', '1', '39', '1');
INSERT INTO `aoa_role_power_list` VALUES ('95', '1', '40', '1');
INSERT INTO `aoa_role_power_list` VALUES ('96', '1', '41', '1');
INSERT INTO `aoa_role_power_list` VALUES ('97', '1', '42', '1');
INSERT INTO `aoa_role_power_list` VALUES ('98', '1', '67', '1');
INSERT INTO `aoa_role_power_list` VALUES ('99', '0', '76', '1');
INSERT INTO `aoa_role_power_list` VALUES ('100', '0', '77', '1');
INSERT INTO `aoa_role_power_list` VALUES ('101', '0', '78', '1');
INSERT INTO `aoa_role_power_list` VALUES ('102', '0', '79', '1');
INSERT INTO `aoa_role_power_list` VALUES ('103', '0', '80', '1');
INSERT INTO `aoa_role_power_list` VALUES ('104', '0', '81', '1');
INSERT INTO `aoa_role_power_list` VALUES ('105', '0', '82', '1');
INSERT INTO `aoa_role_power_list` VALUES ('106', '0', '86', '1');
INSERT INTO `aoa_role_power_list` VALUES ('107', '0', '87', '1');
INSERT INTO `aoa_role_power_list` VALUES ('108', '0', '88', '1');
INSERT INTO `aoa_role_power_list` VALUES ('109', '1', '89', '1');
INSERT INTO `aoa_role_power_list` VALUES ('110', '1', '90', '1');
INSERT INTO `aoa_role_power_list` VALUES ('111', '0', '1', '2');
INSERT INTO `aoa_role_power_list` VALUES ('112', '1', '2', '2');
INSERT INTO `aoa_role_power_list` VALUES ('113', '1', '3', '2');
INSERT INTO `aoa_role_power_list` VALUES ('114', '1', '4', '2');
INSERT INTO `aoa_role_power_list` VALUES ('115', '1', '5', '2');
INSERT INTO `aoa_role_power_list` VALUES ('116', '1', '6', '2');
INSERT INTO `aoa_role_power_list` VALUES ('117', '1', '7', '2');
INSERT INTO `aoa_role_power_list` VALUES ('118', '1', '8', '2');
INSERT INTO `aoa_role_power_list` VALUES ('119', '1', '9', '2');
INSERT INTO `aoa_role_power_list` VALUES ('120', '1', '10', '2');
INSERT INTO `aoa_role_power_list` VALUES ('121', '1', '11', '2');
INSERT INTO `aoa_role_power_list` VALUES ('122', '1', '12', '2');
INSERT INTO `aoa_role_power_list` VALUES ('123', '1', '13', '2');
INSERT INTO `aoa_role_power_list` VALUES ('124', '0', '14', '2');
INSERT INTO `aoa_role_power_list` VALUES ('125', '0', '15', '2');
INSERT INTO `aoa_role_power_list` VALUES ('126', '0', '16', '2');
INSERT INTO `aoa_role_power_list` VALUES ('127', '1', '17', '2');
INSERT INTO `aoa_role_power_list` VALUES ('128', '1', '18', '2');
INSERT INTO `aoa_role_power_list` VALUES ('129', '1', '19', '2');
INSERT INTO `aoa_role_power_list` VALUES ('130', '0', '20', '2');
INSERT INTO `aoa_role_power_list` VALUES ('131', '1', '21', '2');
INSERT INTO `aoa_role_power_list` VALUES ('132', '1', '22', '2');
INSERT INTO `aoa_role_power_list` VALUES ('133', '1', '23', '2');
INSERT INTO `aoa_role_power_list` VALUES ('134', '1', '24', '2');
INSERT INTO `aoa_role_power_list` VALUES ('135', '0', '25', '2');
INSERT INTO `aoa_role_power_list` VALUES ('136', '1', '26', '2');
INSERT INTO `aoa_role_power_list` VALUES ('137', '1', '27', '2');
INSERT INTO `aoa_role_power_list` VALUES ('138', '1', '28', '2');
INSERT INTO `aoa_role_power_list` VALUES ('139', '1', '29', '2');
INSERT INTO `aoa_role_power_list` VALUES ('140', '1', '30', '2');
INSERT INTO `aoa_role_power_list` VALUES ('141', '1', '31', '2');
INSERT INTO `aoa_role_power_list` VALUES ('142', '1', '32', '2');
INSERT INTO `aoa_role_power_list` VALUES ('143', '1', '33', '2');
INSERT INTO `aoa_role_power_list` VALUES ('144', '1', '34', '2');
INSERT INTO `aoa_role_power_list` VALUES ('145', '1', '35', '2');
INSERT INTO `aoa_role_power_list` VALUES ('146', '1', '36', '2');
INSERT INTO `aoa_role_power_list` VALUES ('147', '1', '37', '2');
INSERT INTO `aoa_role_power_list` VALUES ('148', '1', '38', '2');
INSERT INTO `aoa_role_power_list` VALUES ('149', '1', '39', '2');
INSERT INTO `aoa_role_power_list` VALUES ('150', '1', '40', '2');
INSERT INTO `aoa_role_power_list` VALUES ('151', '1', '41', '2');
INSERT INTO `aoa_role_power_list` VALUES ('152', '1', '42', '2');
INSERT INTO `aoa_role_power_list` VALUES ('153', '1', '67', '2');
INSERT INTO `aoa_role_power_list` VALUES ('154', '0', '76', '2');
INSERT INTO `aoa_role_power_list` VALUES ('155', '0', '77', '2');
INSERT INTO `aoa_role_power_list` VALUES ('156', '0', '78', '2');
INSERT INTO `aoa_role_power_list` VALUES ('157', '0', '79', '2');
INSERT INTO `aoa_role_power_list` VALUES ('158', '0', '80', '2');
INSERT INTO `aoa_role_power_list` VALUES ('159', '0', '81', '2');
INSERT INTO `aoa_role_power_list` VALUES ('160', '0', '82', '2');
INSERT INTO `aoa_role_power_list` VALUES ('161', '0', '86', '2');
INSERT INTO `aoa_role_power_list` VALUES ('162', '0', '87', '2');
INSERT INTO `aoa_role_power_list` VALUES ('163', '0', '88', '2');
INSERT INTO `aoa_role_power_list` VALUES ('164', '1', '89', '2');
INSERT INTO `aoa_role_power_list` VALUES ('165', '0', '90', '2');
INSERT INTO `aoa_role_power_list` VALUES ('166', '0', '1', '3');
INSERT INTO `aoa_role_power_list` VALUES ('167', '0', '2', '3');
INSERT INTO `aoa_role_power_list` VALUES ('168', '1', '3', '3');
INSERT INTO `aoa_role_power_list` VALUES ('169', '1', '4', '3');
INSERT INTO `aoa_role_power_list` VALUES ('170', '1', '5', '3');
INSERT INTO `aoa_role_power_list` VALUES ('171', '1', '6', '3');
INSERT INTO `aoa_role_power_list` VALUES ('172', '1', '7', '3');
INSERT INTO `aoa_role_power_list` VALUES ('173', '1', '8', '3');
INSERT INTO `aoa_role_power_list` VALUES ('174', '1', '9', '3');
INSERT INTO `aoa_role_power_list` VALUES ('175', '1', '10', '3');
INSERT INTO `aoa_role_power_list` VALUES ('176', '1', '11', '3');
INSERT INTO `aoa_role_power_list` VALUES ('177', '1', '12', '3');
INSERT INTO `aoa_role_power_list` VALUES ('178', '1', '13', '3');
INSERT INTO `aoa_role_power_list` VALUES ('179', '0', '14', '3');
INSERT INTO `aoa_role_power_list` VALUES ('180', '0', '15', '3');
INSERT INTO `aoa_role_power_list` VALUES ('181', '0', '16', '3');
INSERT INTO `aoa_role_power_list` VALUES ('182', '1', '17', '3');
INSERT INTO `aoa_role_power_list` VALUES ('183', '1', '18', '3');
INSERT INTO `aoa_role_power_list` VALUES ('184', '1', '19', '3');
INSERT INTO `aoa_role_power_list` VALUES ('185', '1', '20', '3');
INSERT INTO `aoa_role_power_list` VALUES ('186', '1', '21', '3');
INSERT INTO `aoa_role_power_list` VALUES ('187', '1', '22', '3');
INSERT INTO `aoa_role_power_list` VALUES ('188', '1', '23', '3');
INSERT INTO `aoa_role_power_list` VALUES ('189', '1', '24', '3');
INSERT INTO `aoa_role_power_list` VALUES ('190', '1', '25', '3');
INSERT INTO `aoa_role_power_list` VALUES ('191', '1', '26', '3');
INSERT INTO `aoa_role_power_list` VALUES ('192', '1', '27', '3');
INSERT INTO `aoa_role_power_list` VALUES ('193', '1', '28', '3');
INSERT INTO `aoa_role_power_list` VALUES ('194', '1', '29', '3');
INSERT INTO `aoa_role_power_list` VALUES ('195', '1', '30', '3');
INSERT INTO `aoa_role_power_list` VALUES ('196', '1', '31', '3');
INSERT INTO `aoa_role_power_list` VALUES ('197', '1', '32', '3');
INSERT INTO `aoa_role_power_list` VALUES ('198', '1', '33', '3');
INSERT INTO `aoa_role_power_list` VALUES ('199', '1', '34', '3');
INSERT INTO `aoa_role_power_list` VALUES ('200', '1', '35', '3');
INSERT INTO `aoa_role_power_list` VALUES ('201', '1', '36', '3');
INSERT INTO `aoa_role_power_list` VALUES ('202', '1', '37', '3');
INSERT INTO `aoa_role_power_list` VALUES ('203', '1', '38', '3');
INSERT INTO `aoa_role_power_list` VALUES ('204', '1', '39', '3');
INSERT INTO `aoa_role_power_list` VALUES ('205', '1', '40', '3');
INSERT INTO `aoa_role_power_list` VALUES ('206', '1', '41', '3');
INSERT INTO `aoa_role_power_list` VALUES ('207', '1', '42', '3');
INSERT INTO `aoa_role_power_list` VALUES ('208', '1', '67', '3');
INSERT INTO `aoa_role_power_list` VALUES ('209', '0', '76', '3');
INSERT INTO `aoa_role_power_list` VALUES ('210', '0', '77', '3');
INSERT INTO `aoa_role_power_list` VALUES ('211', '0', '78', '3');
INSERT INTO `aoa_role_power_list` VALUES ('212', '0', '79', '3');
INSERT INTO `aoa_role_power_list` VALUES ('213', '0', '80', '3');
INSERT INTO `aoa_role_power_list` VALUES ('214', '0', '81', '3');
INSERT INTO `aoa_role_power_list` VALUES ('215', '0', '82', '3');
INSERT INTO `aoa_role_power_list` VALUES ('216', '0', '86', '3');
INSERT INTO `aoa_role_power_list` VALUES ('217', '0', '87', '3');
INSERT INTO `aoa_role_power_list` VALUES ('218', '0', '88', '3');
INSERT INTO `aoa_role_power_list` VALUES ('219', '0', '89', '3');
INSERT INTO `aoa_role_power_list` VALUES ('220', '1', '90', '3');
INSERT INTO `aoa_role_power_list` VALUES ('221', '0', '1', '4');
INSERT INTO `aoa_role_power_list` VALUES ('222', '0', '2', '4');
INSERT INTO `aoa_role_power_list` VALUES ('223', '0', '3', '4');
INSERT INTO `aoa_role_power_list` VALUES ('224', '1', '4', '4');
INSERT INTO `aoa_role_power_list` VALUES ('225', '1', '5', '4');
INSERT INTO `aoa_role_power_list` VALUES ('226', '1', '6', '4');
INSERT INTO `aoa_role_power_list` VALUES ('227', '1', '7', '4');
INSERT INTO `aoa_role_power_list` VALUES ('228', '1', '8', '4');
INSERT INTO `aoa_role_power_list` VALUES ('229', '1', '9', '4');
INSERT INTO `aoa_role_power_list` VALUES ('230', '1', '10', '4');
INSERT INTO `aoa_role_power_list` VALUES ('231', '1', '11', '4');
INSERT INTO `aoa_role_power_list` VALUES ('232', '1', '12', '4');
INSERT INTO `aoa_role_power_list` VALUES ('233', '1', '13', '4');
INSERT INTO `aoa_role_power_list` VALUES ('234', '0', '14', '4');
INSERT INTO `aoa_role_power_list` VALUES ('235', '0', '15', '4');
INSERT INTO `aoa_role_power_list` VALUES ('236', '0', '16', '4');
INSERT INTO `aoa_role_power_list` VALUES ('237', '1', '17', '4');
INSERT INTO `aoa_role_power_list` VALUES ('238', '0', '18', '4');
INSERT INTO `aoa_role_power_list` VALUES ('239', '1', '19', '4');
INSERT INTO `aoa_role_power_list` VALUES ('240', '1', '20', '4');
INSERT INTO `aoa_role_power_list` VALUES ('241', '0', '21', '4');
INSERT INTO `aoa_role_power_list` VALUES ('242', '1', '22', '4');
INSERT INTO `aoa_role_power_list` VALUES ('243', '1', '23', '4');
INSERT INTO `aoa_role_power_list` VALUES ('244', '1', '24', '4');
INSERT INTO `aoa_role_power_list` VALUES ('245', '1', '25', '4');
INSERT INTO `aoa_role_power_list` VALUES ('246', '1', '26', '4');
INSERT INTO `aoa_role_power_list` VALUES ('247', '1', '27', '4');
INSERT INTO `aoa_role_power_list` VALUES ('248', '1', '28', '4');
INSERT INTO `aoa_role_power_list` VALUES ('249', '1', '29', '4');
INSERT INTO `aoa_role_power_list` VALUES ('250', '1', '30', '4');
INSERT INTO `aoa_role_power_list` VALUES ('251', '1', '31', '4');
INSERT INTO `aoa_role_power_list` VALUES ('252', '1', '32', '4');
INSERT INTO `aoa_role_power_list` VALUES ('253', '1', '33', '4');
INSERT INTO `aoa_role_power_list` VALUES ('254', '1', '34', '4');
INSERT INTO `aoa_role_power_list` VALUES ('255', '1', '35', '4');
INSERT INTO `aoa_role_power_list` VALUES ('256', '1', '36', '4');
INSERT INTO `aoa_role_power_list` VALUES ('257', '1', '37', '4');
INSERT INTO `aoa_role_power_list` VALUES ('258', '1', '38', '4');
INSERT INTO `aoa_role_power_list` VALUES ('259', '1', '39', '4');
INSERT INTO `aoa_role_power_list` VALUES ('260', '1', '40', '4');
INSERT INTO `aoa_role_power_list` VALUES ('261', '1', '41', '4');
INSERT INTO `aoa_role_power_list` VALUES ('262', '1', '42', '4');
INSERT INTO `aoa_role_power_list` VALUES ('263', '1', '67', '4');
INSERT INTO `aoa_role_power_list` VALUES ('264', '0', '76', '4');
INSERT INTO `aoa_role_power_list` VALUES ('265', '0', '77', '4');
INSERT INTO `aoa_role_power_list` VALUES ('266', '0', '78', '4');
INSERT INTO `aoa_role_power_list` VALUES ('267', '0', '79', '4');
INSERT INTO `aoa_role_power_list` VALUES ('268', '0', '80', '4');
INSERT INTO `aoa_role_power_list` VALUES ('269', '0', '81', '4');
INSERT INTO `aoa_role_power_list` VALUES ('270', '0', '82', '4');
INSERT INTO `aoa_role_power_list` VALUES ('271', '0', '86', '4');
INSERT INTO `aoa_role_power_list` VALUES ('272', '0', '87', '4');
INSERT INTO `aoa_role_power_list` VALUES ('273', '0', '88', '4');
INSERT INTO `aoa_role_power_list` VALUES ('274', '0', '89', '4');
INSERT INTO `aoa_role_power_list` VALUES ('275', '1', '90', '4');
INSERT INTO `aoa_role_power_list` VALUES ('276', '0', '1', '5');
INSERT INTO `aoa_role_power_list` VALUES ('277', '0', '2', '5');
INSERT INTO `aoa_role_power_list` VALUES ('278', '0', '3', '5');
INSERT INTO `aoa_role_power_list` VALUES ('279', '0', '4', '5');
INSERT INTO `aoa_role_power_list` VALUES ('280', '1', '5', '5');
INSERT INTO `aoa_role_power_list` VALUES ('281', '1', '6', '5');
INSERT INTO `aoa_role_power_list` VALUES ('282', '1', '7', '5');
INSERT INTO `aoa_role_power_list` VALUES ('283', '1', '8', '5');
INSERT INTO `aoa_role_power_list` VALUES ('284', '1', '9', '5');
INSERT INTO `aoa_role_power_list` VALUES ('285', '1', '10', '5');
INSERT INTO `aoa_role_power_list` VALUES ('286', '1', '11', '5');
INSERT INTO `aoa_role_power_list` VALUES ('287', '1', '12', '5');
INSERT INTO `aoa_role_power_list` VALUES ('288', '1', '13', '5');
INSERT INTO `aoa_role_power_list` VALUES ('289', '0', '14', '5');
INSERT INTO `aoa_role_power_list` VALUES ('290', '0', '15', '5');
INSERT INTO `aoa_role_power_list` VALUES ('291', '0', '16', '5');
INSERT INTO `aoa_role_power_list` VALUES ('292', '0', '17', '5');
INSERT INTO `aoa_role_power_list` VALUES ('293', '0', '18', '5');
INSERT INTO `aoa_role_power_list` VALUES ('294', '0', '19', '5');
INSERT INTO `aoa_role_power_list` VALUES ('295', '0', '20', '5');
INSERT INTO `aoa_role_power_list` VALUES ('296', '0', '21', '5');
INSERT INTO `aoa_role_power_list` VALUES ('297', '0', '22', '5');
INSERT INTO `aoa_role_power_list` VALUES ('298', '0', '23', '5');
INSERT INTO `aoa_role_power_list` VALUES ('299', '0', '24', '5');
INSERT INTO `aoa_role_power_list` VALUES ('300', '1', '25', '5');
INSERT INTO `aoa_role_power_list` VALUES ('301', '0', '26', '5');
INSERT INTO `aoa_role_power_list` VALUES ('302', '0', '27', '5');
INSERT INTO `aoa_role_power_list` VALUES ('303', '1', '28', '5');
INSERT INTO `aoa_role_power_list` VALUES ('304', '1', '29', '5');
INSERT INTO `aoa_role_power_list` VALUES ('305', '1', '30', '5');
INSERT INTO `aoa_role_power_list` VALUES ('306', '0', '31', '5');
INSERT INTO `aoa_role_power_list` VALUES ('307', '1', '32', '5');
INSERT INTO `aoa_role_power_list` VALUES ('308', '0', '33', '5');
INSERT INTO `aoa_role_power_list` VALUES ('309', '1', '34', '5');
INSERT INTO `aoa_role_power_list` VALUES ('310', '1', '35', '5');
INSERT INTO `aoa_role_power_list` VALUES ('311', '1', '36', '5');
INSERT INTO `aoa_role_power_list` VALUES ('312', '1', '37', '5');
INSERT INTO `aoa_role_power_list` VALUES ('313', '1', '38', '5');
INSERT INTO `aoa_role_power_list` VALUES ('314', '1', '39', '5');
INSERT INTO `aoa_role_power_list` VALUES ('315', '1', '40', '5');
INSERT INTO `aoa_role_power_list` VALUES ('316', '1', '41', '5');
INSERT INTO `aoa_role_power_list` VALUES ('317', '1', '42', '5');
INSERT INTO `aoa_role_power_list` VALUES ('318', '0', '67', '5');
INSERT INTO `aoa_role_power_list` VALUES ('319', '0', '76', '5');
INSERT INTO `aoa_role_power_list` VALUES ('320', '0', '77', '5');
INSERT INTO `aoa_role_power_list` VALUES ('321', '0', '78', '5');
INSERT INTO `aoa_role_power_list` VALUES ('322', '0', '79', '5');
INSERT INTO `aoa_role_power_list` VALUES ('323', '0', '80', '5');
INSERT INTO `aoa_role_power_list` VALUES ('324', '0', '81', '5');
INSERT INTO `aoa_role_power_list` VALUES ('325', '0', '82', '5');
INSERT INTO `aoa_role_power_list` VALUES ('326', '0', '86', '5');
INSERT INTO `aoa_role_power_list` VALUES ('327', '0', '87', '5');
INSERT INTO `aoa_role_power_list` VALUES ('328', '0', '88', '5');
INSERT INTO `aoa_role_power_list` VALUES ('329', '0', '89', '5');
INSERT INTO `aoa_role_power_list` VALUES ('330', '1', '90', '5');
INSERT INTO `aoa_role_power_list` VALUES ('331', '0', '1', '6');
INSERT INTO `aoa_role_power_list` VALUES ('332', '0', '2', '6');
INSERT INTO `aoa_role_power_list` VALUES ('333', '0', '3', '6');
INSERT INTO `aoa_role_power_list` VALUES ('334', '0', '4', '6');
INSERT INTO `aoa_role_power_list` VALUES ('335', '0', '5', '6');
INSERT INTO `aoa_role_power_list` VALUES ('336', '0', '6', '6');
INSERT INTO `aoa_role_power_list` VALUES ('337', '0', '7', '6');
INSERT INTO `aoa_role_power_list` VALUES ('338', '0', '8', '6');
INSERT INTO `aoa_role_power_list` VALUES ('339', '0', '9', '6');
INSERT INTO `aoa_role_power_list` VALUES ('340', '0', '10', '6');
INSERT INTO `aoa_role_power_list` VALUES ('341', '0', '11', '6');
INSERT INTO `aoa_role_power_list` VALUES ('342', '0', '12', '6');
INSERT INTO `aoa_role_power_list` VALUES ('343', '0', '13', '6');
INSERT INTO `aoa_role_power_list` VALUES ('344', '0', '14', '6');
INSERT INTO `aoa_role_power_list` VALUES ('345', '0', '15', '6');
INSERT INTO `aoa_role_power_list` VALUES ('346', '0', '16', '6');
INSERT INTO `aoa_role_power_list` VALUES ('347', '0', '17', '6');
INSERT INTO `aoa_role_power_list` VALUES ('348', '0', '18', '6');
INSERT INTO `aoa_role_power_list` VALUES ('349', '0', '19', '6');
INSERT INTO `aoa_role_power_list` VALUES ('350', '0', '20', '6');
INSERT INTO `aoa_role_power_list` VALUES ('351', '0', '21', '6');
INSERT INTO `aoa_role_power_list` VALUES ('352', '0', '22', '6');
INSERT INTO `aoa_role_power_list` VALUES ('353', '0', '23', '6');
INSERT INTO `aoa_role_power_list` VALUES ('354', '0', '24', '6');
INSERT INTO `aoa_role_power_list` VALUES ('355', '0', '25', '6');
INSERT INTO `aoa_role_power_list` VALUES ('356', '0', '26', '6');
INSERT INTO `aoa_role_power_list` VALUES ('357', '0', '27', '6');
INSERT INTO `aoa_role_power_list` VALUES ('358', '0', '28', '6');
INSERT INTO `aoa_role_power_list` VALUES ('359', '0', '29', '6');
INSERT INTO `aoa_role_power_list` VALUES ('360', '0', '30', '6');
INSERT INTO `aoa_role_power_list` VALUES ('361', '0', '31', '6');
INSERT INTO `aoa_role_power_list` VALUES ('362', '0', '32', '6');
INSERT INTO `aoa_role_power_list` VALUES ('363', '0', '33', '6');
INSERT INTO `aoa_role_power_list` VALUES ('364', '0', '34', '6');
INSERT INTO `aoa_role_power_list` VALUES ('365', '0', '35', '6');
INSERT INTO `aoa_role_power_list` VALUES ('366', '0', '36', '6');
INSERT INTO `aoa_role_power_list` VALUES ('367', '0', '37', '6');
INSERT INTO `aoa_role_power_list` VALUES ('368', '0', '38', '6');
INSERT INTO `aoa_role_power_list` VALUES ('369', '0', '39', '6');
INSERT INTO `aoa_role_power_list` VALUES ('370', '0', '40', '6');
INSERT INTO `aoa_role_power_list` VALUES ('371', '0', '41', '6');
INSERT INTO `aoa_role_power_list` VALUES ('372', '0', '42', '6');
INSERT INTO `aoa_role_power_list` VALUES ('373', '0', '67', '6');
INSERT INTO `aoa_role_power_list` VALUES ('374', '0', '76', '6');
INSERT INTO `aoa_role_power_list` VALUES ('375', '0', '77', '6');
INSERT INTO `aoa_role_power_list` VALUES ('376', '0', '78', '6');
INSERT INTO `aoa_role_power_list` VALUES ('377', '0', '79', '6');
INSERT INTO `aoa_role_power_list` VALUES ('378', '0', '80', '6');
INSERT INTO `aoa_role_power_list` VALUES ('379', '0', '81', '6');
INSERT INTO `aoa_role_power_list` VALUES ('380', '0', '82', '6');
INSERT INTO `aoa_role_power_list` VALUES ('381', '0', '86', '6');
INSERT INTO `aoa_role_power_list` VALUES ('382', '0', '87', '6');
INSERT INTO `aoa_role_power_list` VALUES ('383', '0', '88', '6');
INSERT INTO `aoa_role_power_list` VALUES ('384', '0', '89', '6');
INSERT INTO `aoa_role_power_list` VALUES ('385', '0', '90', '6');
INSERT INTO `aoa_role_power_list` VALUES ('386', '0', '1', '7');
INSERT INTO `aoa_role_power_list` VALUES ('387', '0', '2', '7');
INSERT INTO `aoa_role_power_list` VALUES ('388', '0', '3', '7');
INSERT INTO `aoa_role_power_list` VALUES ('389', '0', '4', '7');
INSERT INTO `aoa_role_power_list` VALUES ('390', '0', '5', '7');
INSERT INTO `aoa_role_power_list` VALUES ('391', '0', '6', '7');
INSERT INTO `aoa_role_power_list` VALUES ('392', '0', '7', '7');
INSERT INTO `aoa_role_power_list` VALUES ('393', '0', '8', '7');
INSERT INTO `aoa_role_power_list` VALUES ('394', '0', '9', '7');
INSERT INTO `aoa_role_power_list` VALUES ('395', '1', '10', '7');
INSERT INTO `aoa_role_power_list` VALUES ('396', '0', '11', '7');
INSERT INTO `aoa_role_power_list` VALUES ('397', '0', '12', '7');
INSERT INTO `aoa_role_power_list` VALUES ('398', '0', '13', '7');
INSERT INTO `aoa_role_power_list` VALUES ('399', '0', '14', '7');
INSERT INTO `aoa_role_power_list` VALUES ('400', '0', '15', '7');
INSERT INTO `aoa_role_power_list` VALUES ('401', '0', '16', '7');
INSERT INTO `aoa_role_power_list` VALUES ('402', '0', '17', '7');
INSERT INTO `aoa_role_power_list` VALUES ('403', '0', '18', '7');
INSERT INTO `aoa_role_power_list` VALUES ('404', '0', '19', '7');
INSERT INTO `aoa_role_power_list` VALUES ('405', '0', '20', '7');
INSERT INTO `aoa_role_power_list` VALUES ('406', '0', '21', '7');
INSERT INTO `aoa_role_power_list` VALUES ('407', '0', '22', '7');
INSERT INTO `aoa_role_power_list` VALUES ('408', '0', '23', '7');
INSERT INTO `aoa_role_power_list` VALUES ('409', '0', '24', '7');
INSERT INTO `aoa_role_power_list` VALUES ('410', '0', '25', '7');
INSERT INTO `aoa_role_power_list` VALUES ('411', '0', '26', '7');
INSERT INTO `aoa_role_power_list` VALUES ('412', '0', '27', '7');
INSERT INTO `aoa_role_power_list` VALUES ('413', '0', '28', '7');
INSERT INTO `aoa_role_power_list` VALUES ('414', '0', '29', '7');
INSERT INTO `aoa_role_power_list` VALUES ('415', '0', '30', '7');
INSERT INTO `aoa_role_power_list` VALUES ('416', '0', '31', '7');
INSERT INTO `aoa_role_power_list` VALUES ('417', '0', '32', '7');
INSERT INTO `aoa_role_power_list` VALUES ('418', '1', '33', '7');
INSERT INTO `aoa_role_power_list` VALUES ('419', '1', '34', '7');
INSERT INTO `aoa_role_power_list` VALUES ('420', '1', '35', '7');
INSERT INTO `aoa_role_power_list` VALUES ('421', '0', '36', '7');
INSERT INTO `aoa_role_power_list` VALUES ('422', '0', '37', '7');
INSERT INTO `aoa_role_power_list` VALUES ('423', '0', '38', '7');
INSERT INTO `aoa_role_power_list` VALUES ('424', '0', '39', '7');
INSERT INTO `aoa_role_power_list` VALUES ('425', '0', '40', '7');
INSERT INTO `aoa_role_power_list` VALUES ('426', '0', '41', '7');
INSERT INTO `aoa_role_power_list` VALUES ('427', '0', '42', '7');
INSERT INTO `aoa_role_power_list` VALUES ('428', '0', '67', '7');
INSERT INTO `aoa_role_power_list` VALUES ('429', '0', '76', '7');
INSERT INTO `aoa_role_power_list` VALUES ('430', '0', '77', '7');
INSERT INTO `aoa_role_power_list` VALUES ('431', '0', '78', '7');
INSERT INTO `aoa_role_power_list` VALUES ('432', '0', '79', '7');
INSERT INTO `aoa_role_power_list` VALUES ('433', '0', '80', '7');
INSERT INTO `aoa_role_power_list` VALUES ('434', '0', '81', '7');
INSERT INTO `aoa_role_power_list` VALUES ('435', '0', '82', '7');
INSERT INTO `aoa_role_power_list` VALUES ('436', '0', '86', '7');
INSERT INTO `aoa_role_power_list` VALUES ('437', '0', '87', '7');
INSERT INTO `aoa_role_power_list` VALUES ('438', '0', '88', '7');
INSERT INTO `aoa_role_power_list` VALUES ('439', '0', '89', '7');
INSERT INTO `aoa_role_power_list` VALUES ('440', '0', '90', '7');
INSERT INTO `aoa_role_power_list` VALUES ('441', '1', '91', '1');
INSERT INTO `aoa_role_power_list` VALUES ('442', '0', '91', '2');
INSERT INTO `aoa_role_power_list` VALUES ('443', '0', '91', '3');
INSERT INTO `aoa_role_power_list` VALUES ('444', '0', '91', '4');
INSERT INTO `aoa_role_power_list` VALUES ('445', '0', '91', '5');
INSERT INTO `aoa_role_power_list` VALUES ('446', '0', '91', '6');
INSERT INTO `aoa_role_power_list` VALUES ('447', '0', '91', '7');

-- ----------------------------
-- Table structure for aoa_schedule_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_schedule_list`;
CREATE TABLE `aoa_schedule_list` (
  `rc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `filedescribe` varchar(255) DEFAULT NULL,
  `is_remind` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `isreminded` int(11) DEFAULT NULL,
  PRIMARY KEY (`rc_id`),
  KEY `FKgcip21xf5ihmgm2bnh5o4jv15` (`user_id`),
  CONSTRAINT `FKgcip21xf5ihmgm2bnh5o4jv15` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_schedule_list
-- ----------------------------
INSERT INTO `aoa_schedule_list` VALUES ('1', '2019-10-18 17:35:16', '2019-10-19 11:09:11', '问请问', '0', '2019-10-04 11:09:06', '27', 'qwew', '44', '1', '请问请问', '0');
INSERT INTO `aoa_schedule_list` VALUES ('2', '2019-10-17 11:09:15', '2019-11-18 11:09:11', '方法都是', '1', '2019-10-05 11:09:06', '28', '问问去', '44', '1', '大撒大撒', '0');
INSERT INTO `aoa_schedule_list` VALUES ('3', '2019-10-27 15:23:30', '2019-10-29 11:09:11', '撒打算', '1', '2019-10-11 11:09:06', '27', '请问请问', '44', '1', '阿斯顿', '0');
INSERT INTO `aoa_schedule_list` VALUES ('5', '2019-10-18 16:50:28', '2019-11-20 00:00:00', null, '0', '2019-10-18 00:00:00', '27', 'Z现在', '44', '1', '啊实打实的', '0');
INSERT INTO `aoa_schedule_list` VALUES ('6', '2019-10-27 15:23:08', '2019-11-25 00:00:00', null, '1', '2019-10-18 00:00:00', '27', '测试', '44', '1', '啊实打实的撒', '0');
INSERT INTO `aoa_schedule_list` VALUES ('7', '2019-10-18 16:55:23', '2019-11-26 00:00:00', null, '0', '2019-10-18 00:00:00', '27', '啊实打实的撒', '44', '1', '啊实打实大苏打撒', '0');
INSERT INTO `aoa_schedule_list` VALUES ('8', '2019-10-18 16:58:05', '2019-11-20 00:00:00', null, '0', '2019-10-18 00:00:00', '27', 'sa撒打算', '44', '1', '撒大苏打撒', '0');
INSERT INTO `aoa_schedule_list` VALUES ('9', '2019-10-18 17:01:43', '2019-11-21 00:00:00', null, '0', '2019-10-18 00:00:00', '27', 'sasa\'d撒旦撒', '44', '1', '啊实打实的', '0');
INSERT INTO `aoa_schedule_list` VALUES ('10', '2019-10-18 17:03:36', '2019-11-20 00:00:00', null, '0', '2019-10-18 00:00:00', '27', '现在反倒反倒是', '44', '1', '打发士大夫但是', '0');
INSERT INTO `aoa_schedule_list` VALUES ('11', '2019-10-27 14:58:42', '2019-10-31 14:57:34', null, '1', '2019-10-27 14:57:34', '29', '阿里公司招标项目', '44', '8', '需要对阿里公司项目招标进行严格的安排以及审核', '0');
INSERT INTO `aoa_schedule_list` VALUES ('12', '2019-10-27 15:05:52', '2019-10-28 15:05:40', null, '0', '2019-10-27 15:05:40', '27', '程序员节', '44', '8', 'FSSDF ', '0');

-- ----------------------------
-- Table structure for aoa_schedule_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_schedule_user`;
CREATE TABLE `aoa_schedule_user` (
  `rcid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FKh6hw8vp7p2lgfovi0o7bhhlyp` (`user_id`),
  KEY `FKcmd578ftbv7i53l6mxbbva137` (`rcid`),
  CONSTRAINT `FKcmd578ftbv7i53l6mxbbva137` FOREIGN KEY (`rcid`) REFERENCES `aoa_schedule_list` (`rc_id`),
  CONSTRAINT `FKh6hw8vp7p2lgfovi0o7bhhlyp` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_schedule_user
-- ----------------------------
INSERT INTO `aoa_schedule_user` VALUES ('1', '2');
INSERT INTO `aoa_schedule_user` VALUES ('1', '3');
INSERT INTO `aoa_schedule_user` VALUES ('1', '4');
INSERT INTO `aoa_schedule_user` VALUES ('11', '1');
INSERT INTO `aoa_schedule_user` VALUES ('11', '2');
INSERT INTO `aoa_schedule_user` VALUES ('11', '3');
INSERT INTO `aoa_schedule_user` VALUES ('11', '4');
INSERT INTO `aoa_schedule_user` VALUES ('11', '5');
INSERT INTO `aoa_schedule_user` VALUES ('11', '6');
INSERT INTO `aoa_schedule_user` VALUES ('11', '7');
INSERT INTO `aoa_schedule_user` VALUES ('11', '8');
INSERT INTO `aoa_schedule_user` VALUES ('11', '9');
INSERT INTO `aoa_schedule_user` VALUES ('11', '10');

-- ----------------------------
-- Table structure for aoa_status_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_status_list`;
CREATE TABLE `aoa_status_list` (
  `status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_color` varchar(255) DEFAULT NULL,
  `status_model` varchar(255) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `sort_value` int(11) DEFAULT NULL,
  `sort_precent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_status_list
-- ----------------------------
INSERT INTO `aoa_status_list` VALUES ('1', 'label-success', 'aoa_mailnumber', '有效', '0', null);
INSERT INTO `aoa_status_list` VALUES ('2', 'label-default', 'aoa_mailnumber', '无效', '1', null);
INSERT INTO `aoa_status_list` VALUES ('3', 'label-warning', 'aoa_task_list', '新任务', '0', '20%');
INSERT INTO `aoa_status_list` VALUES ('4', 'label-info', 'aoa_task_list', '已接收', '1', '40%');
INSERT INTO `aoa_status_list` VALUES ('5', 'label-primary', 'aoa_task_list', '进行中', '2', '60%');
INSERT INTO `aoa_status_list` VALUES ('6', 'label-danger', 'aoa_task_list', '已提交', '3', '80%');
INSERT INTO `aoa_status_list` VALUES ('7', 'label-success', 'aoa_task_list', '已完成', '4', '100%');
INSERT INTO `aoa_status_list` VALUES ('8', 'label-info', 'aoa_note_list', '一般', '0', null);
INSERT INTO `aoa_status_list` VALUES ('9', 'label-danger', 'aoa_note_list', '重要', '1', null);
INSERT INTO `aoa_status_list` VALUES ('10', 'label-info', 'aoa_attends_list', '正常', '0', null);
INSERT INTO `aoa_status_list` VALUES ('11', 'label-warning', 'aoa_attends_list', '迟到', '1', null);
INSERT INTO `aoa_status_list` VALUES ('12', 'label-danger', 'aoa_attends_list', '早退', '2', null);
INSERT INTO `aoa_status_list` VALUES ('13', 'label-danger', 'a', '旷工', '3', null);
INSERT INTO `aoa_status_list` VALUES ('14', 'label-primary', 'inform', '一般', '0', null);
INSERT INTO `aoa_status_list` VALUES ('15', 'label-warning', 'inform', '重要', '1', '');
INSERT INTO `aoa_status_list` VALUES ('16', 'label-danger', 'inform', '紧急', '2', null);
INSERT INTO `aoa_status_list` VALUES ('17', 'label-warning', 'aoa_plan_list', '未完成', '0', null);
INSERT INTO `aoa_status_list` VALUES ('18', 'label-success', 'aoa_plan_list', '已完成', '1', null);
INSERT INTO `aoa_status_list` VALUES ('19', 'label-info', 'aoa_plan_list', '已取消', '2', null);
INSERT INTO `aoa_status_list` VALUES ('20', 'label-primary', 'aoa_in_mail_list', '一般', '0', null);
INSERT INTO `aoa_status_list` VALUES ('21', 'label-warning', 'aoa_in_mail_list', '重要', '1', null);
INSERT INTO `aoa_status_list` VALUES ('22', 'label-danger', 'aoa_in_mail_list', '紧急', '2', null);
INSERT INTO `aoa_status_list` VALUES ('23', 'label-info', 'aoa_process_list', '未处理', '0', null);
INSERT INTO `aoa_status_list` VALUES ('24', 'label-primary', 'aoa_process_list', '处理中', '1', null);
INSERT INTO `aoa_status_list` VALUES ('25', 'label-success', 'aoa_process_list', '已批准', '2', null);
INSERT INTO `aoa_status_list` VALUES ('26', 'label-danger', 'aoa_process_list', '未通过', '3', null);
INSERT INTO `aoa_status_list` VALUES ('27', 'label-primary', 'aoa_schedule_list', '一般', '0', null);
INSERT INTO `aoa_status_list` VALUES ('28', 'label-warning', 'aoa_schedule_list', '重要', '1', null);
INSERT INTO `aoa_status_list` VALUES ('29', 'label-danger', 'aoa_schedule_list', '紧急', '2', null);

-- ----------------------------
-- Table structure for aoa_stay
-- ----------------------------
DROP TABLE IF EXISTS `aoa_stay`;
CREATE TABLE `aoa_stay` (
  `stay_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  `stay_city` varchar(255) DEFAULT NULL,
  `stay_money` double DEFAULT NULL,
  `stay_time` datetime DEFAULT NULL,
  `evemoney_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`stay_id`),
  KEY `FK50vbdodv3kd8dixbmyf9ixyc` (`evemoney_id`),
  KEY `FKho0k9o03kbn6dd96l57xvcx3y` (`user_name`),
  CONSTRAINT `FK50vbdodv3kd8dixbmyf9ixyc` FOREIGN KEY (`evemoney_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`),
  CONSTRAINT `FKho0k9o03kbn6dd96l57xvcx3y` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_stay
-- ----------------------------
INSERT INTO `aoa_stay` VALUES ('1', '2', '希尔顿', '2017-10-15 17:01:11', '上海', '300', '2017-10-13 17:01:11', '1', '18');
INSERT INTO `aoa_stay` VALUES ('2', '2', '希尔顿', '2017-10-18 00:10:06', '广州', '200', '2017-10-16 00:10:06', '2', '18');
INSERT INTO `aoa_stay` VALUES ('3', '4', 'v', '2017-10-22 20:12:25', 'v', '200', '2017-10-18 20:12:25', '3', '10');

-- ----------------------------
-- Table structure for aoa_subject
-- ----------------------------
DROP TABLE IF EXISTS `aoa_subject`;
CREATE TABLE `aoa_subject` (
  `subject_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_subject
-- ----------------------------
INSERT INTO `aoa_subject` VALUES ('1', '报销科目', '0');
INSERT INTO `aoa_subject` VALUES ('2', '办公室费用', '1');
INSERT INTO `aoa_subject` VALUES ('3', '第三方采购费', '1');
INSERT INTO `aoa_subject` VALUES ('4', '管理费用', '1');
INSERT INTO `aoa_subject` VALUES ('5', '投标保证金', '1');
INSERT INTO `aoa_subject` VALUES ('6', '销售费用', '1');
INSERT INTO `aoa_subject` VALUES ('7', '预付款', '1');
INSERT INTO `aoa_subject` VALUES ('9', '差旅费', '2');
INSERT INTO `aoa_subject` VALUES ('10', '采购费', '3');
INSERT INTO `aoa_subject` VALUES ('11', '外包费用', '3');
INSERT INTO `aoa_subject` VALUES ('12', '外包服务费', '3');
INSERT INTO `aoa_subject` VALUES ('13', '房租', '4');
INSERT INTO `aoa_subject` VALUES ('14', '工资', '4');
INSERT INTO `aoa_subject` VALUES ('15', '公积金', '4');
INSERT INTO `aoa_subject` VALUES ('16', '固定电话费', '4');
INSERT INTO `aoa_subject` VALUES ('17', '社保金', '4');
INSERT INTO `aoa_subject` VALUES ('18', '水费', '4');
INSERT INTO `aoa_subject` VALUES ('19', '印刷费', '4');
INSERT INTO `aoa_subject` VALUES ('20', '电费', '4');
INSERT INTO `aoa_subject` VALUES ('21', '投标保证金', '5');
INSERT INTO `aoa_subject` VALUES ('22', '车辆油费', '6');
INSERT INTO `aoa_subject` VALUES ('23', '市场推广费', '6');
INSERT INTO `aoa_subject` VALUES ('24', '市内交通费', '6');
INSERT INTO `aoa_subject` VALUES ('25', '招待费', '6');
INSERT INTO `aoa_subject` VALUES ('26', '预付款', '7');

-- ----------------------------
-- Table structure for aoa_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `aoa_sys_menu`;
CREATE TABLE `aoa_sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_show` int(11) DEFAULT NULL,
  `menu_grade` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_sys_menu
-- ----------------------------
INSERT INTO `aoa_sys_menu` VALUES ('1', '1', null, 'glyphicon-cog', '系统管理', '##', '0', '0');
INSERT INTO `aoa_sys_menu` VALUES ('2', '1', null, 'glyphicon-education', '用户管理', '#', '0', '2');
INSERT INTO `aoa_sys_menu` VALUES ('3', '1', null, 'glyphicon-user', '角色列表', '#', '0', '3');
INSERT INTO `aoa_sys_menu` VALUES ('4', '1', null, 'glyphicon-time', '考勤管理', '#', '0', '4');
INSERT INTO `aoa_sys_menu` VALUES ('5', '1', null, 'glyphicon-hourglass', '流程管理', '#', '0', '5');
INSERT INTO `aoa_sys_menu` VALUES ('6', '1', null, 'glyphicon-bell', '公告管理', '#', '0', '6');
INSERT INTO `aoa_sys_menu` VALUES ('7', '1', null, 'glyphicon-envelope', '邮件管理', '#', '0', '7');
INSERT INTO `aoa_sys_menu` VALUES ('8', '1', null, 'glyphicon-flag', '任务管理', '#', '0', '8');
INSERT INTO `aoa_sys_menu` VALUES ('9', '1', null, 'glyphicon-calendar', '日程管理', '#', '0', '9');
INSERT INTO `aoa_sys_menu` VALUES ('10', '1', null, 'glyphicon-plane', '工作计划', '#', '0', '10');
INSERT INTO `aoa_sys_menu` VALUES ('11', '1', null, 'glyphicon-folder-open', '文件管理', '#', '0', '11');
INSERT INTO `aoa_sys_menu` VALUES ('12', '1', null, 'glyphicon-edit', '笔记管理', '#', '0', '12');
INSERT INTO `aoa_sys_menu` VALUES ('13', '1', null, 'glyphicon-comment', '讨论区', '#', '0', '14');
INSERT INTO `aoa_sys_menu` VALUES ('14', '1', null, 'glyphicon-record', '菜单管理', '/testsysmenu', '1', '2');
INSERT INTO `aoa_sys_menu` VALUES ('15', '1', null, 'glyphicon-record', '类型管理', '/testsystype', '1', '1');
INSERT INTO `aoa_sys_menu` VALUES ('16', '1', null, 'glyphicon-record', '状态管理', '/testsysstatus', '1', '3');
INSERT INTO `aoa_sys_menu` VALUES ('17', '1', null, 'glyphicon-record', '部门管理', '/deptmanage', '2', '1');
INSERT INTO `aoa_sys_menu` VALUES ('18', '1', null, 'glyphicon-record', '职位管理', '/positionmanage', '2', '3');
INSERT INTO `aoa_sys_menu` VALUES ('19', '1', null, 'glyphicon-record', '用户管理', '/usermanage', '2', '4');
INSERT INTO `aoa_sys_menu` VALUES ('20', '1', null, 'glyphicon-record', '在线用户', '/morelogrecord', '2', '2');
INSERT INTO `aoa_sys_menu` VALUES ('21', '1', null, 'glyphicon-record', '角色列表', '/rolemanage', '3', '1');
INSERT INTO `aoa_sys_menu` VALUES ('22', '1', null, 'glyphicon-record', '考勤管理', '/attendceatt', '4', '1');
INSERT INTO `aoa_sys_menu` VALUES ('23', '1', null, 'glyphicon-record', '考勤周报表', '/attendceweek', '4', '2');
INSERT INTO `aoa_sys_menu` VALUES ('24', '1', null, 'glyphicon-record', '考勤月报表', '/attendcemonth', '4', '3');
INSERT INTO `aoa_sys_menu` VALUES ('25', '1', null, 'glyphicon-record', '我的申请', '/flowmanage', '5', '1');
INSERT INTO `aoa_sys_menu` VALUES ('26', '1', null, 'glyphicon-record', '流程审核', '/audit', '5', '2');
INSERT INTO `aoa_sys_menu` VALUES ('27', '1', null, 'glyphicon-record', '通知管理', '/infrommanage', '6', '1');
INSERT INTO `aoa_sys_menu` VALUES ('28', '1', null, 'glyphicon-record', '通知列表', '/infromlist', '6', '2');
INSERT INTO `aoa_sys_menu` VALUES ('29', '1', null, 'glyphicon-record', '账号管理', '/accountmanage', '7', '1');
INSERT INTO `aoa_sys_menu` VALUES ('30', '1', null, 'glyphicon-record', '邮件管理', '/mail', '7', '2');
INSERT INTO `aoa_sys_menu` VALUES ('31', '1', null, 'glyphicon-record', '任务管理', '/taskmanage', '8', '1');
INSERT INTO `aoa_sys_menu` VALUES ('32', '1', null, 'glyphicon-record', '我的任务', '/mytask', '8', '2');
INSERT INTO `aoa_sys_menu` VALUES ('33', '1', null, 'glyphicon-record', '日程管理', '/daymanage', '9', '1');
INSERT INTO `aoa_sys_menu` VALUES ('34', '1', null, 'glyphicon-record', '我的日历', '/daycalendar', '9', '2');
INSERT INTO `aoa_sys_menu` VALUES ('35', '1', null, 'glyphicon-record', '计划管理', '/planview', '10', '1');
INSERT INTO `aoa_sys_menu` VALUES ('36', '1', null, 'glyphicon-record', '计划报表', '/myplan', '10', '2');
INSERT INTO `aoa_sys_menu` VALUES ('37', '1', null, 'glyphicon-record', '文件管理', '/filemanage', '11', '1');
INSERT INTO `aoa_sys_menu` VALUES ('38', '1', null, 'glyphicon-record', '笔记管理', '/noteview', '12', '0');
INSERT INTO `aoa_sys_menu` VALUES ('39', '1', null, 'glyphicon-earphone', '通讯录', '#', '0', '13');
INSERT INTO `aoa_sys_menu` VALUES ('40', '1', null, 'glyphicon-record', '通讯录', '/addrmanage', '39', '1');
INSERT INTO `aoa_sys_menu` VALUES ('41', '1', null, 'glyphicon-record', '我的管理', '/chatmanage', '13', '1');
INSERT INTO `aoa_sys_menu` VALUES ('42', '1', null, 'glyphicon-record', '讨论区列表', '/chatlist', '13', '2');
INSERT INTO `aoa_sys_menu` VALUES ('67', '1', null, 'glyphicon-record', '考勤列表', '/attendcelist', '4', '4');
INSERT INTO `aoa_sys_menu` VALUES ('76', null, null, '21', '12', '21', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('77', '0', null, '额', '额', 'e', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('78', '0', null, '312', '31', '312', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('79', '0', null, '放大', '范德萨', '富士达', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('80', null, null, '富士达', '任务', '富士达', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('81', '1', null, '富士达', '任务', '富士达', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('82', '1', null, '21', '12', '21', null, null);
INSERT INTO `aoa_sys_menu` VALUES ('86', '1', null, 'glyphicon-record', 'fds', 'fdsa', '999', '0');
INSERT INTO `aoa_sys_menu` VALUES ('87', '1', null, 'glyphicon-record', '1', '1', '999', '0');
INSERT INTO `aoa_sys_menu` VALUES ('88', '0', null, 'glyphicon-record', '1', '1', '999', '0');
INSERT INTO `aoa_sys_menu` VALUES ('89', '1', null, 'glyphicon-record', '超级管理员', '/adminmanage', '13', '0');
INSERT INTO `aoa_sys_menu` VALUES ('90', '1', null, 'glyphicon-record', '新建流程', '/xinxeng', '5', '0');
INSERT INTO `aoa_sys_menu` VALUES ('91', '0', null, 'glyphicon-record', '相亲', '/', '13', '0');

-- ----------------------------
-- Table structure for aoa_task_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_task_list`;
CREATE TABLE `aoa_task_list` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_cancel` int(11) DEFAULT '0',
  `is_top` int(11) DEFAULT '0',
  `modify_time` datetime DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `star_time` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `task_describe` varchar(255) NOT NULL,
  `ticking` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `task_push_user_id` bigint(20) DEFAULT NULL,
  `reciverlist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK7qch0fh6s2y73dvngy1m87aw7` (`task_push_user_id`),
  CONSTRAINT `FK7qch0fh6s2y73dvngy1m87aw7` FOREIGN KEY (`task_push_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_task_list
-- ----------------------------
INSERT INTO `aoa_task_list` VALUES ('1', '无法把淘宝', '2019-09-10 00:00:00', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '5', '入股', null, '24日', '3', '1', '罗密欧');
INSERT INTO `aoa_task_list` VALUES ('13', '噁7ikea', '2019-11-24 12:48:55', '1', '1', '2019-10-27 16:11:47', '2019-10-27 16:11:47', '2019-10-20 09:54:59', '5', '6uj', null, '熱土啊u就', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('14', '', '2019-11-24 12:48:55', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '給我如果 ', null, '的v我如果1111', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('19', 'tttbthhry', '2019-11-24 12:48:55', '1', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', 'ergget', null, '啦啦啦啦绿绿绿绿绿', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('20', '1', '2019-11-24 12:48:55', '1', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '1', null, '1', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('21', '31', '2019-11-24 12:48:55', '1', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '312', null, '噼噼啪啪铺铺铺铺', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('26', '犯得上', '2019-11-24 12:48:55', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '富士達', null, '飛灑', '3', '1', '伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('27', '', '2019-11-24 12:48:55', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', 'FDSA ', null, '的方法', '4', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('30', '', '2019-11-24 12:48:55', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '多对多', null, '的', '4', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('31', '', '2019-11-24 12:48:55', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '点点滴滴', null, '凄凄切切', '3', '1', '朱丽叶;伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('32', '', '2019-11-24 12:48:55', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '少时诵诗书', null, '凄凄切切', '3', '4', 'soli;红之花');
INSERT INTO `aoa_task_list` VALUES ('33', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '密密麻麻', null, '哈哈哈', '3', '4', '红之花');
INSERT INTO `aoa_task_list` VALUES ('34', ' 烦死哒', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '烦死哒大多数', null, '范德萨类型', '3', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('35', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '反反复复付', null, '男男女女女', '3', '1', '朱丽叶;伊丽莎白;小李父斯基');
INSERT INTO `aoa_task_list` VALUES ('36', '', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', '啦啦啦啦绿绿绿', null, '斤斤计较军军', '3', '1', '朱丽叶;伊丽莎白;小李父斯基');
INSERT INTO `aoa_task_list` VALUES ('37', '', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '巴巴爸爸', null, '啦啦啦啦木木木木', '3', '1', '朱丽叶;伊丽莎白;小李父斯基');
INSERT INTO `aoa_task_list` VALUES ('38', '123', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '231', null, '221', '3', '1', '伊丽莎白');
INSERT INTO `aoa_task_list` VALUES ('39', '', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '3', 'he疼合同号', null, '的vzfbhtrhet', '3', '4', '甄嬛;无双');
INSERT INTO `aoa_task_list` VALUES ('40', '地方撒', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '5', '的说法', null, '发给', '3', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('41', 'nicw', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '完成了', null, '哈哈', '3', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('42', '', '2019-10-23 23:12:57', '0', '1', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '5', '已经完成', null, '以完成', '3', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('43', '完成', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '任务完成', null, '任务 ', '3', '5', '盛如思;李楚堂');
INSERT INTO `aoa_task_list` VALUES ('44', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', 'ok', null, '这个人已经完成', '3', '5', '盛如思;李楚堂;支晓璇');
INSERT INTO `aoa_task_list` VALUES ('45', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', 'ok', null, 'ok', '3', '3', 'soli;红之花');
INSERT INTO `aoa_task_list` VALUES ('46', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', 'ok', null, 'ok', '3', '6', '薛邵琴;光宇');
INSERT INTO `aoa_task_list` VALUES ('47', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '月也彷徨', null, '如今灯下闲读', '3', '6', '光宇;朱茵');
INSERT INTO `aoa_task_list` VALUES ('48', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:45', '2019-10-20 09:55:42', '2019-10-20 09:54:59', '7', '家乡月光', null, '难诉衷肠', '3', '4', '甄姬2;甄嬛');
INSERT INTO `aoa_task_list` VALUES ('49', '', '2019-10-23 23:12:57', '0', '0', '2019-10-22 23:13:10', '2019-10-22 23:13:10', '2019-10-22 23:12:57', '3', '6786876879', null, '322763786', '3', '1', '朱丽叶');
INSERT INTO `aoa_task_list` VALUES ('50', '', '2019-10-23 23:13:27', '0', '0', '2019-10-22 23:13:45', '2019-10-22 23:13:45', '2019-10-22 23:13:27', '4', '6786786786', null, '6786786', '4', '1', '朱丽叶');

-- ----------------------------
-- Table structure for aoa_task_logger
-- ----------------------------
DROP TABLE IF EXISTS `aoa_task_logger`;
CREATE TABLE `aoa_task_logger` (
  `logger_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `logger_ticking` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `logger_statusid` int(11) DEFAULT NULL,
  PRIMARY KEY (`logger_id`),
  KEY `FK5gu0thq54i7ujc6cict009h4y` (`task_id`),
  CONSTRAINT `FK5gu0thq54i7ujc6cict009h4y` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_task_logger
-- ----------------------------
INSERT INTO `aoa_task_logger` VALUES ('1', '2019-09-15 19:54:58', '土豪阅海万家无可', '19', '罗密欧', null);
INSERT INTO `aoa_task_logger` VALUES ('3', '2019-09-15 21:17:31', 'heenrnm', '19', '罗密欧', '7');
INSERT INTO `aoa_task_logger` VALUES ('4', '2019-09-15 21:19:13', 'ujw5ukj5wuk', '19', '罗密欧', '7');
INSERT INTO `aoa_task_logger` VALUES ('5', '2019-09-15 21:22:34', 'yukd68kd6', '19', '罗密欧', '7');
INSERT INTO `aoa_task_logger` VALUES ('6', '2019-09-15 21:23:19', 'fwrgqetbh', '19', '罗密欧', '7');
INSERT INTO `aoa_task_logger` VALUES ('17', '2019-09-19 21:08:06', '点点滴滴', '14', '罗密欧', '5');
INSERT INTO `aoa_task_logger` VALUES ('29', '2019-09-22 13:42:21', '立刻开口', '1', '罗密欧', '5');
INSERT INTO `aoa_task_logger` VALUES ('30', '2019-10-15 14:04:36', '', '35', '小李父斯基', '4');
INSERT INTO `aoa_task_logger` VALUES ('31', '2019-10-15 14:09:01', '', '39', '甄嬛', '4');
INSERT INTO `aoa_task_logger` VALUES ('32', '2019-02-09 00:51:03', '', '34', '罗密欧', '7');
INSERT INTO `aoa_task_logger` VALUES ('33', '2019-10-25 18:58:05', '', '39', '垃圾', '4');
INSERT INTO `aoa_task_logger` VALUES ('34', '2019-10-25 18:58:12', '', '39', '垃圾', '6');
INSERT INTO `aoa_task_logger` VALUES ('35', '2019-10-27 15:58:35', '', '1', 'admin', '4');
INSERT INTO `aoa_task_logger` VALUES ('36', '2019-10-27 15:58:54', '', '1', 'admin', '5');
INSERT INTO `aoa_task_logger` VALUES ('37', '2019-10-27 17:01:29', '', '13', 'admin', '3');
INSERT INTO `aoa_task_logger` VALUES ('38', '2019-10-27 17:03:30', '还行', '13', 'admin', '5');

-- ----------------------------
-- Table structure for aoa_task_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_task_user`;
CREATE TABLE `aoa_task_user` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `task_recive_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2714kl5ywm5chya4dxte8c788` (`task_id`),
  KEY `FK654dfo0oouy3fk07fs7rqo4ld` (`task_recive_user_id`),
  CONSTRAINT `FK2714kl5ywm5chya4dxte8c788` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`),
  CONSTRAINT `FK654dfo0oouy3fk07fs7rqo4ld` FOREIGN KEY (`task_recive_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_task_user
-- ----------------------------
INSERT INTO `aoa_task_user` VALUES ('1', '5', '1', '1');
INSERT INTO `aoa_task_user` VALUES ('6', '7', '19', '2');
INSERT INTO `aoa_task_user` VALUES ('7', '7', '19', '3');
INSERT INTO `aoa_task_user` VALUES ('8', '3', '20', '2');
INSERT INTO `aoa_task_user` VALUES ('9', '3', '20', '3');
INSERT INTO `aoa_task_user` VALUES ('10', '7', '21', '2');
INSERT INTO `aoa_task_user` VALUES ('21', '7', '21', '3');
INSERT INTO `aoa_task_user` VALUES ('24', '5', '13', '2');
INSERT INTO `aoa_task_user` VALUES ('25', '5', '13', '3');
INSERT INTO `aoa_task_user` VALUES ('26', '7', '14', '2');
INSERT INTO `aoa_task_user` VALUES ('27', '7', '14', '3');
INSERT INTO `aoa_task_user` VALUES ('28', '3', '26', '3');
INSERT INTO `aoa_task_user` VALUES ('29', '3', '27', '2');
INSERT INTO `aoa_task_user` VALUES ('32', '3', '30', '2');
INSERT INTO `aoa_task_user` VALUES ('33', '3', '31', '2');
INSERT INTO `aoa_task_user` VALUES ('34', '3', '31', '3');
INSERT INTO `aoa_task_user` VALUES ('36', '3', '32', '5');
INSERT INTO `aoa_task_user` VALUES ('37', '3', '32', '6');
INSERT INTO `aoa_task_user` VALUES ('38', '3', '33', '6');
INSERT INTO `aoa_task_user` VALUES ('39', '7', '34', '2');
INSERT INTO `aoa_task_user` VALUES ('40', '3', '35', '2');
INSERT INTO `aoa_task_user` VALUES ('41', '3', '35', '3');
INSERT INTO `aoa_task_user` VALUES ('42', '4', '35', '4');
INSERT INTO `aoa_task_user` VALUES ('43', '3', '36', '2');
INSERT INTO `aoa_task_user` VALUES ('44', '3', '36', '3');
INSERT INTO `aoa_task_user` VALUES ('45', '3', '36', '4');
INSERT INTO `aoa_task_user` VALUES ('46', '7', '37', '2');
INSERT INTO `aoa_task_user` VALUES ('47', '7', '37', '3');
INSERT INTO `aoa_task_user` VALUES ('48', '7', '37', '4');
INSERT INTO `aoa_task_user` VALUES ('49', '7', '38', '3');
INSERT INTO `aoa_task_user` VALUES ('50', '6', '39', '9');
INSERT INTO `aoa_task_user` VALUES ('51', '3', '39', '10');
INSERT INTO `aoa_task_user` VALUES ('52', '5', '40', '2');
INSERT INTO `aoa_task_user` VALUES ('53', '7', '41', '2');
INSERT INTO `aoa_task_user` VALUES ('54', '5', '42', '2');
INSERT INTO `aoa_task_user` VALUES ('55', '7', '43', '14');
INSERT INTO `aoa_task_user` VALUES ('56', '7', '43', '15');
INSERT INTO `aoa_task_user` VALUES ('57', '7', '44', '14');
INSERT INTO `aoa_task_user` VALUES ('58', '7', '44', '15');
INSERT INTO `aoa_task_user` VALUES ('59', '7', '44', '16');
INSERT INTO `aoa_task_user` VALUES ('60', '7', '45', '5');
INSERT INTO `aoa_task_user` VALUES ('61', '7', '45', '6');
INSERT INTO `aoa_task_user` VALUES ('62', '7', '46', '17');
INSERT INTO `aoa_task_user` VALUES ('63', '7', '46', '18');
INSERT INTO `aoa_task_user` VALUES ('64', '7', '47', '18');
INSERT INTO `aoa_task_user` VALUES ('65', '7', '47', '19');
INSERT INTO `aoa_task_user` VALUES ('66', '7', '48', '8');
INSERT INTO `aoa_task_user` VALUES ('67', '7', '48', '9');
INSERT INTO `aoa_task_user` VALUES ('68', '3', '49', '2');
INSERT INTO `aoa_task_user` VALUES ('69', '4', '50', '2');

-- ----------------------------
-- Table structure for aoa_traffic
-- ----------------------------
DROP TABLE IF EXISTS `aoa_traffic`;
CREATE TABLE `aoa_traffic` (
  `traffic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(255) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `reach_name` varchar(255) DEFAULT NULL,
  `seat_type` varchar(255) DEFAULT NULL,
  `traffic_money` double DEFAULT NULL,
  `traffic_name` varchar(255) DEFAULT NULL,
  `evection_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`),
  KEY `FKt5gk2fg5t802gnq8y03p9e7di` (`evection_id`),
  KEY `FKejkemcx58mfj2lgi2jo2rlih3` (`user_name`),
  CONSTRAINT `FKejkemcx58mfj2lgi2jo2rlih3` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt5gk2fg5t802gnq8y03p9e7di` FOREIGN KEY (`evection_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_traffic
-- ----------------------------
INSERT INTO `aoa_traffic` VALUES ('1', '长沙', '2017-10-13 17:01:11', '上海', '二等座', '500', '高铁', '1', '18');
INSERT INTO `aoa_traffic` VALUES ('2', '长沙', '2017-10-16 00:10:06', '广州', '商务舱', '1200', '飞机', '2', '18');
INSERT INTO `aoa_traffic` VALUES ('3', '广州', '2017-10-18 00:11:12', '长沙', '商务舱', '1200', '飞机', '2', '18');
INSERT INTO `aoa_traffic` VALUES ('4', 'vv', '2017-10-18 20:12:25', 'v', 'vv', '140', 'vv', '3', '10');

-- ----------------------------
-- Table structure for aoa_type_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_type_list`;
CREATE TABLE `aoa_type_list` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_color` varchar(255) DEFAULT NULL,
  `type_model` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `sort_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_type_list
-- ----------------------------
INSERT INTO `aoa_type_list` VALUES ('1', 'red', 'aoa_mailnumber', '系统邮件', '0');
INSERT INTO `aoa_type_list` VALUES ('2', 'red', 'aoa_mailnumber', '公司邮件', '1');
INSERT INTO `aoa_type_list` VALUES ('3', 'red', 'aoa_task_list', '公事', '0');
INSERT INTO `aoa_type_list` VALUES ('4', 'red', 'aoa_task_list', '私事', '1');
INSERT INTO `aoa_type_list` VALUES ('5', 'red', 'aoa_note_list', '我的笔记', '0');
INSERT INTO `aoa_type_list` VALUES ('6', 'red', 'aoa_note_list', '公司笔记', '1');
INSERT INTO `aoa_type_list` VALUES ('7', 'red', 'aoa_note_list', '共享笔记', '2');
INSERT INTO `aoa_type_list` VALUES ('8', 'red', 'aoa_attends_list', '上班', '1');
INSERT INTO `aoa_type_list` VALUES ('9', 'red', 'aoa_attends_list', '下班', '2');
INSERT INTO `aoa_type_list` VALUES ('10', 'red', 'inform', '公告', '0');
INSERT INTO `aoa_type_list` VALUES ('11', 'red', 'inform', '通知', '1');
INSERT INTO `aoa_type_list` VALUES ('12', 'red', 'inform', '投票', '2');
INSERT INTO `aoa_type_list` VALUES ('13', 'red', 'aoa_plan_list', '日计划', '0');
INSERT INTO `aoa_type_list` VALUES ('14', 'red', 'aoa_plan_list', '周计划', '1');
INSERT INTO `aoa_type_list` VALUES ('15', 'red', 'aoa_plan_list', '月计划', '2');
INSERT INTO `aoa_type_list` VALUES ('16', 'red', 'aoa_in_mail_list', '邮件', '0');
INSERT INTO `aoa_type_list` VALUES ('17', 'red', 'aoa_in_mail_list', '通知', '1');
INSERT INTO `aoa_type_list` VALUES ('18', 'red', 'aoa_in_mail_list', '公告', '2');
INSERT INTO `aoa_type_list` VALUES ('19', 'label-danger', 'chat', '公告', '0');
INSERT INTO `aoa_type_list` VALUES ('20', 'label-success', 'chat', '讨论', '1');
INSERT INTO `aoa_type_list` VALUES ('21', 'label-warning', 'chat', '投票', '2');
INSERT INTO `aoa_type_list` VALUES ('22', 'red', 'aoa_process_list', '正常', '0');
INSERT INTO `aoa_type_list` VALUES ('23', 'red', 'aoa_process_list', '重要', '1');
INSERT INTO `aoa_type_list` VALUES ('24', 'red', 'aoa_process_list', '紧急', '2');
INSERT INTO `aoa_type_list` VALUES ('25', 'red', 'aoa_bursement', '银行卡', '0');
INSERT INTO `aoa_type_list` VALUES ('26', 'red', 'aoa_bursement', '现金', '1');
INSERT INTO `aoa_type_list` VALUES ('27', 'red', 'aoa_bursement', '其他', '2');
INSERT INTO `aoa_type_list` VALUES ('28', 'red', 'aoa_evection', '销售拜访', '0');
INSERT INTO `aoa_type_list` VALUES ('29', 'red', 'aoa_evection', '售前支持', '1');
INSERT INTO `aoa_type_list` VALUES ('30', 'red', 'aoa_evection', '项目支持', '2');
INSERT INTO `aoa_type_list` VALUES ('31', 'red', 'aoa_evection', '客服外出', '3');
INSERT INTO `aoa_type_list` VALUES ('32', 'red', 'aoa_evection', '其他', '4');
INSERT INTO `aoa_type_list` VALUES ('33', 'red', 'aoa_overtime', '工作日', '0');
INSERT INTO `aoa_type_list` VALUES ('34', 'red', 'aoa_overtime', '休息日', '1');
INSERT INTO `aoa_type_list` VALUES ('35', 'red', 'aoa_overtime', '节假日', '2');
INSERT INTO `aoa_type_list` VALUES ('36', 'red', 'aoa_overtime', '其他', '3');
INSERT INTO `aoa_type_list` VALUES ('37', '1、年假：工作满一年以上每年可享受带薪年假，当年的年假使用期至次年3月1日止；未经用人单位批准，员工不得自行休假。', 'aoa_holiday', '年假', '7');
INSERT INTO `aoa_type_list` VALUES ('38', '2、事假：按照平均工作日扣发薪资（包含工资及各类补贴福利）；单次事假原则上不应超过3天，当年累计事假超过15天的视为主动放弃继续履行岗位职责的权利，特殊情况除外。  ', 'aoa_holiday', '事假', '4');
INSERT INTO `aoa_type_list` VALUES ('39', '3、病假：两天及以上病假必须持工作地二级甲等以上医院相关病假证明单或就医记录证明，否则无法享受病假工资；单次病假超过5天，应当持有工作所在地三级甲等医院提供的病假证明单。原则上当年累计病假超过15天应视为不具备继续履行岗位职责身体条件，特殊情况除外。  ', 'aoa_holiday', '病假', null);
INSERT INTO `aoa_type_list` VALUES ('40', '4、婚假：婚假为十天，包含休息日，请婚假必须持结婚证明，结婚证必须在泛微工作期间领取，且婚假必须在一年内使用完毕，不得分次休假，国家或地方政府有其他规定的按照当地要求执行；  ', 'aoa_holiday', '婚假', '10');
INSERT INTO `aoa_type_list` VALUES ('41', '5、产假及哺乳假：按国家及地方法律法规执行，包含休息日与法定节假日；  ', 'aoa_holiday', '产假及哺乳假', '180');
INSERT INTO `aoa_type_list` VALUES ('42', '6、陪产假：泛微正式男性员工在工作期间配偶生育的，可凭子女出生证明，享受十个自然日陪产假。  ', 'aoa_holiday', '陪产假', '10');
INSERT INTO `aoa_type_list` VALUES ('43', '7、丧假：直系亲属：配偶、子女、父母可享受三天，岳父母、祖父母、外祖父母可享受一天', 'aoa_holiday', '丧假', null);
INSERT INTO `aoa_type_list` VALUES ('44', '', 'aoa_schedule_list', '日程提醒', '0');
INSERT INTO `aoa_type_list` VALUES ('45', '', 'aoa_schedule_list', '假日安排', '1');
INSERT INTO `aoa_type_list` VALUES ('46', 'red', 'aoa_attends_list', '请假', '3');
INSERT INTO `aoa_type_list` VALUES ('47', 'red', 'aoa_attends_list', '出差', '4');

-- ----------------------------
-- Table structure for aoa_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_user`;
CREATE TABLE `aoa_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `father_id` bigint(20) DEFAULT NULL,
  `hire_time` datetime DEFAULT NULL,
  `user_idcard` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `is_lock` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `user_school` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `theme_skin` varchar(255) DEFAULT NULL,
  `user_edu` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sign` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `superman` int(11) DEFAULT NULL,
  `holiday` int(11) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKt0vmot9xfbgq14oyij0gwh3gh` (`dept_id`),
  KEY `FKadtg9xju7q1ijcyxlkl9gwv5t` (`position_id`),
  KEY `FKl738mmblfx0uia6671rl17cj9` (`role_id`),
  CONSTRAINT `FKadtg9xju7q1ijcyxlkl9gwv5t` FOREIGN KEY (`position_id`) REFERENCES `aoa_position` (`position_id`),
  CONSTRAINT `FKl738mmblfx0uia6671rl17cj9` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`),
  CONSTRAINT `FKt0vmot9xfbgq14oyij0gwh3gh` FOREIGN KEY (`dept_id`) REFERENCES `aoa_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_user
-- ----------------------------
INSERT INTO `aoa_user` VALUES ('1', '湖南工业大学', '62175555555555444', '1986-02-03 00:00:00', '923219711@qq.com', '0', '2017-09-22 19:35:40', '510322198602030429', 'df4988d0-d26f-45da-952a-6b259c342f99.jpg', '0', null, null, null, null, '123456', 'lyh-god神', '2000', '湖南工业大学', '男', 'purple', '本科', 'admin', '好好', '13272143450', '1', '3', '1', '1', null, 'luomiou');
INSERT INTO `aoa_user` VALUES ('2', '中国广东', '62175555555555444', '1994-03-28 00:00:00', 'aaluoxiang@foxmail.com', '2', '2008-03-06 00:00:00', '510322199403280426', '9c6d3827-5325-4cf3-acad-9c1e4d406ea4.jpg', '0', null, null, null, null, '123456', '灭霸', '1000', '中南大学', '女', 'blue', '硕士', 'thanos', '我是天命', '13203318185', '1', '3', '2', '0', null, 'mieba');
INSERT INTO `aoa_user` VALUES ('3', '中国广东', '6217002940101998752', '1995-03-05 00:00:00', '255@qq.com', '2', '2009-05-24 00:00:00', '510322199503052485', 'a.jpg', '0', null, null, null, null, '123456', '芳芳', '1000', '湖南大学', '女', 'yellow', '硕士', '伊丽莎白', '好学', '18683688154', '1', '3', '3', '0', null, 'yilishabai');
INSERT INTO `aoa_user` VALUES ('4', '清华大学', '62175555555555444', '1996-12-18 00:00:00', '164@qq.com', '4', '2013-09-19 16:52:40', '432524199612188018', '54b334d6-e4df-43dd-867b-5a6e8bf2328b.jpg', '0', null, null, null, null, '123456', '比尔盖茨', '8000', '清华大学', '男', 'blue', '硕士', 'Bill', '老子天下第一', '18173328888', '2', '4', '4', '0', null, 'biergaici');
INSERT INTO `aoa_user` VALUES ('5', '中南大学', '7777', '1996-09-19 16:56:50', '173@126.com', '3', '2014-09-19 16:57:21', '432524199612188016', 'a.jpg', '0', null, null, null, null, '123456', '小罗', '4000', '中南大学', '男', 'blue', '博士', 'soli', 'iinteresting', '18173328976', '3', '5', '4', '0', null, 'soli');
INSERT INTO `aoa_user` VALUES ('6', '泰山西路', '9999', '1997-09-19 16:59:29', '188@qq.com', '3', '2014-09-19 17:00:21', '432524199712188019', 'a.jpg', '0', null, null, null, null, '123456', '小红', '3700', '上海交大', '女', 'green', '本科', '红之花', '每天美一点', '18868688866', '4', '6', '4', '0', null, 'hongzhihua');
INSERT INTO `aoa_user` VALUES ('7', '湖南工业大学', '62175555555555444', '1997-12-18 00:00:00', '188@qq.com', '3', '2017-10-05 15:20:39', '432524199712188020', 'd91f65bb-c671-4e34-9a63-3170a3fc9da7.jpg', '0', null, null, null, null, '123456', '库克', '5000', '湖南工业大学', '男', 'blue', '本科', 'kuke', null, '13117336953', '5', '7', '4', '0', null, 'kuke');
INSERT INTO `aoa_user` VALUES ('8', '中国广东', '62175555555555444', '1997-12-18 00:00:00', '188@qq.com', '4', '2017-10-02 15:20:39', '432524199712188021', '9181012b-3d4a-4de4-b440-d0cb9f2d1a35.jpg', '0', null, null, null, null, '123456', 'venom', '5000', '湖南工业大学', '女', 'blue', '本科', 'venom', 'i am venom', '13117336954', '20', '28', '5', '0', null, 'zhengji2');
INSERT INTO `aoa_user` VALUES ('9', '中国广东', '5132141321351555', '1997-12-18 00:00:00', '55@qq.com', '4', '2017-10-11 14:23:32', '432524199712188021', 'bb393840-45fa-4981-ad01-8c700922d291.jpg', '0', null, null, null, null, '123456', '小花', '3111', '湖南工业大学', '女', 'blue', '本科', '垃圾', '甄姬甄姬真垃圾', '13034507214', '2', '11', '5', '0', null, 'zhenghuan');
INSERT INTO `aoa_user` VALUES ('10', '清华大学', '4444', '2017-10-18 14:26:17', '66@qq.com', '4', '2017-10-07 14:26:37', '432524199712188021', 'a.jpg', '0', null, null, null, null, '123456', '花红', '2555', '湖大', '女', 'green', '本科', '无双', null, '13117336954', '2', '12', '5', '0', null, 'wushuang');
INSERT INTO `aoa_user` VALUES ('11', '中南大学', '6666', '2017-10-07 14:27:54', '1057@qq.com', '4', '2017-10-07 14:28:06', '5824566822688', 'a.jpg', '0', null, null, null, null, '123456', '兰瑞', '5000', '中南', '男', 'yellow', '硕士', '瑞王', null, '13117336953', '2', '13', '5', '0', null, 'ruiwang');
INSERT INTO `aoa_user` VALUES ('12', '泰山西路', '62175555555555444', '1986-02-03 00:00:00', 'aaluoxiang@foxmail.com', '4', '2014-09-19 16:57:21', '510322198602030429', 'a.jpg', '0', null, null, null, null, '123456', '雨果', '2000', '湖南工业大学', '男', 'red', '本科', '丹琪', null, '13117336953', '2', '14', '5', '0', null, 'danqi');
INSERT INTO `aoa_user` VALUES ('13', '湖南工业大学', '12345', '1994-03-28 00:00:00', '255@qq.com', '4', '2014-09-19 17:00:21', '510322199403280426', 'b.jpg', '0', null, null, null, null, '123456', '毛羽', '1000', '中南大学', '女', 'blue', '硕士', '于彤', null, '13117336954', '2', '15', '5', '0', null, 'yutong');
INSERT INTO `aoa_user` VALUES ('14', '中国广东', '123478', '1995-03-05 00:00:00', '164@qq.com', '5', '2017-10-05 15:20:39', '510322199503052485', 'b.jpg', '0', null, null, null, null, '123456', '黑椰', '1000', '湖南大学', '女', 'green', '硕士', '盛如思', null, '18868688866', '3', '21', '5', '0', null, 'shengrusi');
INSERT INTO `aoa_user` VALUES ('15', '中国广东', '6666', '1994-09-19 16:52:11', '173@126.com', '5', '2017-10-02 15:20:39', '432524199612188018', 'b.jpg', '0', null, null, null, null, '123456', '车寿山', '3000', '清华大学', '男', 'yellow', '硕士', '李楚堂', null, '13117336953', '3', '22', '5', '0', null, 'lichutang');
INSERT INTO `aoa_user` VALUES ('16', '清华大学', '7777', '1996-09-19 16:56:50', '188@qq.com', '5', '2017-10-11 14:23:32', '432524199612188016', 'b.jpg', '0', null, null, null, null, '123456', '白秋生', '4000', '中南大学', '男', 'red', '博士', '支晓璇', null, '13117336954', '3', '23', '5', '0', null, 'zhixiaoxuan');
INSERT INTO `aoa_user` VALUES ('17', '中南大学', '9999', '1997-09-19 16:59:29', '188@qq.com', '6', '2017-10-07 14:26:37', '432524199712188019', 'b.jpg', '0', null, null, null, null, '123456', '饶子和', '3700', '上海交大', '女', 'blue', '本科', '薛邵琴', null, '13034507214', '4', '16', '5', '0', null, 'xueshanqin');
INSERT INTO `aoa_user` VALUES ('18', '泰山西路', '6666', '2017-10-01 15:20:20', '188@qq.com', '6', '2017-10-07 14:28:06', '432524199712188020', 'b.jpg', '0', null, null, null, null, '123456', '王秋阳', '5000', '湖南工业大学', '男', 'green', '本科', '光宇', null, '13117336954', '4', '17', '5', '0', null, 'guangyu');
INSERT INTO `aoa_user` VALUES ('19', '湖南工业大学', '62175555555555444', '2017-10-04 15:20:20', '55@qq.com', '6', '2014-09-19 16:57:21', '432524199712188021', 'b.jpg', '0', null, null, null, null, '123456', '叶知秋', '5000', '湖南工业大学', '女', 'yellow', '本科', '朱茵', null, '13117336953', '4', '18', '5', '0', null, 'zhuyin');
INSERT INTO `aoa_user` VALUES ('20', '中国广东', '5555444', '2017-10-03 14:23:10', '66@qq.com', '6', '2014-09-19 16:57:21', '432524199712188021', 'fiveman.jpeg', '0', null, null, null, null, '123456', '刘湛秋', '3111', '湖南工业大学', '女', 'red', '本科', '朱颖', null, '13117336953', '4', '19', '5', '0', null, 'zhuyin');
INSERT INTO `aoa_user` VALUES ('21', '中国广东', '4444', '2017-10-18 14:26:17', '88@qq.com', '6', '2014-09-19 16:57:21', '432524199712188021', 'fourman.jpeg', '0', null, null, null, null, '123456', '李发友', '2555', '湖大', '女', 'blue', '本科', '杨晓木', null, '18868688866', '4', '20', '5', '0', null, 'yangxiaomu');
INSERT INTO `aoa_user` VALUES ('22', '清华大学', '6666', '2017-10-07 14:27:54', '1057@qq.com', '7', '2014-09-19 16:57:21', '5824566822688', 'nineman.jpeg', '0', null, null, null, null, '123456', '金燕西', '5000', '中南', '男', 'green', '硕士', '陈晓吉', null, '13117336953', '5', '8', '5', '0', null, 'chenxiaoji');
INSERT INTO `aoa_user` VALUES ('23', '中南大学', '6666\r\n62175555555555444\r\n12345', '2017-10-07 14:27:54', 'aaluoxiang@foxmail.com', '7', '2014-09-19 16:57:21', '25852255', 'oneman.jpeg', '0', null, null, null, null, '123456', '修璃', '6000', '中南', '女', 'yellow', '博士', '刘恋', '', '13117336954', '5', '9', '5', '0', null, 'liulian');
INSERT INTO `aoa_user` VALUES ('24', '中南大学', '66666217555555555544412345', '1986-02-03 00:00:00', 'aaluoxiang@foxmail.com', '7', '2014-09-19 16:57:21', '510322198602030429', '7a506f4b-ed4e-4175-8d14-dab63cc0094a.jpg', '0', null, null, null, null, '123456', '柳岩', '6000', '中南', '女', 'blue', '博士', 'liuyan', '', '13117336954', '5', '9', '5', '0', null, 'liuyan');
INSERT INTO `aoa_user` VALUES ('25', '湖南工业大学', '62175555555555444', '2017-10-04 15:20:20', '55@qq.com', '6', '2014-09-19 16:57:21', '432524199712188021', '74c43897-d08b-409d-8b90-7fa3d681fef5.jpg', '0', null, null, null, null, '123456', '张秋', '5000', '湖南工业大学', '女', 'yellow', '本科', '张秋', null, '13117336953', '4', '18', '5', '0', null, 'zhangqiu');
INSERT INTO `aoa_user` VALUES ('26', '清华大学', '7777', '1996-09-19 16:56:50', '188@qq.com', '5', '2017-10-11 14:23:32', '432524199612188016', 'sevenman.jpeg', '0', null, null, null, null, '123456', '张秋生', '4000', '中南大学', '男', 'red', '博士', '张秋生', null, '13117336954', '3', '23', '5', '0', null, 'zhangqiusheng');
INSERT INTO `aoa_user` VALUES ('27', '中国广东', '4444', '2017-10-18 14:26:17', '88@qq.com', '6', '2014-09-19 16:57:21', '432524199712188021', 'fourman.jpeg', '0', null, null, null, null, '123456', '张宇', '2555', '湖大', '女', 'blue', '本科', '张宇', null, '18868688866', '4', '20', '5', '0', null, 'zhangyu');
INSERT INTO `aoa_user` VALUES ('28', '中国广东', '55555', '2017-10-14 21:51:42', '55@qq.com', '4', '2017-10-14 21:52:15', '432524199712188021', 'fourman.jpeg', '0', null, null, null, null, '123456', '薛之谦', '222', '湖大', '男', 'blue', '硕士', '上上签', null, '18868688866', '2', '10', '6', '0', null, 'shangshangqian');
INSERT INTO `aoa_user` VALUES ('35', 'wqasd', '6217002940101998752', '2017-10-16 00:00:00', 'qq@qq.com', null, '2017-10-16 00:00:00', '430602199501121115', null, '0', null, null, null, null, '123456', '总金办测试用户', '123213', 'asdas', '男', 'blue', 'qwewq', 'wuianan', null, '13600003532', '1', '2', '5', '0', null, null);
INSERT INTO `aoa_user` VALUES ('36', '中国广东', '62175555555555444', '2019-10-16 20:48:33', '5465456gg@163.com', '4', '2019-10-27 00:00:00', '510322199403280426', null, '0', null, null, null, null, '123456', '测试用户', '12580', '湖南工业大学', '男', 'blue', '本科', 'test', null, '13272143450', '20', '28', '5', '0', null, 'test');

-- ----------------------------
-- Table structure for aoa_user_log
-- ----------------------------
DROP TABLE IF EXISTS `aoa_user_log`;
CREATE TABLE `aoa_user_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(255) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKherb88q97dxbtcge09ii875qm` (`user_id`),
  CONSTRAINT `FKherb88q97dxbtcge09ii875qm` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3335 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_user_log
-- ----------------------------
INSERT INTO `aoa_user_log` VALUES ('3', '172.31.16.188', '2017-10-10 16:30:23', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('8', '172.31.16.188', '2017-10-10 16:42:37', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('9', '172.31.16.188', '2017-10-10 16:42:39', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('10', '172.31.16.188', '2017-10-10 16:42:47', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('11', '172.31.16.188', '2017-10-10 16:43:02', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('14', '172.31.16.188', '2017-10-10 16:47:11', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('15', '172.31.16.188', '2017-10-10 16:47:17', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('16', '172.31.16.188', '2017-10-10 16:47:51', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('17', '172.31.16.188', '2017-10-10 16:51:28', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('18', '172.31.16.188', '2017-10-10 16:51:50', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('19', '172.31.16.188', '2017-10-10 16:54:26', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('20', '172.31.16.188', '2017-10-10 16:54:28', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('21', '172.31.16.188', '2017-10-10 16:57:12', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('22', '172.31.16.188', '2017-10-10 16:57:14', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('23', '172.31.16.188', '2017-10-10 16:57:15', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('24', '192.168.43.91', '2017-10-10 17:51:24', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('25', '192.168.43.91', '2017-10-10 17:57:57', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('26', '192.168.43.91', '2017-10-10 17:59:44', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('27', '192.168.43.91', '2017-10-10 18:18:04', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('29', '192.168.43.91', '2017-10-10 21:09:55', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('30', '192.168.1.233', '2017-10-10 21:44:22', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('31', '192.168.1.233', '2017-10-10 21:44:33', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('32', '192.168.1.233', '2017-10-10 21:44:39', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('33', '192.168.1.233', '2017-10-10 21:44:43', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('34', '192.168.1.233', '2017-10-10 21:44:47', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('35', '192.168.1.233', '2017-10-10 21:45:43', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('36', '192.168.1.233', '2017-10-10 21:46:13', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('37', '192.168.1.233', '2017-10-10 21:46:15', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('38', '192.168.1.233', '2017-10-10 21:46:17', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('39', '192.168.1.233', '2017-10-10 21:46:19', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('40', '192.168.1.233', '2017-10-10 21:46:21', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('41', '192.168.1.233', '2017-10-10 21:46:23', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('42', '192.168.1.233', '2017-10-10 21:46:29', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('43', '192.168.1.233', '2017-10-10 21:46:56', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('44', '192.168.1.233', '2017-10-10 21:46:58', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('45', '192.168.1.233', '2017-10-10 21:47:00', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('46', '192.168.1.233', '2017-10-10 21:47:01', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('47', '192.168.1.233', '2017-10-10 21:47:03', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('48', '192.168.1.233', '2017-10-10 21:47:05', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('49', '192.168.1.233', '2017-10-10 21:47:07', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('60', '192.168.43.91', '2017-10-10 23:12:13', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('61', '192.168.43.91', '2017-10-10 23:12:23', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('62', '192.168.43.91', '2017-10-10 23:12:34', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('63', '192.168.43.91', '2017-10-10 23:13:12', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('65', '192.168.43.91', '2017-10-10 23:27:25', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('66', '192.168.43.91', '2017-10-10 23:27:27', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('67', '192.168.43.91', '2017-10-10 23:30:17', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('69', '192.168.43.91', '2017-10-10 23:34:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('70', '192.168.43.91', '2017-10-10 23:58:50', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('71', '192.168.43.91', '2017-10-10 23:58:52', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('72', '192.168.43.91', '2017-10-10 23:58:56', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('73', '192.168.43.91', '2017-10-10 23:58:57', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('74', '192.168.43.91', '2017-10-10 23:59:01', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('75', '192.168.43.91', '2017-10-11 00:00:03', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('76', '192.168.43.91', '2017-10-11 00:05:54', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('77', '192.168.43.91', '2017-10-11 00:07:06', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('78', '192.168.43.91', '2017-10-11 00:07:49', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('79', '192.168.43.91', '2017-10-11 00:11:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('80', '192.168.43.91', '2017-10-11 00:28:40', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('81', '192.168.43.91', '2017-10-11 00:28:50', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('82', '192.168.43.91', '2017-10-11 00:29:15', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('83', '192.168.43.91', '2017-10-11 00:29:16', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('84', '192.168.43.91', '2017-10-11 00:29:17', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('85', '192.168.43.91', '2017-10-11 00:30:11', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('86', '192.168.43.91', '2017-10-11 00:30:15', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('87', '192.168.43.91', '2017-10-11 00:30:18', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('88', '192.168.43.91', '2017-10-11 00:30:19', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('89', '192.168.43.91', '2017-10-11 00:31:36', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('90', '192.168.43.91', '2017-10-11 00:31:41', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('91', '172.20.10.2', '2017-10-11 00:46:50', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('92', '172.20.10.2', '2017-10-11 00:47:06', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('93', '172.20.10.2', '2017-10-11 00:47:11', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('94', '172.20.10.2', '2017-10-11 00:47:16', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('95', '172.20.10.2', '2017-10-11 00:47:27', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('96', '172.20.10.2', '2017-10-11 00:47:35', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('97', '172.20.10.2', '2017-10-11 00:47:49', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('98', '172.20.10.2', '2017-10-11 00:47:57', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('99', '172.20.10.2', '2017-10-11 00:48:08', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('100', '172.20.10.2', '2017-10-11 00:48:49', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('101', '172.20.10.2', '2017-10-11 00:48:54', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('102', '172.20.10.2', '2017-10-11 00:49:16', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('103', '172.27.198.122', '2017-10-11 10:13:13', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('104', '172.27.198.122', '2017-10-11 10:13:14', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('105', '172.27.198.122', '2017-10-11 10:13:17', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('106', '172.27.198.122', '2017-10-11 10:13:18', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('107', '172.27.198.122', '2017-10-11 10:13:19', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('108', '172.27.198.122', '2017-10-11 10:13:27', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('109', '172.27.198.122', '2017-10-11 10:13:28', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('110', '172.27.198.122', '2017-10-11 10:15:16', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('111', '172.27.198.122', '2017-10-11 10:15:16', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('112', '172.27.198.122', '2017-10-11 10:15:17', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('113', '172.27.198.122', '2017-10-11 10:15:18', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('114', '172.31.16.97', '2017-10-11 11:13:34', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('115', '172.31.16.97', '2017-10-11 11:13:51', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('116', '172.27.198.122', '2017-10-11 11:17:05', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('117', '192.168.43.91', '2017-10-11 12:13:52', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('118', '172.31.16.97', '2017-10-11 12:47:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('119', '172.31.16.97', '2017-10-11 12:48:01', '流程管理', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('120', '172.31.16.97', '2017-10-11 12:48:06', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('121', '172.31.16.97', '2017-10-11 12:48:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('122', '192.168.1.157', '2017-10-11 12:59:32', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('123', '192.168.1.157', '2017-10-11 12:59:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('124', '192.168.56.1', '2017-10-11 13:08:57', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('125', '192.168.1.157', '2017-10-11 13:54:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('126', '192.168.1.157', '2017-10-11 13:58:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('127', '192.168.1.235', '2017-10-11 14:02:33', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('128', '192.168.1.235', '2017-10-11 14:27:14', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('129', '192.168.1.235', '2017-10-11 14:29:04', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('130', '192.168.1.235', '2017-10-11 14:32:51', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('131', '192.168.1.235', '2017-10-11 14:34:05', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('132', '192.168.1.235', '2017-10-11 14:35:37', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('133', '192.168.1.235', '2017-10-11 14:37:36', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('134', '192.168.1.235', '2017-10-11 14:44:00', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('135', '192.168.1.235', '2017-10-11 14:44:38', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('136', '192.168.1.235', '2017-10-11 14:44:45', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('137', '192.168.56.1', '2017-10-11 15:21:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('138', '192.168.56.1', '2017-10-11 15:26:18', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('139', '192.168.56.1', '2017-10-11 15:27:24', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('140', '192.168.56.1', '2017-10-11 15:30:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('141', '192.168.1.235', '2017-10-11 15:42:32', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('142', '192.168.1.235', '2017-10-11 15:42:38', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('143', '192.168.1.235', '2017-10-11 15:42:55', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('144', '192.168.56.1', '2017-10-11 15:45:56', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('145', '192.168.1.235', '2017-10-11 15:50:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('146', '192.168.56.1', '2017-10-11 15:53:12', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('147', '192.168.56.1', '2017-10-11 15:53:33', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('148', '192.168.1.235', '2017-10-11 15:53:38', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('149', '192.168.56.1', '2017-10-11 15:53:41', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('150', '192.168.1.235', '2017-10-11 15:55:25', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('151', '192.168.1.235', '2017-10-11 15:58:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('152', '192.168.56.1', '2017-10-11 15:58:58', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('153', '192.168.56.1', '2017-10-11 16:00:23', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('154', '192.168.56.1', '2017-10-11 16:02:19', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('155', '192.168.1.235', '2017-10-11 16:02:52', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('156', '192.168.1.235', '2017-10-11 16:04:11', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('157', '192.168.56.1', '2017-10-11 16:09:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('158', '192.168.1.235', '2017-10-11 16:17:01', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('159', '172.27.198.122', '2017-10-11 16:20:05', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('160', '172.27.198.122', '2017-10-11 16:23:50', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('161', '172.27.198.122', '2017-10-11 16:25:38', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('162', '172.27.198.122', '2017-10-11 16:26:04', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('163', '172.27.198.122', '2017-10-11 16:26:32', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('164', '172.27.198.122', '2017-10-11 16:27:51', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('165', '172.27.198.122', '2017-10-11 16:30:24', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('166', '172.27.198.122', '2017-10-11 16:30:52', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('167', '172.27.198.122', '2017-10-11 16:34:38', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('168', '172.27.198.122', '2017-10-11 16:34:42', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('169', '172.27.198.122', '2017-10-11 16:35:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('170', '192.168.1.235', '2017-10-11 18:34:59', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('171', '192.168.1.235', '2017-10-11 18:35:17', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('172', '192.168.1.235', '2017-10-11 18:37:33', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('173', '192.168.1.235', '2017-10-11 18:37:58', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('174', '192.168.1.235', '2017-10-11 18:40:10', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('175', '192.168.1.157', '2017-10-11 18:59:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('176', '192.168.1.157', '2017-10-11 18:59:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('177', '192.168.1.157', '2017-10-11 18:59:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('178', '192.168.1.157', '2017-10-11 19:00:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('179', '192.168.1.157', '2017-10-11 19:01:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('180', '192.168.1.157', '2017-10-11 19:01:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('181', '192.168.1.157', '2017-10-11 19:01:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('182', '192.168.1.157', '2017-10-11 19:01:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('183', '192.168.1.157', '2017-10-11 19:01:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('184', '192.168.1.157', '2017-10-11 19:04:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('185', '192.168.1.157', '2017-10-11 19:09:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('186', '192.168.1.235', '2017-10-11 19:11:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('187', '192.168.1.235', '2017-10-11 19:11:28', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('188', '192.168.1.157', '2017-10-11 19:14:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('189', '192.168.1.157', '2017-10-11 19:14:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('190', '192.168.1.157', '2017-10-11 19:15:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('191', '192.168.1.157', '2017-10-11 19:15:24', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('192', '192.168.1.157', '2017-10-11 19:15:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('193', '192.168.1.157', '2017-10-11 19:15:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('194', '192.168.1.157', '2017-10-11 19:17:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('195', '192.168.1.157', '2017-10-11 19:17:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('196', '192.168.1.157', '2017-10-11 19:17:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('197', '192.168.1.157', '2017-10-11 19:18:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('198', '192.168.1.157', '2017-10-11 19:18:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('199', '192.168.1.157', '2017-10-11 19:19:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('200', '192.168.1.157', '2017-10-11 19:20:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('201', '192.168.1.157', '2017-10-11 19:20:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('202', '192.168.1.157', '2017-10-11 19:20:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('203', '192.168.1.157', '2017-10-11 19:21:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('204', '192.168.1.157', '2017-10-11 19:21:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('205', '192.168.1.157', '2017-10-11 19:21:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('206', '192.168.1.157', '2017-10-11 19:21:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('207', '192.168.1.157', '2017-10-11 19:23:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('208', '192.168.1.157', '2017-10-11 19:23:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('209', '192.168.1.157', '2017-10-11 19:24:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('210', '192.168.1.157', '2017-10-11 19:24:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('211', '192.168.1.157', '2017-10-11 19:24:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('212', '192.168.1.157', '2017-10-11 19:25:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('213', '192.168.1.235', '2017-10-11 19:27:30', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('214', '192.168.1.235', '2017-10-11 19:27:37', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('215', '192.168.1.235', '2017-10-11 19:29:02', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('216', '192.168.1.235', '2017-10-11 19:29:24', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('217', '192.168.1.157', '2017-10-11 19:31:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('218', '192.168.1.157', '2017-10-11 19:31:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('219', '192.168.1.157', '2017-10-11 19:32:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('220', '192.168.1.157', '2017-10-11 19:32:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('221', '192.168.1.157', '2017-10-11 19:32:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('222', '192.168.1.157', '2017-10-11 19:32:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('223', '192.168.1.157', '2017-10-11 19:32:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('224', '192.168.1.157', '2017-10-11 19:33:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('225', '192.168.1.157', '2017-10-11 19:35:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('226', '192.168.1.157', '2017-10-11 19:37:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('227', '192.168.1.157', '2017-10-11 19:37:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('228', '192.168.1.235', '2017-10-11 19:38:36', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('229', '192.168.1.157', '2017-10-11 19:39:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('230', '192.168.1.235', '2017-10-11 19:40:15', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('231', '192.168.1.157', '2017-10-11 19:40:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('232', '192.168.1.235', '2017-10-11 19:40:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('233', '192.168.1.235', '2017-10-11 19:40:32', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('234', '192.168.1.157', '2017-10-11 19:41:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('235', '192.168.1.235', '2017-10-11 19:42:08', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('236', '192.168.1.235', '2017-10-11 19:42:55', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('237', '192.168.1.235', '2017-10-11 19:43:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('238', '192.168.1.235', '2017-10-11 19:43:52', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('239', '192.168.1.157', '2017-10-11 19:45:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('240', '192.168.1.157', '2017-10-11 19:46:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('241', '192.168.1.157', '2017-10-11 19:46:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('242', '192.168.1.157', '2017-10-11 19:47:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('243', '192.168.1.235', '2017-10-11 19:48:50', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('244', '192.168.1.235', '2017-10-11 19:49:04', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('245', '192.168.1.235', '2017-10-11 19:49:16', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('246', '192.168.1.235', '2017-10-11 19:53:13', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('247', '192.168.1.157', '2017-10-11 19:54:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('248', '192.168.1.157', '2017-10-11 19:55:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('249', '192.168.1.157', '2017-10-11 19:56:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('250', '192.168.1.157', '2017-10-11 19:56:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('251', '192.168.1.157', '2017-10-11 19:59:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('252', '192.168.1.157', '2017-10-11 20:00:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('253', '192.168.1.157', '2017-10-11 20:00:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('254', '192.168.1.157', '2017-10-11 20:01:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('255', '192.168.1.157', '2017-10-11 20:03:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('256', '192.168.1.157', '2017-10-11 20:04:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('257', '192.168.1.157', '2017-10-11 20:04:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('258', '192.168.1.157', '2017-10-11 20:06:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('259', '192.168.1.157', '2017-10-11 20:06:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('260', '192.168.1.157', '2017-10-11 20:07:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('261', '192.168.1.157', '2017-10-11 20:08:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('262', '192.168.1.157', '2017-10-11 20:09:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('263', '192.168.1.157', '2017-10-11 20:13:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('264', '192.168.1.157', '2017-10-11 20:14:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('265', '192.168.1.157', '2017-10-11 20:14:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('266', '192.168.1.157', '2017-10-11 20:14:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('267', '192.168.1.157', '2017-10-11 20:14:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('268', '192.168.1.157', '2017-10-11 22:14:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('269', '192.168.56.1', '2017-10-11 22:14:33', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('270', '192.168.1.157', '2017-10-11 22:15:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('271', '192.168.56.1', '2017-10-11 22:15:04', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('272', '192.168.56.1', '2017-10-11 22:18:42', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('273', '192.168.56.1', '2017-10-11 22:19:29', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('274', '192.168.56.1', '2017-10-11 22:22:41', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('275', '192.168.56.1', '2017-10-11 22:23:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('276', '192.168.56.1', '2017-10-11 22:25:16', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('277', '192.168.56.1', '2017-10-11 22:25:30', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('278', '192.168.56.1', '2017-10-11 22:27:42', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('279', '192.168.56.1', '2017-10-11 22:28:05', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('280', '192.168.56.1', '2017-10-11 22:31:35', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('281', '192.168.56.1', '2017-10-11 22:31:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('282', '192.168.1.157', '2017-10-11 22:38:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('283', '192.168.56.1', '2017-10-11 22:40:06', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('284', '192.168.1.157', '2017-10-11 22:40:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('285', '192.168.56.1', '2017-10-11 22:40:27', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('286', '192.168.1.157', '2017-10-11 22:40:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('287', '192.168.1.157', '2017-10-11 22:41:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('288', '192.168.1.157', '2017-10-11 22:43:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('289', '192.168.1.157', '2017-10-11 22:44:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('290', '192.168.1.157', '2017-10-11 22:45:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('291', '192.168.1.157', '2017-10-11 22:45:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('292', '192.168.1.157', '2017-10-11 22:46:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('293', '192.168.1.157', '2017-10-11 22:46:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('294', '192.168.1.157', '2017-10-11 22:46:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('295', '192.168.1.157', '2017-10-11 22:47:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('296', '192.168.1.157', '2017-10-11 22:47:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('297', '192.168.1.157', '2017-10-11 22:47:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('298', '192.168.1.157', '2017-10-11 22:47:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('299', '192.168.1.157', '2017-10-11 22:48:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('300', '192.168.1.157', '2017-10-11 22:48:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('301', '192.168.1.157', '2017-10-11 22:48:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('302', '192.168.1.157', '2017-10-11 22:48:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('303', '192.168.1.157', '2017-10-11 22:48:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('304', '192.168.1.157', '2017-10-11 22:48:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('305', '192.168.1.157', '2017-10-11 22:50:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('306', '192.168.1.157', '2017-10-11 22:52:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('307', '192.168.1.157', '2017-10-11 22:55:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('308', '192.168.1.157', '2017-10-11 22:56:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('309', '192.168.1.157', '2017-10-11 22:56:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('310', '192.168.1.157', '2017-10-11 22:57:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('311', '192.168.1.157', '2017-10-11 22:57:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('312', '192.168.1.157', '2017-10-11 23:02:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('313', '192.168.1.157', '2017-10-11 23:02:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('314', '192.168.1.157', '2017-10-11 23:02:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('315', '192.168.1.235', '2017-10-12 10:00:34', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('316', '192.168.1.235', '2017-10-12 10:20:42', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('317', '192.168.1.235', '2017-10-12 10:20:43', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('318', '192.168.1.235', '2017-10-12 10:26:58', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('319', '192.168.1.235', '2017-10-12 10:27:02', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('320', '192.168.1.235', '2017-10-12 10:28:37', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('321', '192.168.1.235', '2017-10-12 10:28:39', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('322', '192.168.1.235', '2017-10-12 10:29:46', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('323', '192.168.1.235', '2017-10-12 10:40:27', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('324', '192.168.1.235', '2017-10-12 10:40:29', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('325', '192.168.1.157', '2017-10-12 10:45:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('326', '192.168.1.235', '2017-10-12 10:45:25', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('327', '192.168.1.235', '2017-10-12 10:45:26', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('328', '192.168.1.235', '2017-10-12 10:45:55', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('329', '192.168.1.235', '2017-10-12 10:46:47', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('330', '192.168.1.157', '2017-10-12 10:48:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('331', '192.168.1.235', '2017-10-12 10:55:50', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('332', '192.168.1.157', '2017-10-12 10:59:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('333', '192.168.1.157', '2017-10-12 10:59:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('334', '192.168.1.235', '2017-10-12 10:59:42', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('335', '192.168.1.157', '2017-10-12 11:00:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('336', '192.168.1.157', '2017-10-12 11:00:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('337', '192.168.1.157', '2017-10-12 11:00:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('338', '192.168.1.157', '2017-10-12 11:00:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('339', '192.168.1.157', '2017-10-12 11:00:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('340', '192.168.1.157', '2017-10-12 11:00:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('341', '192.168.1.235', '2017-10-12 11:00:31', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('342', '192.168.1.235', '2017-10-12 11:00:31', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('343', '192.168.1.235', '2017-10-12 11:00:31', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('344', '192.168.1.235', '2017-10-12 11:00:36', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('345', '192.168.1.235', '2017-10-12 11:00:39', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('346', '192.168.1.157', '2017-10-12 11:00:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('347', '192.168.1.157', '2017-10-12 11:00:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('348', '192.168.1.157', '2017-10-12 11:00:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('349', '192.168.1.157', '2017-10-12 11:00:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('350', '192.168.1.235', '2017-10-12 11:00:59', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('351', '192.168.1.235', '2017-10-12 11:00:59', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('352', '192.168.1.235', '2017-10-12 11:01:03', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('353', '192.168.1.235', '2017-10-12 11:01:04', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('354', '192.168.1.157', '2017-10-12 11:01:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('355', '192.168.1.157', '2017-10-12 11:01:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('356', '192.168.1.157', '2017-10-12 11:01:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('357', '192.168.1.157', '2017-10-12 11:01:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('358', '192.168.1.157', '2017-10-12 11:01:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('359', '192.168.1.157', '2017-10-12 11:01:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('360', '192.168.1.157', '2017-10-12 11:01:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('361', '192.168.1.157', '2017-10-12 11:01:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('362', '192.168.1.157', '2017-10-12 11:01:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('363', '192.168.1.157', '2017-10-12 11:01:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('364', '192.168.1.157', '2017-10-12 11:01:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('365', '192.168.1.157', '2017-10-12 11:01:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('366', '192.168.1.157', '2017-10-12 11:02:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('367', '192.168.1.157', '2017-10-12 11:02:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('368', '192.168.1.157', '2017-10-12 11:02:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('369', '192.168.1.157', '2017-10-12 11:02:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('370', '192.168.1.157', '2017-10-12 11:03:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('371', '192.168.1.157', '2017-10-12 11:03:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('372', '192.168.1.157', '2017-10-12 11:03:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('373', '192.168.1.157', '2017-10-12 11:03:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('374', '192.168.1.157', '2017-10-12 11:03:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('375', '192.168.1.157', '2017-10-12 11:03:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('376', '192.168.1.157', '2017-10-12 11:04:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('377', '192.168.1.157', '2017-10-12 11:04:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('378', '192.168.1.157', '2017-10-12 11:04:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('379', '192.168.1.157', '2017-10-12 11:04:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('380', '192.168.1.157', '2017-10-12 11:34:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('381', '192.168.1.157', '2017-10-12 12:31:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('382', '192.168.1.157', '2017-10-12 12:31:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('383', '192.168.1.157', '2017-10-12 12:35:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('384', '192.168.1.157', '2017-10-12 12:36:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('385', '192.168.1.157', '2017-10-12 12:38:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('386', '192.168.1.157', '2017-10-12 12:39:43', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('387', '192.168.1.157', '2017-10-12 12:39:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('388', '192.168.1.157', '2017-10-12 12:45:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('389', '192.168.1.157', '2017-10-12 12:45:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('390', '192.168.1.157', '2017-10-12 12:45:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('391', '192.168.1.157', '2017-10-12 12:46:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('392', '192.168.1.157', '2017-10-12 12:51:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('393', '192.168.1.157', '2017-10-12 12:51:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('394', '192.168.1.157', '2017-10-12 12:51:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('395', '192.168.1.157', '2017-10-12 12:51:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('396', '192.168.1.157', '2017-10-12 12:54:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('397', '192.168.1.157', '2017-10-12 12:55:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('398', '192.168.1.157', '2017-10-12 12:55:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('399', '192.168.56.1', '2017-10-12 12:56:24', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('400', '192.168.1.157', '2017-10-12 12:57:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('401', '192.168.56.1', '2017-10-12 12:58:26', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('402', '192.168.1.157', '2017-10-12 12:58:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('403', '192.168.56.1', '2017-10-12 12:59:35', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('404', '192.168.1.235', '2017-10-12 13:01:07', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('405', '192.168.56.1', '2017-10-12 13:15:27', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('406', '192.168.56.1', '2017-10-12 13:15:55', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('407', '192.168.1.157', '2017-10-12 13:27:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('408', '192.168.56.1', '2017-10-12 13:28:35', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('409', '192.168.1.157', '2017-10-12 13:28:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('410', '192.168.56.1', '2017-10-12 13:29:27', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('411', '192.168.1.157', '2017-10-12 13:29:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('412', '192.168.1.157', '2017-10-12 13:30:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('413', '192.168.56.1', '2017-10-12 13:30:42', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('414', '192.168.1.157', '2017-10-12 13:44:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('415', '192.168.1.157', '2017-10-12 13:48:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('416', '192.168.1.157', '2017-10-12 13:49:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('417', '192.168.1.157', '2017-10-12 13:50:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('418', '192.168.1.157', '2017-10-12 13:50:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('419', '192.168.1.157', '2017-10-12 13:52:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('420', '192.168.1.157', '2017-10-12 13:53:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('421', '192.168.1.157', '2017-10-12 13:53:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('422', '192.168.1.157', '2017-10-12 13:54:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('423', '192.168.1.157', '2017-10-12 13:55:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('424', '192.168.1.157', '2017-10-12 13:56:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('425', '192.168.1.157', '2017-10-12 13:57:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('426', '192.168.1.157', '2017-10-12 13:57:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('427', '192.168.1.157', '2017-10-12 14:00:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('428', '192.168.43.91', '2017-10-12 14:31:22', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('429', '172.20.10.2', '2017-10-12 14:57:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('430', '172.20.10.2', '2017-10-12 15:00:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('431', '192.168.43.91', '2017-10-12 15:21:36', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('432', '192.168.43.91', '2017-10-12 15:22:07', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('433', '172.20.10.2', '2017-10-12 15:22:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('434', '192.168.43.91', '2017-10-12 15:22:46', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('435', '172.20.10.2', '2017-10-12 15:25:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('436', '192.168.43.91', '2017-10-12 15:36:46', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('437', '192.168.43.91', '2017-10-12 15:36:54', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('438', '192.168.1.157', '2017-10-12 16:16:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('439', '192.168.1.157', '2017-10-12 16:20:34', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('440', '192.168.1.235', '2017-10-12 16:21:31', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('441', '192.168.1.235', '2017-10-12 16:21:51', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('442', '192.168.1.235', '2017-10-12 16:22:18', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('443', '192.168.1.157', '2017-10-12 16:29:56', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('444', '192.168.1.157', '2017-10-12 16:29:57', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('445', '192.168.1.157', '2017-10-12 16:29:57', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('446', '192.168.1.157', '2017-10-12 16:29:59', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('447', '192.168.1.157', '2017-10-12 16:30:00', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('448', '192.168.1.235', '2017-10-12 16:30:01', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('449', '192.168.1.157', '2017-10-12 16:30:16', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('450', '192.168.56.1', '2017-10-12 16:33:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('451', '192.168.56.1', '2017-10-12 16:36:33', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('452', '192.168.56.1', '2017-10-12 16:38:04', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('453', '192.168.1.157', '2017-10-12 16:38:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('454', '192.168.1.157', '2017-10-12 16:39:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('455', '192.168.1.157', '2017-10-12 16:39:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('456', '192.168.56.1', '2017-10-12 16:40:27', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('457', '192.168.1.157', '2017-10-12 16:40:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('458', '192.168.1.157', '2017-10-12 16:42:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('459', '192.168.56.1', '2017-10-12 16:42:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('460', '192.168.1.157', '2017-10-12 16:42:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('461', '192.168.56.1', '2017-10-12 16:43:33', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('462', '192.168.56.1', '2017-10-12 16:44:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('463', '192.168.1.157', '2017-10-12 16:44:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('464', '192.168.56.1', '2017-10-12 16:45:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('465', '192.168.1.235', '2017-10-12 16:45:12', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('466', '192.168.1.157', '2017-10-12 16:45:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('467', '192.168.1.157', '2017-10-12 16:45:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('468', '192.168.56.1', '2017-10-12 16:45:43', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('469', '192.168.1.235', '2017-10-12 16:45:44', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('470', '192.168.56.1', '2017-10-12 16:46:13', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('471', '192.168.56.1', '2017-10-12 16:47:22', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('472', '192.168.56.1', '2017-10-12 16:48:35', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('473', '192.168.1.157', '2017-10-12 16:49:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('474', '192.168.1.235', '2017-10-12 16:55:05', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('475', '192.168.1.235', '2017-10-12 16:55:06', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('476', '192.168.1.235', '2017-10-12 17:00:19', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('477', '192.168.1.235', '2017-10-12 17:00:20', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('478', '192.168.56.1', '2017-10-12 17:00:46', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('479', '192.168.1.235', '2017-10-12 17:00:57', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('480', '192.168.56.1', '2017-10-12 17:02:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('481', '192.168.56.1', '2017-10-12 17:02:39', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('482', '192.168.56.1', '2017-10-12 17:03:07', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('483', '192.168.1.157', '2017-10-12 17:06:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('484', '192.168.56.1', '2017-10-12 17:06:55', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('485', '192.168.1.157', '2017-10-12 17:06:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('486', '192.168.56.1', '2017-10-12 17:07:43', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('487', '192.168.1.235', '2017-10-12 17:08:34', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('488', '192.168.1.157', '2017-10-12 17:09:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('489', '192.168.1.157', '2017-10-12 17:13:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('490', '192.168.1.157', '2017-10-12 17:16:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('491', '192.168.56.1', '2017-10-12 17:16:40', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('492', '192.168.56.1', '2017-10-12 17:19:00', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('493', '192.168.1.235', '2017-10-12 17:21:34', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('494', '192.168.56.1', '2017-10-12 17:21:44', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('495', '192.168.56.1', '2017-10-12 17:23:17', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('496', '192.168.56.1', '2017-10-12 17:24:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('497', '192.168.56.1', '2017-10-12 17:25:24', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('498', '192.168.56.1', '2017-10-12 17:25:29', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('499', '192.168.56.1', '2017-10-12 17:25:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('500', '192.168.1.157', '2017-10-12 17:26:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('501', '192.168.56.1', '2017-10-12 17:27:51', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('502', '192.168.1.157', '2017-10-12 17:28:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('503', '192.168.56.1', '2017-10-12 17:31:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('504', '192.168.56.1', '2017-10-12 17:33:11', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('505', '192.168.56.1', '2017-10-12 17:34:13', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('506', '192.168.56.1', '2017-10-12 17:35:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('507', '192.168.1.235', '2017-10-12 17:36:40', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('508', '192.168.1.235', '2017-10-12 17:40:30', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('509', '192.168.1.157', '2017-10-12 18:45:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('510', '192.168.1.157', '2017-10-12 18:48:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('511', '192.168.1.157', '2017-10-12 18:49:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('512', '192.168.1.157', '2017-10-12 18:49:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('513', '192.168.1.235', '2017-10-12 18:53:46', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('514', '192.168.56.1', '2017-10-12 18:55:14', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('515', '192.168.1.157', '2017-10-12 18:58:24', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('516', '192.168.56.1', '2017-10-12 18:58:51', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('517', '192.168.56.1', '2017-10-12 19:01:30', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('518', '192.168.1.235', '2017-10-12 19:02:23', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('519', '192.168.1.235', '2017-10-12 19:02:32', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('520', '192.168.1.235', '2017-10-12 19:02:38', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('521', '192.168.1.235', '2017-10-12 19:03:10', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('522', '192.168.1.235', '2017-10-12 19:04:23', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('523', '192.168.1.157', '2017-10-12 19:04:35', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('524', '192.168.56.1', '2017-10-12 19:04:54', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('525', '192.168.1.235', '2017-10-12 19:05:41', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('526', '192.168.1.157', '2017-10-12 19:07:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('527', '192.168.56.1', '2017-10-12 19:12:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('528', '192.168.1.157', '2017-10-12 19:12:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('529', '192.168.56.1', '2017-10-12 19:13:25', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('530', '192.168.56.1', '2017-10-12 19:15:36', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('531', '192.168.1.157', '2017-10-12 19:17:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('532', '192.168.56.1', '2017-10-12 19:20:57', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('533', '192.168.1.157', '2017-10-12 19:22:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('534', '192.168.1.157', '2017-10-12 19:24:06', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('535', '192.168.1.157', '2017-10-12 19:24:09', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('536', '192.168.1.157', '2017-10-12 19:24:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('537', '192.168.1.235', '2017-10-12 19:28:14', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('538', '192.168.1.235', '2017-10-12 19:47:28', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('539', '192.168.56.1', '2017-10-12 19:47:50', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('540', '192.168.56.1', '2017-10-12 19:48:41', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('541', '192.168.56.1', '2017-10-12 19:48:41', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('542', '192.168.56.1', '2017-10-12 19:48:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('543', '192.168.56.1', '2017-10-12 19:50:08', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('544', '192.168.56.1', '2017-10-12 19:50:48', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('545', '192.168.56.1', '2017-10-12 19:51:41', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('546', '192.168.56.1', '2017-10-12 19:52:11', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('547', '192.168.1.235', '2017-10-12 19:52:33', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('548', '192.168.1.235', '2017-10-12 19:52:52', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('549', '192.168.1.235', '2017-10-12 19:54:53', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('550', '192.168.1.157', '2017-10-12 19:59:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('551', '192.168.56.1', '2017-10-12 20:00:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('552', '192.168.56.1', '2017-10-12 20:02:32', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('553', '192.168.56.1', '2017-10-12 20:02:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('554', '192.168.56.1', '2017-10-12 20:02:52', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('555', '192.168.56.1', '2017-10-12 20:02:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('556', '192.168.1.235', '2017-10-12 20:30:06', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('557', '192.168.1.235', '2017-10-12 20:55:19', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('558', '192.168.1.157', '2017-10-12 21:03:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('559', '192.168.1.157', '2017-10-12 21:14:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('560', '192.168.1.157', '2017-10-12 21:23:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('561', '192.168.1.157', '2017-10-12 21:35:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('562', '192.168.1.157', '2017-10-12 21:36:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('563', '192.168.1.157', '2017-10-12 21:36:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('564', '192.168.56.1', '2017-10-12 21:38:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('565', '192.168.56.1', '2017-10-12 21:39:27', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('566', '192.168.56.1', '2017-10-12 21:39:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('567', '192.168.56.1', '2017-10-12 21:44:41', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('568', '192.168.56.1', '2017-10-12 21:44:52', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('569', '192.168.56.1', '2017-10-12 21:45:06', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('570', '192.168.56.1', '2017-10-12 21:48:26', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('571', '192.168.56.1', '2017-10-12 21:49:52', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('572', '192.168.56.1', '2017-10-12 21:50:06', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('573', '192.168.56.1', '2017-10-12 22:06:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('574', '192.168.1.102', '2017-10-12 22:07:12', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('575', '192.168.56.1', '2017-10-12 22:07:35', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('576', '192.168.1.102', '2017-10-12 22:20:31', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('577', '192.168.56.1', '2017-10-12 22:34:47', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('578', '192.168.56.1', '2017-10-12 22:36:33', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('579', '192.168.56.1', '2017-10-12 22:39:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('580', '192.168.56.1', '2017-10-12 22:40:46', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('581', '192.168.56.1', '2017-10-12 22:41:00', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('582', '192.168.56.1', '2017-10-12 22:41:13', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('583', '192.168.56.1', '2017-10-12 22:45:49', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('584', '192.168.56.1', '2017-10-12 22:48:14', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('585', '192.168.56.1', '2017-10-12 22:48:51', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('586', '192.168.56.1', '2017-10-12 22:50:22', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('587', '192.168.56.1', '2017-10-12 22:51:47', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('588', '192.168.56.1', '2017-10-12 22:52:37', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('589', '192.168.56.1', '2017-10-12 22:58:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('590', '192.168.56.1', '2017-10-12 22:58:45', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('591', '192.168.56.1', '2017-10-12 23:00:08', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('592', '192.168.1.102', '2017-10-12 23:00:46', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('593', '192.168.56.1', '2017-10-12 23:02:22', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('594', '192.168.56.1', '2017-10-12 23:02:48', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('595', '192.168.56.1', '2017-10-12 23:02:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('596', '192.168.1.102', '2017-10-12 23:03:25', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('597', '192.168.56.1', '2017-10-12 23:04:40', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('598', '192.168.56.1', '2017-10-12 23:05:55', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('599', '192.168.56.1', '2017-10-12 23:06:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('600', '192.168.56.1', '2017-10-12 23:06:48', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('601', '192.168.56.1', '2017-10-12 23:07:49', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('602', '192.168.56.1', '2017-10-12 23:08:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('603', '192.168.56.1', '2017-10-12 23:10:07', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('604', '192.168.56.1', '2017-10-12 23:10:29', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('605', '192.168.56.1', '2017-10-12 23:11:01', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('606', '192.168.56.1', '2017-10-12 23:24:49', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('607', '192.168.56.1', '2017-10-12 23:25:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('608', '192.168.1.102', '2017-10-12 23:26:29', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('609', '192.168.1.102', '2017-10-12 23:26:46', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('610', '192.168.1.102', '2017-10-12 23:28:08', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('611', '192.168.1.157', '2017-10-12 23:38:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('612', '192.168.1.157', '2017-10-12 23:39:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('613', '192.168.1.102', '2017-10-12 23:43:10', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('614', '192.168.1.157', '2017-10-12 23:45:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('615', '192.168.1.157', '2017-10-12 23:53:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('616', '192.168.1.102', '2017-10-12 23:54:10', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('617', '192.168.1.157', '2017-10-12 23:59:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('618', '172.20.10.2', '2017-10-13 00:09:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('619', '172.20.10.2', '2017-10-13 00:09:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('620', '172.20.10.2', '2017-10-13 00:12:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('621', '192.168.1.102', '2017-10-13 00:13:45', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('622', '192.168.1.102', '2017-10-13 00:15:13', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('623', '192.168.1.102', '2017-10-13 00:15:16', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('624', '172.20.10.2', '2017-10-13 00:16:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('625', '172.20.10.2', '2017-10-13 00:16:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('626', '172.20.10.2', '2017-10-13 00:17:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('627', '172.20.10.2', '2017-10-13 00:17:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('628', '172.20.10.2', '2017-10-13 00:18:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('629', '192.168.1.102', '2017-10-13 00:21:55', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('630', '192.168.1.102', '2017-10-13 00:24:07', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('631', '172.20.10.2', '2017-10-13 00:25:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('632', '172.20.10.2', '2017-10-13 00:25:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('633', '172.20.10.2', '2017-10-13 00:25:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('634', '172.20.10.2', '2017-10-13 00:25:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('635', '172.20.10.2', '2017-10-13 00:25:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('636', '172.20.10.2', '2017-10-13 00:26:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('637', '172.20.10.2', '2017-10-13 00:29:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('638', '172.20.10.2', '2017-10-13 00:31:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('639', '172.20.10.2', '2017-10-13 00:36:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('640', '172.20.10.2', '2017-10-13 00:38:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('641', '172.20.10.2', '2017-10-13 00:38:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('642', '192.168.1.102', '2017-10-13 00:39:23', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('643', '172.20.10.2', '2017-10-13 00:41:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('644', '192.168.1.102', '2017-10-13 00:41:48', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('645', '192.168.1.102', '2017-10-13 00:41:51', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('646', '172.20.10.2', '2017-10-13 00:46:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('647', '172.20.10.2', '2017-10-13 00:48:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('648', '172.20.10.2', '2017-10-13 00:52:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('649', '172.20.10.2', '2017-10-13 00:53:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('650', '172.20.10.2', '2017-10-13 00:57:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('651', '192.168.1.102', '2017-10-13 01:00:01', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('652', '172.20.10.2', '2017-10-13 01:00:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('653', '192.168.1.102', '2017-10-13 01:02:15', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('654', '172.20.10.2', '2017-10-13 01:05:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('655', '192.168.1.102', '2017-10-13 01:07:17', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('656', '192.168.1.102', '2017-10-13 01:08:39', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('657', '192.168.1.102', '2017-10-13 01:23:13', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('658', '192.168.1.157', '2017-10-13 10:45:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('659', '192.168.1.157', '2017-10-13 10:48:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('660', '192.168.1.157', '2017-10-13 10:48:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('661', '192.168.1.157', '2017-10-13 10:49:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('662', '192.168.1.157', '2017-10-13 10:49:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('663', '192.168.1.157', '2017-10-13 10:51:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('664', '192.168.1.157', '2017-10-13 10:51:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('665', '192.168.1.157', '2017-10-13 10:52:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('666', '192.168.1.157', '2017-10-13 10:53:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('667', '192.168.1.157', '2017-10-13 10:54:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('668', '192.168.1.157', '2017-10-13 11:00:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('669', '192.168.1.157', '2017-10-13 11:01:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('670', '192.168.1.157', '2017-10-13 11:04:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('671', '192.168.1.157', '2017-10-13 11:04:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('672', '192.168.1.157', '2017-10-13 11:07:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('673', '192.168.1.157', '2017-10-13 11:09:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('674', '192.168.1.157', '2017-10-13 11:17:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('675', '172.27.198.122', '2017-10-13 11:22:04', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('676', '172.27.198.122', '2017-10-13 11:22:29', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('677', '192.168.1.157', '2017-10-13 11:23:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('678', '192.168.1.157', '2017-10-13 12:54:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('679', '192.168.1.157', '2017-10-13 12:54:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('680', '192.168.1.157', '2017-10-13 13:22:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('681', '192.168.1.157', '2017-10-13 13:22:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('682', '192.168.1.157', '2017-10-13 13:29:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('683', '192.168.1.157', '2017-10-13 13:29:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('684', '192.168.1.157', '2017-10-13 13:30:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('685', '192.168.1.157', '2017-10-13 13:31:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('686', '192.168.1.157', '2017-10-13 13:33:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('687', '192.168.1.157', '2017-10-13 13:34:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('688', '192.168.1.157', '2017-10-13 13:35:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('689', '192.168.1.157', '2017-10-13 13:35:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('690', '192.168.1.157', '2017-10-13 13:39:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('691', '192.168.1.157', '2017-10-13 13:40:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('692', '192.168.1.157', '2017-10-13 14:00:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('693', '192.168.1.157', '2017-10-13 14:01:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('694', '192.168.1.157', '2017-10-13 14:02:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('695', '192.168.1.157', '2017-10-13 14:02:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('696', '192.168.1.157', '2017-10-13 14:03:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('697', '192.168.1.157', '2017-10-13 14:04:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('698', '192.168.1.157', '2017-10-13 14:09:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('699', '192.168.1.157', '2017-10-13 14:10:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('700', '172.27.198.122', '2017-10-13 14:11:11', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('701', '172.27.198.122', '2017-10-13 14:11:24', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('702', '172.27.198.122', '2017-10-13 14:12:18', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('703', '172.27.198.122', '2017-10-13 14:17:41', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('704', '192.168.1.157', '2017-10-13 14:34:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('705', '192.168.1.157', '2017-10-13 14:36:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('706', '192.168.1.157', '2017-10-13 14:37:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('707', '172.27.198.122', '2017-10-13 14:38:26', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('708', '172.27.198.122', '2017-10-13 14:47:38', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('709', '172.27.198.122', '2017-10-13 14:54:14', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('710', '172.27.198.122', '2017-10-13 15:10:05', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('711', '192.168.1.157', '2017-10-13 15:15:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('712', '192.168.1.157', '2017-10-13 15:15:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('713', '192.168.1.157', '2017-10-13 15:17:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('714', '192.168.1.157', '2017-10-13 15:18:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('715', '192.168.1.157', '2017-10-13 15:25:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('716', '192.168.56.1', '2017-10-13 15:26:25', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('717', '192.168.1.157', '2017-10-13 15:27:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('718', '192.168.1.157', '2017-10-13 15:59:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('719', '192.168.1.157', '2017-10-13 15:59:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('720', '192.168.56.1', '2017-10-13 16:00:05', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('721', '172.27.198.122', '2017-10-13 16:12:50', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('722', '172.27.198.122', '2017-10-13 16:16:31', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('723', '192.168.56.1', '2017-10-13 16:18:07', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('724', '192.168.56.1', '2017-10-13 16:19:34', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('725', '192.168.56.1', '2017-10-13 16:20:10', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('726', '192.168.56.1', '2017-10-13 16:20:38', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('727', '192.168.56.1', '2017-10-13 16:22:33', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('728', '192.168.56.1', '2017-10-13 16:25:01', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('729', '192.168.56.1', '2017-10-13 16:25:54', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('730', '192.168.56.1', '2017-10-13 16:26:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('731', '192.168.56.1', '2017-10-13 16:27:13', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('732', '192.168.56.1', '2017-10-13 16:29:47', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('733', '192.168.1.157', '2017-10-13 16:34:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('734', '172.27.198.122', '2017-10-13 16:34:03', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('735', '192.168.1.157', '2017-10-13 16:34:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('736', '192.168.1.157', '2017-10-13 16:35:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('737', '192.168.1.157', '2017-10-13 16:35:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('738', '192.168.1.157', '2017-10-13 16:36:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('739', '192.168.1.157', '2017-10-13 16:38:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('740', '192.168.56.1', '2017-10-13 16:39:35', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('741', '192.168.56.1', '2017-10-13 16:39:55', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('742', '172.27.198.122', '2017-10-13 16:41:30', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('743', '192.168.56.1', '2017-10-13 16:48:30', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('744', '192.168.56.1', '2017-10-13 16:50:35', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('745', '192.168.56.1', '2017-10-13 16:51:18', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('746', '192.168.56.1', '2017-10-13 16:53:22', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('747', '192.168.56.1', '2017-10-13 16:55:39', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('748', '192.168.56.1', '2017-10-13 16:58:03', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('749', '192.168.56.1', '2017-10-13 16:59:43', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('750', '192.168.56.1', '2017-10-13 17:01:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('751', '192.168.56.1', '2017-10-13 17:02:37', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('752', '192.168.1.157', '2017-10-13 17:07:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('753', '192.168.1.157', '2017-10-13 17:09:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('754', '192.168.1.157', '2017-10-13 17:12:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('755', '192.168.1.157', '2017-10-13 17:12:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('756', '192.168.1.157', '2017-10-13 18:17:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('757', '192.168.1.157', '2017-10-13 18:19:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('758', '192.168.1.157', '2017-10-13 18:22:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('759', '192.168.1.157', '2017-10-13 18:27:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('760', '192.168.1.157', '2017-10-13 18:38:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('761', '192.168.1.157', '2017-10-13 18:38:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('762', '192.168.1.157', '2017-10-13 18:39:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('763', '192.168.1.157', '2017-10-13 18:43:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('764', '172.27.198.122', '2017-10-13 18:43:35', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('765', '192.168.1.157', '2017-10-13 18:45:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('766', '192.168.1.157', '2017-10-13 18:46:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('767', '192.168.1.157', '2017-10-13 18:47:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('768', '192.168.1.157', '2017-10-13 19:00:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('769', '192.168.1.157', '2017-10-13 19:12:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('770', '192.168.1.157', '2017-10-13 19:13:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('771', '192.168.1.157', '2017-10-13 19:15:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('772', '192.168.1.157', '2017-10-13 19:16:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('773', '192.168.1.157', '2017-10-13 19:17:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('774', '172.27.198.122', '2017-10-13 19:30:14', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('775', '172.27.198.122', '2017-10-13 19:30:54', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('776', '172.27.198.122', '2017-10-13 19:30:54', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('777', '172.27.198.122', '2017-10-13 19:30:56', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('778', '172.27.198.122', '2017-10-13 19:33:05', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('779', '172.27.198.122', '2017-10-13 19:34:05', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('780', '172.27.198.122', '2017-10-13 19:34:05', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('781', '172.27.198.122', '2017-10-13 19:34:50', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('782', '172.27.198.122', '2017-10-13 19:35:55', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('783', '172.27.198.122', '2017-10-13 19:36:15', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('784', '172.27.198.122', '2017-10-13 19:36:16', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('785', '172.27.198.122', '2017-10-13 19:37:05', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('786', '192.168.56.1', '2017-10-13 19:38:24', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('787', '192.168.56.1', '2017-10-13 19:39:30', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('788', '192.168.1.157', '2017-10-13 19:43:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('789', '192.168.1.157', '2017-10-13 19:43:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('790', '192.168.1.157', '2017-10-13 19:46:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('791', '192.168.1.157', '2017-10-13 19:47:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('792', '192.168.1.157', '2017-10-13 19:47:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('793', '192.168.1.157', '2017-10-13 19:49:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('794', '192.168.1.157', '2017-10-13 19:49:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('795', '192.168.1.157', '2017-10-13 19:51:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('796', '192.168.1.157', '2017-10-13 19:52:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('797', '192.168.1.157', '2017-10-13 19:53:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('798', '192.168.1.157', '2017-10-13 19:53:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('799', '192.168.1.157', '2017-10-13 19:55:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('800', '192.168.1.157', '2017-10-13 19:56:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('801', '192.168.1.157', '2017-10-13 19:57:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('802', '192.168.1.157', '2017-10-13 19:58:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('803', '192.168.1.157', '2017-10-13 19:59:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('804', '192.168.1.157', '2017-10-13 20:03:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('805', '192.168.1.157', '2017-10-13 20:06:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('806', '192.168.1.157', '2017-10-13 20:06:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('807', '192.168.1.157', '2017-10-13 20:06:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('808', '192.168.1.157', '2017-10-13 20:07:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('809', '192.168.1.157', '2017-10-13 20:08:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('810', '192.168.1.157', '2017-10-13 20:09:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('811', '192.168.1.157', '2017-10-13 20:09:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('812', '172.27.198.122', '2017-10-13 20:10:06', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('813', '192.168.1.157', '2017-10-13 20:10:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('814', '192.168.1.157', '2017-10-13 20:10:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('815', '192.168.1.157', '2017-10-13 20:10:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('816', '192.168.1.157', '2017-10-13 20:11:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('817', '172.27.198.122', '2017-10-13 20:11:21', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('818', '192.168.1.157', '2017-10-13 20:12:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('819', '192.168.1.157', '2017-10-13 20:12:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('820', '192.168.1.157', '2017-10-13 20:12:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('821', '192.168.1.157', '2017-10-13 20:13:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('822', '192.168.1.157', '2017-10-13 20:14:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('823', '192.168.1.157', '2017-10-13 20:14:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('824', '192.168.1.157', '2017-10-13 20:15:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('825', '192.168.1.157', '2017-10-13 20:15:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('826', '192.168.1.157', '2017-10-13 20:16:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('827', '172.27.198.122', '2017-10-13 20:17:46', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('828', '172.27.198.122', '2017-10-13 20:18:12', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('829', '172.27.198.122', '2017-10-13 20:18:15', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('830', '192.168.1.157', '2017-10-13 20:18:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('831', '192.168.56.1', '2017-10-13 20:18:54', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('832', '192.168.56.1', '2017-10-13 20:21:02', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('833', '192.168.56.1', '2017-10-13 20:21:05', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('834', '192.168.1.157', '2017-10-13 20:21:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('835', '192.168.1.157', '2017-10-13 20:21:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('836', '192.168.56.1', '2017-10-13 20:22:27', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('837', '192.168.1.157', '2017-10-13 20:24:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('838', '192.168.1.157', '2017-10-13 20:24:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('839', '192.168.1.157', '2017-10-13 20:24:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('840', '192.168.1.157', '2017-10-13 20:25:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('841', '172.27.198.122', '2017-10-13 20:25:35', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('842', '172.27.198.122', '2017-10-13 20:26:02', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('843', '192.168.1.157', '2017-10-13 20:26:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('844', '192.168.56.1', '2017-10-13 20:26:29', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('845', '192.168.1.157', '2017-10-13 20:26:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('846', '172.27.198.122', '2017-10-13 20:28:10', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('847', '192.168.1.157', '2017-10-13 20:28:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('848', '172.27.198.122', '2017-10-13 20:28:57', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('849', '172.27.198.122', '2017-10-13 20:29:52', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('850', '172.27.198.122', '2017-10-13 20:32:03', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('851', '172.27.198.122', '2017-10-13 20:32:24', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('852', '172.27.198.122', '2017-10-13 20:32:48', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('853', '172.27.198.122', '2017-10-13 20:33:30', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('854', '172.27.198.122', '2017-10-13 20:34:47', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('855', '172.27.198.122', '2017-10-13 20:38:30', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('856', '192.168.1.157', '2017-10-13 20:39:07', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('857', '192.168.1.157', '2017-10-13 20:44:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('858', '192.168.1.157', '2017-10-13 20:44:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('859', '172.27.198.122', '2017-10-13 20:45:01', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('860', '192.168.1.157', '2017-10-13 20:48:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('861', '172.27.198.122', '2017-10-13 20:50:36', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('862', '192.168.1.157', '2017-10-13 20:52:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('863', '172.27.198.122', '2017-10-13 20:53:10', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('864', '192.168.1.157', '2017-10-13 20:53:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('865', '192.168.1.157', '2017-10-13 20:54:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('866', '172.27.198.122', '2017-10-13 20:55:52', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('867', '172.27.198.122', '2017-10-13 20:56:13', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('868', '172.27.198.122', '2017-10-13 20:57:54', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('869', '172.27.198.122', '2017-10-13 20:57:56', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('870', '172.27.198.122', '2017-10-13 20:57:57', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('871', '172.27.198.122', '2017-10-13 20:59:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('872', '192.168.56.1', '2017-10-13 20:59:29', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('873', '192.168.56.1', '2017-10-13 21:00:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('874', '192.168.56.1', '2017-10-13 21:01:10', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('875', '192.168.56.1', '2017-10-13 21:01:35', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('876', '172.27.198.122', '2017-10-13 21:01:43', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('877', '192.168.56.1', '2017-10-13 21:01:45', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('878', '172.27.198.122', '2017-10-13 21:01:57', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('879', '192.168.56.1', '2017-10-13 21:06:45', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('880', '192.168.1.157', '2017-10-13 21:06:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('881', '192.168.1.157', '2017-10-13 21:07:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('882', '192.168.1.157', '2017-10-13 21:07:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('883', '192.168.56.1', '2017-10-13 21:09:23', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('884', '192.168.56.1', '2017-10-13 21:09:58', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('885', '192.168.1.157', '2017-10-13 21:10:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('886', '192.168.56.1', '2017-10-13 21:10:41', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('887', '192.168.1.157', '2017-10-13 21:10:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('888', '192.168.1.157', '2017-10-13 21:12:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('889', '192.168.1.157', '2017-10-13 21:14:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('890', '192.168.1.157', '2017-10-13 21:15:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('891', '192.168.1.157', '2017-10-13 21:20:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('892', '192.168.1.157', '2017-10-13 21:27:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('893', '192.168.1.157', '2017-10-13 21:29:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('894', '192.168.1.157', '2017-10-13 21:29:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('895', '192.168.56.1', '2017-10-13 21:45:59', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('896', '192.168.1.157', '2017-10-13 21:46:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('897', '192.168.1.157', '2017-10-13 21:48:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('898', '192.168.1.157', '2017-10-13 21:50:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('899', '192.168.1.157', '2017-10-13 21:51:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('900', '192.168.56.1', '2017-10-13 21:51:22', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('901', '192.168.1.157', '2017-10-13 21:51:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('902', '192.168.1.157', '2017-10-13 21:52:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('903', '192.168.56.1', '2017-10-13 21:53:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('904', '192.168.56.1', '2017-10-13 21:55:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('905', '192.168.56.1', '2017-10-13 21:56:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('906', '192.168.56.1', '2017-10-13 22:03:26', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('907', '192.168.1.157', '2017-10-13 22:04:07', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('908', '192.168.1.157', '2017-10-13 22:04:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('909', '192.168.56.1', '2017-10-13 22:04:30', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('910', '192.168.1.157', '2017-10-13 22:04:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('911', '192.168.1.157', '2017-10-13 22:05:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('912', '192.168.1.157', '2017-10-13 22:06:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('913', '192.168.1.157', '2017-10-13 22:11:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('914', '192.168.1.157', '2017-10-13 22:17:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('915', '192.168.1.157', '2017-10-13 22:17:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('916', '192.168.1.157', '2017-10-13 22:24:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('917', '192.168.1.157', '2017-10-13 22:26:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('918', '192.168.1.157', '2017-10-13 22:27:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('919', '192.168.1.157', '2017-10-13 22:28:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('920', '192.168.1.157', '2017-10-13 22:29:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('921', '192.168.1.106', '2017-10-13 22:30:05', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('922', '192.168.1.157', '2017-10-13 22:30:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('923', '192.168.1.157', '2017-10-13 22:31:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('924', '192.168.56.1', '2017-10-13 22:31:19', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('925', '192.168.1.157', '2017-10-13 22:34:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('926', '192.168.1.157', '2017-10-13 22:39:52', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('927', '192.168.56.1', '2017-10-13 22:40:31', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('928', '192.168.1.157', '2017-10-13 22:40:38', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('929', '192.168.1.157', '2017-10-13 22:41:36', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('930', '192.168.1.157', '2017-10-13 22:41:40', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('931', '192.168.1.157', '2017-10-13 22:44:12', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('932', '192.168.1.157', '2017-10-13 22:45:25', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('933', '192.168.56.1', '2017-10-13 22:47:40', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('934', '192.168.56.1', '2017-10-13 22:47:47', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('935', '192.168.56.1', '2017-10-13 22:48:08', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('936', '192.168.56.1', '2017-10-13 22:48:18', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('937', '192.168.1.157', '2017-10-13 22:48:25', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('938', '192.168.1.106', '2017-10-13 23:59:26', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('939', '192.168.1.106', '2017-10-13 23:59:55', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('940', '192.168.1.106', '2017-10-14 00:00:13', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('941', '192.168.1.106', '2017-10-14 00:01:23', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('942', '192.168.1.106', '2017-10-14 00:01:33', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('943', '192.168.1.106', '2017-10-14 00:01:35', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('944', '192.168.56.1', '2017-10-14 00:03:24', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('945', '192.168.56.1', '2017-10-14 00:04:07', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('946', '192.168.56.1', '2017-10-14 00:08:59', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('947', '192.168.56.1', '2017-10-14 00:09:16', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('948', '192.168.56.1', '2017-10-14 00:10:04', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('949', '192.168.1.106', '2017-10-14 00:12:49', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('950', '192.168.1.106', '2017-10-14 00:12:52', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('951', '192.168.56.1', '2017-10-14 00:13:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('952', '192.168.56.1', '2017-10-14 00:15:10', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('953', '192.168.56.1', '2017-10-14 00:15:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('954', '192.168.56.1', '2017-10-14 00:18:21', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('955', '192.168.1.157', '2017-10-14 00:18:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('956', '192.168.56.1', '2017-10-14 00:21:36', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('957', '192.168.56.1', '2017-10-14 00:21:54', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('958', '192.168.56.1', '2017-10-14 00:22:44', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('959', '192.168.56.1', '2017-10-14 00:23:40', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('960', '192.168.1.157', '2017-10-14 00:25:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('961', '192.168.56.1', '2017-10-14 00:28:08', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('962', '192.168.56.1', '2017-10-14 00:28:31', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('963', '192.168.56.1', '2017-10-14 00:28:53', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('964', '192.168.1.157', '2017-10-14 00:30:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('965', '192.168.56.1', '2017-10-14 00:32:21', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('966', '192.168.56.1', '2017-10-14 00:32:46', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('967', '192.168.56.1', '2017-10-14 00:34:50', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('968', '192.168.56.1', '2017-10-14 00:35:52', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('969', '192.168.56.1', '2017-10-14 00:36:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('970', '192.168.56.1', '2017-10-14 00:37:14', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('971', '192.168.56.1', '2017-10-14 00:42:46', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('972', '192.168.56.1', '2017-10-14 00:43:18', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('973', '192.168.56.1', '2017-10-14 00:45:35', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('974', '192.168.1.157', '2017-10-14 00:53:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('975', '192.168.1.157', '2017-10-14 00:53:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('976', '192.168.1.157', '2017-10-14 00:53:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('977', '192.168.1.157', '2017-10-14 00:54:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('978', '192.168.1.157', '2017-10-14 01:01:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('979', '192.168.1.157', '2017-10-14 01:02:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('980', '192.168.1.157', '2017-10-14 01:02:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('981', '192.168.1.157', '2017-10-14 01:03:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('982', '192.168.1.157', '2017-10-14 01:04:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('983', '192.168.1.157', '2017-10-14 01:08:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('984', '192.168.1.157', '2017-10-14 01:09:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('985', '192.168.1.157', '2017-10-14 01:18:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('986', '192.168.1.157', '2017-10-14 01:19:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('987', '192.168.1.157', '2017-10-14 01:19:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('988', '192.168.1.157', '2017-10-14 01:20:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('989', '192.168.1.157', '2017-10-14 01:21:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('990', '192.168.1.157', '2017-10-14 01:45:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('991', '192.168.1.157', '2017-10-14 01:46:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('992', '192.168.1.157', '2017-10-14 01:52:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('993', '192.168.1.157', '2017-10-14 01:53:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('994', '192.168.1.157', '2017-10-14 02:05:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('995', '192.168.1.157', '2017-10-14 02:08:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('996', '192.168.1.157', '2017-10-14 02:10:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('997', '192.168.1.157', '2017-10-14 02:12:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('998', '192.168.1.157', '2017-10-14 02:14:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('999', '192.168.1.157', '2017-10-14 02:15:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1000', '192.168.1.157', '2017-10-14 02:16:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1001', '192.168.1.157', '2017-10-14 02:18:43', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1002', '192.168.1.157', '2017-10-14 02:19:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1003', '192.168.1.157', '2017-10-14 02:21:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1004', '192.168.1.157', '2017-10-14 02:23:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1005', '192.168.1.157', '2017-10-14 02:29:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1006', '192.168.1.157', '2017-10-14 11:13:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1007', '192.168.1.157', '2017-10-14 11:14:24', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1008', '192.168.1.157', '2017-10-14 11:17:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1009', '192.168.1.157', '2017-10-14 11:27:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1010', '192.168.1.157', '2017-10-14 11:28:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1011', '192.168.1.157', '2017-10-14 11:31:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1012', '192.168.1.157', '2017-10-14 11:32:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1013', '192.168.1.157', '2017-10-14 11:33:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1014', '192.168.1.157', '2017-10-14 12:11:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1015', '192.168.1.157', '2017-10-14 12:12:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1016', '192.168.1.157', '2017-10-14 12:13:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1017', '192.168.1.157', '2017-10-14 12:13:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1018', '192.168.1.157', '2017-10-14 12:23:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1019', '192.168.1.157', '2017-10-14 12:30:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1020', '192.168.1.157', '2017-10-14 12:32:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1021', '192.168.1.157', '2017-10-14 12:34:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1022', '192.168.1.157', '2017-10-14 12:51:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1023', '192.168.1.157', '2017-10-14 12:51:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1024', '192.168.1.157', '2017-10-14 13:00:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1025', '192.168.56.1', '2017-10-14 13:01:24', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1026', '192.168.56.1', '2017-10-14 13:01:31', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1027', '192.168.56.1', '2017-10-14 13:06:13', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1028', '192.168.56.1', '2017-10-14 13:13:49', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1029', '192.168.56.1', '2017-10-14 13:14:00', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1030', '192.168.56.1', '2017-10-14 13:14:15', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1031', '192.168.56.1', '2017-10-14 13:18:28', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1032', '192.168.56.1', '2017-10-14 13:22:46', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1033', '192.168.56.1', '2017-10-14 13:23:09', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1034', '192.168.56.1', '2017-10-14 13:25:32', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1035', '192.168.56.1', '2017-10-14 13:26:32', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1036', '192.168.56.1', '2017-10-14 13:28:29', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1037', '192.168.56.1', '2017-10-14 13:28:40', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1038', '192.168.56.1', '2017-10-14 13:28:55', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1039', '192.168.56.1', '2017-10-14 13:31:06', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1040', '192.168.56.1', '2017-10-14 13:31:14', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1041', '192.168.56.1', '2017-10-14 13:32:01', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1042', '192.168.56.1', '2017-10-14 13:32:33', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1043', '192.168.56.1', '2017-10-14 13:32:47', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1044', '192.168.56.1', '2017-10-14 13:35:18', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1045', '192.168.1.157', '2017-10-14 14:24:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1046', '192.168.1.157', '2017-10-14 14:27:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1047', '192.168.1.157', '2017-10-14 14:31:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1048', '192.168.1.157', '2017-10-14 14:31:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1049', '192.168.1.157', '2017-10-14 14:31:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1050', '192.168.1.157', '2017-10-14 14:31:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1051', '192.168.56.1', '2017-10-14 14:49:38', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1052', '192.168.56.1', '2017-10-14 14:50:07', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1053', '192.168.56.1', '2017-10-14 14:50:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1054', '192.168.56.1', '2017-10-14 14:50:30', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1055', '192.168.56.1', '2017-10-14 15:01:57', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1056', '192.168.56.1', '2017-10-14 15:05:40', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1057', '192.168.56.1', '2017-10-14 15:05:53', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1058', '192.168.56.1', '2017-10-14 15:06:52', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1059', '192.168.56.1', '2017-10-14 15:20:18', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1060', '192.168.1.157', '2017-10-14 16:00:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1061', '192.168.1.157', '2017-10-14 16:06:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1062', '192.168.1.157', '2017-10-14 16:07:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1063', '192.168.1.157', '2017-10-14 16:08:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1064', '192.168.1.157', '2017-10-14 16:13:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1065', '192.168.56.1', '2017-10-14 16:15:25', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1066', '192.168.56.1', '2017-10-14 16:15:25', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1067', '192.168.1.157', '2017-10-14 16:16:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1068', '192.168.56.1', '2017-10-14 16:16:22', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1069', '192.168.1.157', '2017-10-14 16:18:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1070', '192.168.56.1', '2017-10-14 16:18:48', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1071', '192.168.56.1', '2017-10-14 16:18:50', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1072', '192.168.1.157', '2017-10-14 16:20:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1073', '192.168.56.1', '2017-10-14 16:21:12', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1074', '192.168.56.1', '2017-10-14 16:22:10', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1075', '192.168.56.1', '2017-10-14 16:22:16', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1076', '192.168.56.1', '2017-10-14 16:22:33', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1077', '192.168.56.1', '2017-10-14 16:27:46', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1078', '192.168.56.1', '2017-10-14 16:29:06', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1079', '192.168.56.1', '2017-10-14 16:29:43', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1080', '192.168.1.157', '2017-10-14 16:30:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1081', '192.168.56.1', '2017-10-14 16:31:01', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1082', '192.168.1.157', '2017-10-14 16:36:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1083', '172.27.198.122', '2017-10-14 16:37:04', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1084', '172.27.198.122', '2017-10-14 16:37:05', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1085', '192.168.56.1', '2017-10-14 16:37:26', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1086', '192.168.56.1', '2017-10-14 16:38:54', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1087', '192.168.1.157', '2017-10-14 16:39:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1088', '192.168.56.1', '2017-10-14 16:39:56', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1089', '192.168.1.157', '2017-10-14 16:41:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1090', '192.168.56.1', '2017-10-14 16:42:03', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1091', '192.168.56.1', '2017-10-14 16:42:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1092', '192.168.56.1', '2017-10-14 16:45:21', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1093', '192.168.56.1', '2017-10-14 16:46:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1094', '192.168.1.157', '2017-10-14 16:47:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1095', '192.168.56.1', '2017-10-14 16:48:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1096', '192.168.1.157', '2017-10-14 16:56:32', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1097', '192.168.56.1', '2017-10-14 16:57:51', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1098', '192.168.1.157', '2017-10-14 16:58:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1099', '192.168.1.157', '2017-10-14 16:59:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1100', '192.168.56.1', '2017-10-14 17:01:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1101', '192.168.56.1', '2017-10-14 17:01:46', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1102', '192.168.1.157', '2017-10-14 17:02:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1103', '192.168.1.157', '2017-10-14 17:02:44', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1104', '192.168.1.157', '2017-10-14 17:04:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1105', '192.168.1.157', '2017-10-14 17:04:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1106', '192.168.1.157', '2017-10-14 17:05:23', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1107', '192.168.1.157', '2017-10-14 17:07:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1108', '192.168.1.157', '2017-10-14 17:08:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1109', '192.168.1.157', '2017-10-14 17:09:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1110', '192.168.1.157', '2017-10-14 17:53:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1111', '192.168.1.157', '2017-10-14 17:54:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1112', '192.168.1.157', '2017-10-14 17:54:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1113', '192.168.1.157', '2017-10-14 17:56:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1114', '192.168.1.157', '2017-10-14 19:42:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1115', '172.27.198.122', '2017-10-14 19:55:11', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1116', '172.27.198.122', '2017-10-14 19:55:32', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1117', '172.27.198.122', '2017-10-14 20:01:44', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1118', '192.168.1.157', '2017-10-14 20:02:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1119', '192.168.1.157', '2017-10-14 20:06:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1120', '192.168.56.1', '2017-10-14 20:06:49', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1121', '192.168.1.157', '2017-10-14 20:06:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1122', '192.168.1.157', '2017-10-14 20:07:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1123', '192.168.1.157', '2017-10-14 20:10:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1124', '192.168.56.1', '2017-10-14 20:11:16', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1125', '192.168.56.1', '2017-10-14 20:16:16', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1126', '192.168.56.1', '2017-10-14 20:18:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1127', '192.168.56.1', '2017-10-14 20:19:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1128', '192.168.1.157', '2017-10-14 20:26:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1129', '192.168.1.157', '2017-10-14 20:26:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1130', '192.168.1.157', '2017-10-14 20:27:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1131', '192.168.56.1', '2017-10-14 20:28:43', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1132', '192.168.56.1', '2017-10-14 20:30:03', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1133', '192.168.56.1', '2017-10-14 20:32:36', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1134', '192.168.56.1', '2017-10-14 20:35:29', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1135', '192.168.56.1', '2017-10-14 20:37:08', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1136', '192.168.56.1', '2017-10-14 20:38:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1137', '192.168.56.1', '2017-10-14 20:38:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1138', '192.168.56.1', '2017-10-14 20:38:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1139', '172.27.198.122', '2017-10-14 20:44:01', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1140', '172.27.198.122', '2017-10-14 20:47:08', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1141', '172.31.17.170', '2017-10-14 20:49:43', '流程管理', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1142', '172.27.198.122', '2017-10-14 20:50:00', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1143', '172.31.17.170', '2017-10-14 20:50:09', '流程管理', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1144', '172.27.198.122', '2017-10-14 20:51:08', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1145', '192.168.1.157', '2017-10-14 20:52:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1146', '172.31.17.170', '2017-10-14 20:52:48', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1147', '192.168.56.1', '2017-10-14 20:52:54', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1148', '192.168.56.1', '2017-10-14 20:54:11', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1149', '172.31.17.170', '2017-10-14 20:54:17', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1150', '172.31.17.170', '2017-10-14 20:55:14', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1151', '172.31.17.170', '2017-10-14 20:55:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1152', '192.168.56.1', '2017-10-14 20:57:39', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1153', '192.168.1.157', '2017-10-14 21:09:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1154', '192.168.1.157', '2017-10-14 21:10:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1155', '192.168.1.157', '2017-10-14 21:10:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1156', '192.168.1.157', '2017-10-14 21:14:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1157', '192.168.56.1', '2017-10-14 21:16:51', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1158', '172.27.198.122', '2017-10-14 21:17:36', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1159', '172.27.198.122', '2017-10-14 21:18:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1160', '172.27.198.122', '2017-10-14 21:19:17', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1161', '192.168.56.1', '2017-10-14 21:21:16', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1162', '192.168.56.1', '2017-10-14 21:21:16', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1163', '172.27.198.122', '2017-10-14 21:21:21', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1164', '192.168.56.1', '2017-10-14 21:21:26', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1165', '172.27.198.122', '2017-10-14 21:22:15', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1166', '192.168.56.1', '2017-10-14 21:22:36', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1167', '172.27.198.122', '2017-10-14 21:22:46', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1168', '172.27.198.122', '2017-10-14 21:23:17', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1169', '172.27.198.122', '2017-10-14 21:26:14', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1170', '192.168.56.1', '2017-10-14 21:27:32', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1171', '172.27.198.122', '2017-10-14 21:27:58', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1172', '192.168.1.157', '2017-10-14 21:28:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1173', '172.27.198.122', '2017-10-14 21:28:40', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1174', '172.27.198.122', '2017-10-14 21:28:54', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1175', '172.27.198.122', '2017-10-14 21:29:03', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1176', '192.168.56.1', '2017-10-14 21:29:42', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1177', '172.27.198.122', '2017-10-14 21:30:57', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1178', '172.27.198.122', '2017-10-14 21:32:30', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1179', '172.27.198.122', '2017-10-14 21:32:43', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1180', '172.27.198.122', '2017-10-14 21:33:22', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1181', '192.168.56.1', '2017-10-14 21:34:42', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1182', '192.168.56.1', '2017-10-14 21:34:50', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1183', '172.27.198.122', '2017-10-14 21:34:58', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1184', '192.168.56.1', '2017-10-14 21:37:27', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1185', '192.168.56.1', '2017-10-14 21:38:04', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1186', '192.168.1.157', '2017-10-14 21:38:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1187', '192.168.56.1', '2017-10-14 21:39:43', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1188', '192.168.56.1', '2017-10-14 21:39:47', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1189', '192.168.56.1', '2017-10-14 21:39:50', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1190', '192.168.56.1', '2017-10-14 21:55:26', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1191', '192.168.56.1', '2017-10-14 21:56:04', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1192', '192.168.56.1', '2017-10-14 22:08:01', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1193', '192.168.56.1', '2017-10-14 22:08:42', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1194', '192.168.56.1', '2017-10-14 22:08:44', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1195', '192.168.1.157', '2017-10-14 22:09:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1196', '192.168.56.1', '2017-10-14 22:10:14', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1197', '192.168.56.1', '2017-10-14 22:11:44', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1198', '192.168.56.1', '2017-10-14 22:11:50', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1199', '192.168.56.1', '2017-10-14 22:11:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1200', '192.168.56.1', '2017-10-14 22:12:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1201', '192.168.56.1', '2017-10-14 22:13:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1202', '192.168.56.1', '2017-10-14 22:14:09', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1203', '192.168.56.1', '2017-10-14 22:16:40', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1204', '192.168.1.157', '2017-10-14 22:17:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1205', '192.168.56.1', '2017-10-14 22:17:30', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1206', '192.168.56.1', '2017-10-14 22:22:28', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1207', '192.168.1.157', '2017-10-14 22:32:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1208', '192.168.1.157', '2017-10-14 22:32:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1209', '192.168.1.157', '2017-10-14 22:32:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1210', '192.168.56.1', '2017-10-14 22:33:02', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1211', '192.168.56.1', '2017-10-14 22:33:11', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1212', '192.168.56.1', '2017-10-14 22:33:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1213', '192.168.56.1', '2017-10-14 22:36:10', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1214', '192.168.56.1', '2017-10-14 22:37:39', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1215', '192.168.1.157', '2017-10-14 22:46:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1216', '192.168.1.157', '2017-10-14 22:47:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1217', '192.168.1.157', '2017-10-14 22:49:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1218', '192.168.1.157', '2017-10-14 22:50:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1219', '192.168.56.1', '2017-10-14 22:51:21', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1220', '192.168.1.157', '2017-10-14 22:51:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1221', '192.168.56.1', '2017-10-14 22:52:01', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1222', '192.168.1.157', '2017-10-14 22:54:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1223', '192.168.1.157', '2017-10-14 22:56:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1224', '192.168.1.157', '2017-10-14 22:58:38', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1225', '192.168.56.1', '2017-10-14 22:58:55', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1226', '192.168.56.1', '2017-10-14 22:59:10', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1227', '192.168.56.1', '2017-10-14 23:02:03', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1228', '192.168.56.1', '2017-10-14 23:02:49', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1229', '192.168.1.157', '2017-10-14 23:05:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1230', '192.168.1.157', '2017-10-14 23:11:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1231', '192.168.1.157', '2017-10-14 23:12:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1232', '192.168.1.157', '2017-10-14 23:13:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1233', '192.168.1.157', '2017-10-14 23:13:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1234', '192.168.1.157', '2017-10-14 23:15:09', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1235', '192.168.1.157', '2017-10-14 23:15:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1236', '192.168.1.157', '2017-10-14 23:16:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1237', '192.168.1.157', '2017-10-14 23:18:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1238', '192.168.1.157', '2017-10-14 23:19:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1239', '192.168.1.157', '2017-10-14 23:20:10', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1240', '192.168.1.157', '2017-10-14 23:21:32', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1241', '192.168.1.157', '2017-10-14 23:21:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1242', '192.168.1.157', '2017-10-14 23:21:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1243', '192.168.56.1', '2017-10-14 23:21:52', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1244', '192.168.56.1', '2017-10-14 23:22:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1245', '192.168.56.1', '2017-10-14 23:22:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1246', '192.168.1.157', '2017-10-14 23:23:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1247', '192.168.1.157', '2017-10-14 23:24:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1248', '192.168.1.157', '2017-10-14 23:26:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1249', '192.168.1.157', '2017-10-14 23:29:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1250', '192.168.1.157', '2017-10-14 23:30:30', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1251', '192.168.1.157', '2017-10-14 23:34:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1252', '192.168.1.157', '2017-10-14 23:50:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1253', '192.168.1.157', '2017-10-14 23:52:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1254', '192.168.56.1', '2017-10-15 00:02:00', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1255', '192.168.1.157', '2017-10-15 00:03:53', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1256', '192.168.56.1', '2017-10-15 00:03:59', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1257', '192.168.56.1', '2017-10-15 00:04:32', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1258', '192.168.56.1', '2017-10-15 00:05:42', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1259', '192.168.56.1', '2017-10-15 00:05:55', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1260', '192.168.56.1', '2017-10-15 00:05:56', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1261', '192.168.56.1', '2017-10-15 00:06:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1262', '192.168.56.1', '2017-10-15 00:06:28', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1263', '192.168.1.157', '2017-10-15 00:09:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1264', '192.168.56.1', '2017-10-15 00:09:37', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1265', '192.168.56.1', '2017-10-15 00:11:01', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1266', '192.168.56.1', '2017-10-15 00:11:31', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1267', '192.168.56.1', '2017-10-15 00:11:52', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1268', '192.168.1.157', '2017-10-15 00:12:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1269', '192.168.56.1', '2017-10-15 00:12:49', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1270', '192.168.1.157', '2017-10-15 00:13:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1271', '192.168.1.157', '2017-10-15 00:13:02', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1272', '192.168.56.1', '2017-10-15 00:13:15', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1273', '192.168.56.1', '2017-10-15 00:13:23', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1274', '192.168.1.157', '2017-10-15 00:13:51', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1275', '192.168.56.1', '2017-10-15 00:15:10', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1276', '192.168.56.1', '2017-10-15 00:15:38', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1277', '192.168.56.1', '2017-10-15 00:15:48', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1278', '192.168.1.157', '2017-10-15 00:17:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1279', '192.168.56.1', '2017-10-15 00:18:50', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1280', '192.168.56.1', '2017-10-15 00:19:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1281', '192.168.56.1', '2017-10-15 00:21:00', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1282', '192.168.1.157', '2017-10-15 00:22:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1283', '192.168.1.157', '2017-10-15 00:22:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1284', '172.31.17.170', '2017-10-15 00:38:57', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1285', '172.31.17.170', '2017-10-15 00:39:15', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1286', '192.168.1.157', '2017-10-15 00:39:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1287', '192.168.1.157', '2017-10-15 00:40:36', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1288', '192.168.1.157', '2017-10-15 00:41:31', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1289', '192.168.1.157', '2017-10-15 00:42:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1290', '192.168.1.157', '2017-10-15 00:42:56', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1291', '192.168.1.157', '2017-10-15 00:44:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1292', '192.168.1.157', '2017-10-15 00:45:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1293', '192.168.1.157', '2017-10-15 00:45:46', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1294', '192.168.1.157', '2017-10-15 00:47:35', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1295', '192.168.1.157', '2017-10-15 01:01:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1296', '192.168.1.157', '2017-10-15 01:04:41', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1297', '172.27.198.122', '2017-10-15 10:25:12', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1298', '192.168.1.157', '2017-10-15 11:05:04', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1299', '192.168.1.157', '2017-10-15 11:05:09', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1300', '192.168.1.157', '2017-10-15 11:09:21', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1301', '192.168.1.157', '2017-10-15 11:12:10', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1302', '192.168.1.157', '2017-10-15 11:12:12', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1303', '192.168.1.157', '2017-10-15 11:13:28', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1304', '192.168.1.157', '2017-10-15 11:13:31', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1305', '192.168.1.157', '2017-10-15 11:13:37', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1306', '192.168.1.157', '2017-10-15 11:13:55', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('1307', '192.168.1.157', '2017-10-15 11:15:33', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('1308', '192.168.1.157', '2017-10-15 11:34:18', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('1309', '192.168.1.157', '2017-10-15 11:34:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1310', '192.168.1.157', '2017-10-15 11:34:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1311', '192.168.56.1', '2017-10-15 14:03:17', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1312', '192.168.56.1', '2017-10-15 14:04:16', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1313', '192.168.56.1', '2017-10-15 14:04:19', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1314', '192.168.56.1', '2017-10-15 14:04:38', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1315', '192.168.56.1', '2017-10-15 14:04:56', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1316', '192.168.56.1', '2017-10-15 14:05:41', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1317', '192.168.56.1', '2017-10-15 14:06:54', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1318', '192.168.56.1', '2017-10-15 14:08:53', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1319', '192.168.56.1', '2017-10-15 14:09:02', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1320', '192.168.56.1', '2017-10-15 14:09:56', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1321', '192.168.56.1', '2017-10-15 14:10:54', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1322', '192.168.56.1', '2017-10-15 14:10:57', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1323', '172.31.17.170', '2017-10-15 14:13:46', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1324', '192.168.1.157', '2017-10-15 14:15:28', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1325', '192.168.1.157', '2017-10-15 14:15:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1326', '192.168.1.157', '2017-10-15 15:00:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1327', '192.168.1.157', '2017-10-15 15:01:50', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1328', '192.168.137.1', '2017-10-15 15:02:06', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1329', '192.168.137.1', '2017-10-15 15:02:11', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1330', '192.168.1.157', '2017-10-15 15:02:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1331', '192.168.1.157', '2017-10-15 15:03:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1332', '192.168.1.157', '2017-10-15 15:03:59', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1333', '192.168.1.157', '2017-10-15 15:04:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1334', '192.168.137.1', '2017-10-15 15:04:27', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1335', '192.168.137.1', '2017-10-15 15:04:31', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1336', '192.168.1.157', '2017-10-15 15:04:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1337', '192.168.1.157', '2017-10-15 15:05:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1338', '192.168.1.157', '2017-10-15 15:06:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1339', '192.168.1.157', '2017-10-15 15:08:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1340', '192.168.1.157', '2017-10-15 15:08:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1341', '192.168.1.157', '2017-10-15 15:08:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1342', '192.168.1.157', '2017-10-15 15:09:52', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1343', '192.168.1.157', '2017-10-15 15:10:34', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1344', '192.168.1.157', '2017-10-15 15:11:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1345', '192.168.1.157', '2017-10-15 15:11:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1346', '192.168.1.157', '2017-10-15 15:13:11', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1347', '192.168.1.157', '2017-10-15 15:14:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1348', '192.168.1.157', '2017-10-15 15:14:29', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1349', '192.168.56.1', '2017-10-15 15:15:27', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1350', '192.168.1.157', '2017-10-15 15:15:57', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1351', '192.168.1.157', '2017-10-15 15:18:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1352', '192.168.56.1', '2017-10-15 15:29:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1353', '192.168.56.1', '2017-10-15 15:31:30', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1354', '192.168.56.1', '2017-10-15 15:32:51', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1355', '192.168.137.1', '2017-10-15 15:37:58', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1356', '192.168.137.1', '2017-10-15 15:38:12', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1357', '192.168.137.1', '2017-10-15 15:38:13', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1358', '192.168.56.1', '2017-10-15 15:45:19', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1359', '192.168.56.1', '2017-10-15 15:45:24', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1360', '192.168.1.157', '2017-10-15 15:47:01', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1361', '192.168.56.1', '2017-10-15 15:47:00', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1362', '192.168.1.157', '2017-10-15 15:47:26', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1363', '192.168.56.1', '2017-10-15 15:47:34', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1364', '192.168.56.1', '2017-10-15 15:47:57', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1365', '192.168.56.1', '2017-10-15 15:48:08', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1366', '192.168.1.157', '2017-10-15 15:49:27', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1367', '192.168.1.157', '2017-10-15 16:08:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1368', '192.168.56.1', '2017-10-15 16:11:39', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1369', '192.168.56.1', '2017-10-15 16:11:41', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1370', '192.168.56.1', '2017-10-15 16:13:21', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1371', '192.168.56.1', '2017-10-15 16:14:06', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1372', '192.168.1.157', '2017-10-15 16:14:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1373', '192.168.1.157', '2017-10-15 16:16:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1374', '192.168.56.1', '2017-10-15 16:16:35', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1375', '192.168.1.157', '2017-10-15 16:17:03', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1376', '192.168.56.1', '2017-10-15 16:17:19', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1377', '192.168.1.157', '2017-10-15 16:18:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1378', '192.168.1.157', '2017-10-15 16:21:14', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1379', '192.168.1.157', '2017-10-15 16:22:58', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1380', '192.168.1.157', '2017-10-15 16:23:17', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1381', '192.168.56.1', '2017-10-15 16:49:51', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1382', '192.168.137.1', '2017-10-15 17:16:03', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1383', '192.168.1.157', '2017-10-15 18:30:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1384', '192.168.56.1', '2017-10-15 18:30:48', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1385', '192.168.1.157', '2017-10-15 18:31:40', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1386', '192.168.1.157', '2017-10-15 18:32:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1387', '192.168.1.157', '2017-10-15 18:33:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1388', '192.168.1.157', '2017-10-15 18:33:43', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1389', '192.168.56.1', '2017-10-15 18:34:19', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1390', '192.168.1.157', '2017-10-15 18:35:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1391', '192.168.1.157', '2017-10-15 18:35:45', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1392', '192.168.56.1', '2017-10-15 18:36:56', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1393', '192.168.56.1', '2017-10-15 18:36:56', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1394', '192.168.1.157', '2017-10-15 18:37:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1395', '192.168.56.1', '2017-10-15 18:37:55', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1396', '192.168.56.1', '2017-10-15 18:37:56', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1397', '192.168.1.157', '2017-10-15 18:38:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1398', '192.168.1.157', '2017-10-15 18:39:42', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1399', '192.168.56.1', '2017-10-15 18:40:01', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1400', '192.168.137.1', '2017-10-15 18:43:32', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1401', '192.168.56.1', '2017-10-15 18:44:06', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1402', '192.168.56.1', '2017-10-15 18:44:15', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1403', '192.168.1.157', '2017-10-15 18:45:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1404', '192.168.1.157', '2017-10-15 18:46:07', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1405', '192.168.56.1', '2017-10-15 18:46:11', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1406', '192.168.56.1', '2017-10-15 18:46:12', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1407', '192.168.1.157', '2017-10-15 18:46:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1408', '192.168.1.157', '2017-10-15 18:47:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1409', '192.168.56.1', '2017-10-15 18:48:55', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1410', '192.168.1.157', '2017-10-15 18:48:59', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1411', '192.168.1.157', '2017-10-15 18:49:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1412', '192.168.1.157', '2017-10-15 18:49:49', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1413', '192.168.56.1', '2017-10-15 18:51:25', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1414', '192.168.56.1', '2017-10-15 18:51:47', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1415', '192.168.56.1', '2017-10-15 18:52:04', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1416', '192.168.1.157', '2017-10-15 18:52:08', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1417', '192.168.56.1', '2017-10-15 18:54:34', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1418', '192.168.56.1', '2017-10-15 18:55:44', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1419', '192.168.56.1', '2017-10-15 18:55:53', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1420', '192.168.1.157', '2017-10-15 18:58:12', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1421', '192.168.137.1', '2017-10-15 18:59:02', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1422', '192.168.137.1', '2017-10-15 18:59:08', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1423', '192.168.1.157', '2017-10-15 18:59:47', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1424', '192.168.1.157', '2017-10-15 18:59:55', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1425', '192.168.56.1', '2017-10-15 19:00:59', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1426', '192.168.137.1', '2017-10-15 19:01:25', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1427', '192.168.137.1', '2017-10-15 19:01:47', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1428', '192.168.56.1', '2017-10-15 19:02:07', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1429', '192.168.56.1', '2017-10-15 19:02:08', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1430', '192.168.56.1', '2017-10-15 19:02:11', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1431', '192.168.56.1', '2017-10-15 19:02:15', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1432', '192.168.56.1', '2017-10-15 19:02:24', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1433', '192.168.137.1', '2017-10-15 19:05:01', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1434', '192.168.1.157', '2017-10-15 19:07:06', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1435', '192.168.1.157', '2017-10-15 19:10:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1436', '192.168.1.157', '2017-10-15 19:16:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1437', '192.168.56.1', '2017-10-15 19:16:10', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1438', '192.168.56.1', '2017-10-15 19:16:24', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1439', '192.168.56.1', '2017-10-15 19:16:32', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1440', '192.168.1.157', '2017-10-15 19:17:15', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1441', '192.168.137.1', '2017-10-15 19:17:15', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1442', '192.168.137.1', '2017-10-15 19:17:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1443', '192.168.56.1', '2017-10-15 19:17:47', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1444', '192.168.56.1', '2017-10-15 19:17:49', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1445', '192.168.56.1', '2017-10-15 19:17:50', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1446', '192.168.56.1', '2017-10-15 19:17:57', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1447', '192.168.56.1', '2017-10-15 19:17:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1448', '192.168.137.1', '2017-10-15 19:18:28', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1449', '192.168.56.1', '2017-10-15 19:18:52', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1450', '192.168.56.1', '2017-10-15 19:20:26', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1451', '192.168.1.157', '2017-10-15 19:21:21', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1452', '192.168.56.1', '2017-10-15 19:21:50', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1453', '192.168.56.1', '2017-10-15 19:22:35', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1454', '192.168.56.1', '2017-10-15 19:22:43', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1455', '192.168.1.157', '2017-10-15 19:23:05', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1456', '192.168.56.1', '2017-10-15 19:23:23', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1457', '192.168.1.157', '2017-10-15 19:24:16', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1458', '192.168.1.157', '2017-10-15 19:25:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1459', '192.168.56.1', '2017-10-15 19:26:58', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1460', '192.168.56.1', '2017-10-15 19:27:33', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1461', '192.168.56.1', '2017-10-15 19:40:30', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1462', '192.168.1.157', '2017-10-15 19:41:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1463', '192.168.1.157', '2017-10-15 19:41:56', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1464', '192.168.1.157', '2017-10-15 19:42:19', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1465', '192.168.56.1', '2017-10-15 19:42:54', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1466', '192.168.137.1', '2017-10-15 19:43:06', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1467', '192.168.1.157', '2017-10-15 19:43:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1468', '192.168.1.157', '2017-10-15 19:44:18', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1469', '192.168.1.157', '2017-10-15 19:44:48', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1470', '192.168.56.1', '2017-10-15 19:45:24', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1471', '192.168.56.1', '2017-10-15 19:45:28', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1472', '192.168.1.157', '2017-10-15 19:45:33', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1473', '192.168.56.1', '2017-10-15 19:47:07', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1474', '192.168.1.157', '2017-10-15 19:47:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1475', '192.168.1.157', '2017-10-15 19:47:54', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1476', '192.168.1.157', '2017-10-15 19:50:25', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1477', '192.168.1.157', '2017-10-15 19:51:13', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1478', '192.168.1.157', '2017-10-15 19:51:37', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1479', '192.168.1.157', '2017-10-15 19:52:00', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1480', '192.168.1.157', '2017-10-15 19:53:22', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1481', '192.168.1.157', '2017-10-15 19:55:04', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1482', '192.168.1.157', '2017-10-15 19:55:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1483', '192.168.1.157', '2017-10-15 19:56:39', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1484', '192.168.56.1', '2017-10-15 20:00:02', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1485', '192.168.56.1', '2017-10-15 20:00:13', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1486', '192.168.56.1', '2017-10-15 20:00:18', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1487', '192.168.137.1', '2017-10-15 20:01:32', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1488', '192.168.56.1', '2017-10-15 20:02:15', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1489', '192.168.56.1', '2017-10-15 20:02:44', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1490', '192.168.56.1', '2017-10-15 20:02:46', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1491', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1492', '192.168.56.1', '2017-10-15 20:03:02', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1493', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1494', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1495', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1496', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1497', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1498', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1499', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1500', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1501', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1502', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1503', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1504', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1505', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1506', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1507', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1508', '192.168.137.1', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1509', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1510', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1511', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1512', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1513', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1514', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1515', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1516', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1517', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1518', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1519', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1520', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1521', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1522', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1523', '192.168.137.1', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1524', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1525', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1526', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1527', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1528', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1529', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1530', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1531', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1532', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1533', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1534', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1535', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1536', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1537', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1538', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1539', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1540', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1541', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1542', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1543', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1544', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1545', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1546', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1547', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1548', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1549', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1550', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1551', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1552', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1553', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1554', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1555', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1556', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1557', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1558', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1559', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1560', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1561', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1562', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1563', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1564', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1565', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1566', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1567', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1568', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1569', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1570', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1571', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1572', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1573', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1574', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1575', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1576', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1577', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1578', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1579', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1580', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1581', '192.168.1.101', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1582', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1583', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1584', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1585', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1586', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1587', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1588', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1589', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1590', '192.168.1.101', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1591', '192.168.1.101', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1592', '192.168.1.101', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1593', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1594', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1595', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1596', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1597', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1598', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1599', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1600', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1601', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1602', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1603', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1604', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1605', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1606', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1607', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1608', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1609', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1610', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1611', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1612', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1613', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1614', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1615', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1616', '192.168.1.104', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1617', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1618', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1619', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1620', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1621', '192.168.1.102', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1622', '192.168.1.102', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1623', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1624', '192.168.1.102', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1625', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1626', '192.168.1.102', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1627', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1628', '192.168.1.102', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1629', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1630', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1631', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1632', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1633', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1634', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1635', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1636', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1637', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1638', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1639', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1640', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1641', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1642', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1643', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1644', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1645', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1646', '192.168.1.157', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1647', '192.168.1.157', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1648', '192.168.1.157', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1649', '192.168.1.157', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1650', '192.168.1.157', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1651', '192.168.1.157', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1652', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1653', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1654', '172.27.198.122', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1655', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1656', '172.27.198.122', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1657', '192.168.1.104', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1658', '192.168.1.104', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1659', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1660', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1661', '172.27.198.122', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1662', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1663', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1664', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1665', '172.27.198.122', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1666', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1667', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1668', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1669', '172.31.17.170', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1670', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1671', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1672', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1673', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1674', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1675', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1676', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1677', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1678', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1679', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1680', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1681', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1682', '172.27.198.122', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1683', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1684', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1685', '172.27.198.122', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1686', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1687', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1688', '172.27.198.122', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1689', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1690', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1691', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1692', '172.27.198.122', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('1693', '172.27.198.122', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('1694', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1695', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1696', '172.27.198.122', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('1697', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1698', '172.27.198.122', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('1699', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1700', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1701', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1702', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1703', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1704', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1705', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1706', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1707', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1708', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1709', '172.31.17.170', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1710', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1711', '192.168.43.91', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1712', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1713', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1714', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1715', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1716', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1717', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1718', '192.168.56.1', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1719', '192.168.1.111', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1720', '172.31.17.170', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1721', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1722', '172.27.198.122', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1723', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1724', '172.27.198.122', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1725', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1726', '172.31.17.170', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1727', '172.31.17.170', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1728', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1729', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1730', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1731', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1732', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1733', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1734', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1735', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1736', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1737', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1738', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1739', '192.168.56.1', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1740', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1741', '192.168.56.1', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1742', '192.168.56.1', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1743', '192.168.56.1', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1744', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1745', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1746', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1747', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1748', '172.31.17.170', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1749', '172.31.17.170', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1750', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1751', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1752', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1753', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1754', '192.168.56.1', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1755', '192.168.56.1', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1756', '192.168.56.1', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1757', '192.168.56.1', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1758', '192.168.56.1', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1759', '192.168.56.1', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1760', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1761', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1762', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1763', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1764', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1765', '192.168.56.1', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1766', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1767', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1768', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1769', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1770', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1771', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1772', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1773', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1774', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1775', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1776', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1777', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1778', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1779', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1780', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1781', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1782', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1783', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1784', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1785', '172.27.198.122', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1786', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1787', '172.27.198.122', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1788', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1789', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1790', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1791', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1792', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1793', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1794', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1795', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1796', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1797', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1798', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1799', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1800', '172.31.17.170', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1801', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1802', '172.31.17.170', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1803', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1804', '172.31.17.170', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1805', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1806', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1807', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1808', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1809', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1810', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1811', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1812', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1813', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1814', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1815', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1816', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1817', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1818', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1819', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1820', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1821', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1822', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1823', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1824', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1825', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1826', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1827', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1828', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1829', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1830', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1831', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1832', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1833', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1834', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1835', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1836', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1837', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1838', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1839', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1840', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1841', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1842', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1843', '172.31.17.170', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1844', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1845', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1846', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1847', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1848', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1849', '172.31.17.170', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1850', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1851', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1852', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1853', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1854', '192.168.56.1', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1855', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1856', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1857', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1858', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1859', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1860', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1861', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1862', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1863', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1864', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1865', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1866', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1867', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1868', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1869', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1870', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1871', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1872', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1873', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1874', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1875', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1876', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1877', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1878', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1879', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1880', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1881', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1882', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1883', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1884', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1885', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1886', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1887', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1888', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1889', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1890', '192.168.1.157', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1891', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1892', '192.168.1.186', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1893', '192.168.1.186', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1894', '192.168.1.186', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1895', '192.168.1.157', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1896', '192.168.1.186', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1897', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1898', '192.168.1.186', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1899', '192.168.1.186', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1900', '192.168.1.157', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1901', '192.168.1.157', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1902', '192.168.1.157', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1903', '192.168.1.157', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1904', '192.168.1.186', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1905', '192.168.1.157', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1906', '192.168.1.157', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1907', '172.20.10.14', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1908', '172.20.10.14', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1909', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1910', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1911', '172.20.10.14', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1912', '172.20.10.14', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1913', '192.168.56.1', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1914', '192.168.56.1', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1915', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1916', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1917', '192.168.1.233', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1918', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1919', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1920', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1921', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1922', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1923', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1924', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1925', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1926', '192.168.56.1', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1927', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1928', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1929', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1930', '192.168.56.1', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1931', '192.168.56.1', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1932', '192.168.56.1', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1933', '192.168.56.1', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1934', '192.168.56.1', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1935', '192.168.56.1', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1936', '192.168.56.1', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1937', '192.168.56.1', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1938', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1939', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1940', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1941', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1942', '192.168.56.1', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1943', '192.168.56.1', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('1944', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1945', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1946', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1947', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1948', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1949', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1950', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1951', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1952', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1953', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1954', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1955', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1956', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1957', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1958', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1959', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1960', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1961', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1962', '192.168.56.1', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1963', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1964', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('1965', '192.168.1.157', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1966', '192.168.43.91', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1967', '192.168.43.91', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1968', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1969', '172.31.17.170', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1970', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('1971', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1972', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1973', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1974', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1975', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1976', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('1977', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('1978', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('1979', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('1980', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1981', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1982', '172.31.17.170', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1983', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1984', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1985', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1986', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1987', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1988', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1989', '172.31.17.170', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1990', '172.31.17.170', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1991', '172.31.17.170', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('1992', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('1993', '172.31.17.170', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1994', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('1995', '172.31.17.170', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('1996', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('1997', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('1998', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('1999', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2000', '172.31.17.170', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2001', '172.31.17.170', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2002', '172.31.17.170', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2003', '172.31.17.170', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2004', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2005', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2006', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2007', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2008', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2009', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2010', '172.31.17.170', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2011', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2012', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2013', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2014', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2015', '172.31.17.170', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2016', '172.31.17.170', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2017', '172.31.17.170', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2018', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2019', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2020', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2021', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2022', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2023', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2024', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2025', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2026', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2027', '192.168.56.1', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2028', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2029', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2030', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2031', '192.168.56.1', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2032', '192.168.56.1', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2033', '192.168.56.1', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2034', '192.168.56.1', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2035', '192.168.56.1', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('2036', '172.27.198.122', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2037', '172.27.198.122', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2038', '172.27.198.122', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2039', '192.168.56.1', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2040', '172.27.198.122', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2041', '172.27.198.122', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2042', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2043', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2044', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2045', '172.31.17.170', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2046', '172.31.17.170', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('2047', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2048', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2049', '172.31.17.170', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2050', '172.31.17.170', '2019-09-27 19:51:20', '流程审核', '/audit', '1');
INSERT INTO `aoa_user_log` VALUES ('2051', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2052', '172.31.17.170', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2053', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2054', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2055', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2056', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2057', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2058', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2059', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2060', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2061', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2062', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2063', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2064', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2065', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2066', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2067', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2068', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2069', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2070', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2071', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2072', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2073', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2074', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2075', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2076', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2077', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2078', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2079', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2080', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2081', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2082', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2083', '172.31.17.170', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2084', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2085', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2086', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2087', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2088', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2089', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2090', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2091', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2092', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2093', '172.31.17.170', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2094', '172.31.17.170', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2095', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2096', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2097', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2098', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2099', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2100', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2101', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2102', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2103', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2104', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2105', '172.31.17.170', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2106', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2107', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/userlogmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2108', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2109', '192.168.1.157', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2110', '192.168.1.157', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '2');
INSERT INTO `aoa_user_log` VALUES ('2111', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2112', '192.168.1.157', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2113', '172.31.17.170', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2114', '172.31.17.170', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2115', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2116', '172.31.17.170', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2117', '172.31.17.170', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2118', '172.31.17.170', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2119', '172.31.17.170', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2120', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2121', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2122', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2123', '172.31.17.170', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2124', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2125', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2126', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2127', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2128', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2129', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2130', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2131', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2132', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2133', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2134', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2135', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2136', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2137', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2138', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2139', '172.31.17.170', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2140', '172.31.17.170', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2141', '172.31.17.170', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2142', '172.31.17.170', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2143', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2144', '172.31.17.170', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2145', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2146', '172.31.17.170', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2147', '172.31.17.170', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2148', '172.27.198.122', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2149', '172.27.198.122', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2150', '192.168.1.233', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '3');
INSERT INTO `aoa_user_log` VALUES ('2151', '192.168.1.233', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '3');
INSERT INTO `aoa_user_log` VALUES ('2152', '192.168.1.233', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2153', '192.168.1.233', '2019-09-27 19:51:20', '用户管理', '/usermanage', '3');
INSERT INTO `aoa_user_log` VALUES ('2154', '192.168.1.233', '2019-09-27 19:51:20', '用户管理', '/usermanage', '3');
INSERT INTO `aoa_user_log` VALUES ('2155', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2156', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2157', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2158', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2159', '192.168.1.233', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2160', '192.168.1.233', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2161', '192.168.1.233', '2019-09-27 19:51:20', '计划管理', '/planview', '7');
INSERT INTO `aoa_user_log` VALUES ('2162', '192.168.1.233', '2019-09-27 19:51:20', '计划管理', '/planview', '7');
INSERT INTO `aoa_user_log` VALUES ('2163', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '7');
INSERT INTO `aoa_user_log` VALUES ('2164', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '7');
INSERT INTO `aoa_user_log` VALUES ('2165', '192.168.1.233', '2019-09-27 19:51:20', '用户管理', '/usermanage', '3');
INSERT INTO `aoa_user_log` VALUES ('2166', '192.168.1.233', '2019-09-27 19:51:20', '计划管理', '/planview', '3');
INSERT INTO `aoa_user_log` VALUES ('2167', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '3');
INSERT INTO `aoa_user_log` VALUES ('2168', '192.168.1.233', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '3');
INSERT INTO `aoa_user_log` VALUES ('2169', '192.168.1.233', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '3');
INSERT INTO `aoa_user_log` VALUES ('2170', '192.168.1.157', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '5');
INSERT INTO `aoa_user_log` VALUES ('2171', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '3');
INSERT INTO `aoa_user_log` VALUES ('2172', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '3');
INSERT INTO `aoa_user_log` VALUES ('2173', '192.168.1.233', '2019-09-27 19:51:20', '计划报表', '/myplan', '3');
INSERT INTO `aoa_user_log` VALUES ('2174', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2175', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2176', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2177', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2178', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2179', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2180', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2181', '192.168.1.233', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2182', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2183', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2184', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2185', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2186', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2187', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2188', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2189', '192.168.1.233', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2190', '192.168.1.233', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '3');
INSERT INTO `aoa_user_log` VALUES ('2191', '192.168.1.233', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '3');
INSERT INTO `aoa_user_log` VALUES ('2192', '192.168.1.233', '2019-09-27 19:51:20', '计划管理', '/planview', '3');
INSERT INTO `aoa_user_log` VALUES ('2193', '192.168.1.233', '2019-09-27 19:51:20', '笔记管理', '/noteview', '3');
INSERT INTO `aoa_user_log` VALUES ('2194', '192.168.1.233', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2195', '172.31.17.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2196', '172.31.17.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2197', '172.31.17.100', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2198', '172.31.17.100', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2199', '172.31.17.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2200', '172.31.17.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2201', '172.31.17.100', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2202', '172.31.17.100', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2203', '172.31.17.100', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2204', '172.31.17.100', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2205', '172.31.17.100', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2206', '172.31.17.100', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2207', '172.31.17.100', '2019-09-27 19:51:20', '流程审核', '/audit', '7');
INSERT INTO `aoa_user_log` VALUES ('2208', '172.31.17.100', '2019-09-27 19:51:20', '流程审核', '/audit', '7');
INSERT INTO `aoa_user_log` VALUES ('2209', '172.31.17.100', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2210', '172.31.17.100', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2211', '172.31.17.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '7');
INSERT INTO `aoa_user_log` VALUES ('2212', '172.31.17.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '7');
INSERT INTO `aoa_user_log` VALUES ('2213', '172.31.17.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2214', '172.31.17.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2215', '172.31.17.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2216', '172.31.17.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2217', '172.31.17.100', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2218', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2219', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2220', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2221', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2222', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2223', '172.31.17.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2224', '172.31.17.100', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2225', '172.31.17.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2226', '172.31.17.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2227', '172.31.17.100', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2228', '172.31.17.100', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2229', '172.31.17.100', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2230', '172.27.93.0', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '5');
INSERT INTO `aoa_user_log` VALUES ('2231', '172.27.93.0', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '5');
INSERT INTO `aoa_user_log` VALUES ('2232', '172.27.93.0', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '5');
INSERT INTO `aoa_user_log` VALUES ('2233', '172.27.93.0', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '5');
INSERT INTO `aoa_user_log` VALUES ('2234', '172.27.93.0', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '5');
INSERT INTO `aoa_user_log` VALUES ('2235', '172.27.93.0', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '5');
INSERT INTO `aoa_user_log` VALUES ('2236', '172.27.93.0', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '5');
INSERT INTO `aoa_user_log` VALUES ('2237', '172.27.93.0', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '5');
INSERT INTO `aoa_user_log` VALUES ('2238', '172.27.93.0', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '5');
INSERT INTO `aoa_user_log` VALUES ('2239', '172.27.93.0', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '5');
INSERT INTO `aoa_user_log` VALUES ('2240', '172.27.93.0', '2019-09-27 19:51:20', '我的任务', '/mytask', '5');
INSERT INTO `aoa_user_log` VALUES ('2241', '172.27.93.0', '2019-09-27 19:51:20', '邮件管理', '/mail', '5');
INSERT INTO `aoa_user_log` VALUES ('2242', '172.31.17.236', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2243', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2244', '172.31.17.236', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2245', '172.31.17.236', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2246', '172.31.17.236', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2247', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2248', '172.31.17.236', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2249', '172.31.17.236', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2250', '172.31.17.236', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '7');
INSERT INTO `aoa_user_log` VALUES ('2251', '172.31.17.236', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2252', '172.31.17.236', '2019-09-27 19:51:20', '流程审核', '/audit', '7');
INSERT INTO `aoa_user_log` VALUES ('2253', '172.31.17.236', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2254', '172.31.17.236', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2255', '172.31.17.236', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2256', '172.31.17.236', '2019-09-27 19:51:20', '邮件管理', '/mail', '7');
INSERT INTO `aoa_user_log` VALUES ('2257', '172.31.17.236', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2258', '172.31.17.236', '2019-09-27 19:51:20', '我的任务', '/mytask', '7');
INSERT INTO `aoa_user_log` VALUES ('2259', '172.31.17.236', '2019-09-27 19:51:20', '日程管理', '/daymanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2260', '172.31.17.236', '2019-09-27 19:51:20', '日程管理', '/daymanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2261', '172.31.17.236', '2019-09-27 19:51:20', '日程管理', '/daymanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2262', '172.31.17.236', '2019-09-27 19:51:20', '计划管理', '/planview', '7');
INSERT INTO `aoa_user_log` VALUES ('2263', '172.31.17.236', '2019-09-27 19:51:20', '计划报表', '/myplan', '7');
INSERT INTO `aoa_user_log` VALUES ('2264', '172.31.17.236', '2019-09-27 19:51:20', '计划报表', '/myplan', '7');
INSERT INTO `aoa_user_log` VALUES ('2265', '172.31.17.236', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2266', '172.31.17.236', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2267', '172.31.17.236', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2268', '172.31.17.236', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2269', '172.31.17.236', '2019-09-27 19:51:20', '计划管理', '/planview', '7');
INSERT INTO `aoa_user_log` VALUES ('2270', '172.31.17.236', '2019-09-27 19:51:20', '文件管理', '/filemanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2271', '172.31.17.236', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2272', '172.31.17.236', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2273', '172.31.17.236', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2274', '172.31.17.236', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2275', '172.31.17.236', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2276', '172.31.17.236', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2277', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2278', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2279', '172.31.17.236', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2280', '172.31.17.236', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '7');
INSERT INTO `aoa_user_log` VALUES ('2281', '172.31.17.236', '2019-09-27 19:51:20', '日程管理', '/daymanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2282', '172.31.17.236', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '7');
INSERT INTO `aoa_user_log` VALUES ('2283', '172.31.17.236', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2284', '172.31.17.236', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '7');
INSERT INTO `aoa_user_log` VALUES ('2285', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2286', '172.31.17.236', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '7');
INSERT INTO `aoa_user_log` VALUES ('2287', '172.31.17.236', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2288', '172.31.17.236', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '7');
INSERT INTO `aoa_user_log` VALUES ('2289', '172.31.17.236', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2290', '172.31.17.236', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2291', '172.31.17.236', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2292', '172.31.17.236', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2293', '172.31.17.236', '2019-09-27 19:51:20', '通知列表', '/infromlist', '7');
INSERT INTO `aoa_user_log` VALUES ('2294', '172.31.17.236', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2295', '172.31.17.236', '2019-09-27 19:51:20', '邮件管理', '/mail', '7');
INSERT INTO `aoa_user_log` VALUES ('2296', '172.31.17.236', '2019-09-27 19:51:20', '邮件管理', '/mail', '7');
INSERT INTO `aoa_user_log` VALUES ('2297', '172.31.17.236', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2298', '172.31.17.236', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '7');
INSERT INTO `aoa_user_log` VALUES ('2299', '172.31.17.236', '2019-09-27 19:51:20', '我的任务', '/mytask', '7');
INSERT INTO `aoa_user_log` VALUES ('2300', '192.168.2.100', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2301', '192.168.2.100', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2302', '192.168.2.100', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2303', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2304', '192.168.2.100', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2305', '192.168.2.100', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2306', '192.168.2.100', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2307', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2308', '192.168.2.100', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('2309', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2310', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2311', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2312', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2313', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2314', '192.168.2.100', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2315', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2316', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2317', '192.168.2.100', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2318', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2319', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2320', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2321', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2322', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2323', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2324', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2325', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2326', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2327', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2328', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2329', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2330', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2331', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2332', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2333', '192.168.2.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '13');
INSERT INTO `aoa_user_log` VALUES ('2334', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '13');
INSERT INTO `aoa_user_log` VALUES ('2335', '192.168.2.100', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '13');
INSERT INTO `aoa_user_log` VALUES ('2336', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '13');
INSERT INTO `aoa_user_log` VALUES ('2337', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '13');
INSERT INTO `aoa_user_log` VALUES ('2338', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '13');
INSERT INTO `aoa_user_log` VALUES ('2339', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '13');
INSERT INTO `aoa_user_log` VALUES ('2340', '192.168.2.100', '2019-09-27 19:51:20', '我的申请', '/flowmanage', '13');
INSERT INTO `aoa_user_log` VALUES ('2341', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '13');
INSERT INTO `aoa_user_log` VALUES ('2342', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '13');
INSERT INTO `aoa_user_log` VALUES ('2343', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2344', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2345', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '11');
INSERT INTO `aoa_user_log` VALUES ('2346', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '11');
INSERT INTO `aoa_user_log` VALUES ('2347', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2348', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2349', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2350', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2351', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2352', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2353', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2354', '192.168.2.100', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2355', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2356', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2357', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2358', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2359', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2360', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2361', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2362', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2363', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2364', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2365', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2366', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2367', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2368', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2369', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2370', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2371', '192.168.2.100', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2372', '192.168.2.100', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2373', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2374', '192.168.2.100', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2375', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2376', '192.168.2.100', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2377', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2378', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2379', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2380', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2381', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2382', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2383', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2384', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '2');
INSERT INTO `aoa_user_log` VALUES ('2385', '192.168.2.100', '2019-09-27 19:51:20', '我的任务', '/mytask', '2');
INSERT INTO `aoa_user_log` VALUES ('2386', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '2');
INSERT INTO `aoa_user_log` VALUES ('2387', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2388', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2389', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2390', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2391', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2392', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2393', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2394', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2395', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2396', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '2');
INSERT INTO `aoa_user_log` VALUES ('2397', '192.168.2.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '3');
INSERT INTO `aoa_user_log` VALUES ('2398', '192.168.2.100', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '3');
INSERT INTO `aoa_user_log` VALUES ('2399', '192.168.2.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '2');
INSERT INTO `aoa_user_log` VALUES ('2400', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '2');
INSERT INTO `aoa_user_log` VALUES ('2401', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '2');
INSERT INTO `aoa_user_log` VALUES ('2402', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2403', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2404', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2405', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2406', '192.168.2.100', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('2407', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2408', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2409', '192.168.2.100', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2410', '192.168.2.100', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2411', '192.168.2.100', '2019-09-27 19:51:20', '职位管理', '/positionmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2412', '192.168.2.100', '2019-09-27 19:51:20', '用户管理', '/usermanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2413', '192.168.2.100', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2414', '192.168.2.100', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2415', '192.168.2.100', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2416', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2417', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2418', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2419', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2420', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2421', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2422', '192.168.2.100', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2423', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2424', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2425', '192.168.2.100', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2426', '192.168.2.100', '2019-09-27 19:51:20', '我的日历', '/daycalendar', '1');
INSERT INTO `aoa_user_log` VALUES ('2427', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2428', '192.168.2.100', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2429', '192.168.2.100', '2019-09-27 19:51:20', '日程管理', '/daymanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2430', '192.168.2.100', '2019-09-27 19:51:20', '计划管理', '/planview', '1');
INSERT INTO `aoa_user_log` VALUES ('2431', '192.168.2.100', '2019-09-27 19:51:20', '计划报表', '/myplan', '1');
INSERT INTO `aoa_user_log` VALUES ('2432', '192.168.2.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2433', '192.168.2.100', '2019-09-27 19:51:20', '笔记管理', '/noteview', '1');
INSERT INTO `aoa_user_log` VALUES ('2434', '192.168.2.100', '2019-09-27 19:51:20', '通讯录', '/addrmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2435', '192.168.2.100', '2019-09-27 19:51:20', '超级管理员', '/adminmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2436', '192.168.2.100', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2437', '192.168.2.100', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2438', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2439', '192.168.2.100', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('2440', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2441', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2442', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2443', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2444', '192.168.2.100', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('2445', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2446', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2447', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2448', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2449', '192.168.2.100', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2450', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2451', '192.168.2.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2452', '192.168.2.100', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2453', '192.168.2.100', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2454', '192.168.2.100', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2455', '192.168.2.100', '2019-09-27 19:51:20', '任务管理', '/taskmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2456', '192.168.2.100', '2019-09-27 19:51:20', '我的任务', '/mytask', '1');
INSERT INTO `aoa_user_log` VALUES ('2457', '192.168.2.100', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2458', '192.168.2.100', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2459', '192.168.2.100', '2019-09-27 19:51:20', '账号管理', '/accountmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2460', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2461', '192.168.2.100', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2462', '192.168.2.100', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2463', '192.168.2.100', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2464', '192.168.2.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2465', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2466', '192.168.2.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2467', '192.168.2.100', '2019-09-27 19:51:20', '考勤周报表', '/attendceweek', '1');
INSERT INTO `aoa_user_log` VALUES ('2468', '192.168.2.100', '2019-09-27 19:51:20', '考勤月报表', '/attendcemonth', '1');
INSERT INTO `aoa_user_log` VALUES ('2469', '192.168.2.100', '2019-09-27 19:51:20', '考勤列表', '/attendcelist', '1');
INSERT INTO `aoa_user_log` VALUES ('2470', '192.168.2.100', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '1');
INSERT INTO `aoa_user_log` VALUES ('2471', '192.168.2.100', '2019-09-27 19:51:20', '新建流程', '/xinxeng', '1');
INSERT INTO `aoa_user_log` VALUES ('2472', '192.168.2.100', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2473', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '5');
INSERT INTO `aoa_user_log` VALUES ('2474', '192.168.1.104', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '5');
INSERT INTO `aoa_user_log` VALUES ('2475', '192.168.1.104', '2019-09-27 19:51:20', '考勤管理', '/attendceatt', '5');
INSERT INTO `aoa_user_log` VALUES ('2476', '192.168.1.104', '2019-09-27 19:51:20', '流程审核', '/audit', '5');
INSERT INTO `aoa_user_log` VALUES ('2477', '192.168.1.104', '2019-09-27 19:51:20', '流程审核', '/audit', '5');
INSERT INTO `aoa_user_log` VALUES ('2478', '192.168.1.104', '2019-09-27 19:51:20', '角色列表', '/rolemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2479', '192.168.1.104', '2019-09-27 19:51:20', '邮件管理', '/mail', '1');
INSERT INTO `aoa_user_log` VALUES ('2480', '192.168.1.104', '2019-09-27 19:51:20', '状态管理', '/testsysstatus', '1');
INSERT INTO `aoa_user_log` VALUES ('2481', '192.168.1.104', '2019-09-27 19:51:20', '菜单管理', '/testsysmenu', '1');
INSERT INTO `aoa_user_log` VALUES ('2482', '192.168.1.104', '2019-09-27 19:51:20', '类型管理', '/testsystype', '1');
INSERT INTO `aoa_user_log` VALUES ('2483', '192.168.1.104', '2019-09-27 19:51:20', '部门管理', '/deptmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2484', '192.168.1.104', '2019-09-27 19:51:20', '在线用户', '/morelogrecord', '1');
INSERT INTO `aoa_user_log` VALUES ('2485', '192.168.1.104', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2486', '192.168.1.104', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2487', '192.168.1.104', '2019-09-27 19:51:20', '文件管理', '/filemanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2488', '192.168.1.104', '2019-09-27 19:51:20', '通知管理', '/infrommanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2489', '192.168.1.104', '2019-09-27 19:51:20', '通知列表', '/infromlist', '1');
INSERT INTO `aoa_user_log` VALUES ('2490', '192.168.1.104', '2019-09-27 19:51:20', '我的管理', '/chatmanage', '1');
INSERT INTO `aoa_user_log` VALUES ('2491', '192.168.1.104', '2019-09-27 19:51:20', '讨论区列表', '/chatlist', '1');

-- ----------------------------
-- Table structure for aoa_user_login_record
-- ----------------------------
DROP TABLE IF EXISTS `aoa_user_login_record`;
CREATE TABLE `aoa_user_login_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FKks6qpqj3ss4e4timjt0xok1p0` (`user_id`),
  CONSTRAINT `FKks6qpqj3ss4e4timjt0xok1p0` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_user_login_record
-- ----------------------------
INSERT INTO `aoa_user_login_record` VALUES ('1', null, null, '2019-10-16 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('2', null, null, '2019-10-17 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('3', null, null, '2019-10-18 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('4', null, null, '2019-10-19 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('5', null, null, '2019-10-20 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('6', null, null, '2019-10-21 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('7', null, null, '2019-10-22 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('8', null, null, '2019-10-19 21:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('9', null, null, '2019-10-17 21:12:25', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('10', null, null, '2019-10-20 21:12:30', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('11', null, null, '2019-10-21 21:12:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('12', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:29:23', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('13', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:37:40', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('14', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:43:51', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('15', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:44:56', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('16', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:45:28', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('17', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:47:13', null, '5');
INSERT INTO `aoa_user_login_record` VALUES ('18', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:47:41', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('19', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:48:16', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('20', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:50:15', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('21', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 19:53:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('22', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-21 20:00:13', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('23', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 00:33:15', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('24', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 01:05:49', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('25', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 08:05:55', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('26', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 08:12:09', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('27', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:09:08', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('28', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:19:56', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('29', 'Chrome/60.0.3112.90', '172.27.198.122', '2019-10-22 09:28:51', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('30', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:30:48', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('31', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:32:56', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('32', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:51:33', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('33', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:53:22', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('34', 'Chrome/59.0.3071.115', '172.31.17.170', '2019-10-22 09:58:59', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('35', 'Chrome/60.0.3112.90', '172.27.198.122', '2019-10-22 10:10:19', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('36', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:17:20', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('37', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:18:01', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('38', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:21:04', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('39', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:22:12', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('40', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:22:32', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('41', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:23:01', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('42', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:28:27', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('43', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:33:07', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('44', 'Chrome/61.0.3163.100', '192.168.1.157', '2019-10-22 10:35:57', null, '5');
INSERT INTO `aoa_user_login_record` VALUES ('45', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:37:54', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('46', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 10:43:01', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('47', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:00:32', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('48', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:01:51', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('49', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:03:58', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('50', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:10:06', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('51', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:17:47', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('52', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:36:31', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('53', 'Chrome/59.0.3071.115', '192.168.1.233', '2019-10-22 11:47:41', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('54', 'Chrome/53.0.2785.104', '172.31.17.100', '2017-12-14 20:32:31', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('55', 'Chrome/63.0.3239.84', '172.31.17.100', '2017-12-16 19:29:56', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('56', 'Chrome/63.0.3239.84', '172.31.17.100', '2017-12-16 19:43:25', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('57', 'Chrome/63.0.3239.84', '172.31.17.100', '2017-12-16 20:04:06', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('58', 'Chrome/63.0.3239.84', '172.27.93.0', '2017-12-20 10:18:02', null, '5');
INSERT INTO `aoa_user_login_record` VALUES ('59', 'Chrome/63.0.3239.84', '172.31.17.236', '2017-12-23 12:31:01', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('60', 'Chrome/63.0.3239.84', '172.31.17.236', '2017-12-23 17:26:29', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('61', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-01 21:50:53', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('62', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-01 21:53:20', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('63', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-02 23:40:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('64', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-02 23:47:37', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('65', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-02 23:53:58', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('66', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-02 23:59:45', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('67', 'Chrome/63.0.3239.132', '192.168.2.100', '2018-02-03 00:00:32', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('68', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 14:52:28', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('69', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 21:18:17', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('70', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:14:11', null, '23');
INSERT INTO `aoa_user_login_record` VALUES ('71', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:17:16', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('72', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:18:46', null, '23');
INSERT INTO `aoa_user_login_record` VALUES ('73', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:21:18', null, '13');
INSERT INTO `aoa_user_login_record` VALUES ('74', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:29:41', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('75', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:34:30', null, '11');
INSERT INTO `aoa_user_login_record` VALUES ('76', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 22:50:08', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('77', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-03 23:37:56', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('78', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 00:15:39', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('79', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 01:06:12', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('80', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 01:06:35', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('81', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 01:09:00', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('82', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 01:14:54', null, '3');
INSERT INTO `aoa_user_login_record` VALUES ('83', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-04 01:17:02', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('84', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-05 18:52:29', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('85', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-05 19:31:22', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('86', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-05 20:34:43', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('87', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-06 17:46:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('88', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-06 19:41:54', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('89', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-07 00:41:15', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('90', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 18:16:59', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('91', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 20:03:11', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('92', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 21:26:22', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('93', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 21:41:06', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('94', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 22:21:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('95', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-08 23:06:18', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('96', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-09 00:47:47', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('97', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-09 11:23:24', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('98', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-11 09:49:34', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('99', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-19 13:15:13', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('100', 'Chrome/63.0.3239.132', '192.168.2.100', '2019-02-19 23:35:50', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('101', 'Chrome/64.0.3282.186', '192.168.1.104', '2019-03-01 19:13:19', null, '5');
INSERT INTO `aoa_user_login_record` VALUES ('102', 'Chrome/64.0.3282.186', '192.168.1.104', '2019-03-01 19:17:50', null, '5');
INSERT INTO `aoa_user_login_record` VALUES ('103', 'Chrome/64.0.3282.186', '192.168.1.104', '2019-03-01 19:21:39', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('104', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-22 23:00:15', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('105', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-23 09:12:50', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('106', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-23 23:09:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('107', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-23 23:21:17', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('108', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-23 23:23:11', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('109', 'Firefox/69.0', '192.168.56.1', '2019-10-23 23:49:14', null, '28');
INSERT INTO `aoa_user_login_record` VALUES ('110', 'Firefox/69.0', '192.168.56.1', '2019-10-24 00:29:52', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('111', 'Firefox/69.0', '192.168.56.1', '2019-10-24 12:55:51', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('112', 'Firefox/69.0', '192.168.56.1', '2019-10-24 13:54:45', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('113', 'Firefox/69.0', '192.168.56.1', '2019-10-24 14:45:29', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('114', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-24 15:06:09', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('115', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-24 15:06:26', null, '6');
INSERT INTO `aoa_user_login_record` VALUES ('116', 'Firefox/69.0', '192.168.56.1', '2019-10-24 15:29:38', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('117', 'Firefox/69.0', '192.168.56.1', '2019-10-24 16:09:40', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('118', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-24 16:52:20', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('119', 'Firefox/69.0', '192.168.56.1', '2019-10-24 16:53:35', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('120', 'Firefox/69.0', '192.168.56.1', '2019-10-24 17:02:22', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('121', 'Firefox/69.0', '192.168.56.1', '2019-10-24 17:17:14', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('122', 'Firefox/69.0', '192.168.56.1', '2019-10-24 17:38:47', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('123', 'Firefox/69.0', '192.168.56.1', '2019-10-24 18:13:04', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('124', 'Firefox/69.0', '192.168.56.1', '2019-10-24 18:23:44', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('125', 'Firefox/69.0', '192.168.56.1', '2019-10-24 18:28:21', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('126', 'Firefox/69.0', '192.168.56.1', '2019-10-24 18:32:01', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('127', 'Firefox/69.0', '192.168.56.1', '2019-10-24 18:43:42', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('128', 'Firefox/69.0', '192.168.56.1', '2019-10-24 19:40:55', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('129', 'Firefox/69.0', '192.168.56.1', '2019-10-24 19:47:39', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('130', 'Firefox/69.0', '192.168.56.1', '2019-10-24 19:48:07', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('131', 'Firefox/69.0', '192.168.56.1', '2019-10-24 20:29:39', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('132', 'Firefox/69.0', '192.168.56.1', '2019-10-24 21:27:04', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('133', 'Firefox/69.0', '192.168.56.1', '2019-10-24 21:31:24', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('134', 'Firefox/69.0', '192.168.56.1', '2019-10-24 21:35:57', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('135', 'Firefox/69.0', '192.168.56.1', '2019-10-24 21:38:08', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('136', 'Firefox/69.0', '192.168.56.1', '2019-10-24 21:39:50', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('137', 'Firefox/69.0', '192.168.56.1', '2019-10-24 23:50:18', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('138', 'Firefox/69.0', '192.168.56.1', '2019-10-24 23:57:34', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('139', 'Firefox/69.0', '192.168.56.1', '2019-10-25 08:03:32', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('140', 'Firefox/69.0', '192.168.56.1', '2019-10-25 11:05:12', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('141', 'Firefox/69.0', '192.168.56.1', '2019-10-25 11:54:20', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('142', 'Firefox/69.0', '192.168.56.1', '2019-10-25 12:50:40', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('143', 'Firefox/69.0', '192.168.56.1', '2019-10-25 14:10:10', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('144', 'Firefox/69.0', '192.168.56.1', '2019-10-25 14:52:59', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('145', 'Firefox/69.0', '192.168.56.1', '2019-10-25 17:52:20', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('146', 'Firefox/69.0', '192.168.56.1', '2019-10-25 18:33:45', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('147', 'Firefox/69.0', '192.168.56.1', '2019-10-25 18:34:08', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('148', 'Firefox/69.0', '192.168.56.1', '2019-10-25 18:57:13', null, '9');
INSERT INTO `aoa_user_login_record` VALUES ('149', 'Firefox/69.0', '192.168.56.1', '2019-10-25 19:12:16', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('150', 'Firefox/69.0', '192.168.56.1', '2019-10-25 21:24:07', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('151', 'Firefox/69.0', '192.168.56.1', '2019-10-26 00:28:25', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('152', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 08:47:16', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('153', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-26 10:27:22', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('154', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 12:17:30', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('155', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-26 12:24:22', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('156', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 12:32:18', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('157', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 14:38:04', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('158', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-26 15:24:30', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('159', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 15:56:13', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('160', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-26 17:46:27', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('161', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 17:56:47', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('162', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 18:55:50', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('163', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 20:09:31', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('164', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 22:25:07', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('165', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-26 23:06:02', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('166', 'Firefox 7/70.0', '192.168.56.1', '2019-10-26 23:40:06', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('167', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 00:11:26', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('168', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 08:55:19', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('169', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 08:57:18', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('170', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 12:00:56', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('171', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 12:32:10', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('172', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 12:34:44', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('173', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 14:01:59', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('174', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 14:06:25', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('175', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 15:04:08', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('176', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 15:05:27', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('177', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 15:56:33', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('178', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 18:33:10', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('179', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 20:08:05', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('180', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 20:08:25', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('181', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 20:32:46', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('182', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 20:37:27', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('183', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 20:44:15', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('184', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 20:44:50', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('185', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 20:55:35', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('186', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 21:01:40', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('187', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 21:07:35', null, '36');
INSERT INTO `aoa_user_login_record` VALUES ('188', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 22:00:22', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('189', 'Firefox 7/70.0', '192.168.56.1', '2019-10-27 22:15:19', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('190', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 22:18:37', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('191', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-27 23:59:05', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('192', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 00:22:17', null, '36');
INSERT INTO `aoa_user_login_record` VALUES ('193', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 08:21:06', null, '2');
INSERT INTO `aoa_user_login_record` VALUES ('194', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 08:22:06', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('195', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 08:29:30', null, '36');
INSERT INTO `aoa_user_login_record` VALUES ('196', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 09:27:04', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('197', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 12:49:10', null, '36');
INSERT INTO `aoa_user_login_record` VALUES ('198', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 16:05:54', null, '36');
INSERT INTO `aoa_user_login_record` VALUES ('199', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 17:44:57', null, '8');
INSERT INTO `aoa_user_login_record` VALUES ('200', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 17:45:25', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('201', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 18:10:48', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('202', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 20:49:23', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('203', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 20:52:48', null, '1');
INSERT INTO `aoa_user_login_record` VALUES ('204', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 22:04:46', null, '7');
INSERT INTO `aoa_user_login_record` VALUES ('205', 'Firefox 7/70.0', '192.168.56.1', '2019-10-28 22:08:53', null, '4');
INSERT INTO `aoa_user_login_record` VALUES ('206', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 22:33:10', null, '24');
INSERT INTO `aoa_user_login_record` VALUES ('207', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 22:50:40', null, '24');
INSERT INTO `aoa_user_login_record` VALUES ('208', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 22:53:26', null, '24');
INSERT INTO `aoa_user_login_record` VALUES ('209', 'Chrome/75.0.3770.100', '192.168.56.1', '2019-10-28 23:09:54', null, '1');

-- ----------------------------
-- Table structure for aoa_vote_list
-- ----------------------------
DROP TABLE IF EXISTS `aoa_vote_list`;
CREATE TABLE `aoa_vote_list` (
  `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `selectone` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_vote_list
-- ----------------------------
INSERT INTO `aoa_vote_list` VALUES ('1', '2019-10-04 21:52:48', '1', '2019-10-03 21:52:48');
INSERT INTO `aoa_vote_list` VALUES ('2', '2019-10-04 21:54:36', '1', '2019-10-03 21:54:36');
INSERT INTO `aoa_vote_list` VALUES ('3', '2019-10-04 23:18:52', '1', '2019-10-03 23:18:52');
INSERT INTO `aoa_vote_list` VALUES ('4', '2019-10-03 02:57:33', '2', '2019-10-04 02:57:33');
INSERT INTO `aoa_vote_list` VALUES ('5', '2019-10-05 03:18:25', '1', '2019-10-04 03:18:25');
INSERT INTO `aoa_vote_list` VALUES ('7', '2019-10-30 15:27:03', '2', '2019-10-27 15:27:03');
INSERT INTO `aoa_vote_list` VALUES ('8', '2019-10-18 16:01:25', '2', '2019-10-04 16:01:25');
INSERT INTO `aoa_vote_list` VALUES ('9', '2019-10-06 22:53:22', '2', '2019-10-05 22:53:22');
INSERT INTO `aoa_vote_list` VALUES ('10', '2019-10-06 22:56:45', '2', '2019-10-05 22:56:45');
INSERT INTO `aoa_vote_list` VALUES ('11', '2019-10-06 22:57:59', '1', '2019-10-05 22:57:59');
INSERT INTO `aoa_vote_list` VALUES ('12', '2019-10-13 23:25:24', '1', '2019-10-12 23:25:24');
INSERT INTO `aoa_vote_list` VALUES ('13', '2019-11-30 16:54:53', '2', '2019-10-26 16:54:53');

-- ----------------------------
-- Table structure for aoa_vote_titles
-- ----------------------------
DROP TABLE IF EXISTS `aoa_vote_titles`;
CREATE TABLE `aoa_vote_titles` (
  `title_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  KEY `FKnl21d99b8hc6gtfrrfsc9alge` (`vote_id`),
  CONSTRAINT `FKnl21d99b8hc6gtfrrfsc9alge` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_vote_titles
-- ----------------------------
INSERT INTO `aoa_vote_titles` VALUES ('1', '#5bc0de', '22222', '1');
INSERT INTO `aoa_vote_titles` VALUES ('2', '#5bc0de', '111111', '1');
INSERT INTO `aoa_vote_titles` VALUES ('3', '#5bc0de', '33333', '1');
INSERT INTO `aoa_vote_titles` VALUES ('4', '#5bc0de', '我的33333', '2');
INSERT INTO `aoa_vote_titles` VALUES ('5', '#5bc0de', '你的2222222', '2');
INSERT INTO `aoa_vote_titles` VALUES ('6', '#5bc0de', '他的44444', '2');
INSERT INTO `aoa_vote_titles` VALUES ('7', '#7589d2', 'fsdfadsf', '3');
INSERT INTO `aoa_vote_titles` VALUES ('8', '#292fce', 'fsafas', '3');
INSERT INTO `aoa_vote_titles` VALUES ('9', '#5af4a3', 'dfa ', '3');
INSERT INTO `aoa_vote_titles` VALUES ('10', '#5bc0de', '他的44444', '3');
INSERT INTO `aoa_vote_titles` VALUES ('11', '#8d0282', '多选2 ', '4');
INSERT INTO `aoa_vote_titles` VALUES ('12', '#57427f', '多选三', '4');
INSERT INTO `aoa_vote_titles` VALUES ('13', '#29bcfc', '多选1', '4');
INSERT INTO `aoa_vote_titles` VALUES ('14', '#79d8b7', '去泰国', '5');
INSERT INTO `aoa_vote_titles` VALUES ('15', '#4a7647', '哇塞，去香港', '5');
INSERT INTO `aoa_vote_titles` VALUES ('16', '#5627a7', '去北京', '5');
INSERT INTO `aoa_vote_titles` VALUES ('20', '#6653e0', '222', '7');
INSERT INTO `aoa_vote_titles` VALUES ('21', '#af8675', '1111', '7');
INSERT INTO `aoa_vote_titles` VALUES ('22', '#4414e5', '333', '7');
INSERT INTO `aoa_vote_titles` VALUES ('23', '#9cb08f', '32131', '8');
INSERT INTO `aoa_vote_titles` VALUES ('24', '#72e6e2', '31231', '8');
INSERT INTO `aoa_vote_titles` VALUES ('25', '#9a46f7', '112312', '8');
INSERT INTO `aoa_vote_titles` VALUES ('26', '#8da9b7', '大师傅3', '9');
INSERT INTO `aoa_vote_titles` VALUES ('27', '#efe79f', '大师傅', '9');
INSERT INTO `aoa_vote_titles` VALUES ('28', '#118a0a', '这是投票4', '10');
INSERT INTO `aoa_vote_titles` VALUES ('29', '#1c6035', '这是投票1', '10');
INSERT INTO `aoa_vote_titles` VALUES ('30', '#bf617e', '这是投票3', '10');
INSERT INTO `aoa_vote_titles` VALUES ('31', '#97dc10', '这是投票2', '10');
INSERT INTO `aoa_vote_titles` VALUES ('32', '#b90601', '范德萨', '11');
INSERT INTO `aoa_vote_titles` VALUES ('33', '#4c6a51', '电风扇', '11');
INSERT INTO `aoa_vote_titles` VALUES ('34', '#4504de', '范德萨', '12');
INSERT INTO `aoa_vote_titles` VALUES ('35', '#530145', '地方撒', '12');
INSERT INTO `aoa_vote_titles` VALUES ('36', '#3b9d75', '方案4', '13');
INSERT INTO `aoa_vote_titles` VALUES ('37', '#93f67c', '方案1', '13');
INSERT INTO `aoa_vote_titles` VALUES ('38', '#962e36', '方案2', '13');
INSERT INTO `aoa_vote_titles` VALUES ('39', '#28b0b4', '方案3', '13');

-- ----------------------------
-- Table structure for aoa_vote_title_user
-- ----------------------------
DROP TABLE IF EXISTS `aoa_vote_title_user`;
CREATE TABLE `aoa_vote_title_user` (
  `vote_title_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vote_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`vote_title_user_id`),
  KEY `FKb2pou179gr3wf10lx0wy6qrli` (`user_id`),
  KEY `FK79ia8m9w7faxi7wmth7or8mqg` (`title_id`),
  CONSTRAINT `FK79ia8m9w7faxi7wmth7or8mqg` FOREIGN KEY (`title_id`) REFERENCES `aoa_vote_titles` (`title_id`),
  CONSTRAINT `FKb2pou179gr3wf10lx0wy6qrli` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aoa_vote_title_user
-- ----------------------------
INSERT INTO `aoa_vote_title_user` VALUES ('1', '3', '1', '7');
INSERT INTO `aoa_vote_title_user` VALUES ('2', '3', '2', '8');
INSERT INTO `aoa_vote_title_user` VALUES ('3', '3', '3', '9');
INSERT INTO `aoa_vote_title_user` VALUES ('4', '3', '4', '7');
INSERT INTO `aoa_vote_title_user` VALUES ('5', '1', '2', '2');
INSERT INTO `aoa_vote_title_user` VALUES ('6', '2', '2', '4');
INSERT INTO `aoa_vote_title_user` VALUES ('7', '4', '2', '11');
INSERT INTO `aoa_vote_title_user` VALUES ('8', '4', '2', '12');
INSERT INTO `aoa_vote_title_user` VALUES ('9', '4', '2', '13');
INSERT INTO `aoa_vote_title_user` VALUES ('13', '5', '2', '15');
INSERT INTO `aoa_vote_title_user` VALUES ('17', '8', '2', '23');
INSERT INTO `aoa_vote_title_user` VALUES ('18', '8', '2', '24');
INSERT INTO `aoa_vote_title_user` VALUES ('19', '8', '2', '25');
INSERT INTO `aoa_vote_title_user` VALUES ('20', '11', '2', '32');
INSERT INTO `aoa_vote_title_user` VALUES ('21', '8', '1', '23');
INSERT INTO `aoa_vote_title_user` VALUES ('22', '8', '1', '24');
INSERT INTO `aoa_vote_title_user` VALUES ('23', '8', '1', '25');
