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
	<c:import url="../default/header.jsp"/>
	
	<div class="wrap">
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="mem" value="${dao.getMember(param.id) }"/>
		
		<form action="modify_save.jsp" method="post">
			<input type="hidden" name="id" value="${mem.id }">
			pwd : <input type="text" name="pwd" value="${mem.pwd }"><br>
			name : <input type="text" name="name" value="${mem.name }"><br>
			addr : <input type="text" name="addr" value="${mem.addr }"><br>
			<input type="submit" value="수정">
			<input type="button" value="이전" onclick="history.back()">
		</form>
	</div>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>