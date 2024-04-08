<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
 table,td {
   border: 1px solid black;
   border-collapse: collapse;
 }
td {
        padding: 10px;
        width: 700px;
        text-align: center;
      }
      td:nth-of-type(1) {
        width: 200px;
      }
      td:not([colspan]):first-child {
        background: black;
        color: white;
        font-weight: bold;
      }
      textarea {
        height: 300px;
        width: 100%;
      }
</style>
</head>
<body>
	<h2>자유게시판 게시글 내용 조회</h2>
	<table>
     <tr>
     <td>작성자</td>
     <td>${vo.name}</td>
     </tr>
     <tr>
     <td>제목</td>
     <td>${vo.title}</td>
     </tr>
     <tr>
     <td>내용</td>
     <td>${vo.content}</td>
     </tr>
     <tr>
     <td colspan="2">
     <input type="submit" value="수정" />
     <input type="button" value="목록" id="goList"/>
     </td>
     </tr>
    </table>
<%@include file="/WEB-INF/include/footer.jsp" %>	
</body>
</html>