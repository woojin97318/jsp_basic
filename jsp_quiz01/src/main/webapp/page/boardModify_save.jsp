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
	<jsp:useBean id="Bdao" class="com.care.root.board.dao.BoardDAO"/>
	<c:set var="result" value="${Bdao.boardModify(param.preTitle, param.title, param.content, loginUser) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("수정이 완료되었습니다.")
				location.href="${contextPath}/page/boardView.jsp?title=${param.title}"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("수정 에러")
				location.href="${contextPath}/page/boardView.jsp?title=${param.preTitle}"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>