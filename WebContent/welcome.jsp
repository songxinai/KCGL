<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>欢迎</title>
</head>
<body>
<div style="text-align:center;margin-top:150px">
<%
out.print(session.getAttribute("uname")); 
%>
<h1>欢迎使用本系统</h1>
</div>
</body>
</html>