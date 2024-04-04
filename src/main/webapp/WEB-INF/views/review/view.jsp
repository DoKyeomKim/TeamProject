<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet"  href="/css/header.css" />
	
	<style>
	#rmain table {
		border: 1px solid black;
		width: 70%;
		margin: 50px 50px;
	    padding: 10px 50px;  
	}
	#rmain table tr { 
		border: 1px solid black;
	    text-align  : center; 
	}
	#rmain table tr  td { 
		border: 1px solid black;
	    padding     : 10px;  
	    text-align  : center; 
	}
	td:nth-of-type(1) { width : 100px; }
	td:nth-of-type(2) { width : 200px; }
	td:nth-of-type(3) { width : 100px; }
	td:nth-of-type(4) { width : 200px; }
	
	</style>	
	
  </head>

  <body>
   <main id="rmain">
  	<%@include file="/WEB-INF/include/header.jsp" %>
    
    <br>
    <h2>기업리뷰 등록</h2>
    <form action="/Review/Write" method="POST">
    
    <table>
      <tr>
        <td>이름</td>
        <td colspan="3">${ reviewBoardVo.name }</td>
      </tr>
      <tr>
        <td>제목</td>
        <td>${ reviewBoardVo.title }</td>
        <td>평점</td>
        <td>${ reviewBoardVo.star }</td>
      </tr>
      <tr>
        <td>내용</td>
        <td>${ reviewBoardVo.content }</td>
      </tr>
      
    <tr>
      <td colspan="4">
    	<input type="submit" value="완료" id="goList">
      </td>
    </tr>
    
    </table>
    </form>
    
    <%@include file="/WEB-INF/include/footer.jsp" %>
      
   </main>
   
   <script>
   
	  	const  goListEl  = document.getElementById('goList');
	  	goListEl.addEventListener('click', function(e) {
	  		location.href = '/Review/List?comu_id=${comu_id}';
	  	})
  
  </script>
  
   
  </body>

  </html>