<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改客户信息</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));	
		Connection conn=DBUtil.conn();
		//Statement stmt = con.createStatement();
		//ResultSet rs = stmt.executeQuery("select * from bookinfo where id=" + id);
		
		PreparedStatement stmt = conn.prepareStatement("select * from client where id=?");
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		
		rs.next();
	%>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  		<legend>修改客户信息</legend>
	</fieldset>
	<form class="layui-form" action="updateclientsave.jsp" method="post">
		<div class="layui-form-item">
    		<label class="layui-form-label">客户姓名</label>
    		<div class="layui-input-block">
      		<input name="cname" class="layui-input" type="text" placeholder="" value="<%=rs.getString(2)%>" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系电话</label>
    <div class="layui-input-block">
      <input name="phone" class="layui-input" type="text" value="<%=rs.getString(3)%>" placeholder="" autocomplete="off">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">电子邮箱</label>
      <div class="layui-input-inline">
        <input name="email" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(4)%>">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">地址</label>
      <div class="layui-input-inline">
        <input name="caddress" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(5)%>">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">订单名称</label>
      <div class="layui-input-inline">
        <input name="oname" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(6)%>">
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