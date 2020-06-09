<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section style="text-align:center;">
	<form role="form" action="returnCheck" method="post">
		<br><h4>반납하였습니다.</h4>
		<input type="hidden" name="userno" value="${userno }">
		<input type="hidden" name="bookno" value="${bookno }">
		<br>
		<button type="submit" id="return" class="btn btn-warning">확인</button>
	</form>
</section>

<%@ include file="../include/footer.jsp" %>