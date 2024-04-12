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
      
</head>
    

<body>

    <%@include file="/WEB-INF/include/header.jsp" %>
		<form action="my" method="POST">
    <h2 class="title">채용공고 상세보기</h2>
    <br><br>
    <script>
    function showApplyModal() {
        fetch("/MyPage/PManage")
        .then(response => {
            if (!response.ok) {
                throw new Error('이력서 목록을 불러오는 데 실패했습니다.');
            }
            return response.json(); // JSON 파싱
        })
        .then(resumes => {
            var resumeList = document.getElementById('resumeList');
            resumeList.innerHTML = ''; // 목록 초기화
            
            if (resumes.length > 0) {
                resumes.forEach(function(resume) {
                    var div = document.createElement('div');
                    div.innerHTML = '<input type="radio" name="resume" value="' + resume.id + '">' + resume.title;
                    resumeList.appendChild(div);
                });
            } else {
                resumeList.innerHTML = '등록된 이력서가 없습니다.';
            }
            
            document.getElementById('applyModal').style.display = 'block';
        })
        .catch(error => {
            alert(error.message);
        });
    }

    function submitApplication() {
        var selectedResume = document.querySelector('input[name="resume"]:checked').value;
        // 선택된 이력서 ID와 함께 지원 정보를 서버로 전송하는 로직 구현
        alert("이력서 ID " + selectedResume + "로 지원하셨습니다."); // 예시
        // 이 부분에 실제 서버로 데이터를 전송하는 코드 추가
        
        // 예제 코드
        // fetch("/apply", {
        //     method: "POST",
        //     headers: {
        //         "Content-Type": "application/json",
        //     },
        //     body: JSON.stringify({
        //         resumeId: selectedResume,
        //         // 기타 지원에 필요한 데이터
        //     }),
        // })
        // .then(response => {
        //     if (!response.ok) {
        //         throw new Error('지원 실패');
        //     }
        //     return response.json();
        // })
        // .then(data => {
        //     console.log(data); // 성공 응답 처리
        // })
        // .catch(error => {
        //     console.error('지원 중 에러 발생:', error);
        // });
    }
</script> 

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
    <button type="submit">지원하기</button>
		</div>
		
		<!-- 이력서 선택 모달 -->
		<div id="applyModal" style="display:none;">
			<h3>이력서 선택</h3>
			<div id="resumeList">
			
			</div>
			<button type="button" onclick="submitApplication()">제출</button>
		</div>
		</form>
    <!-- <div class="update">
      <a href="/Mypage/crecruitupdateform">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="/Mypage/cmanage">삭제</a>
    </div> -->
  
  <%@include file="/WEB-INF/include/footer.jsp" %>

</body>
  
</html>