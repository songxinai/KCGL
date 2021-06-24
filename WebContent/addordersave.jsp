<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"%>
<%@ page import="java.text.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>订单信息登记</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String submit=request.getParameter("submit");
		//int sno=Integer.parseInt(request.getParameter("sno"));
		String oname = request.getParameter("oname");
		String cname = request.getParameter("cname");
		String number = request.getParameter("number");
		String omoney = request.getParameter("omoney");
		Connection conn=DBUtil.conn();
		//使用Statement对象
		//Statement stmt = con.createStatement();
		//String sql = "insert into bookinfo(bookname,author,price) values('" + bookname + "','" + author + "'," + price + ")";
		//int i = stmt.executeUpdate(sql);
		
		
		PreparedStatement stmt = conn.prepareStatement("insert into orders(oname,cname,number,omoney) values(?, ?, ?, ?)");
		stmt.setString(1,oname);
		stmt.setString(2,cname);
		stmt.setString(3,number);
		stmt.setString(4,omoney);
		int i = stmt.executeUpdate();
		if (i == 1) {
			response.sendRedirect("order.jsp");
		} else {
			out.println("<h2>添加失败！</h2><br/>");
			out.println("<a href='addorder.jsp'>重新添加</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>