<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>makeCookie.jsp</h1>
	
	<%
		Cookie cookie = new Cookie("myCookie", "myCookie");
		cookie.setMaxAge(5); // 하루를 초로 계산해서 넣자
		response.addCookie(cookie);
	%>
	
	쿠키가 생성되었습니다.
	<script>
		window.close()
		//location.href="pop_close.jsp"
	</script>
</body>
</html>