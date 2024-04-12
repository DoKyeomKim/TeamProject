<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
  
  <c:set  var="comu_id"            value="${ comu_id           }" /> 
  <c:set  var="startnum"           value="${ searchVo.pagination.startPage         }" /> 
  <c:set  var="endnum"             value="${ searchVo.pagination.endPage           }" /> 
  <c:set  var="totalpagecount"     value="${ searchVo.pagination.totalPageCount  }" /> 
 
  <div id="paging" style="margin: 20px 0px; border:0px solid black;">
    <table style="width:100%;height:25px;text-align:center"  >
     <tr>
       <td style="width:100%;height:25px;text-align:center" >
     
     <!-- 처음/ 이전 -->     
     <c:if test="${ startnum gt 1 }">
       <a href="/ReviewBoardPaging/List?comu_id=${ comu_id }&nowpage=1">⏮</a>
       <a href="/ReviewBoardPaging/List?comu_id=${ comu_id }&nowpage=${ startnum - 1 }">
       ⏪
       </a>
     </c:if>
     
     <!-- 1 2 3 4 5 6 [7] 8 9 10  -->
     <c:forEach  var="pagenum"  begin="${startnum}"  end="${endnum}"  step="1">
        <a href="/ReviewBoardPaging/List?comu_id=${ comu_id }&nowpage=${ pagenum }">
        ${ pagenum }
        </a>&nbsp;&nbsp;     
     </c:forEach>    
     
     <!-- 다음 / 마지막 -->
     <c:if test="${ totalpagecount ne endnum }">
       <a href="/ReviewBoardPaging/List?comu_id=${ comu_id }&nowpage=${ endnum + 1 }">
       ⏩
       </a>
       <a href="/ReviewBoardPaging/List?comu_id=${ comu_id }&nowpage=${ totalpagecount }">⏭</a>
     </c:if>    
     
      </td>
     </tr>    
    </table>   
  </div>
  
  
  
  
  
  
  
  
  