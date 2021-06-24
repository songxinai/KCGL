<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"
    pageEncoding="utf-8"%>
<%
  			int pagesize=10;//显示每页条数
			Connection conn=DBUtil.conn();
			Statement stmt = conn.createStatement(); 
			ResultSet rs1 = stmt.executeQuery("select * from goodses"); 
			int allnum = 0; 
			while(rs1.next()) 
			{ 
	  		allnum++; 
			} //获得ResultSet的总行数
			int endpage=0;//总页数
			if(allnum%pagesize==0)
			{
				endpage=allnum/pagesize;
			}
			else
			{
				endpage=allnum/pagesize+1;
			}
			int pagenum=0;
			if(request.getParameter("pagenum")==null)
			{
	    		pagenum=1; 
			}
			else
			{
				pagenum=Integer.parseInt(request.getParameter("pagenum"));
			}
			//sql.= " limit " . (pageNum - 1) * pageSize . "," .pageSize;
%>