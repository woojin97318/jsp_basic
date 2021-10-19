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
	<hr>
	
	<h3>get 방식</h3>
	<form action="http://localhost:8085/jsp01/get_post/getMethod.jsp" method="get">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="전송"><br>
	</form>
	<hr>
	
	<h3>post 방식</h3>
	<form action="http://localhost:8085/jsp01/get_post/postMethod.jsp" method="post">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="전송"><br>
	</form>
	<hr>
</body>
</html>