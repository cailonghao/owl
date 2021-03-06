create database IF NOT EXISTS `owlmail` default character set utf8 collate utf8_general_ci;

USE owlmail;
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product`
(
    `id`                            bigint(20)  NOT NULL AUTO_INCREMENT,
    `brand_id`                      bigint(20)     DEFAULT NULL,
    `product_category_id`           bigint(20)     DEFAULT NULL,
    `feight_template_id`            bigint(20)     DEFAULT NULL,
    `product_attribute_category_id` bigint(20)     DEFAULT NULL,
    `name`                          varchar(64) NOT NULL,
    `pic`                           varchar(255)   DEFAULT NULL,
    `product_sn`                    varchar(64) NOT NULL COMMENT '货号',
    `delete_status`                 int(1)         DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
    `publish_status`                int(1)         DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
    `new_status`                    int(1)         DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
    `recommand_status`              int(1)         DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
    `verify_status`                 int(1)         DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
    `sort`                          int(11)        DEFAULT NULL COMMENT '排序',
    `sale`                          int(11)        DEFAULT NULL COMMENT '销量',
    `price`                         decimal(10, 2) DEFAULT NULL,
    `promotion_price`               decimal(10, 2) DEFAULT NULL COMMENT '促销价格',
    `gift_growth`                   int(11)        DEFAULT '0' COMMENT '赠送的成长值',
    `gift_point`                    int(11)        DEFAULT '0' COMMENT '赠送的积分',
    `use_point_limit`               int(11)        DEFAULT NULL COMMENT '限制使用的积分数',
    `sub_title`                     varchar(255)   DEFAULT NULL COMMENT '副标题',
    `description`                   text COMMENT '商品描述',
    `original_price`                decimal(10, 2) DEFAULT NULL COMMENT '市场价',
    `stock`                         int(11)        DEFAULT NULL COMMENT '库存',
    `low_stock`                     int(11)        DEFAULT NULL COMMENT '库存预警值',
    `unit`                          varchar(16)    DEFAULT NULL COMMENT '单位',
    `weight`                        decimal(10, 2) DEFAULT NULL COMMENT '商品重量，默认为克',
    `preview_status`                int(1)         DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
    `service_ids`                   varchar(64)    DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
    `keywords`                      varchar(255)   DEFAULT NULL,
    `note`                          varchar(255)   DEFAULT NULL,
    `album_pics`                    varchar(255)   DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
    `detail_title`                  varchar(255)   DEFAULT NULL,
    `detail_desc`                   text,
    `detail_html`                   text COMMENT '产品详情网页内容',
    `detail_mobile_html`            text COMMENT '移动端网页详情',
    `promotion_per_limit`           int(11)        DEFAULT NULL COMMENT '活动限购数量',
    `promotion_type`                int(1)         DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
    `brand_name`                    varchar(255)   DEFAULT NULL COMMENT '品牌名称',
    `product_category_name`         varchar(255)   DEFAULT NULL COMMENT '商品分类名称',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 37
  DEFAULT CHARSET = utf8 COMMENT ='商品信息';

INSERT INTO `pms_product`
VALUES ('1', '49', '7', '0', '0', '银色星芒刺绣网纱底裤',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '1', '1',
        '1', '100', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0',
        null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '0',
        '七匹狼', '外套');
INSERT INTO `pms_product`
VALUES ('2', '49', '7', '0', '0', '银色星芒刺绣网纱底裤2',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86578', '1', '1', '1', '1',
        '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null,
        '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', null,
        '0', '七匹狼', '外套');
INSERT INTO `pms_product`
VALUES ('3', '1', '7', '0', '0', '银色星芒刺绣网纱底裤3',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', '1', '1', '1', '1',
        '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null,
        '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '0', '万和',
        '外套');
INSERT INTO `pms_product`
VALUES ('4', '1', '7', '0', '0', '银色星芒刺绣网纱底裤4',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86580', '1', '1', '1', '1',
        '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null,
        '银色星芒刺绣网纱底裤4', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '0', '万和',
        '外套');
INSERT INTO `pms_product`
VALUES ('5', '1', '7', '0', '0', '银色星芒刺绣网纱底裤5',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86581', '1', '0', '1', '1',
        '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null,
        '银色星芒刺绣网纱底裤5', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '0', '万和',
        '外套');
INSERT INTO `pms_product`
VALUES ('6', '1', '7', '0', '0', '银色星芒刺绣网纱底裤6',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86582', '1', '1', '1', '1',
        '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null,
        '银色星芒刺绣网纱底裤6', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '0', '万和',
        '外套');
INSERT INTO `pms_product`
VALUES ('7', '1', '7', '0', '1', '女式超柔软拉毛运动开衫',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('8', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('9', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('10', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('11', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('12', '1', '7', '0', '1', '女式超柔软拉毛运动开衫2',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('13', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('14', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('18', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1',
        '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00',
        '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '0', '0', '万和', '外套');
INSERT INTO `pms_product`
VALUES ('22', '6', '7', '0', '1', 'test',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '', '1', '1', '0', '0',
        '0', '0', '0', '0.00', null, '0', '0', '0', 'test', '', '0.00', '100', '0', '', '0.00', '1', '1,2', '', '', '',
        '', '', '', '', '0', '0', '小米', '外套');
INSERT INTO `pms_product`
VALUES ('23', '6', '19', '0', '1', '毛衫测试',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', 'NO.1098', '1', '1', '1',
        '1', '0', '0', '0', '99.00', null, '99', '99', '1000', '毛衫测试11', 'xxx', '109.00', '100', '0', '件', '1000.00',
        '1', '1,2,3', '毛衫测试', '毛衫测试',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg',
        '毛衫测试', '毛衫测试',
        '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>',
        '', '0', '2', '小米', '手机通讯');
INSERT INTO `pms_product`
VALUES ('24', '6', '7', '0', null, 'xxx', '', '', '1', '0', '0', '0', '0', '0', '0', '0.00', null, '0', '0', '0', 'xxx',
        '', '0.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '0', '小米', '外套');
INSERT INTO `pms_product`
VALUES ('26', '3', '19', '0', '3', '华为 HUAWEI P20 ',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '6946605', '0', '1',
        '1', '1', '0', '100', '0', '3788.00', null, '3788', '3788', '0',
        'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '', '4288.00', '1000', '0', '件', '0.00', '1', '2,3,1', '',
        '',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg',
        '', '',
        '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>',
        '', '0', '1', '华为', '手机通讯');
INSERT INTO `pms_product`
VALUES ('27', '6', '19', '0', '3', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '7437788', '0', '1', '1', '1',
        '0', '0', '0', '2699.00', null, '2699', '2699', '0', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购',
        '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '2699.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '',
        '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg\" width=\"500\" /></p>',
        '', '0', '3', '小米', '手机通讯');
INSERT INTO `pms_product`
VALUES ('28', '6', '19', '0', '3', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '7437789', '0', '1',
        '1', '1', '0', '0', '0', '649.00', null, '649', '649', '0', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '',
        '649.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '4', '小米', '手机通讯');
INSERT INTO `pms_product`
VALUES ('29', '51', '19', '0', '3', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', '7437799', '0', '1',
        '1', '0', '0', '0', '0', '5499.00', null, '5499', '5499', '0',
        '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '', '5499.00', '100', '0',
        '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '0', '苹果', '手机通讯');
INSERT INTO `pms_product`
VALUES ('30', '50', '8', '0', '1', 'HLA海澜之家简约动物印花短袖T恤',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg',
        'HNTBJ2E042A', '0', '1', '1', '1', '0', '0', '0', '98.00', null, '0', '0', '0',
        '2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖', '', '98.00', '100', '0', '', '0.00', '0', '', '', '',
        '', '', '', '', '', '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product`
VALUES ('31', '50', '8', '0', '1', 'HLA海澜之家蓝灰花纹圆领针织布短袖T恤',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg',
        'HNTBJ2E080A', '0', '1', '0', '0', '0', '0', '0', '98.00', null, '0', '0', '0',
        '2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L', '', '98.00', '100', '0', '', '0.00', '0', '',
        '', '', '', '', '', '', '', '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product`
VALUES ('32', '50', '8', '0', null, 'HLA海澜之家短袖T恤男基础款',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg', 'HNTBJ2E153A', '0',
        '1', '0', '0', '0', '0', '0', '68.00', null, '0', '0', '0', 'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)',
        '', '68.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product`
VALUES ('33', '6', '35', '0', null, '小米（MI）小米电视4A ',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', '0', '1',
        '0', '0', '0', '0', '0', '2499.00', null, '0', '0', '0',
        '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', '2499.00', '100', '0', '', '0.00',
        '0', '', '', '', '', '', '', '', '', '0', '0', '小米', '手机数码');
INSERT INTO `pms_product`
VALUES ('34', '6', '35', '0', null, '小米（MI）小米电视4A 65英寸',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', '0', '1',
        '0', '0', '0', '0', '0', '3999.00', null, '0', '0', '0', ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视',
        '', '3999.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '0', '小米', '手机数码');
INSERT INTO `pms_product`
VALUES ('35', '58', '29', '0', null, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', '0', '1',
        '0', '0', '0', '0', '0', '369.00', null, '0', '0', '0', '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '',
        '369.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', '0', '0', 'NIKE', '男鞋');
INSERT INTO `pms_product`
VALUES ('36', '58', '29', '0', null, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码',
        'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', '0', '1',
        '1', '1', '0', '0', '0', '499.00', null, '0', '0', '0',
        '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', '499.00', '100', '0', '', '0.00', '0', '', '',
        '', '', '', '', '', '', '0', '0', 'NIKE', '男鞋');
