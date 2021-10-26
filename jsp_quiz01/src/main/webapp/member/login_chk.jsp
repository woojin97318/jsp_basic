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
	<!-- 객체 생성 -->
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<!-- 입력한 아이디가 DB에 저장되어있는지 확인 -->
	<c:set var="member" value="${dao.getMember(param.inputId) }"/>
	<!-- 아이디가 저장되어있으면 아이디와 패스워드를 DB에서 가져옴
		 사용자가 입력한 아이디와 패스워드를 변수에 저장 -->
	<c:set var="dbId" value="${member.getId() }"/>
	<c:set var="dbPwd" value="${member.getPwd() }"/>
	<c:set var="inputId" value="${param.inputId }"/>
	<c:set var="inputPwd" value="${param.inputPwd }"/>
	<!-- 로그인 체크 기능 -->
	<c:choose>
		<c:when test="${dbId eq inputId }">
			<c:choose>
				<c:when test="${dbPwd eq inputPwd }">
					<c:set var="loginUser" value="${param.inputId}" scope="session"/>
					<script type="text/javascript">
						alert("${inputId}님 환영합니다.")
						location.href="${contextPath}/default/main.jsp"
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
						alert("비밀번호가 일치하지 않습니다.")
						location.href="${contextPath}/member/login.jsp"
					</script>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("해당 아이디가 존재하지 않습니다.")
				location.href="${contextPath}/member/login.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>