<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

<style>
	.bestMember{
		width:950px;
		height:200px;
		border:1px solid #A6A6A6;
		text-align: center;
		border-radius: 5px;
		font-size: 13px;
		margin:0 auto;
	}
	.totallend{
		color:red;
		font-size: 20px;
		
	}
	.bestTen{
		width:130px;
		height:280px;
		margin:30px;
		float: left;
	}
	.bookimg{
		width:130px;
		height:190px;
		border:1px solid #A6A6A6;
	}
	.img{
		width:128px;
		height:188px;
	}
	.cate{
		font-size: 12px;
		color:#1D8B15;
		margin-top:5px;
	}
	.title{
		font-weight: bold;
		font-size: 13px;
	}
	.author{
		font-size: 12px;
	}
</style>

<section>
	<br>
	<div>
		<h4>이번 달 우수 대출자</h4>
		<br>
		<div class="bestMember">
			<c:forEach var="member" items="${mlist }">
				<div style="padding:5px;">
					<span style="font-weight:bold; font-size: 14px;">${member.username }</span> 회원님이 
					<span class="totallend">${member.totallend }</span> 권을 대출하였습니다.
				</div>
			</c:forEach>
		</div>
	</div>
	<br><br><br>
	<div>
		<h4>많이 대출되는 책</h4>
		<div style="text-align: center; margin-left:25px;">
		
			<c:forEach var="book" items="${list }">
				<div class="bestTen">
					<div class="bookimg">
							<img src="${pageContext.request.contextPath }/resources/images/x${book.isbn }.jpg" class="img">
					</div>
					<p class="cate">[${book.category }]</p>
					<p class="title">${book.booktitle }</p>
					<p class="author">${book.author }</p>
					<button onClick="location.href='${pageContext.request.contextPath }/book/readPage?bookno=${book.bookno}'"
											style="font-size:12px;">상세보기</button>
				</div>
			</c:forEach> 
		</div>
	</div> 
	
</section>

<div style="clear:both;"></div>

<%@ include file="include/footer.jsp" %>