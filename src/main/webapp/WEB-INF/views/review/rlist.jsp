<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>기업리뷰 게시판</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <style>
        aside {
            float: left;
            margin-right: 2%;
            text-align: center;
            padding-left: 3%;
            padding-top: 3%;
        }

        h2 {
            padding-top: 2%;
            text-align: center;
        }

        .list-group a:hover {
            background-color: #EDF9FF;
        }

        section a:hover {
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
            border-right: none;
            width: 60px;
            padding: 1rem;
        }

        .table-name {
            border: 1px solid #ccc;
            border-right: none;
            width: 60px;
            padding: 1rem;
        }

        .table-title {
            border: 1px solid #ccc;
            width: calc(100% - 25%);
            height: 5.5rem;
        }

        .button-container {
            text-align: right;
            margin-right: 10%;
        }

        .star-rating {
            display: flex;
        }

        .star {

        }
    </style>
</head>

<body>
    <%@include file="/WEB-INF/include/header.jsp"%>
    <main style="display: flex;">
        <aside>
            <nav>
                <div class="list-group">
                    <!-- <a href="/Review/List?comu_id=COMU01" class="list-group-item list-group-item-action">기업리뷰</a> -->
                    <a href="/BoardPaging/ReviewList?comu_id=COMU01&nowpage=1" class="list-group-item list-group-item-action">기업리뷰</a>
                    <!-- <a href="/Review/ListFree?comu_id=COMU02" class="list-group-item list-group-item-action">자유게시판</a> -->
                    <a href="/BoardPaging/FreeList?comu_id=COMU02&nowpage=1" class="list-group-item list-group-item-action">자유게시판</a>
                </div>
            </nav>
        </aside>
        <section>
            <article>
                <h2>기업 리뷰</h2>
                <hr />
                <div class="info-box">
                    <table class="resume-table">
                        <tr>
                            <td class="table-num" style="background-color:#EDF9FF;">no.</td>
                            <td class="table-name" style="background-color:#EDF9FF;">평점</td>
                            <td class="table-title" style="background-color:#EDF9FF;">기업명</td>
                        </tr>
                        <c:forEach var="review" items="${ rresponse.list }">
                            <tr>
                                <td class="table-num">${ review.rno }</td>
                                <td class="table-name" style="font-size: 18px; color: gold; text-shadow: 1px 1px 2px black;">
                                    <script>
                                        function numberToStars(number) {
                                            let stars = '';
                                            for (let i = 0; i < number; i++) {
                                                stars += '★';
                                            }
                                            return stars;
                                        }
                                        document.write(numberToStars(${ review.star }));
                                    </script>
                                </td>
                                <td class="table-title"><a href="/BoardPaging/RView?rno=${ review.rno }&nowpage=${ nowpage }">${ review.name }</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <br>
                    <div class="button-container">
                        <input type="button" class="btn btn-outline-primary" value="글 작성" id="goWrite">
                    </div>
                </div>
            </article>
        </section>
    </main>
    
    <%@include file="/WEB-INF/include/rpaging.jsp" %>
    
    <%@include file="/WEB-INF/include/footer.jsp"%>

    <script>
        const goWriteEl = document.getElementById('goWrite');
        goWriteEl.addEventListener('click', function (e) {
            location.href = '/BoardPaging/WriteForm?comu_id=COMU01&nowpage=${ nowpage }';
        })
    </script>

</body>

</html>
