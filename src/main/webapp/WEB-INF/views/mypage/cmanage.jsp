<html>

<head>
  <title>채용공고 관리</title>
  <style>
    article {
      float : left;
      width : 80%;
    }

    table {
      width : 100%;
      border-collapse: collapse;
    }

    th,
    td {
      border : 1px solid black;
      text-align : left;
      padding : 8px;
    }

    a:hover {
      color: black;
    }

    a.active {
      color: black;
      font-weight: bold;
    }

    .grid-container {
      display: grid;
      grid-template-columns: 1fr 4fr 1fr;
      gap: 20px;
    }

    .left-sidebar,
    .right-sidebar {
      background-color: #f0f0f0;
      padding: 20px;
      height: 100vh;
      overflow-y: auto;
      overflow-x: hidden;
      text-align: center;
    }

    .left-sidebar ul {
      list-style: none;
      padding-left: 0;
      display: flex;
      flex-direction: column;
    }


    .main-content {
      padding: 20px;
    }

    @media (max-width: 768px) {
      .grid-container {
        grid-template-columns: 1fr;
        display: grid;
        grid-template-columns: 1fr 4fr 1fr;
        gap: 20px;
        max-width: 100%;
        margin: 0 auto;
      }
    }

    body {
      margin: 0;
      padding: 0;
    }

    .button-container {
      text-align: right;
    }
  </style>

</head>

<body>
  <%@include file="/WEB-INF/include/header.jsp" %>
    <div class="grid-container">
      <aside class="left-sidebar">
        <ul>
          <br>
          <li>기업회원</li>
          <br>
          <br>
          <br>
          <li><a href="#">기업정보수정</a></li>
          <br>
          <li><a href="#">채용공고관리</a></li>
          <br>
          <li><a href="#">지원현황</a></li>
          <br>
          <li><a href="#">채용인재 스크랩</a></li>
        </ul>
      </aside>
      <article class="main-content">
        <h2>채용공고 관리</h2>
        <h4><br><span>총 OO건</span></h4>
        <table>
          <tr>
            <th></th>
            <th>번호</th>
            <th>이름</th>
            <th>공고 제목</th>
            <th>수정</th>
            <th>삭제</th>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitwriteform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>${cno}</td>
            <td>${c_company}</td>
            <td>${c_title}</td>
            <td><a href="/mypage/crecruitupdateform">수정</a></td>
            <td><a href="/mypage/delete">삭제</a></td>
          </tr>
        </table>
        <br>
        <div class="button-container">
          <a href="/mypage/crecruitwriteform" 
          	class="cwrite-btn">공고등록</a>
        </div>
      </article>
      <aside class="right-sidebar">ad</aside>
    </div>

    <%@include file="/WEB-INF/include/footer.jsp" %>
</body>

</html>