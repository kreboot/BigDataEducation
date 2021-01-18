<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 등록</title>
	<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	<!-- 점보트론 : 대형전광판이라는 의미. 점보트론 안에 다양한 컴포넌트(텍스트, 이미지, 회사로고 등) 포함 기능 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	
	<div class="container">
		<!-- class="form-horizontal" : 폼 요소들이 수평적으로 배치되도록 해줌 -->
		<form action="./processAddProduct.jsp" name="newProduct" class="form-horizontal" 
		method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<!-- 화면크기 768px이상일때 col-sm-? 부분이 적용되고, div 요소의 block 특성에 의해
				100% 너비를 가지면 수직으로 쌓이게 만들어줌. -->
				<label class="col-sm-2"><b>상품 코드</b></label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" placeholder="상품코드를 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>상품명</b></label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control" placeholder="상품명을	 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>가격</b></label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" placeholder="가격을 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>상세 정보</b></label>
				<div class="col-sm-5">
					<textarea rows="2" cols="50" name="description" class="form-control" placeholder="상세정보를 입력하세요."></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>제조사</b></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control" placeholder="제조사를 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>분류</b></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" placeholder="분류를 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>재고수량</b></label>
				<div class="col-sm-3">
					<input type="text" name="numberOfStock" class="form-control" placeholder="재고수량을 입력하세요." />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>상태</b></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New" /> 신규 제품
					<input type="radio" name="condition" value="Old" /> 중고 제품
					<input type="radio" name="condition" value="Refurblished" /> 재생 제품
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><b>이미지</b></label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-cotrol" />
				</div>
			</div>
			
			<div class="form-group row">
				<!-- class="col-sm-offset-2" 지정은 col의 2만큼 띄움 -->
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록" />
					<input type="reset" class="btn btn-secondary" value="초기화" />
				</div>
			</div>
			
		</form>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>