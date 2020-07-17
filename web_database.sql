/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 101.200.57.76:3306
 Source Schema         : web_database

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 17/07/2020 19:58:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for category_brand_files
-- ----------------------------
DROP TABLE IF EXISTS `category_brand_files`;
CREATE TABLE `category_brand_files`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `category_brand_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` int(0) NOT NULL,
  `category_id` int(0) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 504 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_brand_files
-- ----------------------------
INSERT INTO `category_brand_files` VALUES (1, '雷蛇', 123456, 456124, '瑕疵');
INSERT INTO `category_brand_files` VALUES (2, '北京大学出版社', 123654, 456123, '');
INSERT INTO `category_brand_files` VALUES (3, '华为', 789456, 789654, '');
INSERT INTO `category_brand_files` VALUES (4, 'Nike', 147258, 456132, '国内仓');
INSERT INTO `category_brand_files` VALUES (5, 'NIke', 147259, 456132, '海外仓');
INSERT INTO `category_brand_files` VALUES (501, '怡宝', 333333, 365789, NULL);

-- ----------------------------
-- Table structure for category_files
-- ----------------------------
DROP TABLE IF EXISTS `category_files`;
CREATE TABLE `category_files`  (
  `category_id` int(0) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 789658 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_files
-- ----------------------------
INSERT INTO `category_files` VALUES (456125, '玩具');
INSERT INTO `category_files` VALUES (456132, '体育用品');
INSERT INTO `category_files` VALUES (789665, '游戏工具');
INSERT INTO `category_files` VALUES (789681, '667');

-- ----------------------------
-- Table structure for client_summary
-- ----------------------------
DROP TABLE IF EXISTS `client_summary`;
CREATE TABLE `client_summary`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `salenums` int(0) NULL DEFAULT NULL,
  `salemon` int(0) NULL DEFAULT NULL,
  `resalenums` int(0) NULL DEFAULT NULL,
  `resalemon` int(0) NULL DEFAULT NULL,
  `nums` int(0) NULL DEFAULT NULL,
  `mon` int(0) NULL DEFAULT NULL,
  `lib` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `worker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client_summary
-- ----------------------------
INSERT INTO `client_summary` VALUES (1, '张三', 1, 1, 1, 1, 0, 0, '仓库A', '李四', '赵四', '2020-07-16 18:03:01', '无');

-- ----------------------------
-- Table structure for commodity_category_file
-- ----------------------------
DROP TABLE IF EXISTS `commodity_category_file`;
CREATE TABLE `commodity_category_file`  (
  `commodity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `commodity_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `commodity_specifications` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_of_measurement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `condition_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehousing_price` double(10, 2) NULL DEFAULT NULL,
  `ex_warehousing_price` double(10, 2) NULL DEFAULT NULL,
  `inventory_cap` int(0) NULL DEFAULT NULL,
  `inventory_floor` int(0) NULL DEFAULT NULL,
  `opening_quantity` int(0) NULL DEFAULT NULL,
  `average_opening` double(10, 2) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_category_file
-- ----------------------------
INSERT INTO `commodity_category_file` VALUES ('概率论与数理统计', '教育用品', '9787563637911', '140mm×203mm', '本', '1', 14.50, 18.80, 1000, 200, 230, 18.80, NULL, '青岛仓1');
INSERT INTO `commodity_category_file` VALUES ('海绵宝宝玩偶', '玩具', '9787563637915', '140mm×203mmx170mm', '个', '1', 11.00, 20.90, 200, 10, 86, 35.00, NULL, '烟台仓2');
INSERT INTO `commodity_category_file` VALUES ('HUAWEI P40 Pro', '电子产品', '9787563630011', '72mm×158mm×8mm', '台', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `commodity_category_file` VALUES ('Razer雷蛇', '电脑外设', '9787563630016', 'usb', '把', '1', 2000.00, 2699.00, 80, 5, 41, 2699.00, NULL, '上海仓1');

-- ----------------------------
-- Table structure for decision_commodity
-- ----------------------------
DROP TABLE IF EXISTS `decision_commodity`;
CREATE TABLE `decision_commodity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `commodity_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `international_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `commodity_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `commodity_specifications` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unit_of_measurement` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category` int(0) NOT NULL,
  `fresh_label` int(0) NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `supplier` int(0) NOT NULL,
  `interest_rate` int(0) NOT NULL,
  `warehouse` int(0) NULL DEFAULT NULL,
  `commodity_label` int(0) NULL DEFAULT NULL,
  `inventory_cap` int(0) NULL DEFAULT NULL,
  `inventory_floor` int(0) NULL DEFAULT NULL,
  `initial_quantity` int(0) NULL DEFAULT NULL,
  `initial_average_price` double NULL DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `commodity_id`(`commodity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of decision_commodity
-- ----------------------------
INSERT INTO `decision_commodity` VALUES (1, '9787563637911', '9787563637911', '概率论与数理统计', '140mm×203mm', '本', 456123, 0, 18.8, 159357, 0, 147159, 0, 600, 10, 250, 17.78, '这是一本好书');
INSERT INTO `decision_commodity` VALUES (2, '9787563637912', '9787563637912', '算法设计与分析', '140mm×203mm', '本', 456124, 0, 19.8, 159358, 0, 147158, 1, 601, 11, 250, 17.78, '算法学习的好帮手');
INSERT INTO `decision_commodity` VALUES (3, '9787563637913', '9787563637913', '编程珠玑', '140mm×203mm', '本', 456124, 0, 15.4, 159358, 0, 147159, 0, 600, 10, 250, 17.78, '程序员面试必读');
INSERT INTO `decision_commodity` VALUES (4, '9787563637914', '9787563637914', '水杯', '140mm×203mmx150mm', '个', 456123, 0, 18.8, 159456, 0, 147159, 0, 610, 10, 243, 20.5, '一款非常实用的水杯');
INSERT INTO `decision_commodity` VALUES (5, '9787563637915', '9787563637915', '海绵宝宝玩偶', '140mm×203mmx170mm', '个', 456125, 0, 20.9, 159462, 0, 147159, 0, 600, 10, 250, 18.5, '非常可爱的玩偶');
INSERT INTO `decision_commodity` VALUES (6, '9787563630011', '9787563630011', 'HUAWEI P40 Pro', '72mm×158mm×8mm', '台', 789654, 0, 5988, 357189, 0, 147259, 0, 6000, 100, 250, 5988, '这是华为手机');
INSERT INTO `decision_commodity` VALUES (7, '9787563630012', '9787563630012', 'XiaoMi 10 Pro', '74mm×160mm×8mm', '台', 789654, 0, 4999, 796567, 0, 147599, 0, 6500, 210, 300, 5000, '这是小米手机');
INSERT INTO `decision_commodity` VALUES (8, '9787563630013', '9787563630013', 'Lenovo R7000 2020', '15.6 1920x1080', '台', 432561, 0, 6199, 224356, 1, 897346, 0, 1100, 300, 510, 5999, '这是联想笔记本电脑');
INSERT INTO `decision_commodity` VALUES (9, '9787563630014', '9787563630014', '瑞士军刀双肩背包', '49*34*21cm', '只', 3344657, 0, 155, 871459, 0, 172369, 0, 2000, 400, 1500, 154, '这是一个书包');
INSERT INTO `decision_commodity` VALUES (10, '9787563630015', '9787563630015', '罗技MX Keys', 'usb', '把', 456124, 0, 899, 467902, 0, 447159, 0, 700, 40, 266, 880, '这是个键盘');
INSERT INTO `decision_commodity` VALUES (11, '9787563630016', '9787563630016', 'Razer雷蛇', 'usb', '把', 456124, 0, 2699, 557832, 0, 223159, 0, 100, 10, 250, 2599, '这是还是键盘');
INSERT INTO `decision_commodity` VALUES (12, '9787563630017', '9787563630017', '荣耀HONOR', '72mm×158mm×8mm', '台', 123679, 0, 4799, 326578, 0, 454664, 0, 800, 200, 370, 4888, '这是一个honor手机');
INSERT INTO `decision_commodity` VALUES (13, '9787563632301', '9787563632301', '惠普暗影精灵RTX', '360mm*267mm*24mm', '台', 346131, 0, 8299, 404399, 0, 897346, 0, 80, 8, 200, 8399, '这是惠普笔记本电脑');
INSERT INTO `decision_commodity` VALUES (14, '9787563632302', '9787563632302', '斯伯丁74-221', '750mm-760mm', '个', 346132, 0, 166, 106699, 0, 497565, 0, 300, 50, 500, 188, '这是一个斯伯丁篮球');
INSERT INTO `decision_commodity` VALUES (15, '9787563632303', '9787563632303', 'MIKASA排球', '280.00g', '个', 346133, 0, 268, 106699, 0, 497565, 0, 250, 20, 300, 300, '这是米卡萨比赛用球5号标准排球VQ2000');
INSERT INTO `decision_commodity` VALUES (16, '9787563632304', '9787563632304', 'molten足球5号', '0.43kg', '个', 346134, 0, 265, 106699, 0, 497565, 0, 250, 15, 300, 300, '这是魔腾FIFA公认手缝足球');
INSERT INTO `decision_commodity` VALUES (17, '9587563632305', '9587563632305', 'GIVENCHY小羊皮333', '3.4g', '只', 564899, 0, 345, 675482, 0, 136985, 0, 300, 30, 400, 350, '这是纪梵希小羊皮口红半哑光唇膏');
INSERT INTO `decision_commodity` VALUES (18, '9587563632306', '9587563632306', 'Dior#999#缎光', '3.6g', '只', 564899, 0, 330, 675482, 0, 136985, 0, 230, 20, 250, 250, '这是Dior迪奥传奇红唇经典哑光口红');

-- ----------------------------
-- Table structure for decision_sales_summary
-- ----------------------------
DROP TABLE IF EXISTS `decision_sales_summary`;
CREATE TABLE `decision_sales_summary`  (
  `sales_summary` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NULL DEFAULT NULL,
  `commodity_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unit_of_measurement` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sales_volumes` int(0) NULL DEFAULT NULL,
  `sales_amount` double NULL DEFAULT NULL,
  `return_quantity` int(0) NULL DEFAULT NULL,
  `return_amount` double NULL DEFAULT NULL,
  `total_quantity` int(0) NULL DEFAULT NULL,
  `total_amount` double NULL DEFAULT NULL,
  `customer` int(0) NOT NULL,
  `staff` int(0) NOT NULL,
  `warehouse` int(0) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `emp_commodity_id`(`commodity_id`) USING BTREE,
  CONSTRAINT `emp_commodity_id` FOREIGN KEY (`commodity_id`) REFERENCES `decision_commodity` (`commodity_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of decision_sales_summary
-- ----------------------------
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563637911', '2020-07-13', '9787563637911', '本', 20, 370, 1, 18, 22, 300, 15919, 369159, 789456, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563637912', '2020-07-04', '9787563637912', '本', 30, 360, 1, 21, 24, 301, 15642, 369457, 789465, '真是很有意思呢');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563637913', '2020-08-02', '9787563637913', '本', 20, 371, 1, 18, 42, 302, 15919, 369159, 765471, '有用');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563637914', '2020-06-01', '9787563637914', '个', 21, 369, 1, 14, 20, 304, 15920, 369412, 785614, '真是太可爱了呢');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563637915', '2020-07-11', '9787563637915', '个', 20, 370, 1, 18, 22, 300, 15919, 369159, 789456, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630011', '2020-07-13', '9787563630011', '台', 40, 236000, 1, 5988, 41, 222000, 15012, 369159, 777456, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630012', '2020-07-13', '9787563630012', '台', 55, 274945, 1, 4999, 56, 267896, 15013, 369159, 799456, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630013', '2020-07-13', '9787563630013', '台', 120, 743880, 1, 6199, 121, 742680, 15014, 370159, 734456, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630014', '2020-07-13', '9787563630014', '只', 400, 62000, 1, 155, 41, 61880, 15015, 377155, 789476, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630015', '2020-07-13', '9787563630015', '把', 600, 539400, 1, 899, 601, 538900, 15016, 367153, 789326, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630016', '2020-07-13', '9787563630016', '把', 60, 161940, 1, 2699, 61, 160560, 15017, 365152, 786556, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563630017', '2020-07-13', '9787563630017', '台', 50, 239950, 1, 4799, 51, 23790, 15018, 390156, 780156, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563632301', '2020-07-12', '9787563632301', '台', 40, 331960, 1, 8299, 51, 323661, 11056, 957369, 897346, '真好');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563632302', '2020-07-09', '9787563632302', '个', 78, 12948, 0, 0, 78, 12948, 15398, 369957, 497565, '好用');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563632303', '2020-07-11', '9787563632303', '个', 56, 15008, 2, 112, 54, 14472, 15398, 369957, 497565, '不孬');
INSERT INTO `decision_sales_summary` VALUES ('2020-9787563632304', '2020-07-11', '9787563632304', '个', 45, 11925, 1, 265, 44, 11660, 15398, 369957, 497565, '挺好的');
INSERT INTO `decision_sales_summary` VALUES ('2020-9587563632305', '2020-07-07', '9587563632305', '只', 31, 10695, 1, 345, 32, 10200, 15398, 420311, 136985, '好看');
INSERT INTO `decision_sales_summary` VALUES ('2020-9587563632306', '2020-07-13', '9587563632306', '只', 20, 6600, 1, 330, 21, 6300, 11056, 420311, 136985, '好看');

-- ----------------------------
-- Table structure for file_admin
-- ----------------------------
DROP TABLE IF EXISTS `file_admin`;
CREATE TABLE `file_admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_admin
-- ----------------------------
INSERT INTO `file_admin` VALUES (1, 'admin', 'admin', '管理员');

-- ----------------------------
-- Table structure for file_department
-- ----------------------------
DROP TABLE IF EXISTS `file_department`;
CREATE TABLE `file_department`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `dept_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `dept_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门电话',
  `principal_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人id',
  `dept_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门地址',
  `remake` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_department
-- ----------------------------
INSERT INTO `file_department` VALUES (1, '研发部', '888888', '15145564788', '3', '深圳', '备注1');
INSERT INTO `file_department` VALUES (2, '财务部', '777777', '15898778888', '4', '北京', '备注2');
INSERT INTO `file_department` VALUES (3, '人事部', '666666', '18956478974', '6', '上海', '备注1备注1');

-- ----------------------------
-- Table structure for file_staff
-- ----------------------------
DROP TABLE IF EXISTS `file_staff`;
CREATE TABLE `file_staff`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `flag` int(0) NULL DEFAULT NULL COMMENT '0.员工 1. 负责人',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_staff
-- ----------------------------
INSERT INTO `file_staff` VALUES (1, '张三', '男', '广东省深圳市', '131223@qq.com', '15112314000', 0, '1997-01-01', '研发部');
INSERT INTO `file_staff` VALUES (2, '李四', '男', '福建省福州市', '131243@qq.com', '15112314901', 0, '1995-02-18', '财经部');
INSERT INTO `file_staff` VALUES (3, '马超', '男', '浙江省杭州市', '131255@qq.com', '15112314457', 1, '1998-11-06', '研发部');
INSERT INTO `file_staff` VALUES (4, '赵云', '男', '浙江省温州市', '131266@qq.com', '15112314745', 1, '1991-12-13', '财经部');
INSERT INTO `file_staff` VALUES (5, '德玛', '男', '江苏省南京市', '131277@qq.com', '15112314588', 0, '1992-10-14', '人事部');
INSERT INTO `file_staff` VALUES (6, '李欣', '男', '广东省广州市', '131288@qq.com', '15112314999', 1, '1997-09-13', '人事部');
INSERT INTO `file_staff` VALUES (7, '刘强', '男', '广东省东莞市', '131299@qq.com', '15112314588', 0, '1993-08-20', '财经部');
INSERT INTO `file_staff` VALUES (8, '赵凯', '男', '江西省南昌市', '131200@qq.com', '15112314545', 0, '1994-02-13', '人事部');
INSERT INTO `file_staff` VALUES (9, '李强', '男', '湖北省武汉市', '131211@qq.com', '15112314518', 0, '1995-07-14', '研发部');
INSERT INTO `file_staff` VALUES (29, '张仨', '男', '山东', '123456789@163.com', '15234567894', 0, '2000-07-17', '人事部');
INSERT INTO `file_staff` VALUES (30, '啊啊啊', '男', '12333333321312312', '231312321@qq.com', '123213123', 0, '2020-07-09', NULL);

-- ----------------------------
-- Table structure for finance_account
-- ----------------------------
DROP TABLE IF EXISTS `finance_account`;
CREATE TABLE `finance_account`  (
  `accountId` int(0) NOT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `income` int(0) NULL DEFAULT NULL,
  `expenses` int(0) NULL DEFAULT NULL,
  `balance` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`accountId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finance_account
-- ----------------------------
INSERT INTO `finance_account` VALUES (1, 'zhangsan', '2020-01-01', 4000, 2000, 6000);
INSERT INTO `finance_account` VALUES (2, 'lisi', '2020-01-02', 5000, 4000, 6000);
INSERT INTO `finance_account` VALUES (3, 'wangwu', '2020-01-03', 2000, 1500, 1000);
INSERT INTO `finance_account` VALUES (4, 'zhaoliu', '2020-01-03', 3500, 1500, 5000);
INSERT INTO `finance_account` VALUES (5, 'goudan', '2020-01-04', 5000, 4000, 3000);
INSERT INTO `finance_account` VALUES (6, 'erlv', '2020-01-04', 4050, 3050, 4000);
INSERT INTO `finance_account` VALUES (7, 'laowang', '2020-01-05', 6000, 7000, 11000);
INSERT INTO `finance_account` VALUES (8, 'shigandang', '2020-01-05', 6412, 4975, 1942);
INSERT INTO `finance_account` VALUES (9, 'huluwa', '2020-01-06', 4500, 3000, 7000);
INSERT INTO `finance_account` VALUES (10, 'xiyangyang', '2020-01-07', 8000, 6000, 4000);
INSERT INTO `finance_account` VALUES (11, 'zhangsan', '2020-01-07', 6000, 2000, 10000);
INSERT INTO `finance_account` VALUES (12, 'lisi', '2020-01-07', 9000, 8000, 5000);

-- ----------------------------
-- Table structure for finance_income_pay
-- ----------------------------
DROP TABLE IF EXISTS `finance_income_pay`;
CREATE TABLE `finance_income_pay`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pay` double NULL DEFAULT NULL,
  `income` double NULL DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finance_income_pay
-- ----------------------------
INSERT INTO `finance_income_pay` VALUES (1, '1', 0, 0, '2001-01-01');
INSERT INTO `finance_income_pay` VALUES (2, '1', 0, 0, '2001-01-02');
INSERT INTO `finance_income_pay` VALUES (3, '3', 0, 0, '2001-01-01');

-- ----------------------------
-- Table structure for finance_other_expenses
-- ----------------------------
DROP TABLE IF EXISTS `finance_other_expenses`;
CREATE TABLE `finance_other_expenses`  (
  `original_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `makeorder_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`original_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for finance_other_income
-- ----------------------------
DROP TABLE IF EXISTS `finance_other_income`;
CREATE TABLE `finance_other_income`  (
  `makeorder_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '制单日期',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账户',
  `money` int(0) NULL DEFAULT NULL COMMENT '金额',
  `project` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目',
  `manager` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `original_number` int(0) NOT NULL COMMENT '原始单号',
  PRIMARY KEY (`original_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finance_other_income
-- ----------------------------
INSERT INTO `finance_other_income` VALUES ('2020-05-05', '6225881304837593', 24210, '泾县实在电机货款', '关羽', 2475521);
INSERT INTO `finance_other_income` VALUES ('2020-06-16', ' 4392267537606583', 30000, '迎春铸造货款', '张飞 ', 3190371);
INSERT INTO `finance_other_income` VALUES ('2020-04-01', '9558800200136624752', 26978, '南通金锐高技术货款', '江麻子', 3405183);
INSERT INTO `finance_other_income` VALUES ('2020-03-16', '421349434061434062', 16030, '安江电机货款', '李详见', 3475430);
INSERT INTO `finance_other_income` VALUES ('2020-13-14', '53245436745532458436748', 2250, '宜兴丁山化工陶瓷货款', '王洪', 11611016);
INSERT INTO `finance_other_income` VALUES ('2020-01-15', '4532425324249103154403', 2580, '海门市申阳涂料货款', '张三', 13369976);
INSERT INTO `finance_other_income` VALUES ('2020-05-05', '6225881304837593', 24210, '南通金锐高技术货款', '王洪', 13369978);
INSERT INTO `finance_other_income` VALUES ('2020-05-05', '边坡防护网有限公司', 2250, '宜兴丁山化工陶瓷货款', '王红', 1336997644);

-- ----------------------------
-- Table structure for finance_pay
-- ----------------------------
DROP TABLE IF EXISTS `finance_pay`;
CREATE TABLE `finance_pay`  (
  `pay_number` int(0) NOT NULL AUTO_INCREMENT,
  `supplier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymethod` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `received_money` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_number` int(0) NULL DEFAULT NULL,
  `paydate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pay_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finance_pay
-- ----------------------------
INSERT INTO `finance_pay` VALUES (1, '足球供应商', '体育用品有限公司', '中国工商银行', '64523424781', '郭丽丽', '财务部门', '银行汇款', '￥6897', 1231222, '');

-- ----------------------------
-- Table structure for finance_receive
-- ----------------------------
DROP TABLE IF EXISTS `finance_receive`;
CREATE TABLE `finance_receive`  (
  `finance_receive_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` date NOT NULL,
  `client` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sales_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `money` double NOT NULL,
  `bank_of_deposit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`finance_receive_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finance_receive
-- ----------------------------
INSERT INTO `finance_receive` VALUES (1, '1111', '2', '2020-09-01', '3', '4', 5, '6', '7', '8', '9');
INSERT INTO `finance_receive` VALUES (2, '1', '1', '2001-01-01', '1', '1', 0, '1', '1', '1', '1');
INSERT INTO `finance_receive` VALUES (3, '5000', 'USA', '2001-01-01', '1', '1', 0, '1', '2', '1', '1');
INSERT INTO `finance_receive` VALUES (4, '1', '', '2001-01-01', '', '', 0, '', '', '', '');
INSERT INTO `finance_receive` VALUES (5, '1', '', '2001-01-01', '', '', 0, '', '', '', '1');
INSERT INTO `finance_receive` VALUES (6, '1', '', '2001-01-01', '1', '', 0, '', '', '', '');
INSERT INTO `finance_receive` VALUES (7, '1', '1', '2200-01-03', '1', '1', 0, '1', '1', '1', '1');
INSERT INTO `finance_receive` VALUES (8, '1', '', '2001-01-01', '1', '1111111', 0, '1', '2', '1', '1');
INSERT INTO `finance_receive` VALUES (9, '1', '```', '2001-01-01', '1', '1111111', 0, '1', '1', '1', '1');

-- ----------------------------
-- Table structure for finance_sales_number
-- ----------------------------
DROP TABLE IF EXISTS `finance_sales_number`;
CREATE TABLE `finance_sales_number`  (
  `sales_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_records
-- ----------------------------
DROP TABLE IF EXISTS `product_records`;
CREATE TABLE `product_records`  (
  `product_num` int(0) NOT NULL,
  `product_quantity` int(0) NOT NULL,
  `product_price` double(32, 2) NOT NULL,
  `staff_num` int(0) NOT NULL,
  `custom_num` int(0) NOT NULL,
  `ware_house` int(0) NOT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `salesman_num` int(0) NOT NULL,
  `category_num` int(0) NOT NULL,
  `category_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_records
-- ----------------------------
INSERT INTO `product_records` VALUES (1, 1, 1.00, 1, 1, 1, 1, 0, 0, '');
INSERT INTO `product_records` VALUES (2, 1, 2.00, 2, 2, 2, 13, 0, 0, '');
INSERT INTO `product_records` VALUES (2, 1, 2.00, 2, 2, 2, 16, 0, 0, '');
INSERT INTO `product_records` VALUES (1, 1, 1.00, 1, 1, 1, 17, 1, 1, '1');
INSERT INTO `product_records` VALUES (212, 234, 1.00, 11, 11, 1, 18, 1, 11, 'asdg');
INSERT INTO `product_records` VALUES (12, 12, 3214.00, 324, 4123, 2134, 19, 2431, 4213, '4123');
INSERT INTO `product_records` VALUES (12, 12, 3214.00, 324, 4123, 2134, 20, 2431, 4213, '4123');
INSERT INTO `product_records` VALUES (13, 234, 423.00, 423, 432, 213, 21, 4213, 4123, '4123');
INSERT INTO `product_records` VALUES (3, 34, 24.00, 432, 4231, 432, 22, 342, 42, '423');
INSERT INTO `product_records` VALUES (2, 2, 24.00, 2, 2, 2134, 23, 2, 2, '2');
INSERT INTO `product_records` VALUES (2, 2, 24.00, 2, 2, 2134, 24, 2, 2, '2');
INSERT INTO `product_records` VALUES (3, 34, 3214.00, 3, 3, 3, 25, 3, 3, '3');

-- ----------------------------
-- Table structure for purchase_orderlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_orderlist`;
CREATE TABLE `purchase_orderlist`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NULL DEFAULT NULL,
  `supplier` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `warehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `editor` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prepayments` int(0) NULL DEFAULT NULL,
  `account` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `manager` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remarks` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_orderlist
-- ----------------------------
INSERT INTO `purchase_orderlist` VALUES (59, '112', '2020-07-10', 'C供货商', '仓库B', '管理员A', 22, 'Admin', '员工C', NULL, NULL, 2);
INSERT INTO `purchase_orderlist` VALUES (60, '113', '2020-07-02', 'A供货商', '仓库B', '管理员B', 77, 'Admin', '员工C', NULL, NULL, 2);
INSERT INTO `purchase_orderlist` VALUES (61, '114', '2020-07-16', 'B供货商', '仓库B', '管理员B', 3000, 'Admin', '员工C', NULL, NULL, 1);
INSERT INTO `purchase_orderlist` VALUES (64, '115', '2020-07-16', 'C供货商', '仓库B', 'Admin', 7412, 'Acc', '员工C', NULL, NULL, 1);
INSERT INTO `purchase_orderlist` VALUES (65, '116', '2020-07-16', 'C供货商', '仓库B', '管理员B', 3033, 'Acc', '员工B', '', '', 0);
INSERT INTO `purchase_orderlist` VALUES (66, '117', '2020-07-16', 'B供货商', '仓库B', '管理员A', 1111, 'Admin', '员工B', '', '', 0);
INSERT INTO `purchase_orderlist` VALUES (67, '118', '2020-07-16', 'C供货商', '仓库C', '管理员A', 11, 'Acc', '员工C', '', '', 0);
INSERT INTO `purchase_orderlist` VALUES (68, '119', '2020-07-22', 'B供货商', '仓库C', '管理员B', 3000, 'Acc', '员工C', '', '', 0);
INSERT INTO `purchase_orderlist` VALUES (69, '120', '2020-07-16', 'B供货商', '仓库C', 'Admin', 3000, 'Acc', '员工C', '', '', 1);
INSERT INTO `purchase_orderlist` VALUES (71, '121', '2020-07-17', 'B供货商', '仓库B', 'Admin', 1033, 'Acc', '员工C', '', '', 1);
INSERT INTO `purchase_orderlist` VALUES (72, '122', '2020-08-07', 'B供货商', '仓库B', '管理员B', 3213, 'Admin', '员工C', '', '', 1);
INSERT INTO `purchase_orderlist` VALUES (73, '123', '2020-07-17', 'B供货商', '仓库C', 'Admin', 3122, 'Acc', '员工B', '', '', 0);

-- ----------------------------
-- Table structure for purchase_pricelist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_pricelist`;
CREATE TABLE `purchase_pricelist`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` date NOT NULL,
  `supplier` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `manager` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `remarks` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_pricelist
-- ----------------------------
INSERT INTO `purchase_pricelist` VALUES (63, '可乐', '2020-07-17', 'A供货商', '仓库A', '员工A', '瓶', 3.00, '');
INSERT INTO `purchase_pricelist` VALUES (64, '矿泉水', '2020-01-01', 'B供货商', '仓库A', '员工B', '瓶', 2.00, '');
INSERT INTO `purchase_pricelist` VALUES (65, '辣条', '2020-01-01', 'A供货商', '仓库B', '员工A', '包', 0.50, '');
INSERT INTO `purchase_pricelist` VALUES (67, '烤肠', '2020-07-17', 'B供货商', '仓库A', '员工A', '根', 5.00, '');

-- ----------------------------
-- Table structure for purchase_test_accountlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_accountlist`;
CREATE TABLE `purchase_test_accountlist`  (
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_accountlist
-- ----------------------------
INSERT INTO `purchase_test_accountlist` VALUES ('Admin');
INSERT INTO `purchase_test_accountlist` VALUES ('Acc');

-- ----------------------------
-- Table structure for purchase_test_editorlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_editorlist`;
CREATE TABLE `purchase_test_editorlist`  (
  `editor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_editorlist
-- ----------------------------
INSERT INTO `purchase_test_editorlist` VALUES ('管理员A');
INSERT INTO `purchase_test_editorlist` VALUES ('管理员B');
INSERT INTO `purchase_test_editorlist` VALUES ('Admin');

-- ----------------------------
-- Table structure for purchase_test_managerlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_managerlist`;
CREATE TABLE `purchase_test_managerlist`  (
  `manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_managerlist
-- ----------------------------
INSERT INTO `purchase_test_managerlist` VALUES ('员工A');
INSERT INTO `purchase_test_managerlist` VALUES ('员工C');
INSERT INTO `purchase_test_managerlist` VALUES ('员工B');

-- ----------------------------
-- Table structure for purchase_test_ordernumberlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_ordernumberlist`;
CREATE TABLE `purchase_test_ordernumberlist`  (
  `ordernumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_ordernumberlist
-- ----------------------------
INSERT INTO `purchase_test_ordernumberlist` VALUES ('114');
INSERT INTO `purchase_test_ordernumberlist` VALUES ('112');
INSERT INTO `purchase_test_ordernumberlist` VALUES ('113');
INSERT INTO `purchase_test_ordernumberlist` VALUES ('110');

-- ----------------------------
-- Table structure for purchase_test_supplierlist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_supplierlist`;
CREATE TABLE `purchase_test_supplierlist`  (
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `warehouse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `editor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_supplierlist
-- ----------------------------
INSERT INTO `purchase_test_supplierlist` VALUES ('A供货商', '仓库A', '管理员A', '员工A');
INSERT INTO `purchase_test_supplierlist` VALUES ('B供货商', '仓库B', '管理员B', '员工B');
INSERT INTO `purchase_test_supplierlist` VALUES ('C供货商', '仓库C', 'Admin', 'Admin');

-- ----------------------------
-- Table structure for purchase_test_warehouselist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_test_warehouselist`;
CREATE TABLE `purchase_test_warehouselist`  (
  `warehouse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_test_warehouselist
-- ----------------------------
INSERT INTO `purchase_test_warehouselist` VALUES ('仓库A');
INSERT INTO `purchase_test_warehouselist` VALUES ('仓库B');
INSERT INTO `purchase_test_warehouselist` VALUES ('仓库C');

-- ----------------------------
-- Table structure for purchase_warehousinglist
-- ----------------------------
DROP TABLE IF EXISTS `purchase_warehousinglist`;
CREATE TABLE `purchase_warehousinglist`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderdate` date NOT NULL,
  `salesman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `billingdate` date NOT NULL,
  `manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `totalquantity` int(0) NOT NULL,
  `purchasequantity` int(0) NOT NULL,
  `returnedquantity` int(0) NOT NULL,
  `purchaseamount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `returnedamount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `totalamount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `incomingwarehouse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_warehousinglist
-- ----------------------------
INSERT INTO `purchase_warehousinglist` VALUES (1, '111', '2020-07-08', '员工A', '可乐', 0, '2020-07-10', '管理员A', 'A供货商', 100, 98, 2, '294', '8', '400', 4.00, '罐', '11111', '饮料', '可口可乐', '仓库B', '五', NULL);

-- ----------------------------
-- Table structure for runoob_tbl
-- ----------------------------
DROP TABLE IF EXISTS `runoob_tbl`;
CREATE TABLE `runoob_tbl`  (
  `runoob_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `runoob_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runoob_author` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `submission_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`runoob_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sale_orderlist
-- ----------------------------
DROP TABLE IF EXISTS `sale_orderlist`;
CREATE TABLE `sale_orderlist`  (
  `sales_order_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` date NULL DEFAULT NULL,
  `warehouse_id_number` int(0) NOT NULL,
  `worker_id_number` int(0) NOT NULL,
  `bar_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `advance_payment` double NULL DEFAULT NULL,
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `commodity_id_number` int(0) NOT NULL,
  `customer_id_number` int(0) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `worker_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sales_order_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_orderlist
-- ----------------------------
INSERT INTO `sale_orderlist` VALUES ('0', '2000-01-08', 1, 0, '0', 1, '1', 1, 1, '1', '0');
INSERT INTO `sale_orderlist` VALUES ('1', '2001-01-02', 123, 123, '123', 0, '1234', 123, 123, '123', '1234');
INSERT INTO `sale_orderlist` VALUES ('12', '2001-01-02', 1, 1, '1', 1, '1', 1, 1, '1', '1');
INSERT INTO `sale_orderlist` VALUES ('123', '2018-01-09', 123, 1231, '123', 12, '123', 123, 123, '123', '123');
INSERT INTO `sale_orderlist` VALUES ('1234', '2001-01-03', 123, 123, '123', 0, '1234', 123, 123, '123', '123');
INSERT INTO `sale_orderlist` VALUES ('321', '2001-01-02', 321, 321, '321', 3, '321', 321, 321, '321', '321');
INSERT INTO `sale_orderlist` VALUES ('4', '2019-08-07', 9, 4, '4', 9, '4', 4, 4, '4', '44');

-- ----------------------------
-- Table structure for sale_pricelist
-- ----------------------------
DROP TABLE IF EXISTS `sale_pricelist`;
CREATE TABLE `sale_pricelist`  (
  `sales_price_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `preparation_date` date NULL DEFAULT NULL,
  `commodity_id_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `warehouse_id_number` int(0) NOT NULL,
  `customer_id_number` int(0) NOT NULL,
  `supplier_id_number` int(0) NOT NULL,
  `operator_id_number` int(0) NOT NULL,
  `unit` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sales_price_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_pricelist
-- ----------------------------
INSERT INTO `sale_pricelist` VALUES ('123', '2000-01-25', '123', 123, 123, 123, 123, '123', '123');
INSERT INTO `sale_pricelist` VALUES ('255', '2000-01-25', '123', 123, 123, 123, 123, '129', '123');
INSERT INTO `sale_pricelist` VALUES ('3564', '2020-01-16', '123', 123, 123, 123, 123, '123', '123');
INSERT INTO `sale_pricelist` VALUES ('444555', '2020-01-17', '454545', 545454, 12345, 123456, 1234454, '1', '1');
INSERT INTO `sale_pricelist` VALUES ('45692', '2020-01-17', '123', 123, 123, 123, 123, '123', '123');

-- ----------------------------
-- Table structure for sale_return_note
-- ----------------------------
DROP TABLE IF EXISTS `sale_return_note`;
CREATE TABLE `sale_return_note`  (
  `id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_date` datetime(0) NULL DEFAULT NULL,
  `warehouse` int(0) NOT NULL,
  `worker` int(0) NOT NULL,
  `bar_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advance_payment` double(255, 0) NULL DEFAULT NULL,
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer` int(0) NOT NULL,
  `supplier` int(0) NULL DEFAULT NULL,
  `order_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_return_note
-- ----------------------------
INSERT INTO `sale_return_note` VALUES ('00120200713000001', '2020-07-12 20:36:12', 1, 1, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000002', '2020-07-12 20:36:12', 1, 12, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000003', '2020-07-12 20:36:12', 1, 12, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000004', '2020-07-13 20:36:12', 1, 12, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000005', '2020-07-13 20:36:12', 1, 2, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000006', '2020-07-13 20:36:12', 1, 2, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000007', '2020-07-13 20:36:12', 1, 2, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');
INSERT INTO `sale_return_note` VALUES ('00120200713000008', '2020-07-14 20:36:12', 1, 21, 'sdust10101', 36, '37098320000906', 1, 1, 'sdust000001', 'example');

-- ----------------------------
-- Table structure for sale_situationlist
-- ----------------------------
DROP TABLE IF EXISTS `sale_situationlist`;
CREATE TABLE `sale_situationlist`  (
  `billing_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `completion_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_number` int(0) NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_quantity` int(0) NOT NULL,
  `quantity_completed` int(0) NOT NULL,
  `unfinished_quantity` int(0) NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`order_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_situationlist
-- ----------------------------
INSERT INTO `sale_situationlist` VALUES ('0123-01-01 12:00', '123', '1233', 0, '123', '123', 123, 12, 12, '123');
INSERT INTO `sale_situationlist` VALUES ('2017-01-01 12:00', '修改测试10', '修改测试10', 4, '修改测试10', '修改测试10', 10, 10, 10, '修改测试10');
INSERT INTO `sale_situationlist` VALUES ('2017-01-01 12:00', '添加测试5', '添加测试5', 5, '添加测试5', '添加测试5', 5, 5, 5, '添加测试5');
INSERT INTO `sale_situationlist` VALUES ('0005-01-15 12:00', '添加测试6', '添加测试6', 6, '添加测试6', '添加测试6', 6, 6, 6, '添加测试6');
INSERT INTO `sale_situationlist` VALUES ('2020-07-25 10:34', '添加测试7', '添加测试7', 7, '添加测试7', '添加测试7', 7, 7, 7, '添加测试7');
INSERT INTO `sale_situationlist` VALUES ('2020-09-30 12:00', 'jglajg', 'glajg', 88, 'gka;jg', 'gkjjal;', 1000, 45, 1111, 'htklahlh');
INSERT INTO `sale_situationlist` VALUES ('2020-07-25 10:34', '修改测试3', '修改测试3', 99, '修改测试3', '修改测试3', 3, 3, 3, '修改测试3');
INSERT INTO `sale_situationlist` VALUES ('2020-02-18', 'uoryqor7491', 'czy', 810, '亚马逊', '路由器', 52, 12, 40, '不好用');
INSERT INTO `sale_situationlist` VALUES ('2020-07-17 10:32', '添加测试2', '添加测试2', 9889, '添加测试2', '添加测试2', 2, 2, 2, '添加测试2');
INSERT INTO `sale_situationlist` VALUES ('2017-01-01 12:00', '123', '小明', 23333, '山科', '作业', 11, 11, 1, '加油');
INSERT INTO `sale_situationlist` VALUES ('2020-07-25 10:34', '增加测试2', '增加测试2', 2222222, '增加测试2', '增加测试2', 2, 2, 2, '增加测试2');

-- ----------------------------
-- Table structure for sales_category
-- ----------------------------
DROP TABLE IF EXISTS `sales_category`;
CREATE TABLE `sales_category`  (
  `category_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `billing_date` date NULL DEFAULT NULL,
  `invoice_num` int(0) NOT NULL,
  `current_date` date NULL DEFAULT NULL,
  `product_id` int(0) NULL DEFAULT NULL,
  `sales_quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sales-amount` double(255, 0) NULL DEFAULT NULL,
  `return_quantity` int(0) NULL DEFAULT NULL,
  `return_amount` double(255, 0) NULL DEFAULT NULL,
  `total_quantity` int(0) NULL DEFAULT NULL,
  `total_amount` double(255, 0) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sales_salesman
-- ----------------------------
DROP TABLE IF EXISTS `sales_salesman`;
CREATE TABLE `sales_salesman`  (
  `billing_date` date NULL DEFAULT NULL,
  `salesman_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `invoice_num` int(0) NOT NULL,
  `current_date` date NULL DEFAULT NULL,
  `product_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `ware_house` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `staff_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sales-quantity` int(0) NULL DEFAULT NULL,
  `sales_amount` double(255, 0) NULL DEFAULT NULL,
  `return_quantity` int(0) NULL DEFAULT NULL,
  `return_amount` double(255, 0) NULL DEFAULT NULL,
  `total_quantity` int(0) NULL DEFAULT NULL,
  `total_amount` double(255, 0) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for statement_bills_payable
-- ----------------------------
DROP TABLE IF EXISTS `statement_bills_payable`;
CREATE TABLE `statement_bills_payable`  (
  `Id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Trans_id` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Supplier` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Purchase_date` datetime(0) NOT NULL,
  `Amount_paid` float NULL DEFAULT NULL,
  `Amount_unpaid` float NULL DEFAULT NULL,
  `Amount` float NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statement_bills_payable
-- ----------------------------
INSERT INTO `statement_bills_payable` VALUES (00000001, '2642301542', 'zhangsan', '2020-02-04 19:29:50', 600, 1400, 2000);
INSERT INTO `statement_bills_payable` VALUES (00000002, '3412509214', 'lisi', '2020-02-13 19:30:38', 800, 2200, 3000);

-- ----------------------------
-- Table structure for statement_bills_supplier
-- ----------------------------
DROP TABLE IF EXISTS `statement_bills_supplier`;
CREATE TABLE `statement_bills_supplier`  (
  `Id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Supplier` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Amount_payable` float NOT NULL,
  `Amount_paid` float NOT NULL,
  `Amount_unpaid` float NOT NULL,
  `Initial_payables` float NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statement_bills_supplier
-- ----------------------------
INSERT INTO `statement_bills_supplier` VALUES (00000001, 'didnsldj', 3000, 800, 2200, 600);
INSERT INTO `statement_bills_supplier` VALUES (00000002, 'lksdjaksd', 5500, 2200, 3300, 2000);

-- ----------------------------
-- Table structure for statement_receivables
-- ----------------------------
DROP TABLE IF EXISTS `statement_receivables`;
CREATE TABLE `statement_receivables`  (
  `Id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Trans_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Customer_name` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Aale_date` datetime(0) NOT NULL,
  `Amount` float NOT NULL,
  `Amount_received` float NOT NULL,
  `Amount_unreceived` float NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statement_receivables
-- ----------------------------
INSERT INTO `statement_receivables` VALUES (00000001, '3541032141', 'zhangsan', '2019-10-16 19:43:14', 2000, 1600, 400);
INSERT INTO `statement_receivables` VALUES (00000002, '6569102461', 'lisiqing', '2020-01-08 19:44:00', 3600, 3300, 300);
INSERT INTO `statement_receivables` VALUES (00000003, '1054321492', 'zhaoqiangzhi', '2020-05-01 17:44:37', 6500, 4000, 2500);

-- ----------------------------
-- Table structure for statement_receivables_buyer
-- ----------------------------
DROP TABLE IF EXISTS `statement_receivables_buyer`;
CREATE TABLE `statement_receivables_buyer`  (
  `Id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Customer_name` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Amount_payable` float NOT NULL,
  `Amount_paid` float NOT NULL,
  `Amount_unpaid` float NOT NULL,
  `Initial_payables` float NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statement_receivables_buyer
-- ----------------------------
INSERT INTO `statement_receivables_buyer` VALUES (00000001, 'liqiangmei', 5200, 5000, 200, 3000);
INSERT INTO `statement_receivables_buyer` VALUES (00000002, 'haozhijing', 3600, 3000, 600, 3000);
INSERT INTO `statement_receivables_buyer` VALUES (00000003, 'meijingjing', 2000, 1000, 1000, 600);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `account_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `income` int(0) NULL DEFAULT NULL,
  `expenses` int(0) NULL DEFAULT NULL,
  `balance` int(0) NULL DEFAULT NULL,
  `accountId` int(0) NOT NULL,
  PRIMARY KEY (`accountId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('zhangsan', '2020-01-01', 4000, 2000, 6000, 1);
INSERT INTO `t_user` VALUES ('lisi', '2020-01-02', 5000, 4000, 6000, 2);
INSERT INTO `t_user` VALUES ('wangwu', '2020-01-03', 2000, 1500, 1000, 3);
INSERT INTO `t_user` VALUES ('zhaoliu', '2020-01-03', 3500, 1500, 5000, 4);
INSERT INTO `t_user` VALUES ('goudan', '2020-01-02', 5000, 4000, 3000, 5);
INSERT INTO `t_user` VALUES ('erlv', '2020-01-04', 4050, 3050, 4000, 6);
INSERT INTO `t_user` VALUES ('laowang', '2020-01-05', 6000, 7000, 11000, 7);
INSERT INTO `t_user` VALUES ('shigandang', '2020-01-05', 6412, 4975, 1942, 8);
INSERT INTO `t_user` VALUES ('huluwa', '2020-01-06', 4500, 3000, 7000, 9);
INSERT INTO `t_user` VALUES ('xiyangyang', '2020-01-07', 8000, 6000, 4000, 10);
INSERT INTO `t_user` VALUES ('zhangsan', '2020-01-07', 6000, 2000, 10000, 11);
INSERT INTO `t_user` VALUES ('lisi', '2020-01-07', 9000, 8000, 5000, 12);

-- ----------------------------
-- Table structure for transferorder
-- ----------------------------
DROP TABLE IF EXISTS `transferorder`;
CREATE TABLE `transferorder`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `orderDate` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transferIntoWarehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `transferOutOfoWarehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agent` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barCode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transferorder
-- ----------------------------
INSERT INTO `transferorder` VALUES (12, '2020-07-30', '奥里给仓库', '奥里给仓库', '123', '奥里给仓库', '666666666666666', '');
INSERT INTO `transferorder` VALUES (25, '2020-07-08', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (26, '2020-07-25', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (27, '2020-07-25', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (28, '', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (29, '', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (30, '2020-07-02', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferorder` VALUES (31, '2020-07-02', '奥里给仓库', '奥里给仓库', '', '狗头人', '', '');

-- ----------------------------
-- Table structure for transferout
-- ----------------------------
DROP TABLE IF EXISTS `transferout`;
CREATE TABLE `transferout`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `outDate` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transferIntoWarehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `transferOutOfoWarehouse` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agent` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barCode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transferout
-- ----------------------------
INSERT INTO `transferout` VALUES (12, '2020-07-30', '奥里给仓库', '奥里给仓库', '123', '奥里给仓库', '666666666666666', '');
INSERT INTO `transferout` VALUES (15, '2020-10-14', '奥里给仓库', '奥里给仓库', '3783', '8378', 'nmdksfnmaklsd', '78');
INSERT INTO `transferout` VALUES (22, '2020-07-02', '奥里给仓库', '奥里给仓库', '', '奥里给仓库', '', '');
INSERT INTO `transferout` VALUES (23, '2020-07-02', '奥里给', '奥里给', '', '奥里给仓库', '', '');
INSERT INTO `transferout` VALUES (24, '2020-07-01', '仓库3', '仓库3', '3783', '狗头人', 'nmdksfnmaklsd', '453');

-- ----------------------------
-- Table structure for warehouse_organization_files
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_organization_files`;
CREATE TABLE `warehouse_organization_files`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(0) NOT NULL,
  `warehouse_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouse_organization_files
-- ----------------------------
INSERT INTO `warehouse_organization_files` VALUES (1, 1, '1', '1', '');
INSERT INTO `warehouse_organization_files` VALUES (3, 2, '2', '2', '');

-- ----------------------------
-- Table structure for warehouse_transferorder
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_transferorder`;
CREATE TABLE `warehouse_transferorder`  (
  `orderDate` date NOT NULL,
  `transferIntoWarehouse` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `transferOutofoWarehouse` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
