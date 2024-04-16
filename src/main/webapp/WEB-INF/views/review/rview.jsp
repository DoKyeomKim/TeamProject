<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업 리뷰</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  	<%@include file="/WEB-INF/include/header.jsp" %>
  	
<div class="container mt-5">
    <h1 class="text-center">리뷰글 보기</h1>
    
    <div class="row mt-4">
        <div class="col-md-8 offset-md-2">
            <form action="/BoardPaging/RUpdateForm?rno=${ reviewVo.rno }&nowpage=${ nowpage }" method="post">
             <input type="hidden" name="comu_id" value="${ comu_id }">
              <input type="hidden" name="rno" value="${ reviewVo.rno }">
                
                <div class="form-group">
                    <label for="name">기업명</label>
                    <div class="form-control" >${ reviewVo.name }</div>
                </div>
                
                <div class="form-group">
                    <label for="star">평점</label>
                    <div id="starRating" style="font-size: 40px; color: gold; text-shadow: 1px 1px 2px black;"></div>
                </div>
                
                <div class="form-group">
                    <label for="title">제목</label>
                    <div class="form-control" >${ reviewVo.title }</div>
                </div>
                
                
                <div class="form-group">
                    <label for="content">내용</label>
                    <div class="form-control" style="height: 240px; overflow-y: auto;">${ reviewVo.content }</div>
                </div>
                
<div class="d-flex justify-content-between">
    <div>
        <button type="submit" class="btn btn-primary">수정</button>
        <a href="/BoardPaging/RDelete?rno=${ reviewVo.rno }&nowpage=${ nowpage }" class="btn btn-primary">삭제</a>
    </div>
    <a href="/BoardPaging/ReviewList?comu_id=COMU01&nowpage=${ nowpage }" class="btn btn-outline-primary">목록으로</a>
</div>
            </form>
        </div>
    </div>
</div>

    <%@include file="/WEB-INF/include/footer.jsp" %>
    
<script>
    function numberToStars(number) {
        let stars = '';
        for (let i = 0; i < number; i++) {
            stars += '★';
        }
        return stars;
    }
    
    const starRating = document.getElementById('starRating');
    starRating.innerHTML = numberToStars(${ reviewVo.star });
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>