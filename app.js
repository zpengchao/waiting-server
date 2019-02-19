const express=require('express');
const pool = require('./pool');
const cors=require("cors");
var session = require("express-session")
var app = express();
app.use(cors({
    origin:["http://127.0.0.1:3001",
    "http://localhost:3001"],
    credentials:true
}));
//引入第三方模块:bodyParser 处理post请求
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use(session({
  secret:"128位随机字符",
  resave:false,
  saveUninitialized:true
}))

/*引入路由模块*/
const pet=require("./routers/pet");
const user= require('./routers/user');
const admin=require('./routers/pro');
app.listen(3000);
console.log("服务器准备完毕!");
//挂载静态资源目录public
app.use(express.static(__dirname+'/public'));
//配置允许脚手架访问程序


/*使用路由器来管理路由*/
app.use('/pet',pet);
app.use('/user',user);
app.use('/admin',admin);