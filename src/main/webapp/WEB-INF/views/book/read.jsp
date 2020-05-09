<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){		
		$("#remove").click(function(){
			if(confirm("정말로 삭제하시겠습니까?")){
				location.href="${pageContext.request.contextPath }/book/remove?bookno="+${book.bookno};
			}
		})
		
		$("#modify").click(function(){
			location.href="${pageContext.request.contextPath }/book/modify?bookno="+${book.bookno};
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/book/register" style="color:#221000">도서등록</a></li>
		<li><a href="${pageContext.request.contextPath }/book/listPage" style="color:#221000">도서목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12" style="padding:0 160px;">
				<div class="box box-primary">
					<div class="box-body">
						<div class="form-group">
							<label>도서번호</label>
							<input type="text" class="form-control" value="${book.bookno }" readonly>
						</div>
						<div class="form-group">
							<label>도서명</label>
							<input type="text" class="form-control" value="${book.bookname }" readonly>
						</div>
						<div class="form-group">
							<label>저자</label>
							<input type="text" class="form-control" value="${book.author }" readonly>
						</div>
						<div class="form-group">
							<label>출판사</label>
							<input type="text" class="form-control" value="${book.publisher }" readonly>
						</div>
						<div class="form-group">
							<label>가격</label>
							<input type="text" class="form-control" value="${book.price }" readonly>
						</div>
						<div class="form-group">
							<label>페이지</label>
							<input type="text" class="form-control" value="${book.page }" readonly>
						</div>
						<div class="form-group">
							<label>책소개</label>
							<textarea rows="5" cols="30" class="form-control" readonly>${book.bookintro }</textarea>
						</div>
						<div class="form-group">
							<label>목차</label>
							<textarea rows="5" cols="30" class="form-control" readonly>${book.bookindex }</textarea>
						</div>
						<div class="form-group">
							<label>저자소개</label>
							<textarea rows="5" cols="30" class="form-control" readonly>${book.authorintro }</textarea>
						</div>
					</div><br>
					<div class="box-footer" style="text-align:center;">  
						<button type="button" id="modify" class="btn btn-warning">수정</button>
						<button type="button" id="remove" class="btn btn-warning">도서삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>