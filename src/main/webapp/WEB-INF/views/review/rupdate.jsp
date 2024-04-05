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
	
	textarea  {
      height: 250px;
      width : 100%;
    }
    
	</style>	
	
  </head>

  <body>
   <main id="rmain">
  	<%@include file="/WEB-INF/include/header.jsp" %>
    
    <br>
    <h2>기업리뷰 수정</h2>
    <form action="/Review/RUpdate" method="POST">
    <input type="hidden" name="rno" value="${ reviewVo.rno }">
    <table>
      <tr>
        <td>이름</td>
        <td>${ reviewVo.name }</td>
        <td rowspan="2">평점</td>
        <td rowspan="2"><input type="text" name="star" value="${ reviewVo.star }"></td>
      </tr>
      <tr>
        <td>제목</td>
        <td><input type="text" name="title" value="${ reviewVo.title }"></td>
      </tr>
      <tr>
        <td>내용</td>
        <td colspan="3"><textarea name="content">${ reviewVo.content }</textarea></td>
      </tr>
      
    <tr>
      <td colspan="4">
    	<input type="submit" value="완료">
    	<input type="button" value="목록" id="goList">
      </td>
    </tr>
    
    </table>
    </form>
    
    <%@include file="/WEB-INF/include/footer.jsp" %>
      
   </main>
   
   <script>
   
	  	const  goListEl  = document.getElementById('goList');
	  	goListEl.addEventListener('click', function(e) {
	  		location.href = '/Review/List?comu_id=COMU01';
	  	})
  
  </script>
  
   
  </body>

  </html>