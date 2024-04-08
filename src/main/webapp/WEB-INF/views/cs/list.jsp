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
  <main>

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
      <td><a href="/Review/ViewCs">${ cs.title }</a></td>
    </tr>
    </c:forEach>
    
  </table>
  
  <%@include file="/WEB-INF/include/footer.jsp" %>
  
  </main>
	
</body>
</html>