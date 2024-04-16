<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재정보 리스트</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/header.css" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.info-box table {
    margin: 0 auto; 
    display: table;
    border-collapse: separate; 
    border-spacing: 10px 20px;

}



.table-num{
display : none;
}

.table-name {
    border: 1px solid #ccc;
    background-color: #EDF9FF;
    border-radius: 5px;
    width: 200px;
    padding: 1rem;
    text-align: center;
    
}

.table-title {
    border: 1px solid #ccc;
    border-radius: 5px;
    width: calc(100% - 20%);
    height: 3rem;
    line-height: 3rem;
    text-align: center;    
}


.table-name, .table-title {
    padding: 10px;
}
</style>
</head>
<body>

	 <%@include file="/WEB-INF/include/header.jsp" %>
            
      <main>
               
	<section>
		<article>
			<h2 style="text-align:center; padding-top: 2%;">인재보기</h2>
			<hr/>
			
		<div class="info-box">
				<c:forEach var="resume" items="${ presumeList }">
					<table class="resume-table">	
					<tr>
						<td class="table-num">${resume.pno }</td>
						<td class="table-name">${resume.p_name}</td>
						<td class="table-title"><a href="/Resumes/View?pno=${resume.pno }">${resume.p_title}</td>
					</tr>
					</table>
				</c:forEach>
			<br>

		
		</div>
		
		</article>
	</section>
          </main>

	 <%@include file="/WEB-INF/include/footer.jsp" %>


</body>
</html>