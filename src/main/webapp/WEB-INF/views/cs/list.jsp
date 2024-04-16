<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="UTF-8">
    <title>고객센터</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

	
	<style>
	
body{
	margin: 0 auto;
}
	

	h2 {
	padding-top: 2%;
	text-align: center;
		}



.list-group a:hover {
	background-color: #EDF9FF;
}

a:hover{
	    text-decoration: none;
	
}

.info-box {
	margin: 0 auto;
	padding: 0 2% 2% 2%;
	width: 1300px;
	max-width: none !important;
	text-align: center;
	margin-bottom: 15px;	
}


.info-box table {
    margin: 0 auto; 
    display: table;
    border-collapse: separate; 
    border-spacing: 0 5px;
    width: 1000px;
}



.table-num {
    border: 1px solid #ccc;
    border-right : none;
    width: 60px;
    padding: 1rem;    
}


.table-name {
    border: 1px solid #ccc;
    border-right : none;
    width: 70px;
    padding: 1rem;    
}

.table-title {
 	border: 1px solid #ccc;
    width: calc(100% - 25%);
    height: 5.5rem;
}
.button-container{
	text-align: right;
	margin-right: 10%;
}


	

	</style>	
	
  </head>

<body>
    <%@include file="/WEB-INF/include/header.jsp"%>

                <h2>자주 묻는 게시판</h2>
    <main style="display: flex;">
                <hr/>
                <div class="info-box">
						<table class="resume-table">
							<tr>
								<td class="table-num" style="background-color:#EDF9FF;">번호</td>
								<td class="table-title" style="background-color:#EDF9FF;">제목</td>
							</tr>
						</table>
                    <c:forEach var="cs" items="${ csList }">
                        <table class="resume-table">
                            <tr>
                                <td class="table-num">${cs.sno}</td>
                                <td class="table-title"><a href="/Review/ViewCs?sno=${ cs.sno }">${ cs.title }</a></td>
                            </tr>
                        </table>
                    </c:forEach>
                    <br>
                </div>
    </main>

    <%@include file="/WEB-INF/include/footer.jsp"%>

 </body>
</html>