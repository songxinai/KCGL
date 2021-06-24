<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>用户基本信息</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String uname = session.getAttribute("uname").toString();		
		Connection conn=DBUtil.conn();
		//Statement stmt = con.createStatement();
		//ResultSet rs = stmt.executeQuery("select * from bookinfo where id=" + id);
		
		PreparedStatement stmt = conn.prepareStatement("select * from users where uname=?");
		stmt.setString(1, uname);
		ResultSet rs = stmt.executeQuery();
		
		rs.next();
	%>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  		<legend>用户基本信息</legend>
	</fieldset>
	<form class="layui-form" action="showusersave.jsp" method="post">
		<div class="layui-form-item">
    		<label class="layui-form-label">用户名称</label>
    		<div class="layui-input-block">
      		<input name="uname" class="layui-input" type="text" disabled placeholder="" value="<%=rs.getString(2)%>" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">用户职务</label>
    <div class="layui-input-block">
      <input name="utype" class="layui-input" type="text" value="<%=rs.getString(4)%>" placeholder="" autocomplete="off">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">性别</label>
      <div class="layui-input-inline">
        <input name="sex" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(6)%>" lay-verify="required|phone">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">手机号码</label>
      <div class="layui-input-inline">
        <input name="phone" class="layui-input" type="tel" autocomplete="off" value="<%=rs.getString(7)%>" lay-verify="required|phone">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">电子邮箱</label>
      <div class="layui-input-inline">
        <input name="email" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(8)%>" lay-verify="email">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea" name="beizhu"><%=rs.getString(9)%></textarea>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" name="submit">修改</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>
	<%
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>