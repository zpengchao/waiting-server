const express = require('express');
const router=express.Router();
const pool=require("../pool");

//用户登录模块
router.post('/login',(req,res)=>{
	var uname = req.body.uname;
	var upwd = req.body.upwd;
	var sql='SELECT * FROM user WHERE uname=? AND upwd=?';
	pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
		if(result.length==1){
			res.send({code:1,msg:'登录成功!'})
		}else{
			res.send({code:400,msg:'用户名或者密码错误,请确认后重试!'})
			}	
	})
})

//验证用户名是否存在
router.get('/hasuser',(req,res)=>{
	var uname=req.query.uname;
	var sql= 'SELECT * FROM user WHERE uname=?';
	pool.query(sql,[uname],(err,result)=>{
		if(err) throw err;
		if(result.length>=1){
			res.send({has:1})
		}else{
			res.send({has:0})	
			}
	})
})
//查询用户id
	router.post('/reg/sea_uname',(req,res)=>{
		var uname = req.body.uname;
		var sql ="SELECT * FROM user WHERE uname=?"
		pool.query(sql,[uname],(err,result)=>{
			if(err) throw err;
			res.send(result);
		})
	})

//用户注册模块
router.post('/reg',(req,res)=>{
	var uname = req.body.uname;
	var upwd = req.body.upwd;
	var upwd2 = req.body.upwd2;
	var email = req.body.email;
		if(uname=="" || upwd=="" || upwd2=="" || email=="" ){
		res.send({code:0,msg:"检查信息填写是否正确?"})
		return;	
		}
		if(upwd!=upwd2){
		res.send({code:0,msg:"检查信息填写是否正确?"})
		return;	
		}
	var unameS = /^([\u4e00-\u9fa5]|\w){4,12}$/.test(uname);
	var upwd2S = /^\w{6,12}$/.test(upwd2);
	var emailS = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g.test(email)
		if(unameS==true && upwd2S==true && emailS==true){
			var sql = 'INSERT INTO user VALUES(NULL,?,?,NULL,NULL,NULL,?,NULL)';
			pool.query(sql,[uname,upwd,email],(err,result)=>{
				if(err) throw err;
				if(result.affectedRows>0){
					res.send({"code":200, "msg":"注册成功!"});
				}else{
					res.send({"code":202, "msg":"注册失败"})
					return;
				 }
			})
		}else{
			res.send({code:0,msg:"检查信息填写是否正确?"})
			return;	
			}
})



//导出模块
module.exports=router;