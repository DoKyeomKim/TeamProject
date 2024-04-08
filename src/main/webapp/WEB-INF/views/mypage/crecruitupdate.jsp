<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- ===========채용공고 수정=============== -->

    <head>
      <style>
        .title {
          text-align: center;
          font-weight: bold;
        }

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

        .skill {
          text-align: center;
          font-weight: bold;
        }

        .intro {
          font-weight: bold;
        }
      </style>
    </head>

    <%@include file="/WEB-INF/include/header.jsp" %>

  <body>
    <h2 class="title">채용공고 수정</h2>
    <br><br>

    <table>
      <tr>
        <td class="upload-container">
          <img src="img_girl.jpg" alt="사진">
        </td>
        <td><input type="text" placeholder="회사명" readonly></td>
        <td class="upload-container">
        </td>
        <td><input type="text" placeholder="모집인원-00" readonly></td>
      <tr>
      </tr>
      <tr>
        <td class="upload-container">
          <input type="file">
        <td><input type="text" placeholder="제목"></td>
      </tr>
      <tr>
        <td class="upload-container">
        </td>
        <td><input type="text" placeholder="채용분야 입력"></td>
        <td class="upload-container">
        </td>
      <tr>
      </tr>
      <tr>
        <td class="upload-container">
        <td><input type="text" placeholder="이메일 @포함"></td>
      </tr>
      <tr>
        <td class="upload-container"></td>
        <td><input type="text" placeholder="근무지역" style="width: 183%;"> </td>
      </tr>
    </table>
    <br>
    <div class="intro">
      <h5>채용정보</h5>
      <textarea rows="15" cols="80" maxlength="1000">
        접수기간 : 상시모집
      </textarea>
    </div>
    <br>

    <div class="center">
      <a href="/Mypage/cmanage">수정완료</a>
    </div>
    <div class="center">
      <a href="/Mypage/cmanage">목록</a>
    </div>
  </body>
  <%@include file="/WEB-INF/include/footer.jsp" %>