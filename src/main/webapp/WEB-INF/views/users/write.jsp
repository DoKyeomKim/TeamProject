<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>

</style>
<body>
	<h1 style="text-align: center; padding-top: 100px;">개인 회원가입</h1>
	<form action="" method="post" class="cjoinForm">
	<div style="border: 1px solid skyblue;">
    <div>
    <input type="text"     name="p_id"     placeholder="아이디"      class="pjoinFormid">
    </div>
    <div>
    <input type="password" name="p_passwd" placeholder="비밀번호"     class="pjoinFormpw">
    </div>
    <div>
    <input type="password" name="p_passwd" placeholder="비밀번호확인" class="pjoinFormpw">
    </div>
    <div>
    <input type="text"     name="p_name"   placeholder="이름"         class="pjoinFormname">
    </div>
    <div>
    <input type="text"   name="p_phone"  placeholder="전화번호"       class="pjoinFormphone">
    </div>
    <div>
    <input type="email"    name="p_email"  placeholder="이메일"       class="pjoinFormemail">
    </div>
    
    <hr class="my-4">
    <h4 class="mb-3">보유 기술(선택)</h4>
    <!-- <small>보유한 기술을 선택</small>-->
    <!--<div class="my-resumeForm-skill-box-1 d-flex">-->
    <div class="cjoinFormtech">
    <!-- <div class="me-2"> -->
    <input type="checkbox" class="btn-check" id="btncheck1" name="ctech" value="Java"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck1">Java</label>
                  <!-- </div> -->

                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck2" name="ctech" value="Html"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck2">Html</label>
                  <!-- </div> -->

                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck3" name="ctech" value="Oracle"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck3">Oracle</label>
                  <!-- </div> -->

                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck4" name="ctech" value="Mysql"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck4">Mysql</label>
                  <!-- </div> -->

                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck5" name="ctech" value="Css"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck5">Css</label>
                  <!-- </div> -->

                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck6" name="ctech" value="JavaScript"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck6">JavaScript</label>
                  <!-- </div> -->
                  
                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck6" name="ctech" value="Vscode"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck6">Vscode</label>
                  <!-- </div> -->
                  
                  <!-- <div class="me-2"> -->
                    <input type="checkbox" class="btn-check" id="btncheck6" name="ctech" value="SpringBoot"
                      autocomplete="off">
                    <label class="btn btn-outline-success" for="btncheck6">SpringBoot</label>
                  <!-- </div> -->

                </div>
                <hr class="my-4">
       </div>
       <div>
       <button id="goHome" class="w-100 btn btn-lg" onclick="saveResume()" style="background-color: #7CC98A;color: #fff; font-weight: 200px;" type="button">회원가입</button>
       </div>
   
  <script>
    const goListEl = document.getElementById('goHome');
    goListEl.addEventListener('click', function(e){
    	location.href='/';
    	
    })
  </script>	          
</body>
</html>