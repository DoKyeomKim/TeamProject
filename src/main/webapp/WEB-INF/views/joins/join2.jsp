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
	<h1 style="text-align: center; padding-top: 100px;">기업 회원가입</h1>
	<form action="" method="post" class="pjoinForm">
    <div>
    <input type="text"     name="c_id"     placeholder="아이디"      class="cjoinFormid">
    </div>
    <div>
    <input type="password" name="c_passwd" placeholder="비밀번호"     class="cjoinFormpw">
    </div>
    <div>
    <input type="password" name="c_passwd" placeholder="비밀번호확인" class="cjoinFormpw">
    </div>
    <div>
    <input type="text"     name="c_company"   placeholder="회사명"    class="cjoinFormcompany">
    </div>
    <div>
    <input type="number"   name="c_bcode"  placeholder="사업자번호"   class="cjoinFormbcode">
    </div>
    <div>
    <input type="email"    name="c_email"  placeholder="이메일"       class="cjoinFormemail">
    </div>
    <div>
    <input type="number"   name="c_phone"  placeholder="전화번호"     class="cjoinFormphone">
    </div>
    
       <div>
       <button class="w-100 btn btn-lg" onclick="saveResume()" style="background-color: #7CC98A;color: #fff; font-weight: 200px;" type="button">회원가입</button>
       </div>
              
</body>
</html>