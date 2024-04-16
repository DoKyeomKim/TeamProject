<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 수정</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <!-- 부트스트랩 CSS 링크 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  	<%@include file="/WEB-INF/include/header.jsp" %>
  	
<div class="container mt-5">
    <h1 class="text-center">자유게시판 글수정</h1>
    
    <div class="row mt-4">
        <div class="col-md-8 offset-md-2">
            <form action="/BoardPaging/FUpdate" method="post">
             <input type="hidden" name="comu_id" value="${ comu_id }">
             <input type="hidden" name="fno" value="${ freeVo.fno }">
             <input type="hidden" name="nowpage" value="${ nowpage }">
             
                <div class="form-group">
                    <label for="title">제목</label>
                    <input type="text" class="form-control" id="title" name="title" value="${ freeVo.title }" required>
                </div>
                
                <div class="form-group">
                    <label for="name">작성자</label>
                    <input type="text" class="form-control" id="name" name="name" value="${ freeVo.name }" required>
                </div>
                
                <div class="form-group">
                    <label for="content">내용</label>
                    <textarea class="form-control" id="content" name="content" rows="15" wrap="soft" style="resize: none;"required>${ freeVo.content }</textarea>
                </div>
                
                <div style="text-align:center;">
                <button type="submit" class="btn btn-primary">수정하기</button>
                <a href="/BoardPaging/FreeList?comu_id=COMU02$nowpage={ nowpage }" class="btn btn-primary">목록으로</a>
                </div>
            </form>
        </div>
    </div>
</div>

    <%@include file="/WEB-INF/include/footer.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>