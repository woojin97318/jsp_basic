<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	
	<div class="wrap" align="center" style="margin-top: 20px;">
		<h3>게시물 수정</h3>
		<form action="${contextPath }/page/boardModify_save.jsp" method="post">
			<input type="hidden" name="preTitle" value="${param.title }">
			제목<br>
			<input type="text" name="title"><br>
			내용<br>
			<textarea rows="5" cols="25" name="content"></textarea><br>
			<input type="submit" value="수정">
		</form>
	</div>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>