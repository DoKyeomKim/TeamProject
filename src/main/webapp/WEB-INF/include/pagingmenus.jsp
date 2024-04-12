<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

   <table id="menu">
	  <c:forEach var="menu" items="${ comuList }">
	    <td>
	      <a href="/BoardPaging/ReviewList?comu_id=${ menu.comu_id }&nowpage=${ nowpage }">
	       ${ menu.comu_name }
	      </a> 
	     </td>
	  </c:forEach>
   </table>	  
   
   
   
   
   
   
   
     