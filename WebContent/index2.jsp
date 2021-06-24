<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>库存管理系统</title>
  <link rel="stylesheet" href="css/layui.css">
</head>
<body class="layui-layout-body" style="background-color:#e2e2e2">
<%
if(session.getAttribute("uname")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">库存管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="login.jsp" target="aaa">控制台</a></li>
      <li class="layui-nav-item"><a href="">设置</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item"><a href="register.jsp">注册</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;"><% out.print(session.getAttribute("uname"));%></a>
        <dl class="layui-nav-child">
          <dd><a href="showuser.jsp" target="aaa">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="loginout.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">入库管理</a>
           <dl class="layui-nav-child">
            <dd><a href="addgoods.jsp" target="aaa">入库信息登记</a></dd>
            <dd><a href="goods.jsp" target="aaa">入库信息浏览</a></dd>
            <dd><a href="javascript:;">入库统计</a>
             	<ol class="layui-nav-child">
                   <li><a href="in.jsp" target="aaa">按仓库</a></li>
                   <li><a href="in1.jsp" target="aaa">按商品</a></li>
                </ol>
           </dd>
           </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">出库管理</a>
          <dl class="layui-nav-child">
            <dd><a href="addgoods2.jsp" target="aaa">出库信息登记</a></dd>
            <dd><a href="goods2.jsp" target="aaa">出库信息浏览</a></dd>
            <dd><a href="javascript:;">出库统计</a>
             	<ol class="layui-nav-child">
                   <li><a href="out.jsp" target="aaa">按仓库</a></li>
                   <li><a href="out1.jsp" target="aaa">按商品</a></li>
                </ol>
           </dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="updatepassword.jsp" target="aaa">修改密码</a></li>
      </ul>
    </div>
  </div>
  
  	<div class="layui-body">
    	<!-- 内容主体区域 -->
   		<iframe name="aaa" src="welcome.jsp" style="width:100%;height:100%">
    	
    	</iframe>
  	</div>
   
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © 石家庄铁道大学
  </div>
</div>
<script src="css/layui.all.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>