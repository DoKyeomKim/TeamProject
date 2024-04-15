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
	#csmain table {
		border: 1px solid black;
		width: 70%;
		margin: 50px 50px;
	    padding: 10px 50px;  
	}
	#csmain table tr { 
		border: 1px solid black;
	    text-align  : center; 
	}
	#csmain table tr td { 
		border: 1px solid black;
	    padding     : 10px;  
	    text-align  : center; 
	}
	td:nth-of-type(1) { width : 100px; }
	td:nth-of-type(2) { width : 100px; }
	td:nth-of-type(3) { width : 300px; }
   
</style>	
	
</head>
<body>
  <main id="csmain">

  <%@include file="/WEB-INF/include/header.jsp" %>

  <h2>자주묻는 질문</h2>
  <br>
  
  <table>
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>제목</td>
    </tr>
    
    <c:forEach var="cs" items="${ csList }">
    <tr>
      <td>${ cs.sno }</td>
      <td>${ cs.name }</td>
      <td><a href="/Review/ViewCs?sno=${ cs.sno }">${ cs.title }</a></td>
    </tr>
    </c:forEach>
    
  </table>
  
  <%@include file="/WEB-INF/include/footer.jsp" %>
  
  </main>
	
</body>
</html>