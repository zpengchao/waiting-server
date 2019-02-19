const express = require('express');
const router=express.Router();
const pool=require("../pool");

//登录管理员
router.post('/login',(req,res)=>{
var root = req.body.root;
var rpwd = req.body.pwd;
var sql = `SELECT * FROM admin_list WHERE admin_name=? and admin_pwd=?`
pool.query(sql,[root,rpwd],(err,result)=>{
	if(err) throw err;
	if(result.length>0){
		req.session.root=root;//测试中!!!!!!!!!!!!!!!!!!!!!
		req.session.rpwd=rpwd;
		 res.send({code:200,msg:"登录成功"})
	 }else
	 res.send({code:400,msg:"登录失败"})
})
})

//管理员根据参数获取用户列表
router.post('/user',(req,res)=>{
		pool.query('SELECT * FROM `user`',(err,result)=>{
			if(err) throw err;
	var all = result.length
	
	var seaTtpe = req.body.seaTtpe
	var val = req.body.val
	var pageCount = (req.body.pageCount-1)*25
	var sql=""
	if(!val || seaTtpe==""){
		sql = 'SELECT * FROM `user` ORDER BY `uid` ASC LIMIT ?,25'
		pool.query(sql,[pageCount],(err,result)=>{
			if(err) throw err;
			res.send({count:all,data:result})
			})
		}else if(seaTtpe==1){
		sql = 'SELECT * FROM `user` WHERE `uid`='+val
				pool.query(sql,(err,result)=>{
					if(err) throw err;
					res.send({count:all,data:result})
				})
		}else if(seaTtpe==2){
			sql = 'SELECT * FROM `user` WHERE `uname`=?'
				pool.query(sql,[val],(err,result)=>{
					if(err) throw err;
					res.send({count:all,data:result})
				})
		}
	})
})

//删除用户模块
router.post('/deleteUser',(req,res)=>{
	var uid = req.body.uid;
	var sql = `DELETE FROM user WHERE uid=`+uid;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send({code:200})
		}
	})
})

router.post('/getcheck',(req,res)=>{
	var sql = 'SELECT * FROM `check_list`'	
	pool.query(sql,(err,result)=>{
		if(err) throw err;
			res.send(result)
	})
})


//删除审核信息
router.post('/delCheck',(req,res)=>{
	var cid = req.body.cid
	var sql = `DELETE FROM check_list WHERE cid=?`
	pool.query(sql,[cid],(err,result)=>{
		if(err) console.log(err);
		if(result.affectedRows>0){
			res.send({code:1})
		}
	})
})


//导出模块
module.exports=router;