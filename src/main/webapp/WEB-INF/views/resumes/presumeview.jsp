<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
    <title>이력서 작성</title>
     <link rel="stylesheet"  href="/css/header.css" />
    <style>
      .center {
        text-align: center;
      }

      .center button {
        margin: 0 10px;
      }

      .intro {
        text-align: center;
      }

      table {
        margin: 0 auto;
      }

      input[type="text"] {
        width: 80%;
        /* 텍스트 입력란을 화면의 80%로 설정 */
      }

      .upload-container {
        display: flex;
        align-items: center;
      }

      .upload-container img {
        width: 100px;
        height: 100px;
        margin-right: 20px;
      }
    </style>
</head>

<body>
<%@include file="/WEB-INF/include/header.jsp" %>	

  <h2 class="center">내 이력서</h2>
 <form action="/Resumes/List" method="post">
  <div class="center">
    <div>${psv.p_title }</div>
  </div>
  <br><br>

  <table>
    <tr>
      <td class="upload-container">
        <img src="img_girl.jpg" alt="사진">
      </td>
      <td>이름 : </td>
      <td>${psv.p_name }</td>
    </tr>
    <tr>
      <td class="upload-container">
        <input type="file">
      </td>
      <td>생년월일 : </td>
      <td>${psv.p_birth }</td>
      <td>연락처 : </td>
      <td>${psv.p_phone}</td>
    </tr>
    <tr>
      <td class="upload-container">
      </td>
      <td>이메일</td>
      <td colspan="4">${psv.p_email }</td>
    <tr>
      <td>주소</td>
      <td colspan="5">${psv.p_address } </td>

  </table>
  <br>

  <div class="center">
    <h3>보유 기술 능력</h3>
    <label><input type="checkbox" name="stack" value="Java">Java</label>
    <label><input type="checkbox" name="stack" value="HTML">HTML</label>
    <label><input type="checkbox" name="stack" value="Oracle">Oracle</label>
    <label><input type="checkbox" name="stack" value="Spring">Spring</label>
    <label><input type="checkbox" name="stack" value="C#">C#</label>
    <label><input type="checkbox" name="stack" value="CSS">CSS</label>
  </div>
  <br><br>

  <div class="intro">


    <h3>자기소개</h3>
    <div>${psv.intro }</div>
  </div>
  <br>

  <div class="center">
    <button>완료</button>
  </div>
  </form>
<%@include file="/WEB-INF/include/footer.jsp"%>
  
</body>

</html>