<%@page import="jsp04.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>bean/userBeam.jsp<hr>
	<jsp:useBean id="dto" class="jsp04.MemberDTO"/>
	<jsp:setProperty property="pwd" name="dto" value="비밀번호486"/>
	${dto.setId("ㅎㅇㅎㅇ") }
	id : ${dto.getId() }, ${dto.id }
	pwd : ${dto.pwd },
	<jsp:getProperty property="pwd" name="dto"/>
<%--
	<%
		MemberDTO dto = new MemberDTO();
		dto.setId("111");
	%>
	id : <%= dto.getId() %>
--%>
</body>
</html>