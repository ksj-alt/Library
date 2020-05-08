<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/listPage" style="color:#221000">회원목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-8" style="padding-left:300px;">
				<div class="box box-primary">
					<form role="form" action="modifyPage?userno=${member.userno }&page=${cri.page}" method="post">
						<div class="box-body">
							<div class="form-group">
								<label>회원번호</label>
								<input type="text" name="userno" class="form-control" value="${member.userno }" readonly>
							</div>
							<div class="form-group">
								<label>성명</label>
								<input type="text" name="username" class="form-control" value="${member.username }" readonly>
							</div>
							<div class="form-group">
								<label>생년월일</label>
								<input type="text" name="birthday" class="form-control" value="${member.birthday }" readonly>
							</div>
							<div class="form-group">
								<label>전화번호<span style="color:red;"> * </span></label>
								<input type="text" name="phone" class="form-control" value="${member.phone }" placeholder="ex) 010-0000-0000">
							</div>
							<div class="form-group">
								<label>이메일</label>
								<input type="text" name="email" class="form-control" value="${member.email }" placeholder="ex) test@naver.com">
							</div>
						</div><br>
						<div class="box-footer"  style="text-align:center;">  
							<button type="submit" class="btn btn-warning">수정</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>	

<%@ include file="../include/footer.jsp" %>