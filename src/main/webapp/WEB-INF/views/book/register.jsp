<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${pageContext.request.contextPath }/book/register">도서등록</a></li>
		<li><a href="${pageContext.request.contextPath }/book/listPage" style="color:#221000">도서목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12" style="padding:0 160px;">
				<div class="box box-primary">
					<form role="form" action="register" method="post">
						<div class="box-body">
							<div class="form-group">
								<label>도서명<span style="color:red;"> * </span></label>
								<input type="text" name="bookname" class="form-control" placeholder="ex) 내 치즈는 어디에서 왔을까?">
							</div>
							<div class="form-group">
								<label>저자<span style="color:red;"> * </span></label>
								<input type="text" name="author" class="form-control" placeholder="ex) 스펜서 존슨 지음 | 공경희 옮김">
							</div>
							<div class="form-group">
								<label>출판사<span style="color:red;"> * </span></label>
								<input type="text" name="publisher" class="form-control" placeholder="ex) 인플루엔셜">
							</div>
							<div class="form-group">
								<label>가격</label>
								<input type="text" name="price" class="form-control" placeholder="ex) 13800">
							</div>
							<div class="form-group">
								<label>페이지</label>
								<input type="text" name="page" class="form-control" placeholder="ex) 147p">
							</div>
							<div class="form-group">
								<label>책소개</label>
								<textarea rows="5" cols="30" name="bookintro" placeholder="Enter Content" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>목차</label>
								<textarea rows="5" cols="30" name="bookindex" placeholder="Enter Content" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>저자소개</label>
								<textarea rows="5" cols="30" name="authorintro" placeholder="Enter Content" class="form-control"></textarea>
							</div>
						</div><br>
						<div class="box-footer" style="text-align:center;">  
							<button type="submit" class="btn btn-warning">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>