<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section>
	<form role="form" action="returnCheck" method="post">
		<h3>반납하였습니다.</h3>
		<input type="hidden" name="userno" value="${userno }">
		<input type="hidden" name="bookno" value="${bookno }">
		<input type="hidden" name="returndate">
		<button type="submit" id="return" class="btn btn-warning">확인</button>
	</form>
</section>

<%@ include file="../include/footer.jsp" %>