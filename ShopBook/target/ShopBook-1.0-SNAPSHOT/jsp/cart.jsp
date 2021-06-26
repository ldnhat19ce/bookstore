<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
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
<script src="./js/handleCounter.js"></script>
<link rel="stylesheet" href="./css/ws.css">
<link rel="stylesheet" href="./css/cart.css">



<script type="text/javascript">
	function increment_quantity(code) {
		var inputQuantityElement = $("#input-quantity-" + code);
		var newQuantity = parseInt($(inputQuantityElement).val()) + 1;
		console.log(newQuantity);
		save_to_db(code, newQuantity);
	}

	function decrement_quantity(code) {
		var inputQuantityElement = $("#input-quantity-" + code);
		if ($(inputQuantityElement).val() > 1) {
			var newQuantity = parseInt($(inputQuantityElement).val()) - 1;
			save_to_db(code, newQuantity);
		}
	}

	function save_to_db(book_id, new_quantity) {
		var xhttp;
		console.log(book_id);
		console.log(new_quantity);
		var url = "update-cart?bookId=" + book_id + "&cartAmount="
				+ new_quantity;
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
	
	function delete_cart(book_id) {
		var xhttp;
		var url = "delete-cart?bookId=" + book_id;
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
		xhttp.open("get", url, true);
		xhttp.send();
	}
</script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-1">
		<div class="cart-title">
			<h2>
				Giỏ Hàng <span>(${count} sản phẩm)</span>
			</h2>

		</div>
		<div class="cart-main" id="result">
			<div class="cart-product-main" >
				<li><c:if test="${not empty msg}">
						<h4>${msg}</h4>
					</c:if>
                    <c:if test="${not empty listCarts}">
						<c:forEach items="${listCarts}" var="listCart">
							<div class="cart-product">
								<div class="cart-product-img">
									<img src="bookinforimage/${listCart.bookInformation.mainImage}"
										alt="">
								</div>
								<div class="cart-product-content">
									<div class="cart-content-title">
										<a href="#">${listCart.bookInformation.bookName}</a>

									</div>
									<div class="cart-content-sup">
										<span>cung cấp bởi</span> <span><a href="#">bookstore</a></span>
									</div>
									<div class="cart-content-mani">
										<a href="#"
										onclick="delete_cart('${listCart.bookInformation.bookId}')">Xóa</a>
										<a href="#">Mua sau</a>
									</div>
								</div>
								<div class="cart-content-price">
									<div class="cart-content-price-main">
										${listCart.bookInformation.bookPrice} đ</div>
									<div class="cart-content-price-sale">
										<p>
											<s>270.000</s> <span>-61%</span>
										</p>

									</div>
								</div>
								<div class="cart-content-number">
									<div class="handle-counter" id="handleCounter">


										<div class="input-group  ">
											<div class="input-group-prepend"
												onclick="decrement_quantity('${listCart.bookInformation.bookId}')">
												<button style="min-width: 2.5rem"
													class="btn btn-decrement btn-outline-secondary"
													type="button" id="increase">
													<strong>−</strong>
												</button>
											</div>

											<input type="text" value="${listCart.cartAmount}" min="1"
												max="1000" step="1" inputmode="decimal"
												class="form-control "
												id="input-quantity-${listCart.bookInformation.bookId}"
												style="text-align: center" />
											<div class="input-group-append"
												onclick="increment_quantity('${listCart.bookInformation.bookId}')">
												<button style="min-width: 2.5rem"
													class="btn btn-increment btn-outline-secondary"
													type="button">
													<strong>+</strong>
												</button>
											</div>
										</div>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if></li>

			</div>
			<div class="cart-price-main">
				<div class="price_main">
					<p class="price__items">
						<span class="price_text">Tổng Cộng</span> <span
							class="price_value">${price} đ</span>
					</p>
					<p class="price__total">
						<span class="total-text">Thành Tiền</span> <span
							class="total-value">${price} đ <i>(Đã bao gồm VAT)</i>
						</span>
					</p>
					<div class="btn-pay">
						<a href="one-step" class="btn">Tiến Hành Đặt Hàng</a>
					</div>
					<div class="coupon">
						<p class="coupon-title">
							<i class="fa fa-tag fa-lg"></i> Mã giảm giá
						</p>
						<div class="coupon-group-text">
							<input type="text" name="" id=""> <a href="#" class="btn">Áp
								Dụng</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="resp-menu.jsp"></jsp:include>

	<script>
		$(document).ready(function() {
			console.log("document is ready");
			$('[data-toggle="offcanvas"], #navToggle').on('click', function() {
				$('.offcanvas-collapse').toggleClass('open');

			})
		});
		window.onload = function() {
			console.log("window is loaded");
		};
	</script>


	<script>
		$(document).ready(
				function() {

					$(function() {
						//  Accordion Panels
						$(".sortable-accordion div").show();
						$('.sortable-accordion div').slideToggle('slow');
						$(".sortable-accordion h3").click(
								function() {
									$(this).next(".inner").slideToggle()
											.siblings(".inner:visible")
											.slideUp();
									$(this).toggleClass("current");
									$(this).siblings("h3").removeClass(
											"current");
								});
					});

					$(".sortable").sortable({
						placeholder : "ui-sortable-placeholder"
					}).find("li").append("<span class='options'></span>");

				});
	</script>


	<script src="./js/spinner-input.js"></script>
	<script>
		$("input[type='number']").inputSpinner()
	</script>




</body>
</html>