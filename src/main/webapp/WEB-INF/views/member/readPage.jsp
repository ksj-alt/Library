<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    

<style>
	label{
		margin-right:2px;
	}
	.input{
		border:none;
	}
	.btn{
		width:75px;
		height:30px;
		font-size: 13px;
	}
</style>

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
	<br>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/listPage" style="color:#221000">회원목록</a></li>
	</ul>
	<br>
	<div class="container" style="width:980px;">
		<div class="box-footer" style="text-align: right;">  
			<button type="button" id="modify" class="btn">수정</button>
			<button type="button" id="remove" class="btn">회원삭제</button>
			<button type="button" id="list" class="btn">리스트</button>
		</div>
		<div style="margin:5px; font-size: 18px; margin-bottom:25px;">회원상세정보</div>
			<div class="box-body" style="padding-left:15px;">
				<div class="form-group">
					<label>회원번호 :</label>
					<input type="text" class="input" value="${member.userno }" readonly>
					<label>성명 :</label>
					<input type="text" class="input" value="${member.username }" readonly>
					<label>생년월일 :</label>
					<input type="text" class="input" value="${member.birthday }" readonly>
				</div>
				<div class="form-group">
					<label>전화번호 :</label>
					<input type="text" class="input" value="${member.phone }" readonly>
					<label>이메일 :</label>
					<input type="text" class="input" value="${member.email }" readonly>
				</div>
			</div>
		</div>
		<br><br><br>
		<div class="container" style="width:980px;">
			<div style="margin:5px; font-size: 18px; margin-bottom:25px;">회원대출이력</div>
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
</section>	

<%@ include file="../include/footer.jsp" %>