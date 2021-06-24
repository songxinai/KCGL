<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"%>
<%@ page import="java.text.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>用户注册</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String submit=request.getParameter("submit");
		//int sno=Integer.parseInt(request.getParameter("sno"));
		String uname = request.getParameter("uname");
		String utype = request.getParameter("utype");
		String upassword = request.getParameter("upassword");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String beizhu = request.getParameter("beizhu");
		Connection conn=DBUtil.conn();
		//使用Statement对象
		//Statement stmt = con.createStatement();
		//String sql = "insert into bookinfo(bookname,author,price) values('" + bookname + "','" + author + "'," + price + ")";
		//int i = stmt.executeUpdate(sql);
		
		
		PreparedStatement stmt = conn.prepareStatement("insert into users(uname,utype,upassword,sex,phone,email,beizhu) values(?, ?, ?, ?, ?, ?, ?)");
		stmt.setString(1,uname);//给第一个问号赋值
		stmt.setString(2,utype);
		stmt.setString(3,upassword);
		stmt.setString(4,sex);
		stmt.setString(5,phone);
		stmt.setString(6,email);
		stmt.setString(7,beizhu);
		int i = stmt.executeUpdate();
		if (i == 1) {
			response.sendRedirect("login.jsp");
		} else {
			out.println("<h2>注册失败！</h2><br/>");
			out.println("<a href='register.jsp'>重新添加</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>