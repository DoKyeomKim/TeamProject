<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/header.css" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>
	<h2>지원자 목록</h2>
	<table>
		<tr>
			<td>이름</td>
			<td colspan="2">이력서제목</td>
		</tr>

		<c:forEach var="resume" items="${ presumeList }">
			<tr>

				<td>${resume.pno }</td>
				<td>${resume.p_name}</td>
				<td><a href="/Resumes/View?pno=${resume.pno }">${resume.p_title}</a></td>
			</tr>
		</c:forEach>

	</table>
	<%@include file="/WEB-INF/include/footer.jsp"%>
</body>
</html>