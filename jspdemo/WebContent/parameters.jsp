<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String name=request.getParameter("name");
/*http://localhost:8090/jspdemo/parameters.jsp?name=bob*/
out.println("Name param is: "+name);%>


<% for(int i=1;i<=5;i++){%>
	<p>This HTML scriptlet LOOP iteration:  <%= i %></p>
<% } %>

<%/*http://localhost:8090/jspdemo/parameters.jsp?id=1*/
String id=request.getParameter("id");
if(id==null){%>
<strong>ID param missing</strong>
<%}else{ %>
ID param: <%=id %>


<%} %>

</body>
</html>