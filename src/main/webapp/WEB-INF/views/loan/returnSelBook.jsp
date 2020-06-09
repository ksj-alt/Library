<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<style>
	label{
		width:100px;
	}
	.input{
		margin-right:10px;
		border:none;
	}
</style>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/loan/lending" style="color:#221000">도서대출처리</a></li>
		<li><a href="${pageContext.request.contextPath }/loan/returnbook" style="color:#221000">도서반납처리</a></li>
	</ul>
	<br>
	<div class="container" style="width:980px;">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
				<div class="box-body">
					<br>
					<div style="margin:5px; font-size: 18px; margin-bottom:25px; margin-top:15px;">반납도서목록</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>도서번호</th>
								<th>도서제목</th>
								<th>저자</th>
								<th>출판사</th>
								<th>대출날짜</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="loan" items="${list }">
								<tr>
									<td>${loan.bookno }</td>
									<td>${loan.booktitle }</td>
									<td>${loan.author }</td>
									<td>${loan.publisher }</td>
									<td><fmt:formatDate pattern="yyyy.MM.dd" value="${loan.lenddate }"/></td>
									<td><button class="selectBook" style="font-size:12px;">도서반납</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<br><br>
				<div class="box-body">
					<div>
						<div style="margin:5px; font-size: 18px; margin-bottom:25px;">도서상세정보</div>
						<div style="padding-left:15px;">
							<p>
								<label>도서번호 : </label>
								<input type="text" id="bookno" class="input" readonly>
								<label>도서제목 : </label>
								<input type="text" id="booktitle" class="input" style="width:300px;" readonly>
							</p>
							<p>
								<label>저자 : </label>
								<input type="text" id="author" class="input" readonly>
								<label>출판사 : </label>
								<input type="text" id="publisher" class="input" readonly>
							</p>
						</div>
					</div>
				</div>
				<br>
				<div class="box-footer" style="text-align:center; padding-top:55px; clear:both;">
					<button type="button" id="return" class="btn btn-primary">반납하기</button>
					<button type="reset" id="reset" class="btn btn-primary">회원선택</button>
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
		location.href="returnSelBook?searchType="+searchType+"&keyword="+keyword;
	})
	$(".selectBook").click(function(){
		var btn = $(this);
		var tr = btn.parent().parent();
		var td = tr.children();
		
		var bookno = td.eq(0).text();
		var booktitle = td.eq(1).text();
		var author = td.eq(2).text();
		var publisher = td.eq(3).text();
		
		$('#booktitle').val(booktitle);
		$('#bookno').val(bookno);
		$('#author').val(author);
		$('#publisher').val(publisher);
	})
	$("#reset").click(function(){
		location.href="${pageContext.request.contextPath }/loan/returnbook";
	})
	$("#return").click(function(){
		var bookno = $("#bookno").val();
		location.href="${pageContext.request.contextPath}/loan/returnCheck?userno=${userno}&bookno="+bookno;
	})
</script>

<%@ include file="../include/footer.jsp" %>