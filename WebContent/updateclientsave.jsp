<%@ page import="java.sql.*,util.DBUtil" pageEncoding="utf-8"%>
<html>
<head>
<title>修改完成</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String cname = request.getParameter("cname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String caddress = request.getParameter("caddress");
		String oname = request.getParameter("oname");
	
		Connection conn=DBUtil.conn();
		Statement stmt = conn.createStatement();
		String sql = "update client set cname='" + cname + "',phone='" + phone + "',email='" + email + "',caddress='" + caddress +"',oname='" + oname +"' where cname='" + cname + "'";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			response.sendRedirect("client.jsp");
		} else {
			out.println("<h2>修改失败！</h2><br/>");
			out.println("<a href='updateclient.jsp?cname='" + cname + ">再试一次</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>