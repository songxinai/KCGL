<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改完成</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String oname = request.getParameter("oname");
		String cname = request.getParameter("cname");
		String number = request.getParameter("number");
		String omoney = request.getParameter("omoney");
	
		Connection conn=DBUtil.conn();
		Statement stmt = conn.createStatement();
		String sql = "update orders set oname='" + oname + "',cname='" + cname + "',number='" + number + "',omoney='" + omoney +"' where oname='" + oname + "'";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			response.sendRedirect("order.jsp");
		} else {
			out.println("<h2>修改失败！</h2><br/>");
			out.println("<a href='updateorder.jsp?oname='" + oname + ">再试一次</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>