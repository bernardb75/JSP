<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user5" class="beans.User" scope="page"></jsp:useBean>
<!--<jsp:setProperty name="user5" property="assword" param="12345"/>
-->
<jsp:setProperty name="user5" property="*"/>

<!-- http://localhost:8090/MVC/beanparam.jsp?email=j@c.com&assword=123 -->

<%=user5.getEmail() %>
<%=user5.getAssword() %>
</body>
</html>