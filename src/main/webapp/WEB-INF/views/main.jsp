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
		<%-- <div style="text-align: center; margin-left:25px;">
		
			<c:forEach var="book" items="${list }">
				<div class="bestTen">
					<div class="bookimg">
						<c:forEach var="file" items="${book.files }">
							<img src="displayFile?filename=${file }">
						</c:forEach>
					</div>
					<p class="cate">[${book.category }]</p>
					<p class="title">${book.booktitle }</p>
					<p class="author">${book.author }</p>
					<button onClick="location.href='${pageContext.request.contextPath }/book/readPage?bookno=${book.bookno}'"
											style="font-size:12px;">상세보기</button>
				</div>
			</c:forEach> 
		</div>
	</div> --%>
	<div style="text-align: center; margin-left:25px;">
		
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/1_x9791190382175.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[자기계발]</p>
					<p class="title">더 해빙(The Having)(양장본 HardCover)</p>
					<p class="author">이서윤</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/3_x9788993178692.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[정치/사회]</p>
					<p class="title">지리의 힘</p>
					<p class="author">팀 마샬</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/5_x9791190299060.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[시/에세이]</p>
					<p class="title">1cm 다이빙</p>
					<p class="author">태수</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/7_x9791197021602.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[시/에세이]</p>
					<p class="title">오래 준비해온 대답</p>
					<p class="author">김영하</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/9_x9788965963790.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[경제/경영]</p>
					<p class="title">룬샷</p>
					<p class="author">사피 바칼</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/2_x9788950987879.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[시/에세이]</p>
					<p class="title">이번 달은 뉴요커</p>
					<p class="author">홍세림</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/4_x9788954671156.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[소설]</p>
					<p class="title">제11회 젊은작가상 수상작품집(2020)</p>
					<p class="author">강화길</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/6_x9791164134847.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[어린이(초등)]</p>
					<p class="title">흔한남매. 4(양장본 HardCover)</p>
					<p class="author">흔한남매(원작)</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/8_x9791165075064.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[소설]</p>
					<p class="title">녹나무의 파수꾼(양장본 HardCover)</p>
					<p class="author">히가시노 게이고</p>
				</div>
				
				<div class="bestTen">
					<div class="bookimg">
						<img src="${pageContext.request.contextPath}/resources/images/10_x9791130627878.jpg" style="width:128px; height:188px;"/>
					</div>
					<p class="cate">[인문]</p>
					<p class="title">내가 원하는 것을 나도 모를 때</p>
					<p class="author">전승환</p>
				</div>
		</div>
	</div>
</section>

<div style="clear:both;"></div>

<%@ include file="include/footer.jsp" %>