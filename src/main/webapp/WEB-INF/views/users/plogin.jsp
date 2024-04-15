<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 로그인</title>
<style>
body {
   background-color: #EDF9FF;
   font-size: 0.75rem;
}

#loginBoxTitle {
   color: #EDF9FF;
   font-weight: bold;
   font-size: 1.9rem;
   text-transform: uppercase;
   padding: 5px;
   margin-bottom: 20px;
   background-color: #270a09;
   -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
}

input[type="button"] {
   font-size: 0.75rem;
   padding: 5px 10px;
}

.login-box {
   margin: 150px auto;
   background-color: rgba(255, 255, 255, 1);
   border-radius: 10px;
   padding: 40px 30px;
   border: 5px solid #0e0e0e;
   width: 350px;
   filter: drop-shadow(0px 0px 10px rgba(0, 0, 0, .5));
}

.form-group label {
   font-size: 0.75rem;
   margin: 5px 0;
}

#login-btn-box {
   display: flex;
   align-items: center;
   justify-content: center;
   margin-top: 30px;
}
</style>
</head>
<body>
<head>
<title>로그인</title>
<!-- Bootstrap CSS -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<!-- Customer 스타일 추가 -->
<link rel="stylesheet" href="login.css?v=1234">
</head>
<body style="background-color: #EDF9FF;">
   <div id="container">
      <!-- login Box -->
      <div class="login-box">
         <div id="loginBoxTitle">개인 로그인</div>
         <div class="form-group">
            <form action="/Users/PLogin" method="POST">
               <label>아이디</label> <input type="text" name="p_id"
                  class="form-control">
         </div>
         <div class="form-group">
            <label>비밀번호</label> <input type="password" name="p_passwd"
               class="form-control" value="" autocomplete="off">
         </div>

         <div id="login-btn-box">
            <input type="submit" id="btnLogin" value="로그인"
               class="btn btn-primary">
         </div>
         <div style="text-align: center; margin-top: 10px;">
            <a href="/Users/PWriteForm" style="text-decoration: none;">아직 회원이 아니신가요?</a>
         </div>
         </form>
      </div>
   </div>
   <!-- login Box //-->

   <!-- Bootstrap Bundle with Popper -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
</body>
</html>