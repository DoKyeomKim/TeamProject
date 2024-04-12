
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
         <a href="/MyPage/PProfile?p_id=lupy" style="color: white;" >pprofile</a>
         <a href="/MyPage/CProfile?c_id=ROSER" style="color: white;" >cprofile</a>
         <a href="/loginForm">로그인</a>
      </div>
      <div class="menuList">

         <a href="#">채용정보</a>
         <a href="/Resumes/List">인재정보</a>
         <a href="/ReviewBoardPaging/List?comu_id=COMU01&nowpage=1">커뮤니티</a>

      </div>
   </header>
   
   <script>
    // 로그인 상태 확인 및 버튼 변경
    <% 
        Object user = session.getAttribute("login");
        if(user != null) {
    %>
            document.addEventListener('DOMContentLoaded', function() {
                document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/PProfile?p_id=lupy" style="color: white;" >pprofile</a><a href="/MyPage/CProfile?c_id=ROSER" style="color: white;" >cprofile</a><a href="/logout">로그아웃</a>';
            });
            
    <% } else { %>
            document.addEventListener('DOMContentLoaded', function() {
                document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/PProfile?p_id=lupy" style="color: white;" >pprofile</a><a href="/MyPage/CProfile?c_id=ROSER" style="color: white;" >cprofile</a><a href="/loginForm">로그인</a>';
            });
    <% } %>
</script>
