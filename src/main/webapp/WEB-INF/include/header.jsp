
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
   crossorigin="anonymous">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header">


   <span class="logo">
      <a href="/"><img src="/img/logo.png" alt="로고"></a>
   </span>


      <span class="menuList">
         <a href="/Recruits/List">채용정보</a>
         <a href="/Resumes/List">인재정보</a> 
         <a href="/Review/List?comu_id=COMU01">커뮤니티</a>
      </span>

   <span class="userLogin">
      <a href="/Users/LoginForm"><img src="/img/mypage.png"></a> <a href="/Users/LoginForm">로그인</a>
   </span>
</header>


<!--  로그인 상태 확인 및 버튼 변경 -->

<script>
   document
         .addEventListener(
               'DOMContentLoaded',
               function() {
<%Object puser = session.getAttribute("pLogin");
Object cuser = session.getAttribute("cLogin");

if (puser != null) {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/PProfile?p_id=${sessionScope.pLogin.p_id}"><img src="/img/mypage.png"></a><a href="/Users/Logout">로그아웃</a>';
<%} else if (cuser != null) {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/CProfile?c_id=${sessionScope.cLogin.c_id}"><img src="/img/mypage.png"></a><a href="/Users/Logout">로그아웃</a>';
<%} else {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/Users/LoginForm"><img src="/img/mypage.png"></a><a href="/Users/LoginForm">로그인</a>';
<%}%> 
   });
</script>
