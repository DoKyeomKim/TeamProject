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
	<form action="/Users/Write" method="POST">
	<table>
	 <tr>
	   <td>아이디</td>
	   <td><input type="text" name="p_id" value="${vo.p_id }" /></td>
	 </tr>
	 <tr>
	   <td>비밀번호</td>
	   <td><input type="text" name="p_passwd" value="${vo.p_passwd}"/></td>
	 </tr>
	 <tr>
	   <td>이름</td>
	   <td><input type="text" name="p_name" value="${vo.p_name }"/></td>
	 </tr>
	 <tr>
	   <td>전화번호</td>
	   <td><input type="text" name="p_phone" value="${p_phone }"/></td>
	 </tr>
	 <tr>
	   <td>email</td>
	   <td><input type="text" name="p_email" value="${p_email }"/></td>
	 </tr>
	 <tr>
	   <td>스킬</td>
	   <td><input type="text" name="skill" value="${skill }"/></td>
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