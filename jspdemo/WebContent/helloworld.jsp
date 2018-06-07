<html>
<body>
<h3>Hello World of Java!</h3>
Czas na serwerze: <%=new java.util.Date() %>
<br/><br/>
Upper : <%=new String ("Hello World@").toUpperCase() %>
<br/><br/>
Wynik : <%=25*4 %>
<br/><br/>
Liczba : <%=75<69 %></br></br>
<%@ page import="java.util.Date, gui.*" %>
<%=new Date() %><br/>
<%
TextOutput textOutput=new TextOutput();
out.println(textOutput.getInfo());

%>
<%@include file="parameters.jsp" %>
</body>
</html>