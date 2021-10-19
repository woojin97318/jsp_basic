<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이전 페이지에서 보낸 값<br>
	${param.query01 }
	<hr>
	<a href="http://localhost:8085/jsp01/webContent.jsp">[webContent 이동]</a><br>
	<a href="http://localhost:8085/jsp01/test1/test1.jsp">[test1 이동]</a><br>
	<a href="http://localhost:8085/jsp01/test1/test2/test2.jsp">[test2 이동]</a>
</body>
</html>