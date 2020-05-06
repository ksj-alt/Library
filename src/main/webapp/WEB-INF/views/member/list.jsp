<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
	tbody tr:hover{
		background-color: #F6F6F6;
	}
</style>

<script>
	$(function(){
		$("#modify").click(function(){
			var no = $(this).attr("data-userno");
			location.href="${pageContext.request.contextPath }/member/modify?userno="+no;
		})
		
		$("#remove").click(function(){
			var no = $(this).attr("data-userno");
			if(confirm("정말로 삭제하시겠습니까?")){
				location.href="${pageContext.request.contextPath }/member/remove?userno="+no;
			}
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li class="active"><a href="${pageContext.request.contextPath }/member/list">회원목록</a></li>
	</ul>
	<br>
	<div class="container">
		<table class="table table-condensed" style="width:980px;">
			<thead>
				<tr>
					<th>회원번호</th> 
					<th>성명</th>
					<th>생년월일</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th style="width:120px;"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach var="member" items="${list }">
						<tr>
							<td>${member.userno }</td>
							<td>${member.username }</td>
							<td>${member.birthday }</td>
							<td>${member.phone }</td>
							<td>${member.email }</td>
							<td style="font-size:12px;">
								<button id="modify" data-userno=${member.userno }>수정</button> /
								<button id="remove" data-userno=${member.userno }>삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
	
</section>

<%@ include file="../include/footer.jsp"%>