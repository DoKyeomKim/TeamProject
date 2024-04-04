<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	
		<!-- ===========이력서 수정=============== -->
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
      <input type="text" style="text-align: center;" placeholder="나를 소개하는 한마디">
    </div>
    <br><br>

    <table>
      <tr>
        <td class="upload-container">
          <img src="img_girl.jpg" alt="사진">
        </td>
        <td>이름</td>
        <td><input type="text" placeholder="한글이름" value="${vo.p_id }" readonly></td>
      </tr>
      <tr>
        <td class="upload-container">
          <input type="file">
        </td>
        <td>생년월일</td>
        <td><input type="text" placeholder="1997-12-31" value="${vo.p_birth}" readonly></td>
        <td>연락처</td>
        <td><input type="text" placeholder="010-0000-0000"></td>
      </tr>
      <tr>
        <td class="upload-container">
        </td>
        <td>이메일</td>
        <td colspan="4"><input type="text" placeholder="@를 포함한 주소 입력" value="${vo.p_email }" style="width: 100%;"></td>
      </tr>
      <tr>
        <td>주소</td>
        <td colspan="5"><input type="text" placeholder="거주하는 동까지 입력" value="${vo.p_adress}" style="width: 100%;"> </td>
      </tr>
    </table>
    <br>

    <div class="skill">
      <h5>보유 기술(선택)</h5>

      <input type="checkbox" class="btn-check" id="btncheck1" name="skill" value="Java" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck1">Java</label>

      <input type="checkbox" class="btn-check" id="btncheck2" name="skill" value="Html" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck2">Html</label>

      <input type="checkbox" class="btn-check" id="btncheck3" name="skill" value="Oracle" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck3">Oracle</label>

      <input type="checkbox" class="btn-check" id="btncheck4" name="skill" value="Mysql" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck4">Mysql</label>

      <input type="checkbox" class="btn-check" id="btncheck5" name="skill" value="Css" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck5">Css</label>

      <input type="checkbox" class="btn-check" id="btncheck6" name="skill" value="JavaScript" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck6">JavaScript</label>

      <input type="checkbox" class="btn-check" id="btncheck6" name="skill" value="Vscode" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck6">Vscode</label>

      <input type="checkbox" class="btn-check" id="btncheck6" name="skill" value="SpringBoot" autocomplete="off">
      <label class="btn btn-outline-success" for="btncheck6">SpringBoot</label>
    </div>
    <hr class="my-4">
    <br><br>

    <div class="intro">
      <h5>자기소개</h5>
      <textarea rows="15" cols="80" maxlength="1000" placeholder="1000자 이내로 작성"></textarea>
    </div>
    <br>

    <div class="center">
      <a href="/Mypage/Manage">수정완료</a>
    </div>
  </body>

  </html>