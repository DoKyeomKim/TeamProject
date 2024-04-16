<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고리스트</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<style>


.navbar {
	padding-top: 50px;
	padding-bottom: 50px;
	padding-right: 300px;
	padding-left: 300px;
}

.nav-item{
	font-size : 30px;
	font-weight: bold;
	font-family: "Do Hyeon", sans-serif;
    font-weight: 400;
    font-style: normal;
}



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
			<h2 style="text-align:center; padding-top: 2%;">공고보기</h2>
			<hr/>
			
		<div class="info-box">
				<c:forEach var="recruitList" items="${ recruitList }" >
					<table class="resume-table">	
					<tr>
						<td class="table-num">${ recruitList.cno }</td>
						<td class="table-name">${ recruitList.c_company }</td>
						<td class="table-title"><a href="/Recruits/View?cno=${ recruitList.cno }">${ recruitList.c_title }</td>
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