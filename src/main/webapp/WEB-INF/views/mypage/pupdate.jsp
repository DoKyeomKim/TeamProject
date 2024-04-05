<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@include file="/WEB-INF/include/header.jsp" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

      <!-- ===========이력서 등록=============== -->

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

    <body>
      <h2 class="title">이력서 수정</h2>
      <div class="center">
        <input type="text" style="text-align: center;" placeholder="나를 소개하는 한마디를 적어주세요">
      </div>
      <br><br>

      <table>
        <tr>
          <td class="upload-container">
            <img src="img_girl.jpg" alt="사진">
          </td>
          <td>이름</td>
          <td><input type="text" placeholder="한글이름" readonly></td>
        </tr>
        <tr>
          <td class="upload-container">
            <input type="file">
          </td>
          <td>생년월일</td>
          <td><input type="text" placeholder="1997-12-31"></td>
          <td>연락처</td>
          <td><input type="text" placeholder="010-0000-0000" style="width: 100%"></td>
        </tr>
        <tr>
          <td class="upload-container">
          </td>
          <td>이메일</td>
          <td colspan="4"><input type="text" placeholder="@를 포함한 주소 입력" style="width: 100%;"></td>
        </tr>
        <tr>
          <td>주소</td>
          <td colspan="5"><input type="text" placeholder="거주하는 동까지 입력" style="width: 100%;"> </td>
        </tr>
      </table>
      <br>

      <h5 class="skill">보유 기술(선택)</h5>
      <div class="skill">

        <input type="checkbox" name="skill" value="Java" /> Java
        <input type="checkbox" name="skill" value="Java" /> HTML
        <input type="checkbox" name="skill" value="Java" /> Oracle
        <input type="checkbox" name="skill" value="Java" /> MySql
        <input type="checkbox" name="skill" value="Java" /> CSS
        <input type="checkbox" name="skill" value="Java" /> JavaScript
        <input type="checkbox" name="skill" value="Java" /> Vscode
        <input type="checkbox" name="skill" value="Java" /> SpringBoot

        <hr class="my-4">
        <br><br>

        <div class="intro">
          <h5>자기소개</h5>
          <textarea rows="15" cols="100" maxlength="1000" placeholder="1000자 이내로 작성"></textarea>
        </div>
        <br>

        <div class="center">
          <a href="/Mypage/pprifile">작성완료</a>
        </div>
    </body>
    <%@include file="/WEB-INF/include/footer.jsp" %>