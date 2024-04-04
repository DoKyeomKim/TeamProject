<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
  
   <header class="header">
      <div class="logo">
         <a href="/"><img src="/img/logo.png" alt="로고"></a>
      </div>

      <div class="search">
         <form action="#" method="get">
            <input type="text" name="q" placeholder="검색어를 입력하세요">
            <button type="submit">검색</button>
         </form>
      </div>

      <div class="userLogin">
         <a href=""><img src="user-icon.png" alt="사용자 아이콘"></a><a href="/loginForm">로그인</a>
      </div>
      <div class="menuList">
         <a href="#">채용정보</a><a href="#">인재정보</a><a href="#">커뮤니티</a>
      </div>
   </header>
