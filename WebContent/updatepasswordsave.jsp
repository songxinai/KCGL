<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改完成</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String uname=session.getAttribute("uname").toString();
		//String uname = request.getParameter("uname");
		String utype = request.getParameter("utype");
		String upassword = request.getParameter("upassword");

		Connection conn=DBUtil.conn();
		Statement stmt = conn.createStatement();
		String sql = "update users set utype='" + utype + "',upassword='" + upassword + "' where uname='" + uname + "'";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			response.sendRedirect("user.jsp");
		} else {
			out.println("<h2>修改失败！</h2><br/>");
			out.println("<a href='updatepassword.jsp?uname='" + uname + ">再试一次</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>