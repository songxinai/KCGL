<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改出库信息</title>
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
		
		PreparedStatement stmt = conn.prepareStatement("select * from goods2 where id=?");
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		
		rs.next();
	%>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  		<legend>修改出库信息</legend>
	</fieldset>
	<form class="layui-form" action="updategoodssave2.jsp" method="post">
		<div class="layui-form-item">
    		<label class="layui-form-label">商品名称</label>
    		<div class="layui-input-block">
      		<input name="gname" class="layui-input" type="text" placeholder="请输入商品名" value="<%=rs.getString(2)%>" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">商品数量</label>
    <div class="layui-input-block">
      <input name="number" class="layui-input" type="text" value="<%=rs.getString(3)%>" placeholder="" autocomplete="off">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">商品价格</label>
      <div class="layui-input-inline">
        <input name="price" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(4)%>">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">所属仓库</label>
      <div class="layui-input-inline">
        <input name="storehouse" class="layui-input" type="text" autocomplete="off" value="<%=rs.getString(5)%>">
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