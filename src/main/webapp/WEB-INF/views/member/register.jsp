<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
  

<section>
	<br>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${pageContext.request.contextPath }/member/register">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/listPage" style="color:#221000">회원목록</a></li>
	</ul>
	<br>
	<div class="content" style="width:300px; margin:0 auto;">
		<div class="row">
				<div class="box box-primary">
					<form role="form" action="register" method="post" enctype="multipart/form-data">
						<div class="box-body">
							<div class="form-group">
								<label>성명<span style="color:red;"> * </span></label>
								<input type="text" name="username" class="form-control" placeholder="ex) 홍길동">
							</div>
							<div class="form-group">
								<label>생년월일<span style="color:red;"> * </span></label>
								<input type="text" name="birthday" class="form-control" placeholder="ex) 20200504">
							</div>
							<div class="form-group">
								<label>전화번호<span style="color:red;"> * </span></label>
								<input type="text" name="phone" class="form-control" placeholder="ex) 010-0000-0000">
							</div>
							<div class="form-group">
								<label>이메일</label>
								<input type="text" name="email" class="form-control" placeholder="ex) test@naver.com">
							</div>
						</div>
						<div class="box-footer"  style="text-align:center;">  
							<br><br><button type="submit" class="btn btn-default">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>

</section>

<%@ include file="../include/footer.jsp" %>