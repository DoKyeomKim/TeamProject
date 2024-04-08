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
        	<h1>기업 목록 리스트</h1>
           <div class="my-applyUserList-table">
            <table class="table table-hover w-outo">
              <thead>
               <tr>
                <th scope="col">순서</th>
                <th scope="col">기업 이름</th>
                <th scope="col">상세보기</th>
               </tr>
              </thead>
               <tbody>
                <c:forEach items="${companyList}" var="companyList">
                 <tr>
                  <th scope="row">${companyList.id}</th>
                   <td>${companyList.noticeCompanyname}</td>
                    <td><button type="button"
                      onclick="window.location.href = '/notice/${companyList.id}';"
                      class="btn btn-primary">공고보기</button></td>
                  </tr>
                 </c:forEach>
                </tbody>
               </table>
              </div>
            </div>
           </div>
          </main>

	 <%@include file="/WEB-INF/include/footer.jsp" %>


</body>
</html>