<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">

<style>
.navbar-light.bg-light {
   background-color: #EDF9FF !important;
}

.navbar {
   padding-top: 50px;
   padding-bottom: 50px;
   padding-right: 300px;
   padding-left: 300px;
}

.nav-item{
   font-size : 30px;
   font-weight: bold;
   font-family: "Do Hyeon", sans-serif;
    font-weight: 400;
    font-style: normal;
}
</style>

<header class="header">
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/"><img src="/img/logo.png" alt="로고"></a>

      <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
         <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item"><a class="nav-link" href="/Recruits/List">채용공고</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="/Resumes/List">인재정보</a>
            </li>
            <li class="nav-item"><a class="nav-link"
               href="/Review/List?comu_id=COMU01">자유게시판</a></li>

         </ul>

         <form class="form-inline my-2 my-lg-0">
            <span class="userLogin"> 
            <a href="/Users/LoginForm"  class="btn btn-outline-primary">마이페이지</a> &nbsp; <a href="/Users/LoginForm" class="btn btn-outline-primary">로그인</a>
            </span>
         </form>
      </div>
   </nav>
</header>



<script>
   document
         .addEventListener(
               'DOMContentLoaded',
               function() {
<%Object puser = session.getAttribute("pLogin");
Object cuser = session.getAttribute("cLogin");

if (puser != null) {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/PProfile?p_id=${sessionScope.pLogin.p_id}" class="btn btn-outline-primary">마이페이지</a> &nbsp; <a href="/Users/Logout" class="btn btn-outline-primary">로그아웃</a>';
<%} else if (cuser != null) {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/MyPage/CProfile?c_id=${sessionScope.cLogin.c_id}" class="btn btn-outline-primary">마이페이지</a> &nbsp; <a href="/Users/Logout" class="btn btn-outline-primary">로그아웃</a>';
<%} else {%>
   document.querySelector('.userLogin').innerHTML = '<a href="/Users/LoginForm"  class="btn btn-outline-primary">마이페이지</a> &nbsp; <a href="/Users/LoginForm" class="btn btn-outline-primary">로그인</a>';
<%}%>
   });
</script>
