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
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<c:set var="result" value="${dao.delete(userId) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("삭제가 완료되었습니다.")
				location.href="membership.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("삭제 에러 발생")
				location.href="membership.jsp"
			</script>
		</c:otherwise>
	</c:choose>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>