<h1>피나클 프로젝트 (구인구직 사이트)</h1>

<h1>프로젝트 소개</h1>
"피나클"은 정상, 최고점 또는 가장 높은 단계를 의미합니다. <br>
이는 단순히 높은 위치에 있는 것을 넘어서, 특정 분야나 활동에서 최고의 성취와 성공을 상징합니다.<br><br>
즉 구인구직 사이트를 통해 개인과 기업이 그들의 분야에서 정상에 도달할 수 있도록 지원하는 것을 목표로 하는 프로젝트입니다.


<h2>개발 툴</h2>
<ul>
<li>JDK 17</li>
<li>Oracle SQL DB</li>
<li>MyBatis</li>
<li>Spring Boot 4.22.0</li>
<li>JSP</li>
<li>JavaSript</li>
<li>HTML</li>
<li>CSS</li>
</ul>


<h2>협업 툴</h2>
<li>GitHub</li>
<li>Notion</li>
<li>KaKaoTalk 공지방 커뮤니케이션 (에러사항 및 일정 공유)</li>


<h2>모델링</h2>
<h3>1단계 (완료)</h3>
<ul>
  <li>홈화면</li>
  <li>개인/기업 로그인</li>
  <li>개인/기업 회원가입</li>
  <li>개인/기업 마이페이지</li>
  <li>개인 이력서 CRUD</li>
  <li>기업 채용공고 CRUD</li>
  <li>커뮤니티 : 기업리뷰/자유게시판 CRUD</li>
  <li>고객센터</li>
</ul>

<h3>2단계 기능(예정)</h3>
<ul>
  <li>페이징</li>
  <li>(개인)지원현황</li>
  <li>북마크(스크랩, 스크랩 취소, 스크랩 목록)</li>
  <li>(개인)기업에 지원하기,(기업)지원자 리스트 보기</li>
  </ul>

<h3>3단계 기능(예정)</h3>
<ul>
  <li>로그인 인터셉터/세션 (기능 구현 일부 완료)</li>
  <li>합격/불합격</li>
  <li>아이디 중복체크/저장</li>
  <li>지역,경력,기술스택 매칭/퀵메뉴 구현</li>
</ul>
<br>
<br>

<h2>ER Diagram 설계</h2>


![2](https://github.com/DoKyeomKim/TeamProject/assets/163399297/f4833967-d12e-442f-9d71-30add1e2d09e)
<br>
<br>
<br>


<h2>코드 컨벤션</h2>

Camel Case
<ul>
  <li>메소드명, 변수명 = 첫 단어는 소문자, 그 뒤는 대문자.</li>
  <li>단어와 단어 사이는 붙이는 것을 원칙으로.</li>
  <li>단, 클래스명은 파스칼 표기법.</li>
</ul>
<hr>

데이터베이스 규칙
<ul>
  <li>데이터베이스 테이블과 컬럼명은 대문자로 통일.</li>
  <li>분류가 필요한 컬럼은 접두사에 해당 컬럼의 성질을 나타내는 첫 글자로 구분<br>
    (ex: 테이블명이 CUSER면 컬럼은 C_ID -> 이런식으로.)</li>
<li>단어는 언더바.</li>
</ul>
<hr>

주석 규칙
<ul>
<li>한줄을 "//"로 적고, 그 이상은 "/* */"로 표기</li>
<li>주석 필요 시 위치는 코드 바로 위 기재</li>
</ul>
<hr>

변수명
<ul>
<li>배열이 들어가는 변수면 마지막에 List.</li>
<li>통신이 쓰인 변수는 data.</li>
<li>함수는 동사가 제일 먼저 오고 뒤에 명사가 붙는 형식</li>
<hr>
</ul>

브랜치 전략
<ul>
<li>main --> 실제 올라가는 배포용 Branch</li>
<li>develop - 배포 전 집계 및 병합용 Branch (현재 브랜치 충돌로 인해 "total" 브랜치 이용중</li>
<li>개인 Last Name을 Branch명으로 설정(기능 개발용 Branch ex: 1-kim , 2-park)</li>
<hr>
</ul>

Merge 규칙
<ul>
<li>개인 브랜치로 Push 후 Pull Request 날리기</li>
<li>코드 작성자가 리뷰를 한 후 Merge</li>
</ul>
<br>
<br>
<br>


<h2>전체 시나리오</h2>

[화면 시나리오](https://www.notion.so/e58a21cb824f4e6ea20d485bde79ce58)

<br>
<br>

<h2>Junit 테스트</h2>

![3](https://github.com/DoKyeomKim/TeamProject/assets/163399297/ebfd60d8-56ed-4aec-b8b3-c48b61c03c05)

![4](https://github.com/DoKyeomKim/TeamProject/assets/163399297/83433b1f-062e-4cab-b757-46aba5e03ffd)

