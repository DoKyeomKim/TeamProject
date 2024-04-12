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
         <a href="/Users/LoginForm">profile</a>
         <a href="/Users/LoginForm">로그인</a>
      </div>
      <div class="menuList">

         <a href="/Recruits/List">채용정보</a><a href="/Resumes/List">인재정보</a><a href="/BoardPaging/ReviewList?nowpage=1&comu_id=COMU01">커뮤니티</a>

      </div>
   </header>
   

    <!--  로그인 상태 확인 및 버튼 변경 -->
    
   <script>document.addEventListener('DOMContentLoaded', function() {
        <% 
            Object puser = session.getAttribute("pLogin");
            Object cuser = session.getAttribute("cLogin");

            if (puser != null) { %>
                document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/PProfile?p_id=${sessionScope.pLogin.p_id}"><img src="user-icon.png" alt="사용자 아이콘"></a><a href="/Users/Logout">로그아웃</a>';
        <%  } else if (cuser != null) { %>
                document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/CProfile?c_id=${sessionScope.cLogin.c_id}"><img src="user-icon.png" alt="사용자 아이콘"></a><a href="/Users/Logout">로그아웃</a>';
        <%  } else { %>
                document.querySelector('.userLogin').innerHTML = '<a href="/Users/LoginForm"><img src="user-icon.png" alt="사용자 아이콘"></a><a href="/Users/LoginForm">로그인</a>';
        <%  } %>
    });
   </script> 
