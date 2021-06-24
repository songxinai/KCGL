<%@ page language="java" contentType="text/html; charset=utf-8"  import="java.sql.*,util.DBUtil"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>用户管理</title>
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
      <th>用户名称</th>
      <th>用户权限</th>
      <th>职务</th>
      <th>性别</th>
      <th>联系电话</th>
      <th>电子邮箱</th>
      <th>备注</th>
      <th></th>
    </tr>
  </thead>
   <tbody>
  	<tr>
  		<%
			try {
				Connection conn=DBUtil.conn();
				//使用Statement对象
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from users");

				/*
				PreparedStatement stmt = con.prepareStatement("select * from bookinfo");
				ResultSet rs = stmt.executeQuery();
				*/
				while (rs.next()) {
					String uname=rs.getString(2);
					out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>"
							+ rs.getString(4)+ "</td><td>" + rs.getString(5) +"</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) +  "</td><td><a href='updateuser.jsp?uname=" + uname
							+ "'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:if(confirm('确定要删除吗?'))location='deluser.jsp?uname=uname'>删除</a></td></tr>");
				}
				DBUtil.close(rs,stmt,conn);
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
  	</tr>
  </tbody>
 </table>
</body>
</html>