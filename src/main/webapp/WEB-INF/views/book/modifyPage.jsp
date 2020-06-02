<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!-- <script>
	$(function(){
		$("#files").change(function() {
			//var file = $(this)[0].files[0]; // $(this)[0] : javascript 객체
			
			var files = $(this)[0].files;
			//var file = e.target.files;        https://greatps1215.tistory.com/5
			console.log(files);
			$("#dropBox").empty();
 			for(var i = 0; i<files.length;i++){
				var reader = new FileReader(); //javascript 객체
				reader.readAsDataURL(files[i]);
				reader.onload = function(e){
					var $img = $("<img>").attr("src", e.target.result);
					$("#dropBox").append($img);
				}
 			}
		})
		
		$(".check").on('click', function(){
			if($(this).prop('checked')){
				$(this).parent().addClass("checked");
			}else{
				$(this).parent().removeClass("checked");
			}
		});
	})
</script> -->

<!-- <script>
	
	$(function() {

		$("#files").change(function() {
			//var file = $(this)[0].files[0]; // $(this)[0] : javascript 객체
			
			var files = $(this)[0].files;
			//var file = e.target.files;        https://greatps1215.tistory.com/5
			console.log(files);
			$("#dropBox").empty();
 			for(var i = 0; i<files.length;i++){
				var reader = new FileReader(); //javascript 객체
				reader.readAsDataURL(files[i]);
				reader.onload = function(e){
					var $img = $("<img>").attr("src", e.target.result);
					$("#dropBox").append($img);
				}
 			}
		})
	})
</script> -->

<section>
	<ul class="nav nav-tabs">
		<li><a href="${pageContext.request.contextPath }/book/register" style="color:#221000">도서등록</a></li>
		<li><a href="${pageContext.request.contextPath }/book/listPage" style="color:#221000">도서목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12" style="padding:0 160px;">
				<div class="box box-primary">
					<form role="form" action="modifyPage" method="post">
					<input type="hidden" name="bookno" value="${book.bookno }">
					<input type="hidden" name="page" value="${cri.page }">
					<input type="hidden" name="searchType" value="${cri.searchType }">
					<input type="hidden" name="keyword" value="${cri.keyword }">
						<div class="box-body">
							<div class="form-group">
								<label>도서번호</label>
								<input type="text" name="bookno" class="form-control" value="${book.bookno }" readonly>
							</div>
							<div class="form-group">
								<label>도서명<span style="color:red;"> * </span></label>
								<input type="text" name="booktitle" class="form-control" value="${book.booktitle }" placeholder="ex) 내 치즈는 어디에서 왔을까?">
							</div>
							<div class="form-group">
								<label>분야<span style="color:red;"> * </span></label><br>
								<select>
									<option>선택</option>
									<option>가정/육아</option>
									<option>건강</option>
									<option>경제/경영</option>
									<option>과학</option>
									<option>만화</option>
									<option>소설</option>
									<option>시/에세이</option>
									<option>어린이(초등)</option>
									<option>여행</option>
									<option>역사/문화</option>
									<option>예술/대중문화</option>
									<option>외국어</option>
									<option>요리</option>
									<option>유아(0~7세)</option>
									<option>인문</option>
									<option>자기계발</option>
									<option>정치/사회</option>
									<option>종교</option>
									<option>취미/실용/스포츠</option>
								</select>
							</div>
							<div class="form-group">
								<label>저자<span style="color:red;"> * </span></label>
								<input type="text" name="author" class="form-control" value="${book.author }" placeholder="ex) 스펜서 존슨">
							</div>
							<div class="form-group">
								<label>출판사<span style="color:red;"> * </span></label>
								<input type="text" name="publisher" class="form-control" value="${book.publisher }" placeholder="ex) 인플루엔셜">
							</div>
							<div class="form-group">
								<label>가격<span style="color:red;"> * </span></label>
								<input type="text" name="price" class="form-control" value="${book.price }" placeholder="ex) 13800">
							</div>
							<div class="form-group">
								<label>페이지<span style="color:red;"> * </span></label>
								<input type="text" name="pages" class="form-control" value="${book.pages }" placeholder="ex) 147">
							</div>
						 	<%-- <div class="form-group">
								<label>이미지</label>
								<c:forEach var="file" items="${book.files }"> 
								<div class="delItem">
									<img src="displayFile?filename=${file }"> 
									<input type="checkbox" class="check" name="imgFile" value="${file }">
								</div>
								</c:forEach>
							</div> --%>
							<div class="form-group">
								<label>책소개</label>
								<textarea rows="5" cols="30" name="bookintro" placeholder="Enter Content" class="form-control">${book.bookintro }</textarea>
							</div>
							<div class="form-group">
								<label>목차</label>
								<textarea rows="5" cols="30" name="bookindex" placeholder="Enter Content" class="form-control">${book.bookindex }</textarea>
							</div>
							<div class="form-group">
								<label>저자소개</label>
								<textarea rows="5" cols="30" name="authorintro" placeholder="Enter Content" class="form-control">${book.authorintro }</textarea>
							</div>
						</div><br>
						<div class="box-footer" style="text-align:center;">  
							<button type="submit" class="btn btn-warning">수정</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>