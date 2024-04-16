<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 마이페이지</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

.info-box {
	margin-top: 2%;
	border-radius: 10px;
	padding: 2%;
	border: 1px solid #0e0e0e;
	width: 1300px;
	max-width: none !important;
	text-align: center;
}

	.name-label {
	  display: inline-block;
	  width: 100px; 
	  padding: 1rem;
	  border-radius: 10px;
	  border: 1px solid #ccc;
	  background-color: #EDF9FF;
	  
	}
	
	.name-value {
	  display: inline-block;
	  width: calc(100% - 40%);
	  border-radius: 10px;
	  border: 1px solid #ccc;
	  height: 3.5rem; 
      line-height: 3.5rem;
	}


</style>


</head>

<body>

	<%@include file="/WEB-INF/include/header.jsp"%>



	<main style="display: flex;">


		<aside>
			<nav>
				<div class="list-group">
	  	<a href="/MyPage/PUpdateForm?p_id=${vo.p_id}" class="list-group-item list-group-item-action">정보수정</a>
	  	<a href="/MyPage/PManage" class="list-group-item list-group-item-action">이력서 관리</a>
	  	<a href="/MyPage/PNow" class="list-group-item list-group-item-action">지원 현황</a>
	  	<a href="#" class="list-group-item list-group-item-action">채용공고 스크랩</a>
				</div>
			</nav>
		</aside>

		<section>
			<article>
				<h2>안녕하세요 ${vo.p_id }님! 회원님의 정보입니다.</h2>
				<hr />



            <div class="info-box">
                <div class="form-group">
                    <span class="name-label">아이디</span>
                    <span class="name-value">${ vo.p_id }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">이름</span>
                    <span class="name-value">${ vo.p_name }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">연락처</span>
                    <span class="name-value">${ vo.p_phone }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">이메일</span>
                    <span class="name-value">${ vo.p_email }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">스킬</span>
                    <span class="name-value">${ vo.skill }</span>
                </div>

            </div>



			</article>
		</section>

	</main>

	<%@include file="/WEB-INF/include/footer.jsp"%>


</body>
</html>