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
	<h1>main.jsp</h1><hr>
	
	<c:choose>
		<c:when test="${loginUser == null }">
			<script>
				alert("로그인을 해주세요.");
				location.href="login.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script>alert("${loginUser}님 환영합니다.")</script>
		</c:otherwise>
	</c:choose>
	
	로그인 성공한 사용자만 입장 가능합니다<hr>
	<a href="login.jsp">로그인 페이지 이동</a><br>
	<a href="logout.jsp">로그아웃 페이지 이동</a><br>
</body>
</html>