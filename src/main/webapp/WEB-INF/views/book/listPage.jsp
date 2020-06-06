<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/book/register" style="color:#221000">도서등록</a></li>
		<li class="active"><a href="${pageContext.request.contextPath }/book/listPage">도서목록</a></li>
	</ul>
	<br>
	<div class="box-body" style="text-align:right; margin-right:15px; margin-top:8px;">
		<select name="searchType" id="searchType">
			<option value="n" ${cri.searchType==null? 'selected':'' }>-----</option>
			<option value="bno" ${cri.searchType=='bno'? 'selected':'' }>도서번호</option>
			<option value="btitle" ${cri.searchType=='btitle'? 'selected':'' }>도서제목</option>
			<option value="author" ${cri.searchType=='author'? 'selected':'' }>저자</option>
			<option value="pub" ${cri.searchType=='pub'? 'selected':'' }>출판사</option>
		</select>
		<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
		<button id="btnSearch">검색</button>
	</div>
	<br>
	<div class="container">
		<table class="table table-hover" style="width:980px;">
			<thead>
				<tr>
					<th>번호</th> 
					<th>도서명</th>
					<th>저자</th>
					<th>출판사</th>
					<th>대출가능여부</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach var="book" items="${list }">
						<tr>
							<td>${book.bookno }</td>
							<td><a href="${pageContext.request.contextPath }/book/readPage?bookno=${book.bookno}
											&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}" style="color:#353535">${book.booktitle }</a></td>
							<td>${book.author }</td>
							<td>${book.publisher }</td>
							<td style="padding-left:32px;">${book.lend }</td>
							<td><button style="font-size:12px;" onClick="${pageContext.request.contextPath }/book/readPage?bookno=${book.bookno}
											&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">상세보기</button></td>
						</tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
	<br>
	<div class="box-footer">
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev == true }">
					<li><a href="listPage?page=${pageMaker.startPage-1 }&searchType=${cri.searchType }&keyword=${cri.keyword }">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li class="${pageMaker.cri.page == idx ?'active':'' }"><a href="listPage?page=${idx }&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next == true }">
					<li><a href="listPage?page=${pageMaker.endPage+1 }&searchType=${cri.searchType}&keyword=${cri.keyword}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	
</section>

<script>
	$("#btnSearch").click(function(){
		var searchType=$("#searchType").val();
		var keyword=$("#keywordInput").val();
		location.href="listPage?searchType="+searchType+"&keyword="+keyword;
	})
</script>

<%@ include file="../include/footer.jsp"%>