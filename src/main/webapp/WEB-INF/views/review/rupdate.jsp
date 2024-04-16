<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업리뷰 수정</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <!-- 부트스트랩 CSS 링크 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <style>
        #rmain table {
            border: 1px solid black;
            width: 70%;
            margin: 50px auto;
            padding: 10px 50px;
        }

        #rmain table tr {
            border: 1px solid black;
            text-align: center;
        }

        #rmain table tr td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        td:nth-of-type(1) {
            width: 100px;
        }

        td:nth-of-type(2) {
            width: 200px;
        }

        td:nth-of-type(3) {
            width: 100px;
        }

        td:nth-of-type(4) {
            width: 200px;
        }

        textarea {
            height: 250px;
            width: 100%;
        }

        .star-rating {
            display: flex;
        }

        .star {
            appearance: none;
            padding: 1px;
        }

        .star::after {
            content: '☆';
            color: hsl(60, 80%, 45%);
            font-size: 50px;
        }

        .star:hover::after,
        .star:has(~ .star:hover)::after,
        .star:checked::after,
        .star:has(~ .star:checked)::after {
            content: '★';
        }

        .star:hover ~ .star::after {
            content: '☆';
        }
    </style>
</head>

<body>
    <%@include file="/WEB-INF/include/header.jsp" %>

    <div class="container mt-5">
        <h1 class="text-center">기업리뷰 등록</h1>

        <div class="row mt-4">
            <div class="col-md-8 offset-md-2">
                <form action="/BoardPaging/RUpdate" method="POST">
                    <input type="hidden" name="rno" value="${ reviewVo.rno }">
                    <input type="hidden" name="nowpage" value="${ nowpage }">
 
                    
                    <div class="form-group">
                        <label for="name">기업명</label>
                        <input type="text" class="form-control" id="name" name="name" value="${reviewVo.name}">
                    </div>
                    
                    <div class="form-group star-rating">
                        <label>평점</label>
                        <input type="radio" name="star" class="star" value="1">
                        <input type="radio" name="star" class="star" value="2">
                        <input type="radio" name="star" class="star" value="3">
                        <input type="radio" name="star" class="star" value="4">
                        <input type="radio" name="star" class="star" value="5">
                    </div>

                    <div class="form-group">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" id="title" name="title" value="${reviewVo.title}">
                    </div>
                    

                    <div class="form-group">
                        <label for="content">내용</label>
                        <textarea class="form-control" id="content" name="content" rows="15" style="resize: none;">${reviewVo.content}</textarea>
                    </div>



                    <div style="text-align:center;">
                        <button type="submit" class="btn btn-primary">수정완료</button>
                        <a href="/BoardPaging/ReviewList?comu_id=COMU01&nowpage=${ nowpage }" class="btn btn-primary">목록</a>
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

</html>