<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
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
				<form action="/MyPage/PUpdate" method="POST">
				<div class="form-group">
						<label>아이디</label> 
						<input type="text" name="p_id" class="form-control" value="${vo.p_id}" readonly>
				</div>
				
				<div class="form-group">
						<label>비밀번호</label> 
						<input type="password" name="p_passwd"class="form-control" autocomplete="off" required>
				</div>

				<div class="form-group">
						<label>이름</label> 
						<input type="text" name="p_name"  value="${vo.p_name}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>전화번호</label> 
						<input type="text" name="p_phone" value="${vo.p_phone}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>E-mail</label> 
						<input type="text" name="p_email" value="${vo.p_email}" class="form-control" required>
				</div>
				<div class="form-group">
						<label>스킬</label> 
						<input type="text" name="skill"  value="${vo.skill}" class="form-control">
				</div>
				
				
				<div id="login-btn-box">
						<input type="submit" id="pupdate" value="수정완료"	class="btn btn-primary">
				
				   <a href="/MyPage/PProfile?p_id=${vo.p_id }" class="btn btn-primary" role="button">목록으로</a>
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