<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<style>
	.content{
		color:#4C4C4C;
	}
	#rightContent{
		width:630px;
		padding-top:20px;
		font-size:15px;
		color:#4C4C4C;
		margin:0 auto;
	}
	.btn{
		width:75px;
		height:30px;
		font-size: 13px;
	}
	#cate{
		float: left;
		padding-left:110px;
	}
	#lend{
		text-align: right;
		padding-right:140px;
		padding-bottom:10px;
	}
	#lendnum{
		text-align: right;
		padding-right:140px;
		padding-bottom:10px;
	}
	#lend span{
		font-weight: bold;
		color:#ED0000;
	}
	#title{
		width:800px;
		height:40px;
		font-size: 16px;
		font-weight: bold;
		border:1px solid #A6A6A6;
		padding:5px;
		padding-left:15px;
		margin:0 auto;
		line-height: 30px;
		border-radius: 5px;
	}
	#image{
		width:200px;
		height:280px;
		margin-right:30px;
		border: 1px solid #A6A6A6;
		margin-left:40px;
	}
	img{
		width:200px;
		height:280px;
	}
	label{
		width:80px;
	}
	.text{
		margin-left:20px;
	}
	#bottomContent{
		clear:both;
		width:760px;
		margin:0 auto;
		padding-left:15px;
		font-size:15px;
	}
	.bookContent{
		white-space:pre-wrap;
		width:740px;
		font-size: 14px;
	}
</style>

<script src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<script>
	$(function(){	
		$("#list").click(function(){
			location.href="${pageContext.request.contextPath}/book/listPage?page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
		})
		$("#remove").click(function(){
			if(confirm("정말로 삭제하시겠습니까?")){
				location.href="${pageContext.request.contextPath }/book/removePage?bookno="
						+${book.bookno}+"&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			}
		})
		
		$("#modify").click(function(){
			location.href="${pageContext.request.contextPath }/book/modifyPage?bookno="
					+${book.bookno}+"&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
		})
	})
</script>

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/book/register" style="color:#221000">도서등록</a></li>
		<li><a href="${pageContext.request.contextPath }/book/listPage" style="color:#221000">도서목록</a></li>
	</ul>
	<br>
	<div class="box-body">
		<div class="box-footer" style="text-align:right; padding-right:70px;">  
			<button type="button" id="modify" class="btn">수정</button>
			<button type="button" id="remove" class="btn">도서삭제</button>
			<button type="button" id="list" class="btn">리스트</button>
		</div>
		<br>
	<div id="cate">
		${category }
	</div>
	<div id="lend">
		대출가능여부 : <span>${lend }　</span>/
		　총 대출 수 : ${lendnum }
	</div>
	<div id="title">${booktitle }</div>
	<br>
	<div class="content">
		<div class="row">
			<div id="rightContent">
				<div class="box box-primary">
					<div class="form-group" style="float:left;" id="image">
						<c:forEach var="file" items="${book.files }">
							<img src="displayFile?filename=${file }">
						</c:forEach>
					</div>
					<div style="padding-left:30px; float:left; width:350px;">
						<div class="form-group" style="padding-top:5px;">
							<label>도서번호</label>
							<strong>:</strong> <span class="text">${book.bookno }</span>
						</div>
						<div class="form-group">
							<label>I S B N</label>
							<strong>:</strong> <span class="text">${book.isbn }</span>
						</div>
						<div class="form-group">
							<label>도서명</label>
							<strong>:</strong> <span class="text">${book.booktitle }</span>
						</div>
						<div class="form-group">
							<label>저자</label>
							<strong>:</strong> <span class="text">${book.author }</span>
						</div>
						<div class="form-group">
							<label>출판사</label>
							<strong>:</strong> <span class="text">${book.publisher }</span>
						</div>
						<div class="form-group">
							<label>가격</label>
							<strong>:</strong> <span class="text"><fmt:formatNumber value="${book.price }" pattern="#,###"/> 원</span>
						</div>
						<div class="form-group">
							<label>페이지</label>
							<strong>:</strong> <span class="text">${book.pages } p</span>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div id="bottomContent">
				<br>
					<div class="form-group">
						<label>책소개</label>
						<br><br>
						<div class="bookContent">${book.bookintro }</div>
					</div>
					<br>
					<div class="form-group">
						<label>목차</label>
						<br><br>
						<div class="bookContent">${book.bookindex }</div>
					</div>
					<br>
					<div class="form-group">
						<label>저자소개</label>
						<br><br>
						<div class="bookContent">${book.authorintro }</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>