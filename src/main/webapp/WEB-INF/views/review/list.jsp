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
	td:nth-of-type(2) { width : 300px; }
	td:nth-of-type(3) { width : 80px; }
	
	</style>	
	
  </head>

  <body>
   <main id="rmain">
  	<%@include file="/WEB-INF/include/header.jsp" %>

    <table>
      <c:forEach var="comu" items="${ comuList }">
        <td>
          <a href="/Comu/List?comu_id=${ comu.comu_id }">
          ${ comu.comu_name }
          </a>
        </td>
      </c:forEach>
    </table>
    
    <table>
      <tr>
        <td>No.</td>
        <td>작성자/기업명1</td>
        <td>평점</td>
      </tr>
      <c:forEach var="review" items="${ reviewList }">
	      <tr>
	        <td>${ review.rno }</td>
	        <td>${ review.name }</td>
	        <td>${ review.star }</td>
	      </tr>
      </c:forEach>
    </table>
    
    <%@include file="/WEB-INF/include/footer.jsp" %>
      
   </main>
  </body>

  </html>