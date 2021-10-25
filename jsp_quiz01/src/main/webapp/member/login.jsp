<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="wrap" align="center" style="margin-top: 20px;">
		<h3>Login</h3>
		<form action="${contextPath }/member/login_chk.jsp" method="post">
			ID<input type="text" name="inputId" placeholder="input id"><br>
			PW<input type="password" name="inputPwd" placeholder="input pwd"><br>
			<button type="button" onclick="location.href='${contextPath}/member/signup.jsp'">회원가입</button>
			<input type="submit" value="login">
		</form>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>