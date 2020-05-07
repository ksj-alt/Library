<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){		
		$("#remove").click(function(){
			if(confirm("정말로 삭제하시겠습니까?")){
				location.href="${pageContext.request.contextPath }/member/remove?userno="+${member.userno};
			}
		})
		
		$("#modify").click(function(){
			location.href="${pageContext.request.contextPath }/member/modify?userno="+${member.userno};
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/list" style="color:#221000">회원목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-8" style="padding-left:300px;">
				<div class="box box-primary">
					<div class="box-body">
						<div class="form-group">
							<label>회원번호</label>
							<input type="text" class="form-control" value="${member.userno }" readonly>
						</div>
						<div class="form-group">
							<label>성명</label>
							<input type="text" class="form-control" value="${member.username }" readonly>
						</div>
						<div class="form-group">
							<label>생년월일</label>
							<input type="text" class="form-control" value="${member.birthday }" readonly>
						</div>
						<div class="form-group">
							<label>전화번호</label>
							<input type="text" class="form-control" value="${member.phone }" readonly>
						</div>
						<div class="form-group">
							<label>이메일</label>
							<input type="text" class="form-control" value="${member.email }" readonly>
						</div>
					</div><br>
					<div class="box-footer"  style="text-align:center;">  
						<button type="button" id="modify" class="btn btn-warning">수정</button>
						<button type="button" id="remove" class="btn btn-warning">회원삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>	

<%@ include file="../include/footer.jsp" %>