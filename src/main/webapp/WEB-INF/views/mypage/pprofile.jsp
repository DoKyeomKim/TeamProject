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
</div>
</main>

<aside>
<a href="/Users/View">내 정보보기</a>
<a href="/MyPage/PManage">이력서 관리</a>
<a href="/MyPage/PNow">지원 현황</a>
<a href="/MyPage/PScrap">채용공고 스크랩</a>
</aside>

	 <%@include file="/WEB-INF/include/footer.jsp" %>
	
</body>
</html>