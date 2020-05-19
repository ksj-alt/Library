<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){		
		$("#list").click(function(){
			location.href="${pageContext.request.contextPath}/member/listPage?page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
		})
		$("#remove").click(function(){
			if(confirm("정말로 삭제하시겠습니까?")){
				location.href="${pageContext.request.contextPath }/member/removePage?userno=${member.userno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			}
		})
		$("#modify").click(function(){
			location.href="${pageContext.request.contextPath }/member/modifyPage?userno=${member.userno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/listPage" style="color:#221000">회원목록</a></li>
	</ul>
	<br>
	<div class="container" style="width:600px; float:left;">
	<div style="margin:5px; font-size: 18px; margin-bottom:10px;">회원대출이력</div>
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>도서번호</th> 
					<th>도서제목</th>
					<th>대출날짜</th>
					<th>반납날짜</th>
					<th>대출상태</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach var="loan" items="${list }">
						<tr>
							<td>${loan.bookno }</td>
							<td>${loan.booktitle }</td>
							<td><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${loan.lenddate }"/></td>
							<td><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${loan.returndate }"/></td>
							<td>${loan.status }</td>
						</tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="content">
		<div class="row">
			<div class="col-sm-4">
				<div class="box box-primary">
					<div style="margin:5px; font-size: 18px; margin-bottom:15px;">회원상세정보</div>
					<div class="box-body" style="padding-left:15px;">
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
						<br>
						<div class="box-footer"  style="text-align:center;">  
							<button type="button" id="modify" class="btn btn-warning">수정</button>
							<button type="button" id="remove" class="btn btn-warning">회원삭제</button>
							<button type="button" id="list" class="btn btn-warning">리스트</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <div class="box-body" style="margin: 0 auto;">
		<div>
			<h4>회원상세정보</h4>
			<br>
			<p>
				<label>회원번호 : </label>
				<input type="text" id="userno" value="${member.userno }" readonly>
				<label>회원성명 : </label>
				<input type="text" id="username" value="${member.username }" readonly>
			</p>
			<p>
				<label>생년월일 : </label>
				<input type="text" id="birthday" value="${member.birthday }" readonly>
				<label>전화번호 : </label>
				<input type="text" id="phone" value="${member.phone }" readonly>
			</p>
			<p>
				<label>  이메일 :</label>
				<input type="text" id="email" value="${member.email }" readonly>
			</p>
		</div>
	</div> --%>	
</section>	

<%@ include file="../include/footer.jsp" %>