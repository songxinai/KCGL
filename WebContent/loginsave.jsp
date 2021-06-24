<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"%>
<%@ page import="java.text.*"%>
<html>
<head>
<title>用户登录</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String submit=request.getParameter("submit");
		//int sno=Integer.parseInt(request.getParameter("sno"));
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upassword");
		
		Connection conn=DBUtil.conn();
		//使用Statement对象
		Statement stmt = conn.createStatement();
		String sql = "select * from users where uname='" + uname + "'";
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.next())
		{
			rs=stmt.executeQuery("select * from users where uname='" + uname + "' and upassword='" + upassword + "'");	
			if(rs.next())
			{
				session.setAttribute("uname",uname);
				int limits=rs.getInt("limits");
				if(limits==1)
				{
			    	response.sendRedirect("index.jsp");
				}
				else if(limits==2)
				{
					response.sendRedirect("index1.jsp");
				}
				else if(limits==3)
				{
					response.sendRedirect("index2.jsp");
				}
			}
			else
			{
				out.print("密码错误<br>"+"<a href=\"login.jsp\">请重新登录</a>");
			}
		}
		else
		{
			out.print("用户名不存在"+"<a href=\"register.jsp\">请先注册</a>");
		}
		
		stmt.close();
		conn.close();
	%>
</body>
</html>