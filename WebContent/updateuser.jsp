<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改用户权限</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String uname = request.getParameter("uname");	
		Connection conn=DBUtil.conn();
		//Statement stmt = con.createStatement();
		//ResultSet rs = stmt.executeQuery("select * from bookinfo where id=" + id);
		
		PreparedStatement stmt = conn.prepareStatement("select * from users where uname=?");
		stmt.setString(1, uname);
		ResultSet rs = stmt.executeQuery();
		
		rs.next();
	%>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  		<legend>修改用户权限</legend>
	</fieldset>
	<form class="layui-form" action="updateusersave.jsp" method="post">
		<div class="layui-form-item">
    		<label class="layui-form-label">用户名称</label>
    		<div class="layui-input-block">
      		<input name="uname" class="layui-input" type="text" placeholder="" value="<%=rs.getString(2)%>" autocomplete="off">
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
      <label class="layui-form-label">用户权限</label>
      <div class="layui-input-inline">
        <input name="limits" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(3)%>">
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
	<%
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>