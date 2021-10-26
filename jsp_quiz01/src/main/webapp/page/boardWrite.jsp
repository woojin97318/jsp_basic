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
	<c:choose>
		<c:when test="${loginUser == null }">
			<script type="text/javascript">
				alert("로그인을 먼저 해주세요.")
				location.href="${contextPath}/member/login.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<c:import url="../default/header.jsp"/>
			
			<div class="wrap" align="center" style="margin-top: 20px;">
				<h3>게시물 작성</h3>
				<form action="${contextPath }/page/boardWrite_save.jsp" method="post">
					제목<br>
					<input type="text" name="title"><br>
					내용<br>
					<textarea rows="5" cols="25" name="content"></textarea><br>
					<input type="hidden" name="id" value="${loginUser }">
					<input type="submit" value="등록">
				</form>
			</div>
			
			<c:import url="../default/footer.jsp"/>
		</c:otherwise>
	</c:choose>
</body>
</html>