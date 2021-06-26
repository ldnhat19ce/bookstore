<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" sizes="180x180"
	href="./apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./favicon-16x16.png">
<link rel="manifest" href="./site.webmanifest">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./css/ws.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/pathmore.css">

<style type="text/css">
.title-100 {
	width: 100%;
	height: 100%;
	background-color: white;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.product-grids {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	grid-gap: 8px;
}

.product-grids li {
	list-style: none;
}

.cate-content {
	margin-left: 30px;
}
</style>
</head>
<body>
	<c:if test="${searchName != null}">
		<div class="path-more">
			<div class="container">
				<div class="path">kết quả tìm kiếm cho "${searchName}"</div>
				<hr />

			</div>
		</div>
		<c:if test="${not empty bookInformations}">
			<div class="container-1">
				<div class="path-content">
					<div class="title-100">
						<div class="cate-content" id="sortresult1">
							<div class="main-product">
								<ul class="product-grids">
									<c:forEach items="${bookInformations}" var="bookInformation">
										<li>
											<div class="cate-content-element1">
												<div class="cate-element-img">
													<a href="book-detail?bookId=${bookInformation.bookId}">
														<img src="bookinforimage/${bookInformation.mainImage}"
														class="img-prd" alt="" width="100%">
													</a>

												</div>
												<div class="cate-element-title">
													<a href="book-detail?bookId=${bookInformation.bookId}"
														class="content-product-h3">${bookInformation.bookName}</a>

												</div>
												<div class="cate-element-price">
													<h4 class="price">${bookInformation.bookPrice}đ</h4>
													<s>${bookInformation.bookPrice} đ</s>
												</div>
												<div class="cate-element-evaluate">
													<i class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> (238)


												</div>
												<a type="button" class="btn btn-cart"
													href="add-to-cart?bookid=${bookInformation.bookId}"
													style="border: 1px solid black;">Thêm Vào Giỏ</a>

											</div>
										</li>
									</c:forEach>

								</ul>
							</div>


						</div>
					</div>
				</div>


			</div>
		</c:if>
		<c:if test="${empty bookInformations}">
			<div class="path">không có kết quả, bấm vào <a href="HomeServlets" 
			style="text-decoration: none; color: red" >đây</a> để trở về</div>
		</c:if>
	</c:if>
</body>
</html>