<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改完成</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String gname = request.getParameter("gname");
		String number = request.getParameter("number");
		String price = request.getParameter("price");
		String storehouse = request.getParameter("storehouse");
	
		Connection conn=DBUtil.conn();
		Statement stmt = conn.createStatement();
		String sql = "update goods2 set gname='" + gname + "',number='" + number + "',price='" + price + "',storehouse='" + storehouse +"' where gname='" + gname + "'";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			response.sendRedirect("goods2.jsp");
		} else {
			out.println("<h2>修改失败！</h2><br/>");
			out.println("<a href='updategoods2.jsp?gname='" + gname + ">再试一次</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>
