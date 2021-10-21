<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>logout.jsp</h1><hr>
	
	<%
		//session.removeAttribute("loginUser"); // 특정 세션만 완료
		//session.setMaxInactiveInterval(5); // 5초후 모든 세션 만료
		session.invalidate(); // 모든 세션 종료
	%>
	로그아웃 완료<br>
	<a href="login.jsp">로그인 이동</a><br>
	<a href="main.jsp">메인 이동</a><br>
</body>
</html>