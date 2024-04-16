<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재정보 자세히보기</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">



</head>

<body>
<%@include file="/WEB-INF/include/header.jsp" %>	


		
		<main  style="display: grid;">
		   <hr>
		
           <div class=" mx-2 pb-4 w-100">
           
                <form action="/Resumes/List" method="post" enctype="multipart/form-data">
                    <div class="border border-tertiary w-70 p-5 rounded">

                        <h1 style="text-align: center; margin : 0 auto;">
                        <label style="width: 700px; text-align: center;" class="p_title" name="p_title">
                        ${psv.p_title}
                        </label>
                        </h1>


<div class="container" style="width: 85%;">
    <div class="row">
        <!-- 왼쪽에 이미지 -->
        <div class="col-md-4 mt-5">
            <img src="${psv.imagePath}" id="imagePreview"
                style="width:250px; height: 250px;" class="mb-2 border border-tertiary">
        </div>

        <!-- 오른쪽에 입력 필드 -->
        <div class="col-md-8 mt-5">
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">이름</span>
                <label class="form-control" name="p_name">${psv.p_name}</label>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">생년월일</span>
                <label class="form-control" name="p_birth">${psv.p_birth}</label>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">연락처</span>
                <label class="form-control" name="p_phone" >${psv.p_phone}</label>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">주소</span>
                <label class="form-control" name="p_address">${psv.p_address }</label>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">이메일</span>
                <label class="form-control" name="p_email">${psv.p_email}</label> 
            </div>
        </div>
    </div>
</div>





                 <div class="container" style="width: 85%;">
                     <div class="row justify-content-center ">
                         
                         
                         
                         
                         <br>

                         <div  style="margin-top:15px;">
                                 <h4>자기소개</h4>
                                 <textarea name="intro" class="w-100" rows="10"
                                    readonly >${psv.intro}</textarea>
                             </div>
                             <div class="d-flex mt-4 justify-content-center">
                                 <div class="px-2">
                                     <button type="submit" class="btn btn-primary">목록으로</button>
                                 </div>
                             </div>
                         </div>

                     </div>
             </form>
         </div>
</main>

     </div>
        
 <%@include file="/WEB-INF/include/footer.jsp"%>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 
</body>