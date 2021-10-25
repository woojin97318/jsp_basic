<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${dao.modifySave(dto) }"/>
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("수정이 완료되었습니다.")
				location.href="member_info.jsp?id=${dto.getId()}"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("수정 에러 발생")
				location.href="member_info.jsp?id=${dto.getId()}"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>