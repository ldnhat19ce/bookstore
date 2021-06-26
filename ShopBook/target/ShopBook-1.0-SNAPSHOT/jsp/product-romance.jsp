<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tiểu Thuyết</title>
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

	<script>
		function save_to_db(book_id) {
			var xhttp;

			var url = "add-to-cart?bookId=" + book_id;
			if (window.XMLHttpRequest) {
				xhttp = new XMLHttpRequest();
			} else {
				xhhtp = new ActiveXObject("Microsoft.XMLHTTP");
			}

			xhttp.onreadystatechange = function() {

				if (xhttp.readyState == 4) {
					var data = xhttp.responseText;
					document.getElementById("result").innerHTML = data;
				}

			}
			xhttp.open("post", url, true);
			xhttp.send();

		}


	</script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="path-more">
		<div class="container">
			<div class="path">
				Trang Chủ <i class="fa fa-angle-double-right" aria-hidden="true"></i>
				Sách tiếng việt <i class="fa fa-angle-double-right"
					aria-hidden="true"></i> Văn Học <i class="fa fa-angle-double-right"
					aria-hidden="true"></i> Tiểu Thuyết
			</div>
			<hr />

		</div>
	</div>
	<div class="container-1">
		<div class="path-content">
			<div class="title-30">
				<div class="cate">
					<h1>Nhóm Sản Phẩm</h1>
					<p>Sách Tiếng Việt</p>
					<h5>
						Thể Loại: <b>Văn Học</b>
					</h5>
					<ul>
						<li>Tiểu Thuyết</li>
						<li>Truyện Ngắn</li>
						<li>Ngôn tình</li>
						<li>Tác Phẩm Kinh Điển</li>
						<div id="more">
							<li>Truyện Trinh Thám</li>
							<li>Kiếm Hiệp</li>
							<li>Kinh Dị</li>
							<li>Truyện Tranh</li>
							<li>Truyện Cười</li>
							<li>Du kí</li>
							<li>Thơ ca</li>
						</div>

					</ul>
					<button id="myBtn" onclick="myFunction()">Xem Thêm</button>
					<i class="fa fa-angle-down" aria-hidden="true"></i>
					<hr />
				</div>
				<div class="path-price">
					<h1>Giá</h1>
					<div class="check-price">
						<input type="checkbox"> <a href="#">0đ - 150.000đ</a> <br />
						<input type="checkbox"> <a href="#">150.000đ -
							300.000đ</a> <br /> <input type="checkbox"> <a href="#">300.000đ
							- 500.000đ</a> <br /> <input type="checkbox"> <a href="#">500.000đ
							- 700.000đ</a> <br /> <input type="checkbox"> <a href="#">700.000đ
							- Trở Lên</a>
					</div>
					<hr />
				</div>
				<div class="path-price">
					<h1>Độ Tuổi</h1>
					<div class="check-price">
						<input type="checkbox"> <a href="#">18+</a>(120) <br /> <input
							type="checkbox"> <a href="#">18+ Months</a>(10) <br />

					</div>
					<hr />
				</div>
				<div class="path-price">
					<h1>Ngôn Ngữ</h1>
					<div class="check-price">
						<input type="checkbox"> <a href="#">Tiếng Việt</a>(420) <br />
						<input type="checkbox"> <a href="#">Tiếng Anh</a>(10) <br />

					</div>
					<hr />
				</div>
				<div class="path-price">
					<h1>Hình Thức</h1>
					<div class="check-price">
						<input type="checkbox"> <a href="#">Bìa Mềm</a>(120) <br />
						<input type="checkbox"> <a href="#">Bìa Cứng</a>(10) <br />

					</div>
					<hr />
				</div>
				<div class="path-price">
					<h1>Nhà Cung Cấp</h1>
					<div class="check-price">
						<input type="checkbox"> <a href="#">NXB Trẻ</a>(120) <br />
						<input type="checkbox"> <a href="#">NXB Tổng Hợp</a>(10) <br />
						<input type="checkbox"> <a href="#">NXB Văn Hóa Nghệ
							Thuật</a>(50) <br /> <input type="checkbox"> <a href="#">Phụ
							Nữ</a>(34) <br /> <input type="checkbox"> <a href="#">Alpha
							books</a>(90) <br />

					</div>
				</div>


			</div>
			<!--Nội dung-->
			<div class="title-70">
				<div class="sort-title">
					<h3>Sắp Xếp:</h3>
					<div class="week-sort">
						<select name="ws" id="ws">
							<option value="week" id="st1">Bán Chạy Tuần</option>
							<option value="month">Bán Chạy Tháng</option>
							<option value="year">Bán Chạy Năm</option>
							<option value="spe-week">Nổi Bật Tuần</option>
							<option value="spe-month">Nổi Bật Tháng</option>
							<option value="spe-year">Nổi Bật Năm</option>
							<option value="exp">Chiết Khấu</option>
							<option value="price">Giá Bán</option>

						</select>
					</div>
					<div class="cate-sort">
						<select name="sp" id="sp">
							<option value="sp12" id="sp1">12 sản Phẩm</option>
							<option value="sp24">24 sản Phẩm</option>
							<option value="sp48">48 sản Phẩm</option>
						</select>
					</div>
				</div>
				<hr />
				<!--SÁCH-->

				<div class="cate-content" id="result">
					<div class="main-product">
						<ul class="product-grids">
							<c:forEach items="${bookInformations}" var="bookInformation">
								<li>
									<div class="cate-content-element1">
										<div class="cate-element-img">
											<a href="book-detail?bookId=${bookInformation.bookId}"> <img
												src="bookinforimage/${bookInformation.mainImage}"
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
											style="border: 1px solid black;">
											Thêm Vào Giỏ</a>

									</div>
								</li>
							</c:forEach>

						</ul>
					</div>
					<div class="clearfix"></div>
					<div class="pg">
						<nav aria-label="Page navigation example">
							<ul class="pagination pagination-circle pg-blue">
								<c:if test="${pageid == 1}">

									<li class="page-item disabled"><a class="page-link">First</a></li>
									<li class="page-item disabled"><a class="page-link"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
									</a></li>

									<li class="page-item"><a class="page-link"
										aria-label="Next" href="romance?pageid=${pageid+1}"> <span
											aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
									</a></li>
									<li class="page-item"><a class="page-link"
										href="romance?pageid=${pageid+1}">Last</a></li>
								</c:if>


								<c:if test="${pageid == maxpageid}">


									<li class="page-item"><a class="page-link"
										href="romance?pageid=${pageid-1}">First</a></li>
									<li class="page-item"><a class="page-link"
										aria-label="Previous" href="romance?pageid=${pageid-1}"> <span
											aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
									</a></li>

									<li class="page-item disabled"><a class="page-link"
										aria-label="Next" href="#"> <span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
									</a></li>
									<li class="page-item disabled"><a class="page-link"
										href="#">Last</a></li>
								</c:if>


								<c:if test="${pageid < maxpageid && pageid > 1}">

									<li class="page-item"><a class="page-link"
										href="romance?pageid=${pageid-1}">First</a></li>
									<li class="page-item"><a class="page-link"
										aria-label="Previous" href="romance?pageid=${pageid-1}"> <span
											aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
									</a></li>

									<li class="page-item"><a class="page-link"
										aria-label="Next" href="romance?pageid=${pageid+1}"> <span
											aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
									</a></li>
									<li class="page-item"><a class="page-link"
										href="romance?pageid=${pageid+1}">Last</a></li>

								</c:if>


							</ul>
						</nav>

					</div>

				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container-1 " style="background-color: white;">
			<div class="stationery-title">
				<h1>
					<i class="fa fa-book" aria-hidden="true"></i>GỢI Ý DÀNH RIÊNG CHO
					BẠN
				</h1>
				<hr style="margin-bottom: 0px;">
			</div>
			<div class="stationery-content col-lg-12 col-xs-12">
				<c:forEach items="${flashsaleProducts}" var="flashsaleProduct">
					<div class="cate-content-element col-md-3">
						<div class="cate-element-img">
							<img
								src="bookinforimage/${flashsaleProduct.bookInformation.mainImage}"
								alt="" width="100%">
							<div class="overlay-right">
								<button type="button" class="btn btn-secondary"
									title="Quick Shop">
									<i class="fa fa-eye"></i>
								</button>
								<button type="button" class="btn btn-secondary"
									title="Add to Wishlist">
									<i class="fa fa-heart-o"></i>
								</button>
								<a type="button" class="btn btn-secondary" title="Add to Cart"
									href="add-cart?bookid=${flashsaleProduct.bookInformation.bookId}">
									<i class="fa fa-shopping-cart"></i>
								</a>
							</div>
						</div>
						<div class="cate-element-title">
							<a href="#">${flashsaleProduct.bookInformation.bookName}</a>
						</div>
						<div class="cate-element-price">
							<h4>${flashsaleProduct.bookInformation.bookPrice}đ</h4>
							<s>${flashsaleProduct.productDiscount} đ</s>
						</div>
						<div class="cate-element-evaluate">
							<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> (238)
						</div>
					</div>
				</c:forEach>

				<div class="row"></div>
				<div class="more-rank">
					<button>Xem Thêm</button>
				</div>
			</div>
		</div>
	</div>
	<!------------Footer----------->
	<div class="" id="cart"></div>
	<div id="main"></div>
	<footer>
		<div class="splitter"></div>
		<ul>
			<li>

				<div class="text">
					<h4>Người Mua</h4>
					<div>
						<a href="#">giải quyết khiếu nại</a>
					</div>
					<div>
						<a href="#">hướng dẫn mua hàng</a>
					</div>
					<div>
						<a href="#">chính sách đổi trả</a>
					</div>
					<div>
						<a href="#">chăm sóc khách hàng</a>
					</div>
					<div>
						<a href="#">nạp tiền điện thoại</a>
					</div>
				</div>
			</li>
			<li>

				<div class="text">
					<h4>Hỗ Trợ</h4>
					<div>
						<a href="#">Các câu hỏi thường gặp</a>
					</div>
					<div>
						<a href="#">gửi yêu cầu hỗ trợ</a>
					</div>
					<div>
						<a href="#">hướng dẫn đặt hàng</a>
					</div>
					<div>
						<a href="#">chính sách đổi trả</a>
					</div>
					<div>
						<a href="#">hướng dẫn mua trả góp</a>
					</div>
				</div>
			</li>
			<li>

				<div class="text">
					<h4>Shop</h4>
					<div>
						<a href="#">giới thiệu</a>
					</div>
					<div>
						<a href="#">chính sách thanh toán</a>
					</div>
					<div>
						<a href="#">chính sách bảo mật thông tin cá nhân</a>
					</div>
					<div>
						<a href="#">cính sách giải quyết khiếu nại</a>
					</div>
					<div>
						<a href="#">điều khoản sử dụng</a>
					</div>
				</div>
			</li>
		</ul>

		<div class="bar">
			<div class="bar-wrap">
				<ul class="links">
					<li><a href="#">Home</a></li>
					<li><a href="#">License</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Advertise</a></li>
					<li><a href="#">About</a></li>
				</ul>

				<div class="social">
					<a href="#" class="fb"> <span data-icon="f" class="icon"></span>
						<span class="info"> <span class="follow">Become a
								fan Facebook</span> <span class="num">9,999</span>
					</span>
					</a> <a href="#" class="tw"> <span data-icon="T" class="icon"></span>
						<span class="info"> <span class="follow">Follow us
								Twitter</span> <span class="num">9,999</span>
					</span>
					</a> <a href="#" class="rss"> <span data-icon="R" class="icon"></span>
						<span class="info"> <span class="follow">Subscribe
								RSS</span> <span class="num">9,999</span>
					</span>
					</a>
				</div>
				<div class="clear"></div>
				<div class="copyright">&copy; 2020 All Rights Reserved</div>
			</div>
		</div>
	</footer>
	
	<script>
        function myFunction() {
          var moreText = document.getElementById("more");
          var btnText = document.getElementById("myBtn");
         
        
          if (moreText.style.display === "none") {
            btnText.innerHTML = "Rút Gọn"; 
                moreText.style.display = "inline";
            } else {
                
                btnText.innerHTML = "Xem Thêm"; 
                moreText.style.display = "none";
            }
        }
        </script>
	
</body>
</html>