<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		session : 서버에서 관리하는 값
		cookie : 클라이언트가 관리하는 값
	 -->
	<h1>index.jsp</h1>
	<h3>어서오세요~</h3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr) {
			out.print("name : " + c.getName() + " / ");
			out.print("value : " + c.getValue() + "<br>");
			if(c.getName().equals("testCookie")) {
				bool = true;
			}
		}
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);
	%>
	<% if(!bool) { %>
		<script type="text/javascript">
			window.open("popup.jsp", "", "width=400, height=300, top=500, left=500")
		</script>
	<% } %>
</body>
</html>