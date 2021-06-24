<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登录界面</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>用户登录</legend>
</fieldset>
 
<form class="layui-form" action="loginsave.jsp">
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input name="uname" class="layui-input" type="text" placeholder="请输入用户名" autocomplete="off" lay-verify="title">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
      <input name="upassword" class="layui-input" type="password" placeholder="请输入密码" autocomplete="off" lay-verify="required" lay-reqtext="">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" lay-filter="demo1" lay-submit="">登录</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
      <a href="register.jsp">没有账号，请先注册</a>
    </div>
  </div>
</form>

</body>
</html>