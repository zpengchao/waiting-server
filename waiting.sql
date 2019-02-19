SET NAMES UTF8;
DROP DATABASE IF EXISTS pet;
#创建数据库pet，使用utf8编码
CREATE DATABASE pet CHARSET=UTF8;
#1:进入pet库中
USE pet;

#创建用户信息表
CREATE TABLE  user(
uid  INT PRIMARY KEY AUTO_INCREMENT,
uname  VARCHAR(12),
upwd  VARCHAR(24),
tel  VARCHAR(20),
qq  VARCHAR(11),
weixin VARCHAR(30),
email  VARCHAR(36),
head_pic  VARCHAR(255)
);
INSERT INTO user VALUES(null,'Simis','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无独有偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春去秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li19931130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'Si2mis','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无2独有偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春去2秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li192931130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'Si2mis','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无独2有偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春2去秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li192931130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'Si2mis','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无独有2偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春24去秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li194931130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'Si4mis','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无独4有偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春去5秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li195931130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'Sim4is','19931130','18000000000',null,null,'13648813@qq.com',null);
INSERT INTO user VALUES(null,'无独7有偶','19931130','18100000000',null,'wudu520','wuduyouou@qq.com',null);
INSERT INTO user VALUES(null,'春去7秋来','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li1954130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li196130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li197130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li19851130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li19945130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li19685130','19931130','18020000000','125105410',null,'fenglai@163.com',null);
INSERT INTO user VALUES(null,'li199765130','19931130','18020000000','125105410',null,'fenglai@163.com',null);


#dog 狗宠物信息表 
CREATE TABLE dog(
pid INT PRIMARY KEY AUTO_INCREMENT,
ser_id  VARCHAR(10),		#宠物编号
pname  VARCHAR(20),		
intro VARCHAR(50),		#宠物简介
details VARCHAR(1000),
master VARCHAR(12),			#主人
city  VARCHAR(6),
create_time DATE,		#发布日期	
img1 VARCHAR(255),
img2 VARCHAR(255),
img3 VARCHAR(255),
img4 VARCHAR(255)
);
INSERT INTO dog VALUES(null,'D180001','大军1','求收养','本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。',1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180001_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180002','小汪2','乖巧可爱',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180002_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180003','甜甜3','来个好心人领走吧',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180003_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180004','小葫芦4','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180005','大军5','求收养','本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。',1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180001_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180006','小汪6','乖巧可爱',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180002_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D180007','甜甜7','来个好心人领走吧',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180003_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1800048','小葫芦8','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1800018','大军9','求收养','本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。',1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180001_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1801002','小汪10','乖巧可爱',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180002_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D18052003','甜甜11','来个好心人领走吧',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180003_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1800504','小葫芦12','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1800401','大军13','求收养','本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。',1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180001_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1805002','小汪14','乖巧可爱',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180002_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1850003','甜甜15','来个好心人领走吧',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180003_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1805004','小葫芦16','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1806001','大军17','求收养','本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。本人因个人原因，无法照顾狗狗。坐标北京朝阳，寻找有爱心的美女帅哥领养。狗狗身体健康，定期驱虫、打过针、一直吃皇家奶盖。允许探视。',1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180001_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1807002','小汪18','乖巧可爱',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180002_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1801003','甜甜19','来个好心人领走吧',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180003_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D1800404','小葫芦20','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);
INSERT INTO dog VALUES(null,'D18079004','小葫芦21','可怜的小狗一只',null,1,'郑州','2018-11-11','http://127.0.0.1:3000/images/p_dog/D180004_1.jpg',null,null,null);

#cat 猫宠物信息表 
CREATE TABLE cat(
pid INT PRIMARY KEY AUTO_INCREMENT,
ser_id  VARCHAR(10),		#宠物编号
pname  VARCHAR(20),		
intro VARCHAR(50),		#宠物简介
details VARCHAR(1000),
master  VARCHAR(12),			#主人
city  VARCHAR(6),
create_time DATE,		#发布日期	
img1 VARCHAR(255),
img2 VARCHAR(255),
img3 VARCHAR(255),
img4 VARCHAR(255)
);
INSERT INTO cat VALUES(null,'C180001','琪琪','求收养',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_cat/C180001_1.jpg',null,null,null);
INSERT INTO cat VALUES(null,'C180002','豆豆','乖巧可爱',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_cat/C180002_1.jpg',null,null,null);
INSERT INTO cat VALUES(null,'C180003','小花','来个好心人领走吧',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_cat/C180003_1.jpg',null,null,null);
INSERT INTO cat VALUES(null,'C180004','淘淘','可怜的小狗一只',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_cat/C180004_1.jpg',null,null,null);

#other 其他宠物信息表 
CREATE TABLE other(
pid INT PRIMARY KEY AUTO_INCREMENT,
ser_id  VARCHAR(10),		#宠物编号
pname  VARCHAR(20),		
intro VARCHAR(50),		#宠物简介
details VARCHAR(1000),
master VARCHAR(12),			#主人
city  VARCHAR(6),
create_time DATE,		#发布日期	
img1 VARCHAR(255),
img2 VARCHAR(255),
img3 VARCHAR(255),
img4 VARCHAR(255)
);
INSERT INTO other VALUES(null,'W180001','发财','我心爱的小虎皮',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_other/W180001_1.jpg',null,null,null);
INSERT INTO other VALUES(null,'W180002','滴滴','雪地松鼠 寻专业爱心人士',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_other/W180002_1.jpg',null,null,null);
INSERT INTO other VALUES(null,'W180003','小黑鬼','因工作原因无法饲养，寻求好心人',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_other/W180003_1.jpg',null,null,null);
INSERT INTO other VALUES(null,'W180004','小淘','免费赠送喜欢兔子的人',null,2,'郑州','2018-12-12','http://127.0.0.1:3000/images/p_other/W180004_1.jpg',null,null,null);

#恩爱show 表
CREATE TABLE show_love(
id INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(25),
img_url VARCHAR(255),
word VARCHAR(1000)
);
INSERT INTO show_love VALUES(null,'Simis','http://127.0.0.1:3000/images/show/show1.jpg','I am from Spain and I am very happy to adopt my baby in Winting!Thank you for Winting such a good platform. Thank you very much!');
INSERT INTO show_love VALUES(null,'无所谓春与秋','http://127.0.0.1:3000/images/show/show1.jpg','我是一个非常喜欢宠物的女生,,有一天无意间发现了waiting宠物领养分享的公益网站, 看这个狗狗很可怜无人喂养,好心疼,就把它领回了家,给它洗了个澡.给它取了个名字 叫"加加".我们都爱美好的事物，爱生命，这些都是人的本能。狗狗和猫咪都是人类的好朋友， 看到这些可怜的生灵流浪在外，我们真的应该做点什么。流浪动物也是生命，也值得被爱!');
INSERT INTO show_love VALUES(null,'风雨童舟','http://127.0.0.1:3000/images/show/show1.jpg','越来越多的关于流浪动物的公益活动正在被发起，也许我们还无法立刻救助所有的流浪动物， 但是我可以呼吁发声，希望引起更多的人去关注流浪动物的生存问题,感谢Wiating这个平台。');

#管理员表
CREATE TABLE admin_list(
aid INT PRIMARY KEY AUTO_INCREMENT,
admin_name VARCHAR(10),
admin_pwd VARCHAR(12)
);
INSERT INTO admin_list VALUES(null,'admin','123456')

#待审核信息表
CREATE TABLE check_list(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  ser_id VARCHAR(10),
  kind VARCHAR(6),    #种类
  city VARCHAR(12),
  pname	varchar(20),
  intro varchar(50) ,  #标题
  details	varchar(1000),
  uname   varchar(12),	
  img1	varchar(255),
  img2	varchar(255),
  img3	varchar(255),
  img4	varchar(255)	
);