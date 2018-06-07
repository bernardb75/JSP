<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//PL" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user3" class="beans.User" scope="request"></jsp:useBean>

<jsp:setProperty property="email" name="user3" value="cos@gmail.com"/>
<jsp:setProperty property="assword" name="user3" value="poszlykoniepobetonie"/>

<!-- Email: <= user3.getEmail() %> 
zakomentowanie spowodowało ograniczenie przez scope=request tylko jednego
req-respond, na innej stronie już nie zadziała np.getrequestbean.jsp =null
-->
<!-- < response.sendRedirect("getrequestbean.jsp"); %>-->


<jsp:forward page="getrequestbean.jsp"></jsp:forward>


</body>
</html>