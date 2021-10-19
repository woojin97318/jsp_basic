<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form.jsp</h1>
	<form action="http://localhost:8085/jsp01/getMethod.jsp" method="get">
		<ul>
			<li>GET방식으로 전달</li>
			<li>
				<input type="text" name="query01">
				<input type="submit" value="쿼리 전송">
			</li>
		</ul>
	</form>
	<hr>
	<form action="http://localhost:8085/jsp01/postMethod.jsp" method="post">
		<ul>
			<li>POST방식으로 전달</li>
			<li>
				<input type="text" name="query02">
				<input type="submit" value="쿼리 전송">
			</li>
		</ul>
	</form>
</body>
</html>