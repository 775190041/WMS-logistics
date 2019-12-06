

SET FOREIGN_KEY_CHECKS=0;

-- Table structure for adjust
 DROP TABLE IF EXISTS `adjust`;
CREATE TABLE `adjust` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `j_name` varchar(255) DEFAULT NULL COMMENT '货物名称',
  `j_SKUmodel` varchar(255) DEFAULT NULL COMMENT '货物编号/型号',
  `j_num` double(255,0) DEFAULT NULL COMMENT '调整数量',
  `j_names` varchar(255) DEFAULT NULL COMMENT '调整人',
  `j_cause` varchar(255) DEFAULT NULL COMMENT '调整原因',
  `j_time` datetime DEFAULT NULL COMMENT '调整时间',
  `j_whid` varchar(11) DEFAULT NULL COMMENT '调入仓库',
  `j_volum` double(255,0) DEFAULT NULL COMMENT '调整货物体积',
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '调整入库/出库单';

insert  into  adjust(j_id, j_name, j_SKUmodel, j_num, j_names, j_cause, j_time, j_whid, j_volum)
values (1,'老干妈','B001',20,'haisao','调试数据','2019-11-21',1,500);
insert  into  adjust(j_id, j_name, j_SKUmodel, j_num, j_names, j_cause, j_time, j_whid, j_volum)
values (2,'包菜','D002',120,'haisao','调试数据','2019-11-21',2,100);
insert  into  adjust(j_id, j_name, j_SKUmodel, j_num, j_names, j_cause, j_time, j_whid, j_volum)
values (3,'蔬菜','W001',10,'haisao','调试数据','2019-11-21',3,300);
insert  into  adjust(j_id, j_name, j_SKUmodel, j_num, j_names, j_cause, j_time, j_whid, j_volum)
values (4,'玫瑰花','W002',200,'haisao','调试数据','2019-11-21',3,20);
insert  into  adjust(j_id, j_name, j_SKUmodel, j_num, j_names, j_cause, j_time, j_whid, j_volum)
values (5,'菊花','W003',2,'haisao','调试数据','2019-11-21',3,2);

-- Records of adjust
-- Table structure for allotout
DROP TABLE IF EXISTS `allotout`;
CREATE TABLE `allotout` (
  `ao_id` int(11) NOT NULL AUTO_INCREMENT,
  `ao_name` varchar(255) NOT NULL  COMMENT  '货物名称',
  `ao_SKUmodel` varchar(255) NOT NULL COMMENT  '货物编号/型号',
  `ao_num` int(11) NOT NULL COMMENT '调拨数量',
  `ao_whid` varchar(500) NOT NULL COMMENT '仓库编号',
  `ao_sippingNO` varchar(500) NOT NULL COMMENT '调拨单号',
  `ao_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '调拨时间',
  `ao_volume` double NOT NULL COMMENT '货物体积',
  PRIMARY KEY (`ao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调拨出库单';
insert  into allotout(ao_id, ao_name, ao_SKUmodel, ao_num, ao_whid, ao_sippingNO, ao_time, ao_volume)
values (1,'爆米花','S002',12,2,'321414124','2019-11-19',30);
insert  into allotout(ao_id, ao_name, ao_SKUmodel, ao_num, ao_whid, ao_sippingNO, ao_time, ao_volume)
values (2,'火龙果','S003',20,2,'235253232','2019-11-19',300);
insert  into allotout(ao_id, ao_name, ao_SKUmodel, ao_num, ao_whid, ao_sippingNO, ao_time, ao_volume)
values (3,'相机','S001',12,2,'353645633','2019-11-19',100);
insert  into allotout(ao_id, ao_name, ao_SKUmodel, ao_num, ao_whid, ao_sippingNO, ao_time, ao_volume)
values (4,'香蕉','S004',12,200,'532525','2019-11-19',3000);
insert  into allotout(ao_id, ao_name, ao_SKUmodel, ao_num, ao_whid, ao_sippingNO, ao_time, ao_volume)
values (5,'麻花','S005',12,33,'653733242','2019-11-19',200);
-- Records of allotoutf
-- Table structure for allotput
DROP TABLE IF EXISTS `allotput`;
CREATE TABLE `allotput` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_name` varchar(255) DEFAULT NULL COMMENT '货物名称',
  `ap_SKUmodel` varchar(255) DEFAULT NULL COMMENT '货物编号/型号',
  `ap_num` double DEFAULT NULL COMMENT '调拨数量',
  `ap_whid` varchar(255) DEFAULT NULL COMMENT '仓库编号',
  `ap_sipping` varchar(255) DEFAULT NULL COMMENT  '调拨单号',
  `ap_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '调拨时间',
  `ap_volume` double(255,0) DEFAULT NULL COMMENT '体积',
  `ap_address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '调拨入库单';
insert into allotput(ap_id, ap_name, ap_SKUmodel, ap_num, ap_whid, ap_sipping, ap_time, ap_volume, ap_address)
values(1,'辣条','B001',20,1,'10086','2019-11-13',20,200);
insert into allotput(ap_id, ap_name, ap_SKUmodel, ap_num, ap_whid, ap_sipping, ap_time, ap_volume, ap_address)
values(2,'可乐','B002',200,2,'110','2019-11-4',200,2000);
insert into allotput(ap_id, ap_name, ap_SKUmodel, ap_num, ap_whid, ap_sipping, ap_time, ap_volume, ap_address)
values(3,'风扇','C001',20,3,'119','2019-11-15',20,600);
insert into allotput(ap_id, ap_name, ap_SKUmodel, ap_num, ap_whid, ap_sipping, ap_time, ap_volume, ap_address)
values(4,'宝马','D001',20,3,'666','2019-11-16',20,400000);
-- ----------------------------
-- Records of allotput
-- ----------------------------

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
        `c_id` int(11) NOT NULL AUTO_INCREMENT,
        `c_name` varchar(255) DEFAULT NULL COMMENT  '货物名称',
        `c_storerid` varchar(255) DEFAULT NULL COMMENT  '货主',
        `c_supplierid` varchar(255) DEFAULT NULL COMMENT '供应商',
        `c_shippingNO` varchar(255) DEFAULT NULL COMMENT  '客户托单号',
        `c_whid` int(11) DEFAULT NULL COMMENT '仓库编号',
        `c_num` int(11) DEFAULT NULL COMMENT '数量',
        `c_totalweight` double DEFAULT NULL COMMENT  '总货毛重',
        `c_totalvolume` double DEFAULT NULL COMMENT  '总货体积',
        `c_receivedate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT  '入库时间',
        `c_SKUmodel` varchar(255) DEFAULT NULL COMMENT  '货物编号/型号',
         c_phone varchar(255) DEFAULT NULL  COMMENT  '电话',
         PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT= '货物表';

--alter table cargo add column c_phone  varchar(255) DEFAULT null;
--delete  from cargo where c_id=4;
insert into cargo(c_id, c_name, c_storerid, c_supplierid, c_shippingNO, c_whid, c_num, c_totalweight, c_totalvolume, c_receivedate, c_SKUmodel,c_phone)
values (1,'上海硫磺皂','韦海超','上海民企','32423525253',1,20,100,200,'2019-11-14','B001','15977838331');
insert into cargo(c_id, c_name, c_storerid, c_supplierid, c_shippingNO, c_whid, c_num, c_totalweight, c_totalvolume, c_receivedate, c_SKUmodel,c_phone)
values (2,'浓硫酸','李钊灿','上海民企','523235235',2,10,10,200,'2019-11-14','B002','15977838331');
insert into cargo(c_id, c_name, c_storerid, c_supplierid, c_shippingNO, c_whid, c_num, c_totalweight, c_totalvolume, c_receivedate, c_SKUmodel,c_phone)
values (3,'稀硫酸','巫山雄','上海民企','65464645',3,30,1,200,'2019-11-14','B003','15977838331');
insert into cargo(c_id, c_name, c_storerid, c_supplierid, c_shippingNO, c_whid, c_num, c_totalweight, c_totalvolume, c_receivedate, c_SKUmodel,c_phone)
values (4,'敌敌畏','杨絮','上海民企','756858568',1,40,1000,200,'2019-11-14','B004','15977838331');
select * from cargo;

-- Records of cargo
-- Table structure for cargo_borrow
DROP TABLE IF EXISTS `cargo_borrow`;
CREATE TABLE `cargo_borrow` (
  `cb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cb_name` varchar(255) DEFAULT NULL COMMENT '货物名称',
  `cb_SKUmodel` varchar(255) DEFAULT NULL COMMENT '货物型号',
  `cb_num` double(255,0) DEFAULT NULL COMMENT '数量',
  `cb_cause` varchar(255) DEFAULT NULL COMMENT '原因',
  `cb_names` varchar(255) DEFAULT NULL COMMENT '借用人',
  `cb_time` datetime DEFAULT NULL COMMENT '借出时间',
  `cb_endtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '归还时间',
  `cb_status` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`cb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '货品借用表';

insert into cargo_borrow(cb_id, cb_name, cb_SKUmodel, cb_num, cb_cause, cb_names, cb_time, cb_endtime, cb_status)
values (1,'上海硫磺皂','B001',1,'没有洗澡的东西','韦海超的弟弟','2019-11-13','2019-11-15','以归还');
insert into cargo_borrow(cb_id, cb_name, cb_SKUmodel, cb_num, cb_cause, cb_names, cb_time, cb_endtime, cb_status)
values (2,'浓硫酸','B002',1,'拿去化学试验','韦海超的妹妹','2019-11-13','2019-11-15','以归还');
insert into cargo_borrow(cb_id, cb_name, cb_SKUmodel, cb_num, cb_cause, cb_names, cb_time, cb_endtime, cb_status)
values (3,'敌敌畏','B004',1,'农田杀虫','韦海超的哥哥','2019-11-13','2019-11-15','以归还');
insert into cargo_borrow(cb_id, cb_name, cb_SKUmodel, cb_num, cb_cause, cb_names, cb_time, cb_endtime, cb_status)
values (4,'稀硫酸','B003',1,'宿舍刷厕所','韦海超的表姐','2019-11-13','2019-11-15','以归还');

-- ----------------------------
-- Records of cargo_borrow
-- ----------------------------

-- ----------------------------
-- Table structure for compay
-- ----------------------------
DROP TABLE IF EXISTS `compay`;
CREATE TABLE `compay` (
  `caid` int(11) NOT NULL,
  `caaccounts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账号',
  `caname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `camoney` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `cacount` decimal(10,0) DEFAULT NULL COMMENT '总数',
  PRIMARY KEY (`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT '公司表';

-- ----------------------------
-- Records of compay
-- ----------------------------

-- ----------------------------
-- Table structure for cross_database
-- ----------------------------
DROP TABLE IF EXISTS `cross_database`;
CREATE TABLE `cross_database` (
  `cd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cd_name` varchar(255) NOT NULL COMMENT '货物名称',
  `cd_SKUmodel` varchar(255) NOT NULL COMMENT '货物型号',
  `cd_num` double NOT NULL COMMENT '发货数量',
  `cd_whid` varchar(500) NOT NULL COMMENT '仓库编号',
  `cd_oddnumbers` varchar(500) NOT NULL  COMMENT '发货单号',
  `cd_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '出库时间',
  `cd_volume` double NOT NULL COMMENT '货物体积',
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='越库出货单';

-- ----------------------------
-- Records of cross_database
-- ----------------------------

-- ----------------------------
-- Table structure for give_back
-- ----------------------------
DROP TABLE IF EXISTS `give_back`;
CREATE TABLE `give_back` (
  `gb_id` int(11) NOT NULL AUTO_INCREMENT,
  `gb_name` varchar(255) NOT NULL,
  `gb_SKUmodel` varchar(255) NOT NULL,
  `gb_num` double NOT NULL,
  `gb_cause` varchar(1000) NOT NULL,
  `gb_status` int(11) NOT NULL,
  `gb_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '货品归还表';

-- ----------------------------
-- Records of give_back
-- ----------------------------

-- ----------------------------
-- Table structure for godown
-- ----------------------------
DROP TABLE IF EXISTS `godown`;
CREATE TABLE `godown` (
  `gostatus` int(11) DEFAULT NULL COMMENT '仓库状态',  
  `go_id` int(11) NOT NULL AUTO_INCREMENT,
  `go_whid` varchar(255) DEFAULT NULL COMMENT  '仓库编号',
  `go_p` int(255) DEFAULT NULL COMMENT 	,
  `go_volume` double DEFAULT NULL,
  `go_usevolume` double DEFAULT NULL,
  `go_rdvolume` double DEFAULT NULL,
  PRIMARY KEY (`go_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT '仓库';

-- ----------------------------
-- Records of godown
-- ----------------------------
INSERT INTO `godown` VALUES ('0', '1', 'A1', '3', '530.16', '120.06', '410.1');
INSERT INTO `godown` VALUES ('1', '2', 'A2', '5', '360', '0', '360');
INSERT INTO `godown` VALUES ('1', '3', 'A3', '3', '666.23', '0', '666.23');

-- ----------------------------
-- Table structure for godown_entry
-- ----------------------------
DROP TABLE IF EXISTS `godown_entry`;
CREATE TABLE `godown_entry` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) DEFAULT NULL,
  `g_storerid` varchar(255) DEFAULT NULL,
  `g_phone` varchar(255) DEFAULT NULL,
  `g_supplierid` varchar(255) DEFAULT NULL,
  `g_sippingNO` varchar(255) DEFAULT NULL,
  `g_whid` varchar(255) DEFAULT NULL,
  `g_num` double DEFAULT NULL,
  `g_crossflag` varchar(255) DEFAULT NULL,
  `g_directflag` varchar(255) DEFAULT NULL,
  `g_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `g_adminid` int(11) DEFAULT NULL,
  `g_SKUmodel` varchar(255) DEFAULT NULL,
  `g_number` int(11) DEFAULT NULL COMMENT '数量',
  `g_heavy` double DEFAULT NULL COMMENT '重量',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of godown_entry
-- ----------------------------

-- ----------------------------
-- Table structure for income
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `iid` int(11) NOT NULL,
  `icause` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `iabout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icount` decimal(10,0) DEFAULT NULL,
  `iincome` decimal(10,0) DEFAULT NULL,
  `ibalance` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of income
-- ----------------------------

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `in_id` int(11) NOT NULL AUTO_INCREMENT,
  `in_name` varchar(255) NOT NULL,
  `in_SKUmodel` varchar(255) NOT NULL,
  `in_num` double NOT NULL,
  `in_whid` varchar(500) NOT NULL,
  `in_oddnumber` varchar(500) NOT NULL,
  `in_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `in_volume` double NOT NULL,
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='直接发货单';

-- ----------------------------
-- Records of invoice
-- ----------------------------

-- ----------------------------
-- Table structure for make_inventory
-- ----------------------------
DROP TABLE IF EXISTS `make_inventory`;
CREATE TABLE `make_inventory` (
  `mi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mi_name` varchar(255) DEFAULT NULL COMMENT '货物名称',
  `mi_SKUmodel` varchar(255) DEFAULT NULL COMMENT '货物型号',
  `mi_num` double(255,0) DEFAULT NULL COMMENT '盘点数量',
  `mi_names` varchar(255) DEFAULT NULL COMMENT '盘点人',
  `mi_whid` int(11) DEFAULT NULL COMMENT '仓库编号',
  `mi_time` datetime DEFAULT NULL COMMENT '盘点时间',
  `mi_Actual` double DEFAULT NUL COMMENT '实际盘点数量',
  PRIMARY KEY (`mi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of make_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告栏id',
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公告内容',
  `userid` int(11) DEFAULT NULL COMMENT '发布人',
  `ntime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发布时间',
  `nstatus` int(11) DEFAULT NULL COMMENT '公告状态',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `pid` int(11) NOT NULL,
  `pcause` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原因',
  `ptime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `pabout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcount` decimal(10,0) DEFAULT NULL COMMENT '总数', 
  `ppay` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  `punexpense` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for receiving
-- ----------------------------
DROP TABLE IF EXISTS `receiving`;
CREATE TABLE `receiving` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) DEFAULT NULL,
  `r_storerid` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_supplierid` varchar(255) DEFAULT NULL,
  `r_sippingNO` varchar(255) DEFAULT NULL,
  `r_whid` varchar(255) DEFAULT NULL,
  `r_num` double DEFAULT NULL,
  `r_crossflag` varchar(255) DEFAULT NULL,
  `r_directflag` varchar(255) DEFAULT NULL,
  `r_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `r_adminid` int(11) DEFAULT NULL,
  `r_partflag` int(11) DEFAULT NULL,
  `r_SKUmodel` varchar(255) DEFAULT NULL,
  `r_number` int(11) DEFAULT NULL COMMENT '数量',
  `r_heavy` double DEFAULT NULL COMMENT '重量',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '实际入库表';

-- ----------------------------
-- Records of receiving
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `url` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `description` varchar(255) DEFAULT NULL COMMENT '资源介绍',
  `icon` varchar(32) DEFAULT NULL COMMENT '资源图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级资源id',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `resource_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '资源类别',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT '资源表';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', '', '系统管理', 'icon-company', null, '0', '0', '0', '2016-12-15 10:54:47');
INSERT INTO `resource` VALUES ('2', '入库管理', null, '入库管理', 'icon-company', null, '0', '0', '0', '2016-12-15 11:01:14');
INSERT INTO `resource` VALUES ('3', '在库管理', null, '在库管理', 'icon-company', null, '0', '0', '0', '2016-12-15 11:08:53');
INSERT INTO `resource` VALUES ('4', '出库管理', null, '出库管理', 'icon-company', null, '0', '0', '0', '2016-12-15 11:09:43');
INSERT INTO `resource` VALUES ('5', '流通加工出库', null, '流通加工出库', 'icon-company', null, '0', '0', '0', '2016-12-15 11:10:33');
INSERT INTO `resource` VALUES ('6', '财务管理', null, '财务管理', 'icon-company', null, '0', '0', '0', '2016-12-15 11:10:55');
INSERT INTO `resource` VALUES ('7', '数据报表', null, '数据报表', 'icon-company', null, '0', '0', '0', '2016-12-15 11:11:25');
INSERT INTO `resource` VALUES ('8', '系统管理', null, '系统管理', 'icon-company', null, '0', '0', '0', '2016-12-15 11:11:54');
INSERT INTO `resource` VALUES ('9', '收货入库确认', '/putstorage/receiving', '收货入库确认', 'menu_icon_datadeal', '2', '0', '0', '0', '2016-12-15 11:14:47');
INSERT INTO `resource` VALUES ('10', '收货单管理', '/receiving/receivingPage', '收货单管理', 'menu_icon_datadeal', '2', '0', '0', '0', '2016-12-15 11:15:27');
INSERT INTO `resource` VALUES ('12', '调拨入库单管理', '/allotput/alloputPage', '调拨入库单管理', 'menu_icon_datadeal', '2', '0', '0', '0', '2016-12-15 11:18:36');
INSERT INTO `resource` VALUES ('13', '新增退货单管理', '/salesreturn/salesreturnAddPage', '新增退货单管理', 'menu_icon_datadeal', '2', '0', '0', '0', '2016-12-15 11:19:20');
INSERT INTO `resource` VALUES ('14', '退货入库单管理', '/salesreturn/salesreturnPage', '退货入库单管理', 'menu_icon_datadeal', '2', '0', '0', '0', '2016-12-15 11:20:10');
INSERT INTO `resource` VALUES ('17', '库存调整单查询', '/adjust/page', '库存调整单查询', 'menu_icon_datadeal', '3', '0', '0', '0', '2016-12-15 11:23:12');
INSERT INTO `resource` VALUES ('18', '货品借还登记', '/borrow/borrowpage', '货品借出登记', 'menu_icon_datadeal', '3', '0', '0', '0', '2016-12-15 11:23:58');
INSERT INTO `resource` VALUES ('21', '盘点单管理', '/make/selectpage', '盘点单管理', 'menu_icon_datadeal', '3', '0', '0', '0', '2016-12-15 11:25:22');
INSERT INTO `resource` VALUES ('23', '新增调拨单', null, '新增调拨单', 'menu_icon_datadeal', '3', '0', '0', '0', '2016-12-15 11:26:28');
INSERT INTO `resource` VALUES ('25', '出货单管理', '/shipment/shipment.html', '出货单管理', 'menu_icon_datadeal', '4', '0', '0', '0', '2016-12-15 11:27:29');
INSERT INTO `resource` VALUES ('27', '调拨出库单管理', '/allotout/allotout.html', '调拨出库单管理', 'menu_icon_datadeal', '4', '0', '0', '0', '2016-12-15 11:28:50');
INSERT INTO `resource` VALUES ('29', '越库出货单管理', '/crossDatabase/crossDatabase.html', '越货出库单管理', 'menu_icon_datadeal', '4', '0', '0', '0', '2016-12-15 11:30:35');
INSERT INTO `resource` VALUES ('31', '直接出库单管理', '/invoice/invoice.html', '直接出库单管理', 'menu_icon_datadeal', '4', '0', '0', '0', '2016-12-15 11:31:47');
INSERT INTO `resource` VALUES ('32', '新增货品加工BOM方案', null, '新增货品加工BOM方案', 'menu_icon_datadeal', '5', '0', '0', '0', '2016-12-15 11:32:38');
INSERT INTO `resource` VALUES ('33', '加工方案管理', null, '加工方案管理', 'menu_icon_datadeal', '5', '0', '0', '0', '2016-12-15 11:33:55');
INSERT INTO `resource` VALUES ('34', '账户总览', null, '账户总览', 'menu_icon_datadeal', '6', '0', '0', '0', '2016-12-15 11:34:55');
INSERT INTO `resource` VALUES ('35', '财务日结表', null, '财务日结表', 'menu_icon_datadeal', '6', '0', '0', '0', '2016-12-15 11:35:23');
INSERT INTO `resource` VALUES ('39', '收入统计', '', '新增收入', 'menu_icon_datadeal', '6', '0', '0', '0', '2016-12-15 11:38:29');
INSERT INTO `resource` VALUES ('40', '支出统计', '', '新增支出', 'menu_icon_datadeal', '6', '0', '0', '0', '2016-12-15 11:38:46');
INSERT INTO `resource` VALUES ('41', '入库计划报表', null, '入库计划报表', 'menu_icon_datadeal', '6', '0', '0', '0', '2016-12-15 11:39:27');
INSERT INTO `resource` VALUES ('42', '盘点差异报表', '/check/page', '实际收货报表', 'menu_icon_datadeal', '7', '0', '0', '0', '2016-12-15 11:40:07');
INSERT INTO `resource` VALUES ('43', '入库计划差异报表', null, '入库计划差异报表', 'menu_icon_datadeal', '7', '0', '0', '0', '2016-12-15 11:41:16');
INSERT INTO `resource` VALUES ('44', '出库退货报表', null, '出库退货报表', 'menu_icon_datadeal', '7', '0', '0', '0', '2016-12-15 11:41:46');
INSERT INTO `resource` VALUES ('46', '修改资料', null, '修改资料', 'menu_icon_datadeal', '8', '0', '0', '0', '2016-12-15 11:42:28');
INSERT INTO `resource` VALUES ('47', '公告栏', null, '公告栏', 'menu_icon_datadeal', '8', '0', '0', '0', '2016-12-15 11:42:58');
INSERT INTO `resource` VALUES ('48', '资源管理', '/resource/manager', '资源管理', 'menu_icon_datadeal', '1', '0', '0', '0', '2016-12-15 11:47:21');
INSERT INTO `resource` VALUES ('49', '角色管理', '/role/manager', '角色管理', 'menu_icon_datadeal', '1', '0', '0', '0', '2016-12-15 11:47:40');
INSERT INTO `resource` VALUES ('50', '用户管理', '/user/manager', '用户管理', 'menu_icon_datadeal', '1', '0', '0', '0', '2016-12-15 11:48:12');
INSERT INTO `resource` VALUES ('51', '列表', '/resource/treeGrid', '资源列表', 'icon-list', '48', '0', '0', '0', '2016-12-15 15:44:36');
INSERT INTO `resource` VALUES ('52', '添加', '/resource/add', '资源添加', 'icon-add', '48', '0', '0', '1', '2016-12-15 15:44:47');
INSERT INTO `resource` VALUES ('53', '编辑', '/resource/edit', '资源编辑', 'icon-edit', '48', '0', '0', '1', '2016-12-15 15:44:58');
INSERT INTO `resource` VALUES ('54', '删除', '/resource/delete', '资源删除', 'icon-del', '48', '0', '0', '1', '2016-12-15 15:45:05');
INSERT INTO `resource` VALUES ('55', '列表', '/role/dataGrid', '角色列表', 'icon-list', '49', '0', '0', '0', '2016-12-15 15:53:27');
INSERT INTO `resource` VALUES ('56', '添加', '/role/add', '角色添加', 'icon-add', '49', '0', '0', '1', '2016-12-15 15:44:47');
INSERT INTO `resource` VALUES ('57', '编辑', '/role/edit', '角色编辑', 'icon-edit', '49', '0', '0', '1', '2016-12-15 15:44:58');
INSERT INTO `resource` VALUES ('58', '删除', '/role/delete', '角色删除', 'icon-del', '49', '0', '0', '1', '2016-12-15 15:45:05');
INSERT INTO `resource` VALUES ('59', '授权', '/role/grant', '角色授权', 'icon-ok', '49', '0', '0', '1', '2016-12-15 15:54:30');
INSERT INTO `resource` VALUES ('60', '添加', '/user/add', '用户添加', 'icon-add', '50', '0', '0', '1', '2016-12-18 19:46:12');
INSERT INTO `resource` VALUES ('61', '仓库表', '/godown/page', null, 'menu_icon_datadeal', '7', '0', '0', '0', '2016-12-19 10:06:19');
INSERT INTO `resource` VALUES ('62', '货物报表', '/cargo/cargopage', null, 'menu_icon_datadeal', '3', '0', '0', '0', '2016-12-19 10:08:17');
INSERT INTO `resource` VALUES ('63', '编辑', '/user/edit', null, 'icon-edit', '50', '0', '0', '1', '2016-12-19 16:59:50');
INSERT INTO `resource` VALUES ('64', '删除', '/user/delete', null, 'icon-del', '50', '0', '0', '1', '2016-12-20 09:32:21');
INSERT INTO `resource` VALUES ('65', '修改密码', '/user/editPwdPage', null, 'icon-edit', '0', '0', '0', '0', '2016-12-20 19:49:40');
INSERT INTO `resource` VALUES ('66', '出货单添加', '/shipment/insert', '出货单添加', 'icon-add', '25', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('67', '出货单修改', '/shipment/update', '出货单修改', 'icon-edit', '25', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('68', '出货单删除', '/shipment/delete', '出货单删除', 'icon-del', '25', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('69', '调拨出库单添加', '/allotout/insert', '调拨出库单添加', 'icon-add', '27', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('70', '调拨出库单修改', '/allotout/update', '调拨出库单修改', 'icon-edit', '27', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('71', '调拨出库单删除', '/allotout/delete', '调拨出库单删除', 'icon-del', '27', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('72', '越库出货单添加', '/crossDatabase/insert', '越库出货单添加', 'icon-add', '29', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('73', '越库出货单修改', '/crossDatabase/update', '越库出货单修改', 'icon-edit', '29', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('74', '越库出货单删除', '/crossDatabase/delete', '越库出货单删除', 'icon-del', '29', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('75', '直接出库单添加', '/invoice/insert', '直接出库单添加', 'icon-add', '31', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('76', '直接出库单修改', '/invoice/update', '直接出库单修改', 'icon-edit', '31', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('77', '直接出库单删除', '/invoice/delete', '直接出库单删除', 'icon-del', '31', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('78', '仓库添加', '/godown/add', null, 'icon-add', '61', '0', '0', '1', '2016-12-27 14:27:29');
INSERT INTO `resource` VALUES ('79', '仓库扩建', '/godown/edit', null, 'icon-edit', '61', '0', '0', '1', '2016-12-27 14:30:13');
INSERT INTO `resource` VALUES ('80', '仓库停用', '/godown/delete', null, 'icon-del', '61', '0', '0', '1', '2016-12-27 14:30:54');
INSERT INTO `resource` VALUES ('81', '仓库启用', '/godown/delete', null, 'icon-ok', '61', '0', '0', '1', '2016-12-29 15:32:53');
INSERT INTO `resource` VALUES ('95', '调拨出库单导入', '/allotout/import', '调拨出库单导入', 'icon-folder', '27', '0', '0', '1', '2016-12-26 00:00:00');
INSERT INTO `resource` VALUES ('97', '库存调整删除', '/adjust/delete', null, 'icon-del', '17', '0', '0', '1', '2016-12-22 20:11:17');
INSERT INTO `resource` VALUES ('98', '新增货品借出单', '/borrow/add', null, 'icon-add', '18', '0', '0', '1', '2016-12-22 20:12:30');
INSERT INTO `resource` VALUES ('99', '新增货物', '/cargo/insert', null, 'icon-add', '62', '0', '0', '1', '2016-12-26 20:24:52');
INSERT INTO `resource` VALUES ('100', '货品借还删除', '/borrow/delete', null, 'icon-del', '18', '0', '0', '1', '2016-12-27 16:10:38');
INSERT INTO `resource` VALUES ('101', '归还', '/borrow/edit', null, 'icon-edit', '18', '0', '0', '1', '2016-12-27 16:12:21');
INSERT INTO `resource` VALUES ('102', '删除', '/receiving/delete', null, 'icon-del', '10', '0', '0', '1', '2016-12-20 14:08:36');
INSERT INTO `resource` VALUES ('103', '编辑', '/receiving/update', null, 'icon-edit', '10', '0', '0', '1', '2016-12-20 14:28:57');
INSERT INTO `resource` VALUES ('104', '删除', '/allotput/delete', null, 'icon-del', '12', '0', '0', '1', '2016-12-20 19:10:26');
INSERT INTO `resource` VALUES ('105', '编辑', '/allotput/edit', null, 'icon-edit', '12', '0', '0', '1', '2016-12-20 19:11:40');
INSERT INTO `resource` VALUES ('106', '编辑', '/salesreturn/edit', null, 'icon-edit', '14', '0', '0', '1', '2016-12-20 19:56:47');
INSERT INTO `resource` VALUES ('107', '删除', '/salesreturn/delete', null, 'icon-del', '14', '0', '0', '1', '2016-12-20 19:57:26');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序号',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '0', '超级管理员', '0');
INSERT INTO `role` VALUES ('3', '文员', '0', '', '0');
INSERT INTO `role` VALUES ('4', '普通员工', '0', '', '0');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `resource_id` bigint(19) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('15', '3', '1');
INSERT INTO `role_resource` VALUES ('16', '3', '48');
INSERT INTO `role_resource` VALUES ('17', '3', '52');
INSERT INTO `role_resource` VALUES ('18', '3', '53');
INSERT INTO `role_resource` VALUES ('19', '3', '54');
INSERT INTO `role_resource` VALUES ('20', '3', '49');
INSERT INTO `role_resource` VALUES ('21', '3', '56');
INSERT INTO `role_resource` VALUES ('22', '3', '57');
INSERT INTO `role_resource` VALUES ('23', '3', '58');
INSERT INTO `role_resource` VALUES ('24', '3', '59');
INSERT INTO `role_resource` VALUES ('25', '3', '50');
INSERT INTO `role_resource` VALUES ('26', '3', '60');
INSERT INTO `role_resource` VALUES ('27', '3', '2');
INSERT INTO `role_resource` VALUES ('28', '3', '9');
INSERT INTO `role_resource` VALUES ('29', '3', '10');
INSERT INTO `role_resource` VALUES ('30', '3', '11');
INSERT INTO `role_resource` VALUES ('31', '3', '12');
INSERT INTO `role_resource` VALUES ('32', '3', '13');
INSERT INTO `role_resource` VALUES ('33', '3', '14');
INSERT INTO `role_resource` VALUES ('34', '3', '3');
INSERT INTO `role_resource` VALUES ('35', '3', '15');
INSERT INTO `role_resource` VALUES ('36', '3', '16');
INSERT INTO `role_resource` VALUES ('37', '3', '17');
INSERT INTO `role_resource` VALUES ('38', '3', '18');
INSERT INTO `role_resource` VALUES ('39', '3', '19');
INSERT INTO `role_resource` VALUES ('40', '3', '20');
INSERT INTO `role_resource` VALUES ('41', '3', '21');
INSERT INTO `role_resource` VALUES ('42', '3', '22');
INSERT INTO `role_resource` VALUES ('43', '3', '23');
INSERT INTO `role_resource` VALUES ('44', '3', '4');
INSERT INTO `role_resource` VALUES ('45', '3', '24');
INSERT INTO `role_resource` VALUES ('46', '3', '25');
INSERT INTO `role_resource` VALUES ('47', '3', '26');
INSERT INTO `role_resource` VALUES ('48', '3', '27');
INSERT INTO `role_resource` VALUES ('49', '3', '28');
INSERT INTO `role_resource` VALUES ('50', '3', '29');
INSERT INTO `role_resource` VALUES ('51', '3', '30');
INSERT INTO `role_resource` VALUES ('52', '3', '31');
INSERT INTO `role_resource` VALUES ('53', '3', '5');
INSERT INTO `role_resource` VALUES ('54', '3', '32');
INSERT INTO `role_resource` VALUES ('55', '3', '33');
INSERT INTO `role_resource` VALUES ('56', '3', '6');
INSERT INTO `role_resource` VALUES ('57', '3', '34');
INSERT INTO `role_resource` VALUES ('58', '3', '35');
INSERT INTO `role_resource` VALUES ('59', '3', '36');
INSERT INTO `role_resource` VALUES ('60', '3', '37');
INSERT INTO `role_resource` VALUES ('61', '3', '38');
INSERT INTO `role_resource` VALUES ('62', '3', '39');
INSERT INTO `role_resource` VALUES ('63', '3', '40');
INSERT INTO `role_resource` VALUES ('64', '3', '41');
INSERT INTO `role_resource` VALUES ('65', '3', '7');
INSERT INTO `role_resource` VALUES ('66', '3', '42');
INSERT INTO `role_resource` VALUES ('67', '3', '43');
INSERT INTO `role_resource` VALUES ('68', '3', '44');
INSERT INTO `role_resource` VALUES ('69', '3', '8');
INSERT INTO `role_resource` VALUES ('70', '3', '45');
INSERT INTO `role_resource` VALUES ('71', '3', '46');
INSERT INTO `role_resource` VALUES ('72', '3', '47');
INSERT INTO `role_resource` VALUES ('131', '4', '2');
INSERT INTO `role_resource` VALUES ('132', '4', '3');
INSERT INTO `role_resource` VALUES ('133', '4', '4');
INSERT INTO `role_resource` VALUES ('134', '4', '5');
INSERT INTO `role_resource` VALUES ('777', '1', '1');
INSERT INTO `role_resource` VALUES ('778', '1', '48');
INSERT INTO `role_resource` VALUES ('779', '1', '52');
INSERT INTO `role_resource` VALUES ('780', '1', '53');
INSERT INTO `role_resource` VALUES ('781', '1', '54');
INSERT INTO `role_resource` VALUES ('782', '1', '49');
INSERT INTO `role_resource` VALUES ('783', '1', '56');
INSERT INTO `role_resource` VALUES ('784', '1', '57');
INSERT INTO `role_resource` VALUES ('785', '1', '58');
INSERT INTO `role_resource` VALUES ('786', '1', '59');
INSERT INTO `role_resource` VALUES ('787', '1', '50');
INSERT INTO `role_resource` VALUES ('788', '1', '60');
INSERT INTO `role_resource` VALUES ('789', '1', '63');
INSERT INTO `role_resource` VALUES ('790', '1', '64');
INSERT INTO `role_resource` VALUES ('791', '1', '2');
INSERT INTO `role_resource` VALUES ('792', '1', '9');
INSERT INTO `role_resource` VALUES ('793', '1', '10');
INSERT INTO `role_resource` VALUES ('794', '1', '102');
INSERT INTO `role_resource` VALUES ('795', '1', '103');
INSERT INTO `role_resource` VALUES ('796', '1', '12');
INSERT INTO `role_resource` VALUES ('797', '1', '104');
INSERT INTO `role_resource` VALUES ('798', '1', '105');
INSERT INTO `role_resource` VALUES ('799', '1', '13');
INSERT INTO `role_resource` VALUES ('800', '1', '14');
INSERT INTO `role_resource` VALUES ('801', '1', '106');
INSERT INTO `role_resource` VALUES ('802', '1', '107');
INSERT INTO `role_resource` VALUES ('803', '1', '3');
INSERT INTO `role_resource` VALUES ('804', '1', '17');
INSERT INTO `role_resource` VALUES ('805', '1', '97');
INSERT INTO `role_resource` VALUES ('806', '1', '18');
INSERT INTO `role_resource` VALUES ('807', '1', '98');
INSERT INTO `role_resource` VALUES ('808', '1', '100');
INSERT INTO `role_resource` VALUES ('809', '1', '101');
INSERT INTO `role_resource` VALUES ('810', '1', '21');
INSERT INTO `role_resource` VALUES ('811', '1', '23');
INSERT INTO `role_resource` VALUES ('812', '1', '62');
INSERT INTO `role_resource` VALUES ('813', '1', '99');
INSERT INTO `role_resource` VALUES ('814', '1', '4');
INSERT INTO `role_resource` VALUES ('815', '1', '25');
INSERT INTO `role_resource` VALUES ('816', '1', '66');
INSERT INTO `role_resource` VALUES ('817', '1', '67');
INSERT INTO `role_resource` VALUES ('818', '1', '68');
INSERT INTO `role_resource` VALUES ('819', '1', '27');
INSERT INTO `role_resource` VALUES ('820', '1', '69');
INSERT INTO `role_resource` VALUES ('821', '1', '70');
INSERT INTO `role_resource` VALUES ('822', '1', '71');
INSERT INTO `role_resource` VALUES ('823', '1', '95');
INSERT INTO `role_resource` VALUES ('824', '1', '29');
INSERT INTO `role_resource` VALUES ('825', '1', '72');
INSERT INTO `role_resource` VALUES ('826', '1', '73');
INSERT INTO `role_resource` VALUES ('827', '1', '74');
INSERT INTO `role_resource` VALUES ('828', '1', '31');
INSERT INTO `role_resource` VALUES ('829', '1', '75');
INSERT INTO `role_resource` VALUES ('830', '1', '76');
INSERT INTO `role_resource` VALUES ('831', '1', '77');
INSERT INTO `role_resource` VALUES ('832', '1', '5');
INSERT INTO `role_resource` VALUES ('833', '1', '32');
INSERT INTO `role_resource` VALUES ('834', '1', '33');
INSERT INTO `role_resource` VALUES ('835', '1', '6');
INSERT INTO `role_resource` VALUES ('836', '1', '34');
INSERT INTO `role_resource` VALUES ('837', '1', '35');
INSERT INTO `role_resource` VALUES ('838', '1', '39');
INSERT INTO `role_resource` VALUES ('839', '1', '40');
INSERT INTO `role_resource` VALUES ('840', '1', '41');
INSERT INTO `role_resource` VALUES ('841', '1', '7');
INSERT INTO `role_resource` VALUES ('842', '1', '42');
INSERT INTO `role_resource` VALUES ('843', '1', '43');
INSERT INTO `role_resource` VALUES ('844', '1', '44');
INSERT INTO `role_resource` VALUES ('845', '1', '61');
INSERT INTO `role_resource` VALUES ('846', '1', '78');
INSERT INTO `role_resource` VALUES ('847', '1', '79');
INSERT INTO `role_resource` VALUES ('848', '1', '80');
INSERT INTO `role_resource` VALUES ('849', '1', '81');
INSERT INTO `role_resource` VALUES ('850', '1', '8');
INSERT INTO `role_resource` VALUES ('851', '1', '46');
INSERT INTO `role_resource` VALUES ('852', '1', '47');

-- ----------------------------
-- Table structure for sales_return
-- ----------------------------
DROP TABLE IF EXISTS `sales_return`;
CREATE TABLE `sales_return` (
  `sr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sr_name` varchar(255) DEFAULT NULL COMMENT '货物名称',
  `sr_sipping` varchar(255) DEFAULT NULL COMMENT '客户托单号',
  `sr_storerid` varchar(255) DEFAULT NULL COMMENT '客户',
  `sr_phone` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `sr_names` varchar(255) DEFAULT NULL COMMENT '货物',
  `sr_SKUmodel` varchar(255) DEFAULT NULL COMMENT ' ',
  `sr_num` double(255,0) DEFAULT NULL COMMENT '货物数量',
  `sr_cause` varchar(255) DEFAULT NULL COMMENT '退货原因',
  `sr_time` datetime DEFAULT NULL COMMENT '退货时间',
  `sr_whid` int(11) DEFAULT NULL COMMENT '仓库编号',
  `sr_volume` double(255,0) DEFAULT NULL COMMENT '退货体积',
  PRIMARY KEY (`sr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_return
-- ----------------------------

-- ----------------------------
-- Table structure for shipment
-- ----------------------------
DROP TABLE IF EXISTS `shipment`;
CREATE TABLE `shipment` (
  `sh_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_storeid` varchar(255) DEFAULT NULL COMMENT '货主', 
  `sh_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '实际出货时间',
  `sh_phone` varchar(255) DEFAULT NULL COMMENT '号码',
  `sh_sippingNO` varchar(255) DEFAULT NULL COMMENT '客户托单号', 
  `sh_whid` varchar(255) DEFAULT NULL COMMENT '仓库',
  `sh_damage` int(11) DEFAULT NULL COMMENT '损坏数量',
  `sh_cause` varchar(255) DEFAULT NULL COMMENT '损坏原因',
  `sh_SKUmodel` varchar(255) DEFAULT NULL COMMENT '型号',
  `sh_shnum` double DEFAULT NULL COMMENT '实际出货数量',
  `sh_totalweigh` double DEFAULT NULL COMMENT '发货重量',
  `sh_totalvolume` double DEFAULT NULL COMMENT '发货体积',
  status int ,
  PRIMARY KEY (`sh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT '出货单';

delete from shipment where sh_id = 4;
insert  into  shipment(sh_id, sh_storeid, sh_time, sh_phone, sh_sippingNO, sh_whid, sh_damage, sh_cause, sh_SKUmodel, sh_shnum, sh_totalweigh, sh_totalvolume,status)
values (1,'韦海超','2019-11-13','15977838331','234235235','A1',20,'数据调试更换','W001',10,20,300,0);
insert  into  shipment(sh_id, sh_storeid, sh_time, sh_phone, sh_sippingNO, sh_whid, sh_damage, sh_cause, sh_SKUmodel, sh_shnum, sh_totalweigh, sh_totalvolume,status)
values (2,'李钊灿','2019-11-13','16675640775','34253253','A2',220,'数据调试更换','W002',10,20,300,1);
insert  into  shipment(sh_id, sh_storeid, sh_time, sh_phone, sh_sippingNO, sh_whid, sh_damage, sh_cause, sh_SKUmodel, sh_shnum, sh_totalweigh, sh_totalvolume,status)
values (3,'巫山雄','2019-11-13','16675640534','53252325','A3',10,'数据调试更换','W003',10,20,300,2);
insert  into  shipment(sh_id, sh_storeid, sh_time, sh_phone, sh_sippingNO, sh_whid, sh_damage, sh_cause, sh_SKUmodel, sh_shnum, sh_totalweigh, sh_totalvolume,status)
values (4,'杨絮','2019-11-13','16675640764','523262','A1',120,'数据调试更换','W004',10,20,300,3);

select * from shipment;

SELECT sh.sh_id, sh.sh_storeid, sh.sh_time, sh.sh_phone, sh.sh_sippingNO, sh.sh_whid, sh.sh_damage, sh.sh_cause, sh.sh_SKUmodel, sh.sh_shnum, sh.sh_totalweigh, sh.sh_totalvolume, g.*
FROM shipment sh, godown g
WHERE sh.sh_whid = g.go_whid;

alter table shipment add column status  int ;
-- ----------------------------
-- Records of shipment
-- ----------------------------

-- ----------------------------
-- Table structure for stock_removal
-- ----------------------------
DROP TABLE IF EXISTS `stock_removal`;
CREATE TABLE `stock_removal` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_storerid` varchar(255) DEFAULT NULL,
  `s_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `s_phone` varchar(255) DEFAULT NULL,
  `sh_sippingNO` varchar(255) DEFAULT NULL,
  `s_whid` varchar(255) DEFAULT NULL,
  `s_client` varchar(255) DEFAULT NULL,
  `s_SKUmodel` varchar(255) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `s_num` double DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '出库计划单表';  

-- ----------------------------
-- Records of stock_removal
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登陆名',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `opt_content` varchar(1024) DEFAULT NULL COMMENT '内容',
  `client_ip` varchar(255) DEFAULT NULL COMMENT '客户端ip',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT '系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'test', 'test', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 10:59:15');
INSERT INTO `sys_log` VALUES ('2', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 14:23:18');
INSERT INTO `sys_log` VALUES ('3', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 14:33:28');
INSERT INTO `sys_log` VALUES ('4', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 14:36:41');
INSERT INTO `sys_log` VALUES ('5', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 15:26:50');
INSERT INTO `sys_log` VALUES ('6', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-12-15 15:40:51');
INSERT INTO `sys_log` VALUES ('7', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1481789189816&', '0:0:0:0:0:0:0:1', '2016-12-15 16:06:46');
INSERT INTO `sys_log` VALUES ('8', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=1&_=1481789189817&', '0:0:0:0:0:0:0:1', '2016-12-15 16:07:02');
INSERT INTO `sys_log` VALUES ('9', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=53&_=1481789362458&', '0:0:0:0:0:0:0:1', '2016-12-15 16:10:50');
INSERT INTO `sys_log` VALUES ('10', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1481789362459&', '0:0:0:0:0:0:0:1', '2016-12-15 16:11:48');
INSERT INTO `sys_log` VALUES ('11', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:addPage,[参数]:', null, '2016-12-15 19:19:53');
INSERT INTO `sys_log` VALUES ('12', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:add,[参数]:name=仓库管理员&seq=0&status=0&description=仓库管理员&', '0:0:0:0:0:0:0:1', '2016-12-15 19:20:56');
INSERT INTO `sys_log` VALUES ('13', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=2&_=1481800780165&', '0:0:0:0:0:0:0:1', '2016-12-15 19:21:09');
INSERT INTO `sys_log` VALUES ('14', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:edit,[参数]:id=2&name=仓库管理&seq=0&status=0&description=仓库管理员&', '0:0:0:0:0:0:0:1', '2016-12-15 19:21:13');
INSERT INTO `sys_log` VALUES ('15', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=2&_=1481800780166&', '0:0:0:0:0:0:0:1', '2016-12-15 19:21:17');
INSERT INTO `sys_log` VALUES ('16', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:edit,[参数]:id=2&name=仓库管理员&seq=0&status=0&description=仓库管理员&', '0:0:0:0:0:0:0:1', '2016-12-15 19:21:21');
INSERT INTO `sys_log` VALUES ('17', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:delete,[参数]:id=2&', '0:0:0:0:0:0:0:1', '2016-12-15 19:21:38');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(64) NOT NULL COMMENT '登陆名',
  `name` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` tinyint(2) DEFAULT '0' COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户类别',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT '用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0', '23', '123456789', '0', '0', '2017-01-03 19:18:51');
INSERT INTO `user` VALUES ('2', 'user', '张三', 'e10adc3949ba59abbe56e057f20f883e', '0', '26', '', '0', '0', '2016-12-18 19:51:17');
INSERT INTO `user` VALUES ('3', 'users', '李四', 'e10adc3949ba59abbe56e057f20f883e', '0', null, '', '1', '0', '2016-12-18 20:06:45');
INSERT INTO `user` VALUES ('5', 'abc', '阿桑', 'e10adc3949ba59abbe56e057f20f883e', '0', '25', '', '1', '0', '2016-12-27 14:55:46');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(19) NOT NULL COMMENT '用户id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT '用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('2', '1', '1');
INSERT INTO `user_role` VALUES ('3', '3', '4');
INSERT INTO `user_role` VALUES ('8', '2', '3');
INSERT INTO `user_role` VALUES ('10', '5', '4');
INSERT INTO `user_role` VALUES ('11', '6', '1');


create table crud(
id int(11) not null AUTO_INCREMENT,
crud_name varchar(32) not null,
crud_age int ,
crud_hobby varchar(32) ,
crud_addr varchar(64),
crud_salary varchar(32),
crud_date datetime ,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8
insert into crud(id,crud_name,crud_age,crud_hobby,crud_addr,crud_salary,crud_date) 
values(1,'大家',15,'学习','广西','3000','2019-11-13');
`





