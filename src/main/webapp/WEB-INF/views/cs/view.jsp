<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	td:nth-of-type(3) { width : 100px; }
	td:nth-of-type(4) { width : 100px; }
   
</style>

</head>
<body>
  <main id="csmain">
    
    <%@include file="/WEB-INF/include/header.jsp" %>
    
    <br>
    <h2>자주묻는 질문</h2>
    
    <table>
    
      <tr>
        <td>이름</td>
        <td colspan="3">${ svVo.name }</td>
      </tr>
      <tr>
        <td>제목</td>
        <td colspan="3">${ svVo.title }</td>
      </tr>
      <tr>
        <td>내용</td>
        <td colspan="3">${ svVo.content }</td>
      </tr>
      
    <tr>
      <td colspan="4">
    	<a href="/Review/ListCs">목록</a>
      </td>
    </tr>
    
    </table>
    
    <%@include file="/WEB-INF/include/footer.jsp" %>
      
   </main>
   
   <script>
   
	  	const  goListEl  = document.getElementById('goList');
	  	goListEl.addEventListener('click', function(e) {
	  		location.href = '/Review/ListFree?comu_id=COMU02';
	  	})
  
  </script>
    
</body>
</html>