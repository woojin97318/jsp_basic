<%@page import="com.care.root.member.dao.MemberDAO"%>
<%@page import="com.care.root.member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="wrap">
		<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<jsp:setProperty property="*" name="dto"/>
		<c:set var="result" value="${dao.register(dto) }"/>
		
		<c:choose>
			<c:when test="${result == 1 }">
				<script type="text/javascript">
					alert("회원가입을 축하합니다");
					location.href="${contextPath}/member/membership.jsp";
				</script>
			</c:when>
			<c:otherwise>
				<script type="text/javascript">
					alert("회원가입 불가능");
					location.href="${contextPath}/member/membership.jsp";
				</script>
			</c:otherwise>
		</c:choose>
		<%--
			MemberDTO dto = new MemberDTO();
			dto.setId(request.getParameter("id"));
			dto.setPwd(request.getParameter("pwd"));
			dto.setName(request.getParameter("name"));
			dto.setAddr(request.getParameter("addr"));
			
			MemberDAO dao = new MemberDAO();
			int result = dao.register(dto);
			if(result == 1) {
				out.print("<script>alert('회원가입을 축하합니다');</script>");
			}else {
				out.print("<script>alert('문제 발생/가입 불가능');</script>");				
			}
		--%>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>