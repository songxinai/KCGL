<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"
    pageEncoding="utf-8"%>
<%@include file="fenye.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>出库信息浏览</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>  
<table class="layui-table" style="width:80%;height:80%;margin-top:5%;margin-left:5%">
  <thead>
    <tr>
      <th>商品编号</th>
      <th>商品名称</th>
      <th>商品数量</th>
      <th>商品价格</th>
      <th>所属仓库</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<tr>
  		<%
			try {
				String sql="select top "+pagesize+" * from goods2 where id not in(select top "+pagesize*(pagenum-1)+" id from goods2)";
				ResultSet rs = stmt.executeQuery(sql);
				/*
				PreparedStatement stmt = con.prepareStatement("select * from bookinfo");
				ResultSet rs = stmt.executeQuery();
				*/
				while (rs.next()) {
					int id=rs.getInt(1);
					out.println("<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(2) + "</td><td>"
							+ rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5) + "</td><td><a href='updategoods2.jsp?id=" + id
							+ "'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:if(confirm('确定要删除吗?'))location='delgoods2.jsp?id=id'>删除</a></td></tr>");
				}
				DBUtil.close(rs,stmt,conn);
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
  	</tr>
  </tbody>
</table>
<div style="text-align:center">
  		<a href="?pagenum=1">首页</a>
  		<%if(pagenum>1){%>
		<a href="?pagenum=<%=(pagenum-1)%>">上一页</a>
		<%} else
		{%>
		上一页
		<%} %>
		<%if(pagenum<endpage){%>
		<a href="?pagenum=<%=(pagenum+1)%>">下一页</a>
		<%} else
		{%>
		下一页
		<%} %>
		<a href="?pagenum=<%=endpage%>">尾页</a>
</div>
</body>
</html>