<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>quiz.jsp</h1>
	<form action="result.jsp" method="post">
		<input type="text" name="num"><br>
		<input type="radio" name="radio" value="남자" checked>남자
		<input type="radio" name="radio" value="여자">여자<br>
		<input type="submit" value="쿼리 전송">
	</form>
</body>
</html>