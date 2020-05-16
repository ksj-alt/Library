<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section>
	<form role="form" action="lendCheck" method="post">
		
		<h3>대출하였습니다.</h3>
		<input type="hidden" name="userno" value="${userno }">
		<input type="hidden" name="bookno" value="${bookno }">
		<button type="submit" class="btn btn-warning">확인</button>
	</form>
</section>


<%@ include file="../include/footer.jsp" %>