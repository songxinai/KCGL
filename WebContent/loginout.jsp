<%@ page pageEncoding="UTF-8"%>
<% //所有的session失效
    session.invalidate();
%>
<script type="text/javascript">
    alert("您已退出，感谢使用本系统");
    window.location="login.jsp";//回到登录页
</script>