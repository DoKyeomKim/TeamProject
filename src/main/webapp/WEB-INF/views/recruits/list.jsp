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
      

Search select {
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
           padding: 100px 500px;
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
       }
   
       .cResume .cName, .cResume .title {
           font-size: 16px;
           margin-bottom: 5px;
       }
       
       .tablelist {
       		border: 1px solid black;
       		border-collapse: collapse;       
       		width: 400px;
       }
       .tablelist tr, 
       .tablelist td {
       		border: 1px solid black;
       		border-collapse: collapse;       
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
               <option>경력</option>
               <option>신입</option>
               <option>1~3년</option>
               <option>3~5년</option>
            </select>
            
            <button type="submit" class="quickSearchBtn">검색</button>
         </form>
      </div>
      
      <main>
               
      	<div class="container">
        <div class="my-applyUserList-box">
        
        <h1>채용 공고 리스트</h1>
        
           <div class="my-applyUserList-table">
           
            <table class="tablelist">
            
               <tr>
	               <td>번호</td>
	               <td>기업 이름</td>
	               <td colspan="2">공고 제목</td>
               </tr>
              
               <c:forEach var="recruitList" items="${ recruitList }" >
               	<tr>
                  <td>${ recruitList.cno }</td>
                  <td>${ recruitList.c_company }</td>
                  <td>${ recruitList.c_title }</td>
                  
                  <td>
                  <a href="/Recruits/View?cno=${ recruitList.cno }">보기</a>
                  </td>
                </tr>  
                
               </c:forEach>
                
               </table>
               
              </div>
            </div>
           </div>
          </main>

	 <%@include file="/WEB-INF/include/footer.jsp" %>


</body>
</html>