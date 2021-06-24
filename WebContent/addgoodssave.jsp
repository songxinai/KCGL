<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"%>
<%@ page import="java.text.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>入库信息登记</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String submit=request.getParameter("submit");
		//int sno=Integer.parseInt(request.getParameter("sno"));
		String gname = request.getParameter("gname");
		String number = request.getParameter("number");
		String price = request.getParameter("price");
		String storehouse = request.getParameter("storehouse");
		Connection conn=DBUtil.conn();
		//使用Statement对象
		//Statement stmt = con.createStatement();
		//String sql = "insert into bookinfo(bookname,author,price) values('" + bookname + "','" + author + "'," + price + ")";
		//int i = stmt.executeUpdate(sql);
		
		
		PreparedStatement stmt = conn.prepareStatement("insert into goodses(gname,number,price,storehouse) values(?, ?, ?, ?)");
		stmt.setString(1,gname);
		stmt.setString(2,number);
		stmt.setString(3,price);
		stmt.setString(4,storehouse);
		int i = stmt.executeUpdate();
		if (i == 1) {
			response.sendRedirect("goods.jsp");
		} else {
			out.println("<h2>添加失败！</h2><br/>");
			out.println("<a href='addgoods.jsp'>重新添加</a>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>