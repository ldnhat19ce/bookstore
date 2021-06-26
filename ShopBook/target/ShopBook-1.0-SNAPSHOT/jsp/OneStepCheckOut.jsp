<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One step checkout</title>
	<link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./favicon-16x16.png">
	<link rel="manifest" href="./site.webmanifest">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="./css/Onestepcheckout.css">
 	<link rel="stylesheet" href="./css/option_picker.css">
	<script src="./js/checkform_step.js" charset="utf-8"></script>
</head>
<body>
	<div class="page">
		<section class="header">
			<div class="top-banner-block">
				<a href="#"> <img src="./images/Trang-tuan-1-header.png" alt=""
					width="100%">
				</a>
			</div>
			<div class="container-fluid">

				<div class="header-top-second-bar">
					<a data-toggle="collapse" href="#" data-target=".collapse"
						role="button" class="p-1"> <i class="fa fa-bars fa-lg"
						id="navToggle"></i>
					</a>

					<div class="top-logo">
						<div class="logo-theme">
							<div class="a-logo">
								<a href="HomeServlets"><img src="images/logo.png" alt="logo"></a>
							</div>
						</div>
					</div>

					<div class="top-search">
						<div class="search-box">

							<form class="search-container">
								<input type="text" id="search-bar"
									placeholder="Tìm Kiếm Sản Phẩm Mong Muốn..." size="65">

								<span class="button-search fa fa-search fa-2x search-icon"></span>
							</form>
						</div>
					</div>
					<c:if test="${session_user != null}">
						<div class="header-top-option">
							<div class="header-noti">
								<a href="#">
									<div class="header-noti-icon">
										<label><i class="fa fa-bell fa-lg" aria-hidden="true"></i></label>
									</div>
									<div class="header-noti-title">Thông Báo</div>
								</a>
								<div class="noti-pop">
									<div class="noti-main"></div>
								</div>

							</div>
							<div class="cart-top">
								<a href="cart">
									<div class="header-cart-icon">
										<label><i class="fa fa-shopping-cart fa-lg"
											aria-hidden="true"></i></label>
									</div>
									<div class="header-cart-title">Giỏ Hàng</div>
								</a>
								<div class="cart-pop">
									<div class="cart-main">
										<c:if test="${count != null}">
											<c:if test="${count == 0}">
												<div>Chưa có sản Phẩm nào trong giỏ hàng của bạn.</div>
												<div class="cart-mo">Thành Tiền: ${price} đ</div>
											</c:if>
											<c:if test="${count != 0}">
												<div>Có ${count} sản phẩm</div>
												<div class="cart-mo">Thành Tiền: ${price} đ</div>
											</c:if>
										</c:if>

									</div>
								</div>

							</div>
							<div class="login-top">
								<a href="#">
									<div class="header-user-icon">
										<label><i class="fa fa-user-o fa-lg"
											aria-hidden="true"></i></label>
									</div>
									<div class="header-user-title">Tài Khoản</div>
								</a>

								<div class="user-pop">
									<div class="user-main">
										<div class="user-main-title">
											<label for=""><i class="fa fa-cog fa-lg"
												aria-hidden="true"></i></label> <label for="setting-user"> <a
												href="#" id="setting-user">Cài Đặt Tài Khoản</a></label>


										</div>
										<div class="user-mo">
											<label for=""><i class="fa fa-sign-in fa-lg"
												aria-hidden="true"></i></label> <label for="user-logout"><a
												href="logout" class="user-logout">Đăng Xuất</a></label>


										</div>

									</div>
								</div>

							</div>

						</div>
					</c:if>
					<c:if test="${session_user == null}">
						<div class="header-top-option">
							<div class="header-noti">
								<a href="#">
									<div class="header-noti-icon">
										<label><i class="fa fa-bell fa-lg" aria-hidden="true"></i></label>
									</div>
									<div class="header-noti-title">Thông Báo</div>
								</a>
								<div class="noti-pop">
									<div class="noti-main">
										<div>Vui lòng Đăng Nhập Để</div>
										<div>Xem Thông Báo</div>
										<div>
											<a href="Account.html" type="button" class="btn">Đăng
												Nhập</a>
										</div>
									</div>
								</div>

							</div>
							<div class="cart-top">
								<a href="cart">
									<div class="header-cart-icon">
										<label><i class="fa fa-shopping-cart fa-lg"
											aria-hidden="true"></i></label>
									</div>
									<div class="header-cart-title">Giỏ Hàng</div>
								</a>
								<div class="cart-pop">
									<div class="cart-main">
										<c:if test="${count != null}">
											<c:if test="${count == 0}">
												<div>Chưa có sản Phẩm nào trong giỏ hàng của bạn.</div>
												<div class="cart-mo">Thành Tiền: ${price} đ</div>
											</c:if>
											<c:if test="${count != 0}">
												<div>Có ${count} sản phẩm</div>
												<div class="cart-mo">Thành Tiền: ${price} đ</div>
											</c:if>
										</c:if>
									</div>
								</div>

							</div>
							<div class="login-top" onclick="openLoginForm()">
								<a href="#">
									<div class="header-login-icon">
										<label><i class="fa fa-sign-in fa-lg"
											aria-hidden="true"></i></label>
									</div>
									<div class="header-login-title">Đăng Nhập</div>
								</a>

							</div>

						</div>
					</c:if>
				</div>
			</div>

		</section>
	</div>
	<div class="container-1">
		<div class="book-checkout-alert">
			<div class="img-warning">
				<i class="fa fa-exclamation-triangle fa-2x" aria-hidden="true"></i>
			</div>

			<div class="warning-content">
				Bạn đã đăng nhập? <span><a href="Account.html">Đăng Nhập
						Ngay</a></span>
			</div>

		</div>

		<!--  -->
		<form action="pay" name="bst_form" onsubmit="return validate1()"
			method="post">
			<div class="bst-checkout-block">
				<div class="bst-checkout-block-title">Địa Chỉ Giao Hàng</div>
				<div class="bst-checkout-block-content">
					<div class="bst-checkout-block-address_block">
						<div class="bst-input-box">
							<label>Họ Và Tên Người Nhận</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<input type="text" class="bst-textbox"
										placeholder="Nhập họ và tên người nhận"
										validate_type="fullname" maxlength="200" name="fullname">
								</div>
								<div class="bst-input-group" id="bst-check-form_null"
									style="color: red; font-size: 10px;"></div>
							</div>
						</div>

						<div class="bst-input-box">
							<label>Email</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<input type="text" class="bst-textbox" placeholder="Nhập Email"
										validate_type="fullname" maxlength="200" name="email"
									onkeyup="ValidateEmail(document.bst_form.email)">
								</div>
								<div class="bst-input-group" id="bst-check-form_email"
									style="color: red; font-size: 10px;"></div>
							</div>
						</div>

						<div class="bst-input-box">
							<label>Số điện thoại</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<input type="text" class="bst-textbox"
										placeholder="Nhập số điện thoại" validate_type="fullname"
										maxlength="200" name="phone"
										onkeyup="phoneNumber(document.bst_form.phone)">
								</div>
								<div class="bst-input-group" id="bst-check-phone"
									style="color: red; font-size: 10px;"></div>
							</div>
						</div>

						<div class="bst-input-box">
							<label>Quốc Gia</label>
							<div class="bst-input-item">
								<div class="bst-input-group">									
									<select class="form-control form-control-xs selectpicker"
										name="" data-size="7" data-live-search="true"
										data-title="Location" id="state_list" data-width="100%">
										<c:forEach items="${mapCountry}" var="mapCountry">
											<option value="${mapCountry.key}" selected="selected">
													${mapCountry.value}</option>
										</c:forEach>
									</select>

								</div>
							</div>
						</div>
						<div class="bst-input-box">
							<label>Tỉnh/Thành Phố</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<select class="form-control form-control-xs selectpicker"
										name="city" data-size="7" data-live-search="true"
										data-title="Location" id="city" data-width="100%">
										<option value="null" selected>-- Tỉnh/Thành Phố --</option>
										<option id="DN" value="DN">Đà Nẵng</option>
										<option id="HN" value="HN">Hà Nội</option>
										<option id="TPHCM" value="TPHCM">TP Hồ Chí Minh</option>
										<option id="HP" value="HP">Hải Phòng</option>
									</select>

								</div>
							</div>
						</div>

						<div class="bst-input-box">
							<label>Quận/Huyện</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<select class="form-control form-control-xs selectpicker"
										name="District" data-size="7" data-live-search="true"
										data-title="Location" id="District" data-width="100%">
										<option value="" selected>-- Quận/Huyện --</option>
										<option value="Hải Châu">Hải Châu</option>
										<option value="Cẩm Lệ">Cẩm Lệ</option>
										<option value="Ngũ Hành Sơn">Ngũ Hành Sơn</option>
										<option value="Thanh Khê">Thanh Khê</option>
										<option value="Sơn Trà">Sơn Trà</option>
										<option value="Hòa Vang">Hòa Vang</option>
									</select>

								</div>
							</div>
						</div>
						<div class="bst-input-box">
							<label>Phường/Xã</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<select class="form-control form-control-xs selectpicker"
										name="Ward" data-size="7" data-live-search="true"
										data-title="Location" id="Ward" data-width="100%">
										<option value="" selected>-- Phường/Xã --</option>
										<option value="Bình Hiên">Bình Hiên</option>
										<option value="Bình Thuận">Bình Thuận</option>
										<option value="Hải Châu I">Hải Châu I</option>
										<option value="Hải Châu II">Hải Châu II</option>
										<option value="Hòa Cường Bắc">Hòa Cường Bắc</option>
										<option value="Hòa Cường Nam">Hòa Cường Nam</option>
										<option value="Hòa Thuận Đông">Hòa Thuận Đông</option>
										<option value="Hòa Thuận Tây">Hòa Thuận Tây</option>
									</select>

								</div>
							</div>
						</div>

						<div class="bst-input-box">
							<label>Địa chỉ nhận hàng</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<input type="text" class="bst-textbox"
										placeholder="Nhập địa chỉ nhận hàng" validate_type="address"
										maxlength="200" name="address">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bst-checkout-block">
				<div class="bst-checkout-block-title">Quà Tặng / Mã</div>
				<div class="bst-checkout-block-content">
					<div class="bst-checkout-block-address_block">
						<div class="bst-input-box">
							<label>Mã Khuyến Mại</label>
							<div class="bst-input-item">
								<div class="bst-input-group">
									<input type="text" class="bst-textbox" placeholder="Nhập mã"
										maxlength="200" name="sale">
								</div>


							</div>

						</div>
					</div>
				</div>

			</div>

			<div class="bst-checkout-block">
				<div class="bst-checkout-block-title">Phương thức thanh toán</div>
				<div class="bst-checkout-block-content">
					<div class="bst-checkout-block-radio-list">

						<label class="bst-radio-big"> Chuyển Khoản Ngân Hàng 
						<input type="radio" checked="checked" name="pay" value="BANK_TRANFER">
						<span class="checkmark"></span>
						</label> <label class="bst-radio-big"> Thanh toán bằng tiền mặt
							khi nhận hàng <input type="radio" name="pay" value="PAYINCASH"> <span
							class="checkmark"></span>
						</label> <label class="bst-radio-big"> ATM/Internet Banking <input
							type="radio" name="pay" value="ATM"> <span class="checkmark"></span>
						</label> <label class="bst-radio-big"> MoMo Pay <input
							type="radio" name="MOMO"> <span class="checkmark"></span>
						</label>


					</div>
				</div>
			</div>
			
			<div class="row" style="margin-bottom: 20px;">
			<div class="block-checkout-test bst-checkout-block">
				<div class="bst-checkout-block-title">
				Kiểm Tra Lại đơn hàng
				</div>
				<div class="block-checkout-test-content">

					<c:if test="${not empty listCarts}">
						<c:forEach items="${listCarts}" var="listCart">
							<input type="hidden" value="${listCart.bookInformation.bookId}" name="bookId">
							<div class="checkout-product-items">
								<div class="product-items-img">
									<img src="bookinforimage/${listCart.bookInformation.mainImage}"
										alt="">
								</div>
								<div class="product-item-content">
									<div class="items-title">${listCart.bookInformation.bookName}</div>
									<div class="items-price">${listCart.bookInformation.bookPrice} đ</div>
									<input type="hidden" name="bookPrice"
										   value="${listCart.bookInformation.bookPrice}">
									<div class="items-count">Số Lượng: ${listCart.cartAmount}</div>
									<input type="hidden" name="cartAmount" value="${listCart.cartAmount}">
								</div>

							</div>
						<div class="clearfix"></div>
						</c:forEach>

					</c:if>
					<c:if test="${not empty msg}">
						<div class="checkout-product-items">${msg}</div>
					</c:if>

				</div>

			</div>
			<div class="pay bst-checkout-block">
				<div class="bst-checkout-block-title">Kiểm Tra Lại đơn hàng
				</div>
				<div class="kt">
					<c:if test="${not empty listCarts}">
						<div class="tt">Thành Tiền: ${price}đ</div>
						<div class="ship">Phí Vận Chuyển (Giao hàng tiêu chuẩn):
							25.000đ</div>
						<div class="sum-price">
							<label>Tổng số tiền (gồm VAT):</label> <label
								style="color: orange;">${priceAfter} đ</label>
						<input type="hidden" name="priceAfter" value="${priceAfter}">

						</div>
					</c:if>
					<c:if test="${empty listCarts}">
						Không có sản phẩm để thanh toán
					</c:if>

				</div>
				<div class="more-flash" style="margin-top: 20px;">
					<button type="submit">Thanh Toán</button>
				</div>
			</div>
		</div>
		</form>
		



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
			var city_list = document.getElementById("city_list").value;
			var c_list = document.getElementById("c_list");

		</script>
	
		<script src="./js/select_option_piker.js"></script>

</body>
</html>