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

	<c:choose>
		<c:when test="${loginUser != null }">
			<jsp:useBean id="Bdao" class="com.care.root.board.dao.BoardDAO"/>
			<c:set var="bContent" value="${Bdao.getBoardContent(param.title) }"/>
			<div class="wrap">
				<table border="1" style="margin: 20px auto;">
					<tr>
						<th>제목</th>
						<td width="300">&nbsp;${bContent.title }</td>
						<th>작성자 : ${bContent.id }</th>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="2">&nbsp;${bContent.content }</td>
					</tr>
					<c:choose>
						<c:when test="${loginUser == bContent.id }">
							<tr>
								<td colspan="3">
									<button type="button" onclick="location.href='${contextPath}/page/boardModify.jsp?title=${bContent.title }'">수정</button>
									<button type="button" onclick="location.href='${contextPath}/page/boardDelete.jsp?title=${bContent.title }'">삭제</button>
								</td>
							</tr>
						</c:when>
					</c:choose>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("로그인 후 게시물 열람이 가능합니다.")
				location.href="${contextPath}/member/login.jsp"
			</script>
		</c:otherwise>
	</c:choose>

	<c:import url="../default/footer.jsp"/>
</body>
</html>