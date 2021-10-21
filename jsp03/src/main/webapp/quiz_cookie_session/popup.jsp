<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pop_close() {
		location.href="makeCookie.jsp"
	}
</script>
</head>
<body>
	<h1>popup.jsp</h1><hr>
	<h3>어쩌고 저쩌고 날씨가 굿굿~</h3>
	<input type="checkbox" onclick="pop_close()">하루동안 열지않음
</body>
</html>