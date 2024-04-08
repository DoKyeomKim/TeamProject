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
	#rmain table tr td { 
		border: 1px solid black;
	    padding     : 10px;  
	    text-align  : center; 
	}
	td:nth-of-type(1) { width : 100px; }
	td:nth-of-type(2) { width : 300px; }
	td:nth-of-type(3) { width : 80px; }
   
	</style>	
	
  </head>

  <body>
   <main id="rmain">
  	<%@include file="/WEB-INF/include/header.jsp" %>

    <%-- <table id="comu">
      <c:forEach var="comu" items="${ comuList }">
        <td>
          <a href="/Review/List?comu_id=${ comu.comu_id }">
          ${ comu.comu_name }
          </a>
        </td>
      </c:forEach>
    </table> --%>
    
    <table id="comu">
      <tr>
        <td>[<a href="/Review/List?comu_id=COMU01">기업리뷰</a>]</td>
        <td>[<a href="/Review/ListFree?comu_id=COMU02">자유게시판</a>]</td>
      </tr>
    </table>
    
    <table id="review">
      <tr>
        <td>No.</td>
        <td>작성자/기업명</td>
        <td>평점</td>
      </tr>
      <c:forEach var="review" items="${ reviewList }">
	      <tr>
	        <td>${ review.rno }</td>
	        <td><a href="/Review/RView?rno=${ review.rno }">${ review.name }</a></td>
	        <td>${ review.star }</td>
	      </tr>
      </c:forEach>
    </table>
    <div>
    	<input type="button" value="글 작성" id="goWrite">
    </div>
    <%@include file="/WEB-INF/include/footer.jsp" %>
      
   </main>
   
   <script>
   
	    const  goWriteEl  = document.getElementById('goWrite');
	    goWriteEl.addEventListener('click', function(e) {
	 		location.href = '/Review/WriteForm?comu_id=COMU01';
	 	})
   
   </script>
   
  </body>

  </html>