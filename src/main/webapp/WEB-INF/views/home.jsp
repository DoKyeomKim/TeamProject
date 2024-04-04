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
     
        body {
            margin: 0;
            padding: 0;
        }
          /* Header부분 */    

         

      
      /*퀵서치*/
      .quickSearch {
          display: flex;
          justify-content: center;
          margin: 20px;
         margin-top : 100px;
          
      }
      
      .quickSearch form {
           display: flex;
      }
      

      
      .quickSearch select {
          margin-right: 30px; 
          padding: 15px;      
          width: 150px;      
      }
      
      
      .quickSearchBtn{
          padding: 10px 15px;
         
          }
          
      /* main 부분*/    
      main {
           display: grid;
           grid-template-columns: repeat(3, 1fr);
           gap: 10px;
         padding: 200px 500px;
       }
   
       .cResume {
           border: 1px solid #ccc;
           margin : 10px;
           padding: 25px 15px;
           text-align: center;

       }
   
       .cResume img {
           max-width: 100%;
           height: auto;
           margin-bottom: 50px;
       }
   
       .cResume .cName, .cResume .title {
           font-size: 16px;
           margin-bottom: 5px;
       }
             
    </style>

</head>
<body>

	 <%@include file="/WEB-INF/include/header.jsp" %>


      <div class="quickSearch">
         <form action="/#" method="get">
            <select>
               <option>지역</option>
               <option>서울</option>
               <option>부산</option>
               <option>울산</option>
            </select>

            <!--c: foreach 할듯 -->
            <select>
               <option>기술스택</option>
               <option>java</option>
               <option>html</option>
               <option>css</option>
            </select> 
            <select>
               <option>경1력</option>
               <option>신입</option>
               <option>1~3년</option>
               <option>3~5년</option>
            </select>
            
            <button type="submit" class="quickSearchBtn">검색</button>
         </form>
      </div>


      
      <main>
                 
          <!--c: foreach 할듯 -->
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
   
      </main>

	 <%@include file="/WEB-INF/include/footer.jsp" %>


</body>
</html>