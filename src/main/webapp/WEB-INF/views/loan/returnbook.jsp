<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<style>
	label{
		width:100px;
	}
	tbody tr:hover{
		background-color: #F6F6F6;
	}
</style>

<script>
	$(function(){
		$("#selectBook").click(function(){
			location.href="${pageContext.request.contextPath }/loan/returnSelBook";
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/loan/lending" style="color:#221000">대출승인처리</a></li>
		<li class="active"><a href="${pageContext.request.contextPath }/loan/returnbook">대출반납처리</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<div class="box-body">
						<select name="searchType" id="searchType">
							<option value="n" ${cri.searchType==null? 'selected':'' }>-----</option>
							<option value="uno" ${cri.searchType=='uno'? 'selected':'' }>회원번호</option>
							<option value="uname" ${cri.searchType=='uname'? 'selected':'' }>회원성명</option>
						</select>
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
						<button id="Search">검색</button>
					</div>
				</div>
				<br>
				<div class="box-body" style="height:500px; float:left;">
					<table class="table table-condensed" style="width:600px; float:left;">
						<tr>
							<th>회원번호</th>
							<th>성명</th>
							<th>생년월일</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>회원선택</th>
						</tr>
						<tbody>
							<c:forEach var="member" items="${mlist }">
								<tr>
									<td>${member.userno }</td>
									<td>${member.username }</td>
									<td>${member.birthday }</td>
									<td>${member.phone }</td>
									<td>${member.email }</td> 
									<td><button class="selectUser" style="font-size:12px;">선택</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div class="box-body" style="float:left; margin-left:70px;">
					<div>
						<h4>대출회원상세정보</h4>
						<br>
						<p>
							<label>성명 : </label>
							<input type="text" id="username" readonly>
						</p>
						<p>
							<label>회원번호 : </label>
							<input type="text" id="userno" readonly>
						</p>
						<p>
							<label>생년월일 : </label>
							<input type="text" id="birthday" readonly>
						</p>
						<p>
							<label>전화번호 : </label>
							<input type="text" id="phone" readonly>
						</p>
						<p>
							<label>이메일 : </label>
							<input type="text" id="email" readonly>
						</p>
					</div>
				</div>
				<br>
				<div class="box-body" style="padding-left:160px; text-align: center; float:left;">
					<button class="btn btn-warning" id="selectBook" style="margin-top:20px;">반납도서 >></button>
				</div>
				<div class="box-body" style="clear:both;">
					<div class="text-center">
						<ul class="pagination">
							<c:if test="${pageMaker.prev == true }">
								<li><a href="returnbook?page=${pageMaker.startPage-1}&searchType=${cri.searchType}&keyword=${cri.keyword}">&laquo;</a></li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<li class="${pageMaker.cri.page == idx ?'active':'' }"><a href="returnbook?page=${idx }&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next == true }">
								<li><a href="returnbook?page=${pageMaker.endPage+1 }&searchType=${cri.searchType}&keyword=${cri.keyword}">&raquo;</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</section>

<script>
	$("#Search").click(function(){
		var searchType=$("#searchType").val();
		var keyword=$("#keywordInput").val();
		location.href="returnbook?searchType="+searchType+"&keyword="+keyword;
	})	
	$(".selectUser").click(function(){
		var btn = $(this);
		var tr = btn.parent().parent();
		var td = tr.children();
		
		var userno = td.eq(0).text();
		var username = td.eq(1).text();
		var birthday = td.eq(2).text();
		var phone = td.eq(3).text();
		var email = td.eq(4).text();
		
		$('#username').val(username);
		$('#userno').val(userno);
		$('#birthday').val(birthday);
		$('#phone').val(phone);
		$('#email').val(email);
	})
</script>

<%@ include file="../include/footer.jsp" %>