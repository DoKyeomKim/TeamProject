<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 정보 수정하기</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
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
	justify-content: space-around;
	margin-top: 30px;
}

a{
text-decoration: none;
}
</style>
<body>

	<div id="container">
		<!-- login Box -->
		<div class="login-box">
			<div id="loginBoxTitle">회원정보수정</div>
				<form action="/MyPage/CUpdate" method="POST">
				<input type="hidden" name="c_id" value="${ cl.c_id }" />
				<div class="form-group">
						<label>아이디</label> 
						<input type="text" class="form-control" value="${cl.c_id}" readonly>
				</div>
				
				<div class="form-group">
						<label>비밀번호</label> 
						<input type="password" name="c_passwd"class="form-control" autocomplete="off" required>
				</div>

				<div class="form-group">
						<label>담당자 이름</label> 
						<input type="text" name="c_name"  value="${cl.c_name}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>전화번호</label> 
						<input type="text" name="c_phone" value="${cl.c_phone}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>회사명</label> 
						<input type="text" name="c_company" value="${cl.c_company}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>사업자 등록번호</label> 
						<input type="text" name="c_bcode"  value="${cl.c_bcode}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>E-mail</label> 
						<input type="text" name="c_email" value="${cl.c_email}" class="form-control" required>
				</div>
				
				
				<div id="login-btn-box">
						<input type="submit" id="pupdate" value="수정완료"	class="btn btn-primary">
				
				   <a href="/MyPage/CProfile?c_id=${cl.c_id }" class="btn btn-primary" role="button">목록으로</a>
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