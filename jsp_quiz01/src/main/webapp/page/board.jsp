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

		<div class="wrap" align="center"">
			<jsp:useBean id="Bdao" class="com.care.root.board.dao.BoardDAO"/>
			<c:set var="bList" value="${Bdao.getBoardList() }"/>
			<h3 style="margin-top: 20px">BOARD</h3>
			<c:forEach var="board" items="${bList }">
				<table border="1" style="margin: 20px auto;">
					<tr>
						<th>제목</th>
						<td width="300">&nbsp;<a href="${contextPath }/page/boardView.jsp?title=${board.title}">${board.title }</a></td>
						<th>작성자 : ${board.id }</th>
					</tr>
				</table>
			</c:forEach>
			<div align="right">
				<button type="button" onclick="location.href='${contextPath}/page/boardWrite.jsp'">글쓰기</button>
			</div>
		</div>

	<c:import url="../default/footer.jsp"/>
</body>
</html>