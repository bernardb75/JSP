<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ugryść</title>
</head>
<body>
	<%@ include file="copy.txt"%>
	<p />
	<jsp:include page="update.txt" />
	<h1>
		<b> <%@ include file="variables.jsp"%> <%= name %>
		</b>
	</h1>
	<!-- Komentaż -->
	<h1>
	<% String id=request.getParameter("id"); %>

	<% if(id==null){ %>
	<jsp:include page="idnotfound.html"></jsp:include>
	<%}else{ %>
	<jsp:include page="idfound.html"></jsp:include>
	<% } %>
	</h1>
	

</body>
</html>