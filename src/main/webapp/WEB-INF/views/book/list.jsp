<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/book/register" style="color:#221000">도서등록</a></li>
		<li class="active"><a href="${pageContext.request.contextPath }/book/list">도서목록</a></li>
	</ul>
	<br>
	<div class="container">
		<table class="table table-hover" style="width:980px;">
			<thead>
				<tr>
					<th>도서번호</th> 
					<th>도서명</th>
					<th>저자</th>
					<th>출판사</th>
					<th>대출가능여부</th>
					<th>예약가능여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach var="book" items="${list }">
						<tr>
							<td>${book.bookno }</td>
							<td><a href="${pageContext.request.contextPath }/book/read?bookno=${book.bookno}" style="color:#353535">${book.booktitle }</a></td>
							<td>${book.author }</td>
							<td>${book.publisher }</td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
	
	
</section>

<%@ include file="../include/footer.jsp"%>