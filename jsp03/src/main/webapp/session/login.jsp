<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login.jsp</h1><hr>
	
	session: ${loginUser }, ${sessionScope.loginUser }<hr>
	
	<c:choose>
		<c:when test="${loginUser == null }">
			<form action="chkUser.jsp" method="post">
				<input type="text" name="id"><br>
				<input type="password" name="pwd"><br>
				<input type="submit" value="로그인"><br>
			</form>
		</c:when>
		<c:otherwise>
			${loginUser }님 반갑습니다<br>
			<a href="main.jsp">[main]</a>
			<a href="logout.jsp">[logout]</a>
		</c:otherwise>
	</c:choose>
</body>
</html>