<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
    <title>이력서 작성</title>
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
  <h2 class="center">이력서 작성</h2>
  <div class="center">
    <input type="text" style="text-align: center;" placeholder="나를 소개하는 한마디">
  </div>
  <br><br>

  <table>
    <tr>
      <td class="upload-container">
        <img src="img_girl.jpg" alt="사진">
      </td>
      <td>이름</td>
      <td><input type="text" placeholder="한글이름"></td>
    </tr>
    <tr>
      <td class="upload-container">
        <input type="file">
      </td>
      <td>생년월일</td>
      <td><input type="text" placeholder="1997-12-31"></td>
      <td>연락처</td>
      <td><input type="text" placeholder="010-0000-0000"></td>
    </tr>
    <tr>
      <td class="upload-container">
      </td>
      <td>이메일</td>
      <td colspan="4"><input type="text" placeholder="@를 포함한 주소 입력" style="width: 100%;"></td>
    <tr>
      <td>주소</td>
      <td colspan="5"><input type="text" placeholder="거주하는 동까지 입력" style="width: 100%;"> </td>
    </tr>
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
    <textarea rows="10" cols="50" maxlength="1000" placeholder="1000자 이내로 작성"></textarea>
  </div>
  <br>

  <div class="center">
    <button>완료</button>
  </div>
</body>

</html>