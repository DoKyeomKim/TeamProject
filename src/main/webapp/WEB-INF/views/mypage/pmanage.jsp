<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>

	<h3>이력서 관리</h3>
	<aside>
		<a href="/Users/View">내 정보보기</a> 
		<a href="/MyPage/PManage">이력서 관리</a>
		<a href="/MyPage/PNow">지원 현황</a> 
		<a href="/MyPage/PScrap">채용공고 스크랩</a>
	</aside>
	<main>
		<div>
			<!-- c foreach 쓸거 -->
				<table>
			<c:forEach var="pUserVo" items="${ recruitList }">
					<tr>
						<td><a href=""></a>별</td>
						<td><a href=""></a></td>
						<td><a href=""></a>${ pUserVo.p_name }</td>
						<td colspan=3><a href=""></a>${ pUserVo.p_title }</td>
						<td><a href=""></a>수정</td>
						<td><a href=""></a>삭제</td>
					</tr>
			</c:forEach>
				</table>
		</div>
	</main>
	<%@include file="/WEB-INF/include/footer.jsp"%>

</body>
</html>