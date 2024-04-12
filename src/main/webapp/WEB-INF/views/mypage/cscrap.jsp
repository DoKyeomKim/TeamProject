<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />
</head>

<body>
<%@include file="/WEB-INF/include/header.jsp" %>
<h2>인재정보 스크랩</h2>
<form action="" method="POST">
<hr>

		 <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">지원자1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          
		 <div class="cResume">
              <a href=""><img src="" alt="이미지2"></a>
              <div class="cName"><a href="">지원자2</a></div>
              <div class="title"><a href="">제목2</a></div>
          </div>
          
<aside>
<a href="/MyPage/CProfile?c_id=${ vo.c_id }">내 정보보기</a><br>
<a href="/MyPage/CManage">채용공고관리</a><br>
<a href="/MyPage/CNow">지원 현황</a><br>
<a href="/MyPage/CScrap">인재정보 스크랩</a><br>
</aside>

<%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>