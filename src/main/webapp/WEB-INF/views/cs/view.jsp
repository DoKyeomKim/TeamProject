<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QNA</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <!-- 부트스트랩 CSS 링크 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  	<%@include file="/WEB-INF/include/header.jsp" %>
  	
<div class="container mt-5">
    <h1 class="text-center">게시글 보기</h1>
    
    <div class="row mt-4">
        <div class="col-md-8 offset-md-2">
                <div class="form-group">
                    <label for="title">제목</label>
                    <div class="form-control" >${ svVo.title }</div>
                </div>
                
               
                <div class="form-group">
                    <label for="content">내용</label>
                    <div class="form-control" style="height: 240px; overflow-y: auto;">${ svVo.content }</div>
                </div>
                
<div class="d-flex justify-content-between">
   
    <a href="/Review/ListCs" class="btn btn-outline-primary">목록으로</a>
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