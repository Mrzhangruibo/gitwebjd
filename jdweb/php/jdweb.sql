-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 06 月 15 日 06:50
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `jdweb`
--

-- --------------------------------------------------------

--
-- 表的结构 `jdbanner`
--

CREATE TABLE IF NOT EXISTS `jdbanner` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT COMMENT 'bannerID',
  `url` varchar(500) CHARACTER SET utf8mb4 NOT NULL COMMENT 'url',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `jdbanner`
--

INSERT INTO `jdbanner` (`sid`, `url`) VALUES
(1, 'https://m.360buyimg.com/babel/jfs/t21160/294/737349827/88400/728ea33b/5b163561N1aeda366.jpg'),
(2, 'https://img1.360buyimg.com/pop/jfs/t21868/308/865444708/149014/4d342595/5b1a546eNc023da20.jpg'),
(3, 'https://img1.360buyimg.com/da/jfs/t20671/250/851518589/71893/bf7a3ef8/5b1a3052Ndf09e471.jpg'),
(4, 'https://m.360buyimg.com/babel/jfs/t20233/260/826074695/81083/d694837/5b19dc8eN65955b93.jpg'),
(5, 'https://img1.360buyimg.com/da/jfs/t21973/38/842179220/101247/aa270900/5b19f39bN8cbdc5db.jpg'),
(6, 'https://m.360buyimg.com/babel/jfs/t20377/1/448618248/95752/bd1bfb66/5b0e928fN1c62391a.jpg'),
(7, 'https://m.360buyimg.com/babel/jfs/t21904/359/823960380/97254/cbb17e67/5b18eb6dN146cff6f.jpg'),
(8, 'https://m.360buyimg.com/babel/jfs/t22231/196/473680353/78753/e6984b2f/5b0e4ca6N564ed443.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `killright`
--

CREATE TABLE IF NOT EXISTS `killright` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `killright`
--

INSERT INTO `killright` (`sid`, `url`) VALUES
(1, 'https://img10.360buyimg.com/mobilecms/s180x260_jfs/t21736/278/887734949/132258/5e7d226f/5b1a545fN842b3446.png!q90!cc_180x260'),
(2, 'https://img11.360buyimg.com/mobilecms/s180x260_jfs/t22000/175/773945768/91987/4aff69eb/5b18e2f0Nba42c358.png!q90!cc_180x260');

-- --------------------------------------------------------

--
-- 表的结构 `meeting`
--

CREATE TABLE IF NOT EXISTS `meeting` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `meeting`
--

INSERT INTO `meeting` (`sid`, `url`) VALUES
(1, 'https://img11.360buyimg.com/babel/s190x210_jfs/t22297/257/819431850/37538/b2c939af/5b18fac4N5a3fe91b.jpg!q90!cc_190x210'),
(2, 'https://img11.360buyimg.com/babel/s190x210_jfs/t21472/297/880141902/55490/d3808edd/5b1a4f12N72187cd3.jpg!q90!cc_190x210'),
(3, 'https://img10.360buyimg.com/babel/s190x210_jfs/t22417/56/700416039/15687/d5ae74e2/5b15f39aN029bd876.jpg!q90!cc_190x210'),
(4, 'https://img20.360buyimg.com/babel/s190x210_jfs/t21052/233/544423363/23998/cca38b11/5b1139bfN5c24e023.png!q90!cc_190x210'),
(5, 'https://img14.360buyimg.com/babel/s190x210_jfs/t20860/180/397669606/13759/8b01d03e/5b0d1537Nf770da4c.png!q90!cc_190x210'),
(6, 'https://img10.360buyimg.com/babel/s190x210_jfs/t21907/242/541584332/23239/4be9faad/5b10d9efNf5c9c2d6.jpg!q90!cc_190x210'),
(7, 'https://img10.360buyimg.com/babel/s190x210_jfs/t19915/81/835352815/33626/9dfe1404/5b0d2a9bN005b3f96.jpg!q90!cc_190x210'),
(8, 'https://img11.360buyimg.com/babel/s190x210_jfs/t20731/300/442221950/33908/1c118818/5b0d3528Nf7aeaf0d.png!q90!cc_190x210'),
(9, 'https://img11.360buyimg.com/babel/s190x210_jfs/t21973/365/779263867/32887/1dce1e7a/5b189fe3N5ace5629.jpg!q90!cc_190x210'),
(10, 'https://img10.360buyimg.com/babel/s190x210_jfs/t21625/38/860484430/13256/d5a826a7/5b1a45b4N7bc94ec4.jpg!q90!cc_190x210'),
(11, 'https://img11.360buyimg.com/babel/s190x110_jfs/t21181/58/240307439/8583/e64d3641/5b06a287Na2d3a9d2.jpg!q90!cc_190x110'),
(12, 'https://img13.360buyimg.com/babel/s190x110_jfs/t21799/233/478837617/15982/98e41259/5b0f51daN7045f214.jpg!q90!cc_190x110'),
(13, 'https://img10.360buyimg.com/babel/s190x110_jfs/t21520/365/747589706/15181/a12e8f8/5b1645e1N58772f47.jpg!q90!cc_190x110'),
(14, 'https://img10.360buyimg.com/babel/s190x110_jfs/t20935/130/353892282/16202/eb3403e6/5b0a610dNa200fff6.jpg!q90!cc_190x110'),
(15, 'https://img10.360buyimg.com/babel/s190x110_jfs/t21835/239/457563265/9904/2987bedd/5b0e49d9N2d518eca.jpg!q90!cc_190x110');

-- --------------------------------------------------------

--
-- 表的结构 `secondskill`
--

CREATE TABLE IF NOT EXISTS `secondskill` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT COMMENT 'kill-id',
  `url` varchar(500) NOT NULL COMMENT 'url',
  `title` varchar(200) NOT NULL COMMENT 'title',
  `beforePrice` varchar(20) NOT NULL COMMENT 'before-price',
  `price` varchar(20) NOT NULL COMMENT 'price',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `secondskill`
--

INSERT INTO `secondskill` (`sid`, `url`, `title`, `beforePrice`, `price`) VALUES
(1, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t3283/239/3814391352/452881/7743fe4c/57f8ca1fNc3dd8ffe.jpg!q90.webp', '维达（Vinda) 抽纸 超韧系列 软抽3层（130抽加赠20抽）*24包(中规格) 整箱销售', '120.00', '79.90'),
(2, 'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t22423/364/805287407/98129/3b5cf173/5b18e983N2811afef.jpg!q90.webp', '洁柔（C&S）卷纸 黑Face 加厚4层180g卫生纸*23卷（整箱销售 面子系列一格就够）', '99.90', '59.80'),
(3, 'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t21484/192/717084530/121574/dc4e3cde/5b163775N466e25c5.jpg!q90.webp', '科沃斯（Ecovacs）倾城扫拖一体机真规划 一台顶两台家用智能吸尘器扫地机器人', '1499.00', '1049.00'),
(4, 'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t6931/350/2605439378/371395/53da4a73/598d8e0dN25082b2b.jpg!q90.webp', '一叶子 营润亮颜奢养面膜套组30片（新鲜奢养15片+黑松露15片)补水保湿 护肤品套装', '159.00', '78.00'),
(5, 'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t19933/18/975512569/156090/12d36c09/5b10dc15N750934c7.jpg!q90.webp', '大洋世家 阿根廷红虾L1 2kg盒 30-40只 原装进口 海鲜大虾', '158.00', '118.80'),
(6, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t3526/295/888755633/189982/16ea21b4/5816dce5N70820f42.jpg!q90.webp', '新西兰 进口牛奶 纽仕兰（Theland）3.5g蛋白质 全脂牛奶 250ml*24家庭装', '99.00', '64.90'),
(7, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t16048/199/2278872047/232196/e41dec2d/5ab369bfN62254a9b.jpg!q90.webp', '京天（KOTIN） 六核i7 8700/GTX1060 6G独显吃鸡游戏电脑主机台式机DIY组装机', '5499.00', '5188.00'),
(8, 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t18094/50/873803954/124163/e2a474b4/5aaf1e74N9a86f0ab.jpg!q90.webp', '千禾 御藏180天特级生抽 零添加酿造酱油 非转基因黄豆 调料调味品1L', '29.80', '12.80'),
(9, 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t20782/23/895349505/294344/dc1d4ee7/5b1a3332Na68c8488.jpg!q90.webp', '乐高 玩具 迪士尼 Disney Princess 6岁-12岁 艾莎的魔法冰雪城堡 41148 积木LEGO', '799.00', '545.00'),
(10, 'https://img10.360buyimg.com/mobilecms/s140x140_jfs/t16891/227/2607598985/248370/2669655/5b0226f1N3a32a8da.jpg!q90.webp', '荣耀平板2（八核 4G+64G 1920*1200 4800mAh WIFI版 8英寸平板电脑）香槟金', '1499.00', '1288.00'),
(11, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t20398/207/802555677/138040/8eb9368d/5b18d493Na9e4f4e5.jpg!q90.webp', '创晟 泰国进口金枕头榴莲水果约2.5-3.5kg', '118.00', '198.00'),
(12, 'https://img10.360buyimg.com/mobilecms/s140x140_jfs/t20398/33/705710606/159459/e626ce8e/5b1668e4N41edf522.jpg!q90.webp', '蓝月亮洗衣液机洗手洗14.48斤套装：3kg亮白薰衣草*2+500g手洗预涂*2+80g旅行装*3', '99.00', '150.90'),
(13, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t21724/297/896502351/107383/a3169c45/5b1a4ca8Ne61cf350.jpg!q90.webp', '微软（Microsoft） 新New Surface Pro 5 笔记本平板电脑二合一4 轻薄办公 Pro5 i5 256G储存/8G内存 送Pro原装键盘', '9388.00', '7888.00'),
(14, 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t14143/58/1306436672/166146/b84e7109/5a43480dNb102e5ff.jpg!q90.webp', '联想ThinkPad X1 Carbon 2017款（07CD）14英寸轻薄笔记本电脑（i5-7200U 8G 256GSSD 背光键盘 FHD）', '9999.00', '9588.00'),
(15, 'https://img13.360buyimg.com/mobilecms/s140x140_jfs/t4531/149/3228740023/251665/6efd9f73/58f9b7f4Ne190ce34.jpg!q90.webp', '华润五丰 美仑达四川蒲江青见柑橘 5kg装 单果约200-300g 丑柑丑橘', '128.00', '78.80'),
(16, 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t4459/338/3533509767/48771/6acaec1c/58feb1b1N2fa79ce1.jpg!q90.webp', '美德乐（Medela）吸奶器电动吸乳器丝韵电动吸奶挤奶器 瑞士进口', '1111.00', '1399.00'),
(17, 'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t22039/6/745377897/169297/99ded737/5b16b49bN4950f77b.jpg!q90.webp', '永久24速自行车 前后减震折叠山地车 双碟刹 F18 黑绿色', '658.00', '599.00'),
(18, 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t19759/94/665846916/286434/aca4c0fd/5a9cbe4bN7f2f07a4.jpg!q90.webp', '東格 京选WY701A4 复印纸 70g 500张/包 5包/箱', '115.00', '89.90'),
(19, 'https://img30.360buyimg.com/mobilecms/s140x140_jfs/t22036/72/845748714/188354/5cd2249b/5b18e78aN882c9c60.jpg!q90.webp', '中荣 巴西牛腱子 1kg/袋', '68.00', '49.90'),
(20, 'https://img13.360buyimg.com/mobilecms/s140x140_jfs/t20659/306/361706939/82297/48697aa1/5b0bbbdeN6013dda8.jpg!q90.webp', '博朗（BRAUN）电动剃须刀7系7840S德国进口全身水洗刮胡须刀（智能声波剃须）', '1699.00', '949.00');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`sid`, `url`, `title`, `price`) VALUES
(1, 'https://img13.360buyimg.com/jdcms/s170x170_jfs/t3673/110/1843877571/91661/b4af3cc7/5833b5eeN65d52785.jpg!q90!cc_170x170.webp,https://img14.360buyimg.com/n0/jfs/t3574/84/1911069721/97069/e0ed41e7/5833b5e8N48aeaa2b.jpg,https://img14.360buyimg.com/n0/jfs/t3673/110/1843877571/91661/b4af3cc7/5833b5eeN65d52785.jpg,https://img14.360buyimg.com/n0/jfs/t3574/84/1911069721/97069/e0ed41e7/5833b5e8N48aeaa2b.jpg,https://img14.360buyimg.com/n0/jfs/t3361/17/1827679752/91688/f5301f02/5833b5f2N21e139d5.jpg,https://img14.360buyimg.com/n0/jfs/t3505/316/1824097943/86614/a8f59334/5833b5f9N842f346a.jpg', 'TP-LINK TL-WN725N免驱版  迷你USB无线网卡 智能自动安装随身wifi接收器', '45.00'),
(2, '//img11.360buyimg.com/jdcms/s170x170_jfs/t19309/53/967224496/196987/c5161b2f/5ab30ae8Nb05c63c8.jpg!q90!cc_170x170.webp,https://img14.360buyimg.com/n0/jfs/t2791/238/1356885545/421820/87883761/573c0653N54ecb4c6.jpg,https://img14.360buyimg.com/n0/jfs/t2791/238/1356885545/421820/87883761/573c0653N54ecb4c6.jpg,https://img14.360buyimg.com/n0/jfs/t2626/161/1327243378/407026/178e1b8/573c0652Nae7a4452.jpg,https://img14.360buyimg.com/n0/jfs/t2311/106/977905323/390914/fc2c7376/5636c137Nbd00c799.jpg,https://img14.360buyimg.com/n0/jfs/t18427/42/514135764/463126/f74412a4/5a7eba29N59c690e8.jpg', '三只松鼠_碧根果210gx2袋零食坚果炒货山核桃长寿果干果', '38.90'),
(3, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t2893/117/124555441/411866/9367800d/5704f452N0a74f923.jpg!q90!cc_170x170.webp', '美谦超纤雪尼尔卫生间厨房吸水防滑门垫卧室客厅门厅进门门口地垫玄关入户脚垫垫子飘窗垫床头地毯 香槟色雪尼尔 40*60cm', '12.00'),
(4, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t18874/357/1627676785/285168/4b7aeac0/5ad06ebeN18fbb0f2.jpg!q90!cc_170x170.webp', '满199减120三只松鼠坚果炒货每日坚果碧根果120g 1袋装', '29.90'),
(5, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t2146/90/2096274276/2879845/42b3fb3a/56f0a805N7bad2871.jpg!q90!cc_170x170.webp', 'TP-LINK TL-WN726N免驱版 外置天线USB无线网卡 智能自动安装随身wifi接收器', '55.00'),
(6, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t21763/337/729531195/313849/8c4e226b/5b1753a0Nb392fdc4.jpg!q90!cc_170x170.webp', '三只松鼠_夏威夷果265gx2袋零食坚果炒货干果奶油味送开口器', '46.90'),
(7, 'https://img10.360buyimg.com/jdcms/s170x170_jfs/t2140/120/2848833654/173464/90502931/56f88aeaN313c78d9.jpg!q90!cc_170x170.webp', 'TP-LINK TL-WN823N 300M迷你USB无线网卡 台式机笔记本随身wifi接收器', '65.00'),
(8, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t19669/114/1614047489/292382/94940b6a/5ad06eb1N5c7f0f2e.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_纸皮核桃210g零食坚果特产薄皮核桃原味', '29.80'),
(9, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t1930/284/2865629620/390243/e3ade9c4/56f0a08fNbd3a1235.jpg!q90!cc_170x170.webp', '三只松鼠坚果炒货干果零食核桃奶油味碧根果225g/袋', '19.90'),
(10, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t5110/173/2376897906/33115/dfabff15/591a5b42N3605f60d.jpg!q90!cc_170x170.webp', '腾达（Tenda）U6 300M 增强型 USB无线网卡 随身WiFi接收器 台式机 笔记本通用', '35.00'),
(11, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t16897/77/1556275617/271796/2f9d3f80/5ad06eb7N25301f9a.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_炭烧腰果90g零食坚果炒货干果特产腰果仁 1袋装', '29.80'),
(12, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t17419/286/952212801/234891/496ed442/5ab31d22Nb7223975.jpg!q90!cc_170x170.webp', '三只松鼠_手剥巴旦木235gx2袋零食坚果炒货特产干果巴达木', '36.90'),
(13, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t14701/92/149456508/92382/9553bc51/5a24eac5N0bbf9b85.jpg!q90!cc_170x170.webp', '索尼（SONY） PS4 slim 国行主机 ps4手柄套（不含手柄） pro支架 1', '25.00'),
(14, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t14767/224/340429285/415512/dc3834ff/5a2a8cceN265c454f.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_坚果炒货零食每日坚果手剥巴旦木120g 1袋装', '24.90'),
(15, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t8317/311/357628999/40158/f23f49df/59a67fb2Nb272b29d.jpg!q90!cc_170x170.webp', 'COMFAST CF-WU815N免驱版 迷你USB无线网卡 台式机智能自动安装WiFi接收器发射器', '19.80'),
(16, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t19693/329/1545872957/248073/ec94bc5d/5ad06ec6Ne9dc9d54.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_夏威夷果160g零食坚果特产炒货干果奶油味 160g', '33.90'),
(17, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t4489/249/3295167958/419744/67a6ebbf/58ff2688N12d804c2.jpg!q90!cc_170x170.webp', '三只松鼠坚果炒货干果零食每日坚果碧根果120g/袋', '23.90'),
(18, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t16372/300/1711296372/12137/cf6fc689/5a5d5dc1N8d53b4cc.jpg!q90!cc_170x170.webp', '水星（MERCURY）MW150UH免驱版 USB无线网卡 智能自动安装随身wifi台式机笔记本通用', '28.80'),
(19, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t21451/54/743999333/367523/67513932/5b175479N1f21fc10.jpg!q90!cc_170x170.webp', '三只松鼠_开口松子218gx2袋零食坚果特产炒货东北红松子原味', '48.90'),
(20, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t3721/3/1938563791/302664/92be57f6/583be53cNab9dda1e.jpg!q90!cc_170x170.webp', '皇中皇 新羊羔绒卧室椭圆地毯客厅浴室厨房防滑垫 坐垫脚垫地毯浴室厨房进门脚垫门垫地垫房间 西瓜红-椭圆 40*60cm-2块包邮', '12.00'),
(21, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t18652/274/1570006590/254046/432f1907/5ad06ec0N962ae79a.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_开心果100g坚果炒货零食每日坚果 1袋装', '29.90'),
(22, 'https://img20.360buyimg.com/jdcms/s170x170_jfs/t10039/317/229274996/52349/8018a3e9/59c8b5bbNcbc352be.jpg!q90!cc_170x170.webp', '佳途JOYTOUR 旅行一次性床单被套罩枕套四件套装旅游酒店宾馆隔脏双人款', '19.90'),
(23, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t17875/108/1484346272/431253/91fea235/5acc2a3cN74c6cfb6.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_开口松子休闲零食坚果炒货东北手剥红松子 160g', '39.90'),
(24, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t7288/166/378740263/340450/e17afdf3/59925a9bNfd8c9aed.jpg!q90!cc_170x170.webp', '伊娃之恋 化妆品分装瓶套装便携包旅行套瓶化妆品空瓶子按压瓶喷瓶小喷壶', '13.90'),
(25, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t21052/344/760682729/386609/ba2e1740/5b17550cN174f4917.jpg!q90!cc_170x170.webp', '三只松鼠_坚果大礼包1373g 零食大礼包礼物每日坚果干果礼盒批发7袋装 E套餐', '88.00'),
(26, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t3754/221/1394216202/114612/dee13cf0/58291b73Nbe0507d4.jpg!q90!cc_170x170.webp', 'TP-LINK TL-WDN5200H免驱版 双频外置天线USB无线网卡 智能自动安装随身wifi接收器', '99.00'),
(27, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t1345/179/1105465846/257484/637df04d/55e3b500Nebc10560.jpg!q90!cc_170x170.webp', '伊丽雅佳 假花藤条仿真柳叶假柳条藤条藤蔓绿叶藤家居客厅挂墙壁吊顶装饰花艺仿真树叶 1包5条', '14.30'),
(28, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t11557/145/608783407/183977/1a701adb/59f459ffN0101a758.jpg!q90!cc_170x170.webp', 'TP-LINK TL-WN725N免驱版 USB无线网卡台式机智能安装随身wifi接收器', '51.90'),
(29, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t19969/97/1171074308/356947/e17a9a0e/5b1754dfN4db0230b.jpg!q90!cc_170x170.webp', '三只松鼠_芒果干116gx3袋休闲零食蜜饯蜜饯果干果脯水果干', '27.90'),
(30, 'https://img20.360buyimg.com/jdcms/s170x170_jfs/t20029/37/42456109/232423/838a6f26/5ae28d6dN05276151.jpg!q90!cc_170x170.webp', '指南车白马金刚高压清洗机多功能洗车泵家用220V全铜洗车机洗车器（金刚至尊版）', '719.00'),
(31, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t18535/35/1610103212/302474/a1bdc90/5ad06e9cN8b299a26.jpg!q90!cc_170x170.webp', '满199减120三只松鼠_猪肉脯自然片150g休闲食品零食小吃靖江风味猪肉干', '29.80'),
(32, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t9439/26/1503625346/187537/4bad863/59bb7da0N636325d5.jpg!q90!cc_170x170.webp', '走廊地毯过道满铺家用防滑红地毯玄关进门厨房长条地毯定制 盛世牡丹印花 60*90厘米', '32.00'),
(33, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t9004/117/470828761/87611/6189cec/59a92d7cN7b572fa5.jpg!q90!cc_170x170.webp', '小米（MI） 随身wifiUSB迷你无线网卡路由器mini发射器 小米随身wifi-黑色', '19.90'),
(34, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t2206/125/2898151049/399266/29eb8544/5720d6a6N0b5e19cd.jpg!q90!cc_170x170.webp', '进门地垫门垫门厅地毯入户脚垫PVC防滑地垫卫生间防滑地垫可定制 招财进宝-深红 58*88cm', '18.00'),
(35, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t15994/199/162854808/142839/25acbc89/5a28ed63Nfd8261ba.jpg!q90!cc_170x170.webp', '索尼（SONY） 索尼(SONY)PS4 slim国行主机 ps4 游戏机支架（不含游戏机）', '25.00'),
(36, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t18193/346/2584044268/416884/2546b033/5b012edbN2d91c1cf.jpg!q90!cc_170x170.webp', '毕亚兹(BIAZE) 苹果7 Plus/8 Plus手机壳 iPhone8 Plus保护套 防摔指环扣支架男女磨砂壳 王者 JK210-黑色', '39.90'),
(37, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t478/153/886206867/83918/24d11d17/54b8ae03N63a25d6c.jpg!q90!cc_170x170.webp', '360随身WiFi3 300M 无线网卡 迷你路由器 黑色', '24.90'),
(38, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t6004/266/931881996/146429/b918e7b7/592e2926Nf89773e6.jpg!q90!cc_170x170.webp', '圆刚（AVerMedia）GC570 全高清游戏直播专用视频采集卡 用电脑享受电影院画质', '1399.00'),
(39, 'https://img14.360buyimg.com/jdcms/s170x170_jfs/t3949/109/2056195170/238801/9a31ff7e/58a15b04N552528ba.jpg!q90!cc_170x170.webp', '雷蛇制造商 谜石(MEGA STONE)德国原厂樱桃（cherry） mx青轴幻刃系列HK10 单色红光 吃鸡 机械键盘 ', '499.00'),
(40, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t5716/172/8358457542/255748/dc88d11e/5979a96bN47cdcd2f.jpg!q90!cc_170x170.webp', '超能照明 (买一送一）超能LED吸顶灯改造灯板 替代节能灯管 led吸顶灯光源 （送球泡)18W三色温-22.5CM-不带遥控', '42.80');

-- --------------------------------------------------------

--
-- 表的结构 `speity`
--

CREATE TABLE IF NOT EXISTS `speity` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  `bold` varchar(200) NOT NULL,
  `title` varchar(99) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `speity`
--

INSERT INTO `speity` (`sid`, `url`, `bold`, `title`) VALUES
(1, 'https://img10.360buyimg.com/babel/s350x250_jfs/t12547/128/70849579/20593/52db75df/5a02df29Nd171bcd6.jpg!q90!cc_350x250', '司法拍卖', '法院好货 公开抢拍'),
(2, 'https://img20.360buyimg.com/babel/s350x250_jfs/t11446/106/1516593922/16203/71f426cb/5a02dd5dN16b6552d.jpg!q90!cc_350x250', '京东金融', '会理财 懂生活'),
(3, 'https://img11.360buyimg.com/babel/s350x250_jfs/t22321/312/400425350/20616/ec153523/5b0cda6fNe9001c10.jpg!q90!cc_350x250', '京东扶贫', '买特产  助扶贫'),
(4, 'https://img12.360buyimg.com/babel/s350x250_jfs/t19294/44/1781409077/19698/fed94123/5ad8c8c7N980d0ee5.jpg!q90!cc_350x250', '企业采购', 'Apple产品企业特价'),
(5, 'https://img13.360buyimg.com/babel/s350x250_jfs/t22306/143/727280392/18724/ee6b9291/5b16726eN9446ba13.jpg!q90!cc_350x250', '陪伴宝宝', '0元试大牌'),
(6, 'https://img11.360buyimg.com/babel/s350x250_jfs/t20314/79/649514577/38638/9daddad/5b14ecacNfadac0d4.png!q90!cc_350x250', '健康服务', '体验惠健康'),
(7, 'https://img11.360buyimg.com/babel/s350x250_jfs/t21709/261/991525802/24288/23fae6dd/5b1de46aN1eab0add.png!q90!cc_350x250', '京东旅行', '618元飞全国'),
(8, 'https://img30.360buyimg.com/babel/s350x250_jfs/t19849/358/1362315146/24324/36d34c29/5b1b75c1Ncc338d3b.jpg!q90!cc_350x250', '品牌特卖', '品牌限时特卖'),
(9, 'https://img10.360buyimg.com/babel/s350x250_jfs/t12478/192/71923900/13977/7d57c391/5a02dd52N90066fbb.jpg!q90!cc_350x250', '白条商城', '最高12期免息'),
(10, 'https://img13.360buyimg.com/babel/s350x250_jfs/t7960/269/4151261412/21509/21b6d808/5a02d4c6N1f197046.jpg!q90!cc_350x250', '全球尖货', '全球自营好货'),
(11, 'https://img12.360buyimg.com/babel/s350x250_jfs/t19375/128/801025884/19342/c383e801/5aa90158Na918ef70.jpg!q90!cc_350x250', '设计师推荐', '全球设计精选'),
(12, 'https://img10.360buyimg.com/babel/s350x250_jfs/t12352/39/67646379/14446/960bf253/5a02dcceN76b3448c.jpg!q90!cc_350x250', '环球时尚', '环球名品，奢华精选');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `tel` varchar(99) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`sid`, `username`, `password`, `tel`) VALUES
(1, '张睿博', '91aad7c73294e28aeeb336b07f448097', '18057143654'),
(2, '何丽莲', '69e26f044564e8a3eb7a6bde390e9f41', '18457145603'),
(3, '琴天柱', 'e10adc3949ba59abbe56e057f20f883e', '18457145603'),
(4, '李晓霞', 'e10adc3949ba59abbe56e057f20f883e', '18057143654'),
(5, '张康康', '69e26f044564e8a3eb7a6bde390e9f41', '18057143654'),
(6, '张三丰', 'e35cf7b66449df565f93c607d5a81d09', '18057143654'),
(7, '白植校', 'e10adc3949ba59abbe56e057f20f883e', '18057143654');

-- --------------------------------------------------------

--
-- 表的结构 `value`
--

CREATE TABLE IF NOT EXISTS `value` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `value`
--

INSERT INTO `value` (`sid`, `title`) VALUES
(2, '居家神劵日'),
(3, '抢电脑神劵'),
(4, '满199减100'),
(5, '爆款五折秒'),
(6, '0元使用'),
(7, '好好敲代码'),
(8, '不要瞎搞'),
(9, '腰间盘突出'),
(10, '你很优秀');
