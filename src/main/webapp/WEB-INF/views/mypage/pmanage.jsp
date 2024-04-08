<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>

	<h3>이력서 관리</h3>
	<aside>
		<a href="/Users/View">내 정보보기</a> <a href="/MyPage/PManage">이력서 관리</a>
		<a href="/MyPage/PNow">지원 현황</a> <a href="/MyPage/PScrap">채용공고 스크랩</a>
	</aside>
	<main>
		<div>
			<!-- c foreach 쓸거 -->
			<table>
				<c:forEach var="resume" items="${pResumeList}">
					<tr>
						
						<td>${resume.pno }</td>
						<td><a href=""></a>별</td>
						<td>${resume.p_name}</td>
						<td colspan=3><a href="/MyPage/PResumeView?pno=${resume.pno }">${resume.p_title}</a></td>
						<td><a href="/MyPage/PResumeUpdateForm?pno=${resume.pno }">수정</a></td>
						<td><a href="/MyPage/PResumeDelete?pno=${resume.pno }">삭제</a></td>
					</tr>
				</c:forEach>
			</table>
			<a href="/MyPage/PResumeWriteForm">이력서 작성하기</a>
		</div>
	</main>
	<%@include file="/WEB-INF/include/footer.jsp"%>

</body>
</html>