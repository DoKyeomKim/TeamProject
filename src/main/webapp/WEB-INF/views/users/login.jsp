<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/login" method="POST">
	<table>
	 
	 <tr>
	   <td><input type="button" name="개인용" />개인용</td>
	   <td><input type="button" name="기업용" />기업용</td>

	 </tr>
	 <tr>
	   <td>아이디</td>
	   <td><input type="text" name="p_id" /></td>
	 </tr>
	 <tr>
	   <td>비밀번호</td>
	   <td><input type="password" name="p_passwd" /></td>
	 </tr>
	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="로그인" />
	    <a href="/Users/WriteForm">회원가입</a>
	   </td>
	 </tr>
	
	</table>	
	</form>   
	

  

</body>
</html>