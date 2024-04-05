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
<h2>채용공고 스크랩</h2>
<form action="" method="POST">
<hr>

		 <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          
		 <div class="cResume">
              <a href=""><img src="" alt="이미지2"></a>
              <div class="cName"><a href="">회사명2</a></div>
              <div class="title"><a href="">제목2</a></div>
          </div>
          
<aside>
<a href="/users/view">내 정보보기</a><br>
<a href="">이력서 관리</a><br>
<a href="">지원 현황</a><br>
<a href="/mypage/pscrap">채용공고 스크랩</a><br>
</aside>

<%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>