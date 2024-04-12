<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>채용공고 관리</title>
<link rel="stylesheet"  href="/css/header.css" />
<style>
article {
	float: left;
	width: 80%;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	text-align: left;
	padding: 8px;
}

a:hover {
	color: black;
}

a.active {
	color: black;
	font-weight: bold;
}

.grid-container {
	display: grid;
	grid-template-columns: 1fr 4fr 1fr;
	gap: 20px;
}

.left-sidebar, .right-sidebar {
	background-color: #f0f0f0;
	padding: 20px;
	height: 100vh;
	overflow-y: auto;
	overflow-x: hidden;
	text-align: center;
}

.left-sidebar ul {
	list-style: none;
	padding-left: 0;
	display: flex;
	flex-direction: column;
}

.main-content {
	padding: 20px;
}

@media ( max-width : 768px) {
	.grid-container {
		grid-template-columns: 1fr;
		display: grid;
		grid-template-columns: 1fr 4fr 1fr;
		gap: 20px;
		max-width: 100%;
		margin: 0 auto;
	}
}

body {
	margin: 0;
	padding: 0;
}

.button-container {
	text-align: right;
}
</style>

</head>

<body>
	<!--  <form action = "/MyPage/CManage" method=POST> -->
	<%@include file="/WEB-INF/include/header.jsp"%>
	<div class="grid-container">
		<aside class="left-sidebar">
			<ul>
				<br>
				<li>기업회원</li>
				<br>
				<br>
				<br>
				<li><a href="/Users/View">내 정보수정</a></li>
				<br>
				<li><a href="/MyPage/PManage">이력서관리</a></li>
				<br>
				<li><a href="/MyPage/PNow">지원현황</a></li>
				<br>
				<li><a href="/MyPage/PScrap">채용공고 스크랩</a></li>
			</ul>
		</aside>
		<article class="main-content">
			<h2>내 이력서 관리</h2>
			<h4>
				<br>
				<span>총 OO건</span>
			</h4>
			<table>
					<tr>
						<th></th>
						<th>번호</th>
						<th>이름</th>
						<th>이력서 제목</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				<c:forEach var="resume" items="${pResumeList}">
					<tr>
						<td><input type="checkbox"></td>
						<td>${resume.pno }</td>
						<td>${resume.p_name}</td>
						<td><a href="/MyPage/PResumeView?pno=${resume.pno }">${resume.p_title}</td>
						<td><a href="/MyPage/PResumeUpdateForm?pno=${resume.pno }">수정</a></td>
						<td><a href="/MyPage/PResumeDelete?pno=${resume.pno }">삭제</a></td>
					</tr>
				</c:forEach>
			</table>
			<br>
			<div class="button-container">
				<a href="/MyPage/PResumeWriteForm">이력서 작성하기</a>
			</div>
		</article>
		<aside class="right-sidebar">ad</aside>
	</div>
	<%@include file="/WEB-INF/include/footer.jsp"%>
	</form>
</body>

</html>