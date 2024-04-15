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
<h2>회원가입</h2>
	<form action="/Users/CWrite" method="POST">
	<table>
	 <tr>
	   <td>아이디</td>
	   <td><input type="text" name="c_id" value="${c_id}" /></td>
	 </tr>
	 <tr>
	   <td>비밀번호</td>
	   <td><input type="text" name="c_passwd" value="${c_passwd}"/></td>
	 </tr>
	 <tr>
	   <td>이름</td>
	   <td><input type="text" name="c_name" value="${c_name}"/></td>
	 </tr>
	 <tr>
	   <td>전화번호</td>
	   <td><input type="text" name="c_phone" value="${c_phone}"/></td>
	 </tr>
	 <tr>
	   <td>회사명</td>
	   <td><input type="text" name="c_company" value="${c_company}"/></td>
	 </tr>
	 <tr>
	   <td>사업자등록번호</td>
	   <td><input type="text" name="c_bcode" value="${c_bcode}"/></td>
	 </tr>
	 <tr>
	   <td>이메일</td>
	   <td><input type="text" name="c_email" value="${c_email}"/></td>
	 </tr>

	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="회원가입하기" />
	    <input type="button" value="홈으로" id="goList" />
	   </td>
	 </tr>
	
	</table>	
	</form>   
	
  <script>
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/';
  	})
  
  </script>
</body>
</html>