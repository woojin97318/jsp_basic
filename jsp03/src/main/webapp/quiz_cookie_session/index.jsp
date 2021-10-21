<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function cookie_create() {
		window.open()
	}
</script>

</head>
<body>
	<h1>index.jsp</h1>
	기본 페이지 입니다.<br>
	<%
		boolean chk = true;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr) {
			if(c.getName().equals("myCookie")) {
				chk = false;
			}
		}
	%>
	<c:if test="<%= chk %>">
		<script>
			window.open("popup.jsp", "", "width=300, height=200, top=500, left=500")
		</script>
	</c:if>
</body>
</html>