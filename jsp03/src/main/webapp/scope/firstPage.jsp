<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>firstPage.jsp</h1><hr>
	
	page : 현재 페이지에서만 유지되는 값<br>
	request : 현재 페이지 또는 다음 페이지까지 유지되는 값<br>
			  단, request는 다음 페이지까지 전달하고자 하면 forward를 사용해야 한다.<br>
	session : 웹 브라우저가 살아있는 동안 유지된다.<br>
	application : 서버가 살아있는 동안 유지된다.<hr>
	<%
		pageContext.setAttribute("name", "page value");
		request.setAttribute("name", "request value");
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");
		
		//request.getRequestDispatcher("secondPage.jsp").forward(request, response);
	%>
	name : ${name }<br>
	page : <%= pageContext.getAttribute("name") %>
			, ${pageScope.name }<br>
	request : <%= request.getAttribute("name") %>
			, ${requestScope.name }<br>
	session : <%= session.getAttribute("name") %>
			, ${sessionScope.name }<br>
	application : <%= application.getAttribute("name") %>
			, ${applicationScope.name }<hr>
	
	<a href="secondPage.jsp">secondPage.jsp</a><hr>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="se" value="세션설정값입니다" scope="session"/>
	session : ${se }<br>
</body>
</html>