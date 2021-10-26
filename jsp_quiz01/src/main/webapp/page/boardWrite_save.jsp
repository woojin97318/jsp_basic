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
	<jsp:useBean id="Bdto" class="com.care.root.board.dto.BoardDTO"/>
	<jsp:setProperty property="*" name="Bdto"/>
	<c:set var="result" value="${Bdao.boardWrite_save(Bdto) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("게시물이 등록되었습니다.")
				location.href="${contextPath}/page/boardView.jsp?title=${param.title}"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("게시물 등록 에러")
				location.href="${contextPath}/page/boradWrite.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>