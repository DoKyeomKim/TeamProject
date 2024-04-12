<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

   <table id="review">
	  <c:forEach var="review" items="${ comuList }">
	    <td>
	      <a href="/Review/List?comu_id=${ review.comu_id }&nowpage=${nowpage}">
	       ${ review.comu_name }
	      </a> 
	     </td>
	  </c:forEach>
   </table>	  
   
   
   
   
   
   
   
     