<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h2>회원정보 수정</h2>
	<form action="/MyPage/CUpdate" method="POST">
	<input type="hidden" name="c_id" value="${ cl.c_id }" />
	<table>
	 <%-- <tr>
	   <td>아이디</td>
	   <td><input type="text" name="c_id" value="${ cl.c_id }" /></td>
	 </tr> --%>
	 <tr>
	   <td>비밀번호</td>
	   <td><input type="password" name="c_passwd" value="${ cl.c_passwd }"/></td>
	 </tr>
	 <tr>
	   <td>이름</td>
	   <td><input type="text" name="c_name" value="${ cl.c_name }"/></td>
	 </tr>
	 <tr>
	   <td>전화번호</td>
	   <td><input type="text" name="c_phone" value="${ cl.c_phone }"/></td>
	 </tr>
	 <tr>
	   <td>회사명</td>
	   <td><input type="text" name="c_company" value="${ cl.c_company }"/></td>
	 </tr>
	 <tr>
	   <td>사업자등록번호</td>
	   <td><input type="text" name="c_bcode" value="${ cl.c_bcode }"/></td>
	 </tr>
	 <tr>
	   <td>email</td>
	   <td><input type="text" name="c_email" value="${ cl.c_email }"/></td>
	 </tr>

	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="수정완료" />
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