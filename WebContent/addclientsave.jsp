<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"%>
<%@ page import="java.text.*"%>
<html>
<head>
<title>客户信息登记</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String submit=request.getParameter("submit");
		//int sno=Integer.parseInt(request.getParameter("sno"));
		String cname = request.getParameter("cname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String caddress = request.getParameter("caddress");
		String oname = request.getParameter("oname");
		Connection conn=DBUtil.conn();
		//使用Statement对象
		//Statement stmt = con.createStatement();
		//String sql = "insert into bookinfo(bookname,author,price) values('" + bookname + "','" + author + "'," + price + ")";
		//int i = stmt.executeUpdate(sql);
		
		
		PreparedStatement stmt = conn.prepareStatement("insert into client(cname,phone,email,caddress,oname) values(?, ?, ?, ?, ?)");
		stmt.setString(1,cname);//给第一个问号赋值
		stmt.setString(2,phone);
		stmt.setString(3,email);
		stmt.setString(4,caddress);
		stmt.setString(5,oname);
		int i = stmt.executeUpdate();
		if (i == 1) {
			response.sendRedirect("client.jsp");
		} else {
			out.println("<h2>添加失败！</h2><br/>");
			out.println("<a href='addclient.jsp'>重新添加</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>