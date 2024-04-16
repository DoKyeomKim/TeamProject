<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 마이페이지</title>
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
	  width: 165px; /* 이름 박스 길이 */
	  padding: 1rem;
	  border-radius: 10px;
	  border: 1px solid #ccc;
	  background-color: #EDF9FF; /* 박스 배경색 */
	  
	}
	
	.name-value {
	  display: inline-block;
	  width: calc(100% - 40%); /* 값 박스 길이 */
	  border-radius: 10px;
	  border: 1px solid #ccc;
	  height: 3.5rem; /* name-label의 높이에 맞추기 위한 값 */
      line-height: 3.5rem; /* 수직 가운데 정렬 */
	}


</style>


</head>

<body>

	<%@include file="/WEB-INF/include/header.jsp"%>



	<main style="display: flex;">


		<aside>
			<nav>
				<div class="list-group">
<a href="/MyPage/CUpdateForm?c_id=${ vo.c_id }" class="list-group-item list-group-item-action">정보수정</a> 
				<a href="/MyPage/CManage" class="list-group-item list-group-item-action">공고 관리</a> 
				<a href="#" class="list-group-item list-group-item-action">지원자 현황</a> 
				<a href="#" class="list-group-item list-group-item-action">인재정보 스크랩</a>
				</div>
			</nav>
		</aside>

		<section>
			<article>
				<h2>회원님의 기업 정보입니다.</h2>
				<hr />



            <div class="info-box">
                <div class="form-group">
                    <span class="name-label">아이디</span>
                    <span class="name-value">${ vo.c_id }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">회사명</span>
                    <span class="name-value">${ vo.c_company }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">담당자</span>
                    <span class="name-value">${ vo.c_name }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">연락처</span>
                    <span class="name-value">${ vo.c_phone }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">이메일</span>
                    <span class="name-value">${ vo.c_email }</span>
                </div>
                <div class="form-group">
                    <span class="name-label">사업자 등록번호</span>
                    <span class="name-value">${ vo.c_bcode }</span>
                </div>

            </div>



			</article>
		</section>

	</main>

	<%@include file="/WEB-INF/include/footer.jsp"%>


</body>
</html>