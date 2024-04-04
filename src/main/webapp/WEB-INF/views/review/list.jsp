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
	
  </head>

  <body>
  
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
        <td>작성자/기업명</td>
        <td>평점</td>
      </tr>
      <c:forEach var="review" items="${ reviewList }">
	      <tr>
	        <td>${ reviewVo.rno }</td>
	        <td>${ reviewVo.name }</td>
	        <td>${ reviewVo.star }</td>
	      </tr>
      </c:forEach>
    </table>  

  </body>

  </html>