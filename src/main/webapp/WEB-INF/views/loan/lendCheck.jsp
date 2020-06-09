<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>

<section style="text-align:center;">
	<form role="form" action="lendCheck" method="post">
		<br><h4>
			대출하였습니다.<br><br>
			반납날짜는  
			<span style="text-decoration: underline;"><c:set var="returnDate" value="<%=new Date(new Date().getTime() + 60*60*24*1000*14) %>"/> 
			<fmt:formatDate value="${returnDate }" pattern="yyyy년 MM월 dd일"/></span> 입니다.</h4>
			  
	 	<input type="hidden" name="userno" value="${userno }">
		<input type="hidden" name="bookno" value="${bookno }">
		
		<br>
		<button type="submit" class="btn btn-warning">확인</button>
	</form>
</section>

<%@ include file="../include/footer.jsp" %>