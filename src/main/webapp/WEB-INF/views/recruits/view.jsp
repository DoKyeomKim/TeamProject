<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="/css/header.css" />


      <style>
        .title {
          text-align: center;
          font-weight: bold;
        }

        .center {
          text-align: center;
        }

        .update {
          text-align: center;
          margin-bottom: 10px;
        }

        .intro {
          text-align: center;
        }

        table {
          margin: 0 auto;
        }

        input[type="text"] {
          width: 80%;
        }

        .upload-container {
          display: flex;
          align-items: center;
        }

        .upload-container img {
          width: 100px;
          height: 100px;
        }

        .skill {
          text-align: center;
          font-weight: bold;
        }

        .intro {
          font-weight: bold;
        }
        
        .center{
        	display: flex;
        	justify-content: center;
        }
        
        #viewtb {
    	  padding: 20px;
          width: 824px;
          border: 1px solid black;
          border-collapse: collapse;
        }
        #viewtb tr:nth-of-type(1) td:nth-of-type(1) {
			margin-right: 10px;
			width: 100px;
		}
        #viewtb tr:nth-of-type(1) td:nth-of-type(5) {
			margin-right: 10px;
			width: 100px;
		}
		#viewtb tr,
		#viewtb td {
		  border: 1px solid #888;
		  border-collapse: collapse;
		  height: 50px;
		}
        
      </style>
      
      <script>
   		
      </script>
      
</head>
    

<body>

    <%@include file="/WEB-INF/include/header.jsp" %>
		<form action="my" method="POST">
    <h2 class="title">채용공고 상세보기</h2>
    <br><br>

    <table id="viewtb">
      <tr>
        <td rowspan="3"  style="border: 1px solid #888;">
          <!-- <img src="logo.png" alt="사진"> -->
        </td>
        <td>회사명</td>
        <td>${ cVo.c_company }</td>
        <td>모집인원</td>
        <td>${ cVo.getman }</td>
      </tr>
      
      <tr>
	    <td>제목</td>
	    <td>${ cVo.c_title }</td>
	    <td>모집기간</td>
        <td>${ cVo.c_ddate }</td>    
      </tr>
      
      <tr>
        <td>채용분야</td>
        <td>${ cVo.skill }</td>
      </tr>
      
      <tr>
        <td><input type="file"></td>
        <td>근무지역</td>
        <td>${ cVo.c_address }</td>
      </tr>
      
    </table>
    
    <br>
    
    <div class="intro">
      <h3>채용정보</h3>
      <textarea rows="15" cols="80" maxlength="1000" readonly>
        접수기간 : 상시모집
        내용 : ${ cVo.c_info }
      </textarea>
    </div>
    <br>
    <div class="center">
    <a href="/Recruits/List">목록으로</a>&nbsp;&nbsp;&nbsp;&nbsp;
		
		</div>
		
  
  <%@include file="/WEB-INF/include/footer.jsp" %>

</body>
  
</html>