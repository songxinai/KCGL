<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*,util.DBUtil"
    pageEncoding="utf-8"%>
<%@include file="fenye.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>入库统计</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>  
<h2 style="text-align:center;margin-top:1%">按商品</h2>
<table class="layui-table" style="width:80%;height:80%;margin-top:5%;margin-left:5%">
  <thead>
    <tr>
      <th>商品名称</th>
      <th>商品总量</th>
      <th>入库总金额</th>
    </tr>
  </thead>
  <tbody>
  	<tr>
  		<%
			try {
				ResultSet rs = stmt.executeQuery("select gname,sum(number),sum(number*price) from goodses group by gname");

				/*
				PreparedStatement stmt = con.prepareStatement("select * from bookinfo");
				ResultSet rs = stmt.executeQuery();
				*/
				while (rs.next()) {
					String storehouse=rs.getString(1);//对应查询语句的名称
					out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getInt(2) + "</td><td>"
							+ rs.getInt(3)+ "</td></tr>");
				}
				DBUtil.close(rs,stmt,conn);
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
  	</tr>
  </tbody>
</table>