<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
background-color : #EDF9FF;
}
</style>
</head>

<body>

   <form action="/Users/CLogin" method="POST">
   <table>
       <h2> 기업 로그인 </h2>    
    

    <tr>
      <td>아이디</td>
      <td><input type="text" name="c_id" /></td>
    </tr>
    <tr>
      <td>비밀번호</td>
      <td><input type="password" name="c_passwd" /></td>
    </tr>
    
    <tr>
      <td colspan="2">
       <input type="submit" value="로그인" />
       <a href="/Users/CWriteForm">회원가입</a>
      </td>
    </tr>
   
   </table>   
   </form>   
   

  

</body>
</html>