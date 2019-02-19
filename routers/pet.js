const express = require('express');
const router=express.Router();
const pool=require("../pool");

//主页狗板块展示内容
router.get('/dog',(req,res)=>{
	var sql= 'SELECT * FROM dog order by pid DESC limit 4';//查询最新的(倒数)4个信息到首页
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result) 
	})
})

//主页猫内容
	router.get('/cat',(req,res)=>{
	var sql= 'SELECT * FROM cat order by pid DESC limit 4';//查询最新的(倒数)4个信息到首页
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result) 
	})
})

//主页花鸟鱼虫内容
router.get('/other',(req,res)=>{
	var sql= 'SELECT * FROM other order by pid DESC limit 4';//查询最新的(倒数)4个信息到首页
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result) 
	})
})
//秀恩爱模块
router.get('/show',(req,res)=>{
	var sql= 'SELECT * FROM show_love order by id DESC limit 3';//查询最新的(倒数)3个信息到首页
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result) 
	})
})

//上传宠物图片
//fs fileSystem 文件系统模块
//操作文件:创建/删除/移动文件
const fs = require("fs");
const multer = require("multer");
//创建multer对象指定上传文件目录
//指定上传文件目录
var upload = multer({dest:"upload/"});
//4:创建处理上传请求 /upload 上传单个文件
//upload.single() 一次上传一张图片
//mypic           指定上传文件表单 name="mypic"
router.post("/upload",upload.single("file"),
(req,res)=>{
 //5:获取上传文件大小  拒绝超过2MB文件 (字节)
 if(!req.file){
	res.send({code:-1,msg:"图片有误"});
	return
 }
 var size = req.file.size/1024/1024;
 if(size > 2){
  res.send({code:-1,msg:"上传图片过大 超过2MB"});
  return;
 }
 //:获取上传文件类型  图片
 //image/gif image/png image/jpg  text/css 
 var type = req.file.mimetype;
 var i2 = type.indexOf("image");
 if(i2==-1){
   res.send({code:-2,msg:"上传只能是图片"});
   return;
 }
 //:创建新文件名
 var src = req.file.originalname;
 var fTime = "";
 var fRand = Math.floor(Math.random()*9999);
 if(fRand<1000)
	 fRand+=1000				//使用随机数>1000,统一后面文件名长度
 var i3 = src.lastIndexOf(".");
 var suff = src.substring(i3,src.length);
 var petClass = req.body.pet_class;
 //判断用户上传宠物类型然后放在各个目录下,并让跟随宠物类型更改首字母
 var addr ="";
 if(petClass=="小狗"){
	addr="./public/images/p_dog/"
	fTime = 'D'+new Date().getTime().toString().slice(8);
 }else if(petClass=="小猫"){
	addr="./public/images/p_cat/"
	fTime = 'C'+new Date().getTime().toString().slice(8);
	}else{
	addr="./public/images/p_other/";
	fTime = 'W'+new Date().getTime().toString().slice(8);
	}
 var des = addr+fTime+fRand+suff;
				//:将临时文件移动upload目录下
 fs.renameSync(req.file.path,des);
				 //:返回上传成功信息
				 //保存数据库
 var ser_id = des.slice(-14,-4);
var picAddr = 'http://127.0.0.1:3000'+des.slice(8);
 res.send({code:1,msg:"图片上传成功",img1:picAddr,ser_id});
});


//发布宠物信息
router.post('/addpet',(req,res)=>{
var ser_id = req.body.ser_id;
var pname = req.body.pname;
var intro = req.body.intro;
var details = req.body.details;
var city = req.body.city; 
var img1 = req.body.img1;
var img2 = req.body.img2;
var img3 = req.body.img3;
var img4 = req.body.img4;
var master = req.body.master;
var $class = req.body.pet_class;
		//判断种类插入到对应的数据库
if($class=='小狗'){
	$class='dog'
}else if($class=='小猫'){
	$class='cat'
}else{
	$class='other'
}
var sql ="INSERT INTO " +$class+" VALUES (NULL,?,?,?,?,?,?,now(),?,?,?,?)"
pool.query(sql,[ser_id,pname,intro,details,master,city,img1,img2,img3,img4],(err,result)=>{
	if(err) throw err;
	if(result.affectedRows>0){
		res.send({success:200,msg:'操作成功!'})
	}else{
		res.send({success:404,msg:'失败'})
		}
})
})


//获取狗list
router.get('/dogList',(req,res)=>{
pool.query("SELECT * FROM dog ",(err,result)=>{
	if(err) throw err;
	var all = result.length
	var pno = req.query.pno;
	var psize = req.query.psize;
		pool.query("SELECT * FROM dog ORDER BY pid DESC LIMIT "+(pno-1)*psize+" , "+psize,(err2,result2)=>{
			if(err2) throw err2;
			res.send({code:200,all:all,data:result2});
		})
	
})
})
	
//获取猫list
router.get('/catList',(req,res)=>{
pool.query("SELECT * FROM cat ",(err,result)=>{
	if(err) throw err;
	var all = result.length
	var pno = req.query.pno;
	var psize = req.query.psize;
		pool.query("SELECT * FROM cat ORDER BY pid DESC LIMIT "+(pno-1)*psize+" , "+psize,(err2,result2)=>{
			if(err2) throw err2;
			res.send({code:200,all:all,data:result2});
		})
})
})
//获取其他list
router.get('/otherList',(req,res)=>{
pool.query("SELECT * FROM other ",(err,result)=>{
	if(err) throw err;
	var all = result.length
	var pno = req.query.pno;
	var psize = req.query.psize;
		pool.query("SELECT * FROM other ORDER BY pid DESC LIMIT "+(pno-1)*psize+" , "+psize,(err2,result2)=>{
			if(err2) throw err2;
			res.send({code:200,all:all,data:result2});
		})
})
})

//按编号查看宠物详情
router.get('/petDetails',(req,res)=>{
	var petClass = req.query.ser_id.slice(0,1)=="D"?'dog':(req.query.ser_id.slice(0,1)=="C"?'cat':"other")
	var sql = "SELECT * FROM "+petClass+" WHERE ser_id='"+req.query.ser_id+"'"
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result)
	})
})

//按照master查询主人名
router.get('/master',(req,res)=>{
	var master=req.query.master
	console.log(master);
	pool.query("SELECT * FROM user WHERE uid="+master,(err,result)=>{
		if(err) throw err;
		console.log(result[0].uname);
		res.send(result[0].uname)
	})
})

//上传信息到宠物待审查表
router.post('/check',(req,res)=>{
	var ser_id=req.body.ser_id
	var kind=req.body.kind
	var city=req.body.city
	var pname=req.body.pname
	var intro=req.body.intro
	var details=req.body.details
	var uname=req.body.uname
	var img1 = req.body.img1
	var img2 = req.body.img2
	var img3 = req.body.img3
	var img4 = req.body.img4
	if(uname==""){
	res.send({code:-1,msg:"上传失败"})
	return
	}
	if(uname=="" || kind=="" || pname=="" || intro=="" || details=="" || img1==""){
	res.send({code:-1,msg:"上传失败"})
	return
	}//(`cid`, `kind`, `city`, `pname`, `intro`, `details`, `uname`, `img1`, `img2`, `img3`, `img4`)
	var sql=`INSERT INTO check_list VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?)`
	pool.query(sql,[ser_id,kind,city,pname,intro,details,uname,img1,img2,img3,img4],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send({code:200,msg:"恭喜上传成功!,审核成功后可到宠物列表查看"})
		}
	})
})
//导出模块
module.exports=router;