<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>채용공고 관리</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<style>
aside {
	float: left;
	margin-right: 2%;
	text-align: center;
	padding-left: 3%;
	padding-top: 5%;
}

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
 	border-right : none;
    width: calc(100% - 40%);
    height: 5.5rem;
}

.table-edit{
	border: 1px solid #ccc;
    border-left : none;
    margin-right: -15px;
    }
    



</style>

</head>

<body>
	<!--  <form action = "/MyPage/CManage" method=POST> -->
	<%@include file="/WEB-INF/include/header.jsp"%>
	
	
  <main style="display: flex;">
  
	
	<aside>
		<nav>
			<div class="list-group">
				<a href="/MyPage/CUpdateForm?c_id=${ sessionScope.c_id }" class="list-group-item list-group-item-action">정보수정</a> 
				<a href="/MyPage/CManage" class="list-group-item list-group-item-action">공고 관리</a> 
				<a href="#" class="list-group-item list-group-item-action">지원자 현황</a> 
				<a href="#" class="list-group-item list-group-item-action">인재정보 스크랩</a>
			</div>
		</nav>
	</aside>

	
	
	<section>
		<article>
			<h2>내 공고 관리</h2>
			<hr/>
			
		<div class="info-box">
				<c:forEach var="recruit" items="${cRecruitList}">
					<table class="resume-table">	
					<tr>
						<td class="table-num">${recruit.cno}</td>
						<td class="table-name">${recruit.c_company}</td>
						<td class="table-title"><a href="/MyPage/CRecruitView?cno=${recruit.cno}">${recruit.c_title}</td>
						<td class="table-edit"><a href="/MyPage/CRecruitUpdateForm?cno=${recruit.cno}" class="btn btn-primary" >수정</a>  <a href="/MyPage/CRecruitDelete?cno=${recruit.cno}" class="btn btn-primary">삭제</a></td>
					</tr>
					</table>
				</c:forEach>
			<br>
			<div class="button-container">
				<a  href="/MyPage/CRecruitWriteForm" class="btn btn-outline-primary">공고 작성하기</a>
			</div>
		
		</div>
		
		</article>
	</section>
	</main>
	
	<%@include file="/WEB-INF/include/footer.jsp"%>
</body>

</html>