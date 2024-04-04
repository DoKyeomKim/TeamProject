<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<h2>자유게시판 게시글 등록</h2>
<table>
     <tr>
     <td>작성자</td>
     <td><input type="text" name="writer" /></td>
     </tr>
     <tr>
     <td>제목</td>
     <td><input type="text" name="title" /></td>
     </tr>
     <tr>
     <td>내용</td>
     <td><textarea name="content"></textarea></td>
     </tr>
     <tr>
     <td colspan="2">
     <input type="submit" value="저장" />
     <input type="button" value="목록" id="goList"/>
     </td>
     </tr>
    </table>
</body>
</html>