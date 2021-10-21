<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>secondPage.jsp</h1><hr>

	name : ${name }<br>
	page : <%= pageContext.getAttribute("name") %><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><hr>
	
	<a href="thirdPage.jsp">thirdPage.jsp</a><hr>
	
	session : ${se }<br>
</body>
</html>