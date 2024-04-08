<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

   main {
     display: inline-block;
     margin-bottom: 50px;
   }
   aside {
     width: 10%;
     line-height: 1.6;     
     border-left: 4px solid maroon;
     float: left;
     margin-right: 10px;
     text-align: center;
     padding-top: 5%;
   }
   article {
     width: 1000px;
     line-height: 1.6;     
     text-align: center;
   }
   
   #profile1 {
     border: 1px solid #666;
     margin-right: 10px;
   }
   
   #profile1 tr:nth-of-type(1) td:nth-of-type(1){
     border: 1px solid black;
     padding: 30px;
     height: 130px;
   }
   
   #profile3 {
     border: 1px solid #666;
   }
   
   #profile3 td {
     border: 1px solid black;
     border-collapse: collapse;
     padding: 10px;
   }
   
   #profile3 tr td:nth-of-type(2) {
     width: 200px;
   }
   
   #span {
     width: 70%;
     border: 1px solid #666;
     font-size: 20px;
   }

</style>

</head>

<body>

   <%@include file="/WEB-INF/include/header.jsp" %>
   
   <main style="display: flex;">
   
   <aside>
     <nav>
      <a href="/MyPage/CUpdateForm?c_id=${ vo.c_id }">정보 수정</a><br />
      <a href="/MyPage/CManage">공고 관리</a><br />
      <a href="/MyPage/CNow">지원 현황</a><br />
      <a href="/MyPage/CScrap">인재 스크랩</a>
     </nav>   
   </aside>
   
   <section>
   <article>
   <h2>내 정보보기</h2>
   <hr />
   
      <div style="display: flex;">
      <table id="profile1">
         <tr>
            <td>사진변경</td>
         </tr>
         <tr>   
            <td><input type="file" name="photo" value="upload"></td>
         </tr>
      </table>
      
      <%-- <table id="profile2">
         <tr>
           <td>
           <input type="text" name="ptitle"  value="${p_title}" placeholder="나를 소개하는 한마디"><br />
           <input type="text" name="skill"  value="${skill}" placeholder="보유기술">
           </td>
         </tr>
      </table> --%>
      
      <table id="profile3">
         <tr>
            <td>아이디</td>
            <td>${ vo.c_id }</td>
         </tr>
         <tr>
            <td>이름</td>
            <td>${ vo.c_name }</td>
         </tr>
         <tr>
            <td>연락처</td>
            <td>${ vo.c_phone }</td>
         </tr>
         <tr>
            <td>회사명</td>
            <td>${ vo.c_company }</td>
         </tr>
         <tr>
            <td>사업자등록번호</td>
            <td>${ vo.c_bcode }</td>
         </tr>
         <tr>
            <td>이메일</td>
            <td>${ vo.c_email }</td>
         </tr>
      </table>
      </div>
      
      <br /><br />
      
      <div id="span">
         <span>현황</span>&nbsp;&nbsp;&nbsp;&nbsp;
         <span>지원: 00</span>&nbsp;&nbsp;&nbsp;&nbsp;
         <span>인재 스크랩: 00</span>
      </div>
      <!-- <table id="profile4">
         <tr>
            <td>현황</td>
            <td>지원자 수</td>
            <td>인재 스크랩</td>
         </tr>
      </table> -->
   </article>
   </section>   

   </main>

    <%@include file="/WEB-INF/include/footer.jsp" %>
    

</body>
</html>