<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>
       /* Header부분 */    
        body {
            margin: 0;
            padding: 0;
        }
        
        header {
            display: grid;
            grid-template-columns: auto 1fr auto;
            background-color: black;
            color: #fff;
            padding: 50px 50px;
            align-items: center;
        }
        header img {
            max-width: 100%;
            height: auto;
        }
        .logo{
           margin-left : 30px;
        }
                 
      .search {
          display: flex;
          align-items: center;
          justify-content: flex-start;
      }
      
      .search input[type="text"] {
          padding: 19px;  
          margin-left: -150px;
          flex-grow: 1.9; 
      }
      
      .search button {
          padding: 19px 25px;  
          background-color: #007BFF;
          color: white;
          border: none;
          cursor: pointer;
      }
         
         .userLogin, .menuList {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            margin-right: 20px;
        }
        
        .menuList {
           margin-top: 50px;

        }
        
        .userLogin a, .menuList a {
            margin-left: 15px; 
            color: white;
            text-decoration: none;
        }
        
        .menuList a {
          display: flex;
          justify-content: center;
          align-items: center;
          text-align: center;
          padding: 15px; 
          font-size: 18px; 
          text-decoration: none;
          border: 1px solid #ccc;
          border-radius: 5px;
          }
         

      
      /*퀵서치*/
      .quickSearch {
          display: flex;
          justify-content: center;
          margin: 20px;
         margin-top : 100px;
          
      }
      
      .quickSearch form {
           display: flex;
      }
      

      
      .quickSearch select {
          margin-right: 30px; 
          padding: 15px;      
          width: 150px;      
      }
      
      
      .quickSearchBtn{
          padding: 10px 15px;
         
          }
          
      /* main 부분*/    
      main {
           display: grid;
           grid-template-columns: repeat(3, 1fr);
           gap: 10px;
         padding: 200px 500px;
       }
   
       .cResume {
           border: 1px solid #ccc;
           margin : 10px;
           padding: 25px 15px;
           text-align: center;

       }
   
       .cResume img {
           max-width: 100%;
           height: auto;
           margin-bottom: 50px;
       }
   
       .cResume .cName, .cResume .title {
           font-size: 16px;
           margin-bottom: 5px;
       }
             
    </style>

</head>
<body>
   <!-- 헤더 -->
   <header>
      <div class="logo">
         <a href="/"><img src="/img/logo.png" alt="로고"></a>
      </div>

      <div class="search">
         <form action="#" method="get">
            <input type="text" name="q" placeholder="검색어를 입력하세요">
            <button type="submit">검색</button>
         </form>
      </div>

      <div class="userLogin">
         <a href=""><img src="user-icon.png" alt="사용자 아이콘"></a><a href="/loginForm">로그인</a>
      </div>
      <div class="menuList">
         <a href="#">채용정보</a><a href="#">인재정보</a><a href="#">커뮤니티</a>
      </div>
   </header>


      <div class="quickSearch">
         <form action="/#" method="get">
            <select>
               <option>지역</option>
               <option>서울</option>
               <option>부산</option>
               <option>울산</option>
            </select>

            <!--c: foreach 할듯 -->
            <select>
               <option>기술스택</option>
               <option>java</option>
               <option>html</option>
               <option>css</option>
            </select> 
            <select>
               <option>경력</option>
               <option>신입</option>
               <option>1~3년</option>
               <option>3~5년</option>
            </select>
            
            <button type="submit" class="quickSearchBtn">검색</button>
         </form>
      </div>


      
      <main>
                 
          <!--c: foreach 할듯 -->
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
          <div class="cResume">
              <a href=""><img src="" alt="이미지1"></a>
              <div class="cName"><a href="">회사명1</a></div>
              <div class="title"><a href="">제목1</a></div>
          </div>
   
      </main>


<footer style="background-color: #ccc; text-align : center;  color: #333; padding: 20px;">
       <div><a href="">고객센터</a></div>
         <div>Tel: 02-1234-5678 / Fax: 02-1234-5679</div>
        <div>Email: green1@gmail.com</div>
       <div>주소: 서울시 강남구 예시로로 1234</div>
</footer>



</body>
</html>