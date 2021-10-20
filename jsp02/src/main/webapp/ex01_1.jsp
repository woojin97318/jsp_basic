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
	<h1>ex01_1.jsp</h1>
	
	<h3>forEach</h3>
	<c:forEach var="var" items="${paramValues.check }">
		${var }
	</c:forEach>
	
	<hr>
	
	<%
		String checkbox = request.getParameter("check");
		String[] values = request.getParameterValues("check");
		
		// values = {"사과", "배", "키위"};
		if(values != null) {
			out.print("<h3>그냥 포문</h3>");
			for(int i = 0; i < values.length; i++) {
				out.print(values[i] + " ");
			}
			
			out.print("<h3>이치포문</h3>");
			for(String n : values) {
				out.print(n + " ");
			}
		}
		
		String[] test = {"안녕", "하세", "yo~"};
		for(String s : test) {
			out.print(s + " ");
		}
		
		int[] arr = {111, 222, 333, 444};
		for(int i : arr) {
			out.print(i);
		}
	%>
	<br>
	check -> <%= checkbox %><br>
	<%--
	values -> <%= values[0] %> <%= values[1] %> <%= values[2] %><br>
	--%>
</body>
</html>