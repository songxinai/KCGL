<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>客户信息登记</title>
  <script src="css/layui.all.js" charset="utf-8"></script>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>客户信息登记</legend>
</fieldset>
 
<form class="layui-form" action="addclientsave.jsp">
  <div class="layui-form-item">
    <label class="layui-form-label">客户姓名</label>
    <div class="layui-input-block">
      <input name="cname" class="layui-input" type="text" placeholder="" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系电话</label>
    <div class="layui-input-block">
      <input name="phone" class="layui-input" type="text" placeholder="" autocomplete="off">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">电子邮箱</label>
      <div class="layui-input-inline">
        <input name="email" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">地址</label>
      <div class="layui-input-inline">
        <input name="caddress" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">订单名称</label>
      <div class="layui-input-inline">
        <input name="oname" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" name="submit">提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>
</body>
</html>