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
	<jsp:useBean id="Bdao" class="com.care.root.board.dao.BoardDAO"/>
	<c:set var="result" value="${Bdao.boardDelete(param.title) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("게시물이 삭제되었습니다.")
				location.href="${contextPath}/page/board.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("게시물 삭제 에러 발생")
				location.href="${contextPath}/page/board.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>