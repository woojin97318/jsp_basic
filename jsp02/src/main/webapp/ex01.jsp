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
	<h1>ex01.jsp</h1>
	<%= request.getContextPath() %><br>
	${ pageContext.request.contextPath }<br>
	
	<c:set var="contextPath01" value="${ pageContext.request.contextPath }"/>
	<c:set var="contextPath02" value="<%= request.getContextPath() %>"/>
	<br>
	path01 : ${contextPath01}<br>
	path02 : ${contextPath02}<br>
	
	<a href="${contextPath01}/ex01_1.jsp">[ex01_1.jsp]</a><br>
	<a href="<%= request.getContextPath() %>/ex01_1.jsp">[ex01_1.jsp]</a><br>
	
	<hr>
	
	<form action="${contextPath01}/ex01_1.jsp">
		<input type="checkbox" name="check" value="사과">사과주스
		<input type="checkbox" name="check" value="배">배주스
		<input type="checkbox" name="check" value="키위">키위주스
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>