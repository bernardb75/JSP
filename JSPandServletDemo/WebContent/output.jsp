<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>To jest output.jsp</h1>
	<p>Witaj uzytkownik: <%=request.getAttribute("name") %></p>
	<h2>Nazywam sie: <%
		String fullString=request.getAttribute("name").toString();
		out.println(fullString);
	%></h2>
	
	<p>Wartosc: 2 * 2 = <%=2*2 %></p>
	<%
for(int i =0; i<2; i++){
	out.print("<p>Wartosc i="+i+"</p>");
}
	%>
	<%!
		int calLen(String string){
		return string.length();
	}
	%>
	
	<p>Dlugosc JSP string: <%=calLen("b2tech") %></p>
</body>
</html>