<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
	tbody tr:hover{
		background-color: #F6F6F6;
	}
</style>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/member/register" style="color:#221000">회원등록</a></li>
		<li class="active"><a href="${pageContext.request.contextPath }/member/listPage">회원목록</a></li>
	</ul>
	<br>
	<div class="box-body">
		<select name="searchType" id="searchType">
			<option value="n" ${cri.searchType==null? 'selected':'' }>-----</option>
			<option value="uno" ${cri.searchType=='uno'? 'selected':'' }>회원번호</option>
			<option value="uname" ${cri.searchType=='uname'? 'selected':'' }>회원성명</option>
		</select>
		<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
		<button id="btnSearch">검색</button>
	</div>
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
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach var="member" items="${list }">
						<tr>
							<td>${member.userno }</td>
							<td><a href="${pageContext.request.contextPath }/member/readPage?userno=${member.userno}
											&page=${pageMaker.cri.page}" style="color:#353535">${member.username }</a></td>
							<td>${member.birthday }</td>
							<td>${member.phone }</td>
							<td>${member.email }</td>
						</tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="box-footer">
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev == true }">
					<li><a href="listPage?page=${pageMaker.startPage-1 }">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li class="${pageMaker.cri.page == idx ?'active':'' }"><a href="listPage?page=${idx }">${idx }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next == true }">
					<li><a href="listPage?page=${pageMaker.endPage+1 }">&raquo;</a></li>
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