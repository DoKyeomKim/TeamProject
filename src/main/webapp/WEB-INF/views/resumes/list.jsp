<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%@include file="/WEB-INF/include/header.jsp" %>
<h2>지원자 목록</h2>
    <table>
      <tr>
   		<td>이름</td>    
   		<td>이력서제목</td>
        <a href="/MyPage/PResumeView">이력서</a>
      </tr>

       <c:forEach var="PResumeVo" items="${ presumeList }">
      <tr>
        <td>${PResumeVo.p_id}</td>
        <td>
        <a href="/Resumes/View?p_id=${PUserVo.p_id}">
        ${PResumeVo.p_name}
        </a>
        </td>
        <td>${PResumeVo.p_title}</td>
      </tr>
      </c:forEach>

    </table>
<%@include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>