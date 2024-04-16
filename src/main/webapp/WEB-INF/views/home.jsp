<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pinacle</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <style>
    
 main{
 padding : 3% 5%;
 margin : 5% 5%;
 }
     
.cResume {
    border: 1px solid #ccc;
    border-radius: 15px;
    margin: 10px;
    padding: 15px 10px;
    text-align: center;
    max-width: 300px;
    height: auto;
    transition: all 0.3s ease;
}

.cResume:hover {
    transform: scale(1.05); /* 호버 효과 시 크기 확대 */
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* 그림자 추가 */
}

.cResume img {
    width: 100%;
    height: 250px;
    margin-bottom: 10px;
}

.cResume .cName, .cResume .title {
    font-size: 14px;
    margin-bottom: 5px;
}
             
    </style>

</head>
<body>

    <%@include file="/WEB-INF/include/header.jsp" %>

     
      <main>
                 
          <!--c: foreach 할듯 -->
<div class="container text-center">
    <c:forEach var="recruit" items="${recruitList}" varStatus="status">
        <c:if test="${status.index % 3 == 0}">
            <div class="row">
        </c:if>

        <div class="col">
            <div class="cResume">
                <input type="hidden" name="cno" value="${recruit.cno}">
                <a href="/Recruits/View?cno=${recruit.cno}">
                    <img src="${recruit.imagePath}" alt="이미지1">
                </a>
                <div class="cName">
                    <a href="/Recruits/View?cno=${recruit.cno}">
                        ${recruit.c_company}
                    </a>
                </div>
                <div class="title">
                    <a href="/Recruits/View?cno=${recruit.cno}">
                        ${recruit.c_title}
                    </a>
                </div>
            </div>
        </div>

        <c:if test="${status.index % 3 == 2 or status.last}">
            </div>
        </c:if>
    </c:forEach>
</div>
   
      </main>

    <%@include file="/WEB-INF/include/footer.jsp" %>


</body>
</html>
