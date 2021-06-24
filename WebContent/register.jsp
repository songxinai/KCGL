<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>注册界面</title>
  <script src="css/layui.all.js" charset="utf-8"></script>
  <script src="css/layui.js" charset="utf-8"></script>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>用户注册</legend>
</fieldset>
 
<form class="layui-form" action="registersave.jsp">
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input name="uname" class="layui-input" type="text" placeholder="请输入用户名" autocomplete="off" lay-verify="title">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">职务</label>
    <div class="layui-input-block">
      <select name="utype">
        <option value=""></option>
        <option value="系统管理员" selected="">系统管理员</option>
        <option value="销售人员">销售人员</option>
        <option value="仓库管理人员">仓库管理人员</option>
      </select>
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
      <input name="upassword" class="layui-input" type="password" placeholder="请输入密码" autocomplete="off" lay-verify="required" lay-reqtext="">
    </div>
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input name="sex" title="男" type="radio" checked="" value="男">
      <input name="sex" title="女" type="radio" value="女">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">手机号码</label>
      <div class="layui-input-inline">
        <input name="phone" class="layui-input" type="tel" autocomplete="off" lay-verify="required|phone">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">电子邮箱</label>
      <div class="layui-input-inline">
        <input name="email" class="layui-input" type="text" autocomplete="off" lay-verify="email">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea" placeholder="请输入内容" name="beizhu"></textarea>
    </div>
  </div>
  <!--<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">编辑器</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
    </div>
  </div>-->
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" lay-filter="demo1" lay-submit="">立即提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>
          
<script src="css/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  form.render();
  
  //自定义验证规则
  form.verify({
    pass: [
      /^[\S]{6,12}$/
      ,'密码必须6到12位，且不能出现空格'
    ]
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
});
</script>

</body>
</html>