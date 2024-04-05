<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>
<%@include file="/WEB-INF/include/header.jsp" %>
<main>
<div>

<h2>내 정보보기</h2>
<form action="" method="POST">
<hr>

<table>
<tr>
<td>사진변경</td><br>
<td><input type="file" name="photo" value="upload"></td>
</tr>
</table>
<table>
<tr>
<td><input type="text" name="ptitle"  value="${p_title}" placeholder="나를 소개하는 한마디"></td>
<td><input type="text" name="skill"  value="${skill}" placeholder="보유기술"></td>
</tr>
</table>
<table>
<tr>
<td colspan="2">지원완료</td>
<td colspan="2">관심기업</td>
<td colspan="2">공고스크랩</td>
</tr>
</table>

</div>
</main>

<aside>
<a href="/users/view">내 정보보기</a><br>
<a href="">이력서 관리</a><br>
<a href="">지원 현황</a><br>
<a href="/mypage/pscrap">채용공고 스크랩</a><br>
</aside>

    <%@include file="/WEB-INF/include/footer.jsp" %>
   
</body>
</html>