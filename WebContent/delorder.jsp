<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>删除订单信息</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	Connection conn=DBUtil.conn();
	Statement stmt=conn.createStatement();
	String id=request.getParameter("id");
	int i=stmt.executeUpdate("delete from orders where id="+id);
	if(i==1)
	{
		response.sendRedirect("order.jsp");
	}
		else
	{
		out.println("<h2>删除失败！</h2><br/>");
	}
	stmt.close();
	conn.close();
	%>
</body>
</html>