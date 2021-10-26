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
		<c:when test="${param.pwd eq param.pwdChk }">
			<!-- 객체 생성 -->
			<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
			<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
			<!-- DB에 회원정보 저장 / 아이디 중복시 가입 불가능 -->
			<jsp:setProperty property="*" name="dto"/>
			<c:set var="result" value="${dao.signUp(dto) }"/>
			
			<c:choose>
				<c:when test="${result != 1 }">
					<script type="text/javascript">
						alert("이미 가입한 아이디입니다.")
						location.href="${contextPath}/member/signup.jsp"
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
						alert("${dto.getId()}님 가입을 환영합니다! 로그인을 해주세요.")
						location.href="${contextPath}/member/login.jsp"
					</script>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("비밀번호를 확인하세요.")
				location.href="${contextPath}/member/signup.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>