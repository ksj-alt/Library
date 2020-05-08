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
	<div class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<div class="box-body">
						<select name="searchType" id="searchType">
							<option>----</option>
							<option>회원번호</option>
							<option>회원성명</option>
						</select>
						<input type="text" name="keyword" id="keywordInput">
						<button id="btnSearch">검색</button>
					</div>
				</div>
				<br>
				<div class="box-body" style="height:200px; overflow: scroll;">
					<table class="table table-condensed" style="width:980px;">
						<tr>
							<th>회원번호</th>
							<th><a href="#">성명</a></th>
							<th>생년월일</th>
							<th>전화번호</th>
						</tr>
						<c:forEach var="member" items="${mlist }">
							<tr>
								<td>${member.userno }</td>
								<td>${member.username }</td>
								<td>${member.birthday }</td>
								<td>${member.phone }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="box-body" style="height:200px;">
					<div>
						<br>
						<h4>대여회원상세정보</h4>
						<p>
							<label>이름 : </label>
							<input type="text" value="${member.username }">
							<label>회원번호 : </label>
							<input type="text" value="${member.userno }">
						</p>
						<p>
							<label>생년월일 : </label>
							<input type="text" value="${member.birthday }">
							<label>전화번호 : </label>
							<input type="text" value="${member.phone }">
						</p>
						<p>
							<label>이메일 : </label>
							<input type="text" value="${member.email }">
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<div class="box-body">
						<select name="searchType" id="searchType">
							<option>----</option>
							<option>도서번호</option>
							<option>도서제목</option>
							<option>저자</option>
						</select>
						<input type="text" name="keyword" id="keywordInput">
						<button id="btnSearch">검색</button>
					</div>
				</div>
				<br>
				<div class="box-body" style="height:200px; overflow: scroll;">
					<table class="table table-condensed">
						<tr>
							<th>도서번호</th>
							<th>도서제목</th>
							<th>저자</th>
							<th>출판사</th>
						</tr>
						<c:forEach var="book" items="${blist }">
							<tr>
								<td>${book.bookno }</td>
								<td>${book.bookname }</td>
								<td>${book.author }</td>
								<td>${book.publisher }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="box-body" style="height:200px;">
					<div>
						<br>
						<h4>대여도서상세정보</h4>
						<p>
							<label>도서번호 : </label>
							<input type="text" value="${book.bookno }">
						</p>
						<p>
							<label>도서제목 : </label>
							<input type="text" value="${book.bookname }">
						</p>
						<p>
							<label>저자 : </label>
							<input type="text" value="${book.author }">
						</p>
						<p>
							<label>출판사 : </label>
							<input type="text" value="${book.publisher }">
						</p>
					</div>
				</div>
				<br>
				<div class="box-footer" style="text-align:center;">
					<button type="submit"  class="btn btn-warning">대여하기</button>
					<button type="reset"  class="btn btn-warning">취소</button>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>