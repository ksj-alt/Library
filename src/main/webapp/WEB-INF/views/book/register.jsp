<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<script>
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
</script>

<section>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${pageContext.request.contextPath }/book/register">도서등록</a></li>
		<li><a href="${pageContext.request.contextPath }/book/listPage" style="color:#221000">도서목록</a></li>
	</ul>
	<br>
	<div class="content">
		<div class="row">
			<div class="col-sm-12" style="padding:0 160px;">
				<div class="box box-primary">
					<form role="form" action="register" method="post" enctype="multipart/form-data">
						<div class="box-body">
							<div class="form-group">
								<label>도서명<span style="color:red;"> * </span></label>
								<input type="text" name="booktitle" class="form-control" placeholder="ex) 내 치즈는 어디에서 왔을까?">
							</div>
							<div class="form-group">
								<label>분야<span style="color:red;"> * </span></label><br>
								<select name="status">
									<option>선택</option>
									<option value="가정/육아">가정/육아</option>
									<option value="건강">건강</option>
									<option value="경제/경영">경제/경영</option>
									<option value="과학">과학</option>
									<option value="만화">만화</option>
									<option value="소설">소설</option>
									<option value="시/에세이">시/에세이</option>
									<option value="어린이(초등)">어린이(초등)</option>
									<option value="여행">여행</option>
									<option value="역사/문화">역사/문화</option>
									<option value="예술/대중문화">예술/대중문화</option>
									<option value="외국어">외국어</option>
									<option value="요리">요리</option>
									<option value="유아(0~7세)">유아(0~7세)</option>
									<option value="인문">인문</option>
									<option value="자기계발">자기계발</option>
									<option value="정치/사회">정치/사회</option>
									<option value="종교">종교</option>
									<option value="취미/실용/스포츠">취미/실용/스포츠</option>
								</select>
							</div>
							<div class="form-group">
								<label>ISBN<span style="color:red;"> * </span></label>
								<input type="text" name="isbn" class="form-control" placeholder="ex) 9791186560860">
							</div>
							<div class="form-group">
								<label>저자<span style="color:red;"> * </span></label>
								<input type="text" name="author" class="form-control" placeholder="ex) 스펜서 존슨">
							</div>
							<div class="form-group">
								<label>출판사<span style="color:red;"> * </span></label>
								<input type="text" name="publisher" class="form-control" placeholder="ex) 인플루엔셜">
							</div>
							<div class="form-group">
								<label>가격<span style="color:red;"> * </span></label>
								<input type="text" name="price" class="form-control" placeholder="ex) 13800">
							</div>
							<div class="form-group">
								<label>페이지<span style="color:red;"> * </span></label>
								<input type="text" name="pages" class="form-control" placeholder="ex) 148">
							</div>
							<div class="form-group">
								<label>이미지</label>
								<input type="file" name="imageFiles" class="form-control" multiple="multiple" id=files>
							</div>
							<div id="dropBox"></div>
							<div class="form-group">
								<label>책소개</label>
								<textarea rows="5" cols="30" name="bookintro" placeholder="Enter Content" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>목차</label>
								<textarea rows="5" cols="30" name="bookindex" placeholder="Enter Content" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>저자소개</label>
								<textarea rows="5" cols="30" name="authorintro" placeholder="Enter Content" class="form-control"></textarea>
							</div>
						</div><br>
						<div class="box-footer" style="text-align:center;">  
							<button type="submit" class="btn btn-warning">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>