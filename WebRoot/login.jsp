<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>登陆页面</h1>
    <p style="color: red;font-weight: 900">${msg}</p>
    <form action="<c:url value='/LoginServlet'/>" method="post">
    	用户名:<input type="text" name="username" id="username" />
    	<br/>
    	密 &nbsp;&nbsp;码:<input type="password" name="password" id="password" />
    	<br/>
    	<input type="submit" value="登陆"/>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="重置">
    </form>
  </body>
</html>
