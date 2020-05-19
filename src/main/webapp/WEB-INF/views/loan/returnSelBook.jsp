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

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/loan/lending" style="color:#221000">대출승인처리</a></li>
		<li><a href="${pageContext.request.contextPath }/loan/returnbook" style="color:#221000">대출반납처리</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<div class="box-body">
						<select name="searchType" id="searchType">
							<option value="n" ${cri.searchType==null? 'selected':'' }>-----</option>
							<option value="bno" ${cri.searchType=='bno'? 'selected':'' }>도서번호</option>
							<option value="btitle" ${cri.searchType=='btitle'? 'selected':'' }>도서제목</option>
							<option value="author" ${cri.searchType=='author'? 'selected':'' }>저자</option>
							<option value="pub" ${cri.searchType=='pub'? 'selected':'' }>출판사</option>
						</select>
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
						<button id="Search">검색</button>
					</div>
				</div>
				<br>
				<div class="box-body">
					<table class="table table-condensed" style="width:600px; float:left;">
						<tr>
							<th>도서번호</th>
							<th>도서제목</th>
							<th>저자</th>
							<th>출판사</th>
							<th>대출가능여부</th>
							<th>도서선택</th>
						</tr>
						<c:forEach var="book" items="${blist }">
							<tr>
								<td>${book.bookno }</td>
								<td>${book.booktitle }</td>
								<td>${book.author }</td>
								<td>${book.publisher }</td>
								<td style="padding-left:32px;">${book.lend }
								<td><button class="selectBook" style="font-size:12px;">선택</button></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="box-body" style="float:left; margin-left:60px;">
					<div>
						<h4>대출도서상세정보</h4>
						<br>
						<p>
							<label>도서번호 : </label>
							<input type="text" id="bookno" readonly>
						</p>
						<p>
							<label>도서제목 : </label>
							<input type="text" id="booktitle" readonly>
						</p>
						<p>
							<label>저자 : </label>
							<input type="text" id="author" readonly>
						</p>
						<p>
							<label>출판사 : </label>
							<input type="text" id="publisher" readonly>
						</p>
						<p>
							<label>대출가능여부 :</label>
							<input type="text" id="rent" readonly>
						</p>
					</div>
				</div>
				<div class="box-footer" style="text-align:center;">
					<button type="button" id="return" class="btn btn-warning" style="margin-top:20px;">반납하기</button>
					<button type="reset" id="reset" class="btn btn-warning" style="margin-top:20px;">취소</button>
				</div>
				<div class="box-body" style="clear:both;">
					<div class="text-center">
						<ul class="pagination">
							<c:if test="${pageMaker.prev == true }">
								<li><a href="returnSelBook?page=${pageMaker.startPage-1}&searchType=${cri.searchType}&keyword=${cri.keyword}">&laquo;</a></li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<li class="${pageMaker.cri.page == idx ?'active':'' }"><a href="returnSelBook?page=${idx }&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next == true }">
								<li><a href="returnSelBook?page=${pageMaker.endPage+1 }&searchType=${cri.searchType}&keyword=${cri.keyword}">&raquo;</a></li>
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
		var lend = td.eq(4).text();
		
		$('#booktitle').val(booktitle);
		$('#bookno').val(bookno);
		$('#author').val(author);
		$('#publisher').val(publisher);
		$('#lend').val(lend);
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