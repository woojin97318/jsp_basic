<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath }/css/member.css" rel="stylesheet" >
<style type="text/css">
	table {
		border-collapse: collapse;
		width: 100%; margin-top: 20px;
	}
	th, td {
		padding: 10px;
		border-bottom: 1px solid #CD5C5C;
	}
	a {
		text-decoration: none;
		color:orange;
	} 
	a:hover {
		color: black;
	}
</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	
	<div class="wrap">
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="list" value="${ dao.getMemberList() }" />
		<div>
			<table border="1">
				<tr>
					<th>아이디</th> <th>비밀번호</th> <th>이름</th> <th>주소</th>
				</tr>
				<c:forEach var="member" items="${list }">
					<tr>
						<td>${member.id }</td>
						<td>${member.pwd }</td>
						<td>
							<a href="${contextPath}/member/member_info.jsp?id=${member.id }">${member.name }</a>
						</td> 
						<td>${member.addr }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4" align="right">
					<button class="btn" type="button" onclick="location.href='${contextPath}/member/member_register.jsp'">등록</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>