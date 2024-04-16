<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 수정</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


<style>
aside {
	float: left;
	margin-right: 2%;
	text-align: center;
	padding-left: 3%;
	padding-top: 5%;
	}
	


</style>
</head>

<body>
<%@include file="/WEB-INF/include/header.jsp" %>	

		<aside>
			<nav>
				<div class="list-group">
	  	<a href="/MyPage/PUpdateForm?p_id=${sessionScope.p_id}" class="list-group-item list-group-item-action">정보수정</a>
	  	<a href="/MyPage/PManage" class="list-group-item list-group-item-action">이력서 관리</a>
	  	<a href="/MyPage/PNow" class="list-group-item list-group-item-action">지원 현황</a>
	  	<a href="#" class="list-group-item list-group-item-action">채용공고 스크랩</a>
				</div>
			</nav>
		</aside>
		
		
		<main  style="display: grid;">
		   <hr>
		
           <div class=" mx-2 pb-4 w-100">
           
                <form action="/MyPage/PResumeUpdate?pno=${psv.pno}" method="post" enctype="multipart/form-data">
                    <div class="border border-tertiary w-70 p-5 rounded">

                        <h1 style="text-align: center; margin : 0 auto;">
                        <input type="text" value="${psv.p_title}" style="width: 700px; text-align: center;" class="p_title" name="p_title" required></h1>


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
                <input type="text" class="form-control" name="p_name" value="${psv.p_name}" required>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">생년월일</span>
                <input type="text" class="form-control" name="p_birth" value="${psv.p_birth}" required>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">연락처</span>
                <input type="text" class="form-control" name="p_phone" value="${psv.p_phone}" required>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">주소</span>
                <input type="text" class="form-control" name="p_address" value="${psv.p_address }" required>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text w-25 justify-content-center" style="background-color: #EDF9FF;">이메일</span>
                <input type="text" class="form-control" name="p_email" value="${psv.p_email}" required>
            </div>
        </div>
    </div>
</div>





                 <div class="container" style="width: 85%;">
                     <div class="row justify-content-center ">
                         <div class="col-md-14 mx-auto">
                             <input type="file" name="file" class="form-control mt-2" onchange="chooseImage(this)" required/>  
                                                                                 
                         </div>
                         
                         
                         
                         
                         <br>

                         <div  style="margin-top:15px;">
                                 <h4>자기소개</h4>
                                 <textarea name="intro" class="w-100" rows="10"
                                     required>${psv.intro}</textarea>
                             </div>
                             <div class="d-flex mt-4 justify-content-center">
                                 <div class="px-2">
                                     <button type="submit" class="btn btn-primary">저장</button>
                                     <a href="/MyPage/PResumeView?pno=${psv.pno }" class="btn btn-primary">취소</a>
                                 </div>
                             </div>
                         </div>

                     </div>
             </form>
         </div>
</main>

<script>
function chooseImage(input) {
    const fileInput = input.files[0];
    const imagePreview = document.getElementById('imagePreview');
    const currentImage = imagePreview.src;

    if (fileInput) {
        const reader = new FileReader();

        reader.onload = function(e) {
            imagePreview.src = e.target.result;
        }
     // 파일을 읽어 데이터 URL로 변환
        reader.readAsDataURL(fileInput); 
    } else {
    	// 파일이 선택되지 않았을 때는 현재 이미지 유지
        imagePreview.src = currentImage; 
    }
}
</script>
        
 <%@include file="/WEB-INF/include/footer.jsp"%>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 
</body>