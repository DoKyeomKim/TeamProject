<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이력서 리스트</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<style>


h2 {
	padding-top: 2%;
	text-align: center;
}

.list-group a:hover {
	background-color: #EDF9FF;
}

section a:hover{
	text-decoration: none;
}

.info-box {
	padding: 0 2% 2% 2%;
	width: 1300px;
	max-width: none !important;
	text-align: center;
	margin-bottom: 20px;	
}

.info-box table {
	margin: 0 auto; 
	display: table;
	border-collapse: separate; 
	border-spacing: 0 15px;
	width: 1000px;
}

.table-num {
	border: 1px solid #ccc;
	border-right : none;
	width: 100px;
	padding: 1rem;    
}

.table-name {
	border: 1px solid #ccc;
	border-right : none;
	border-left:none;
	width: 100px;
	padding: 1rem;    
}

.table-title {
	border: 1px solid #ccc;
	border-left:none;
	width: calc(100% - 40%);
	height: 5.5rem;
}

.table-edit {
	border: 1px solid #ccc;
	border-left : none;
	margin-right: -15px;
}
</style>

</head>

<body>
<%@include file="/WEB-INF/include/header.jsp"%>
  
<main style="display: flex;">
	<section>
		<article>
			<h2>지원할 이력서 선택</h2>
			<hr/>
			<div class="info-box">
				<form action="/Recruits/ApplyAction" method="post">
    			<input type="hidden" name="cno" value="${selectedCno}">
					<c:forEach var="resume" items="${pResumeList}">
						<table class="resume-table">	
							<tr>
								<td><input type="radio" name="selectedResume" value="${resume.pno}"></td>
								<td class="table-num">${resume.pno}</td>
								<td class="table-name">${resume.p_name}</td>
								<td class="table-title"><a href="/MyPage/PResumeView?pno=${resume.pno}">${resume.p_title}</a></td>
							</tr>
						</table>
					</c:forEach>
					<br>
					<div class="button-container">
						<button type="submit" class="btn btn-outline-primary">지원하기</button>
					</div>
					
				</form>
			</div>
		</article>
	</section>
</main>

<%@include file="/WEB-INF/include/footer.jsp"%>

</body>
</html>
