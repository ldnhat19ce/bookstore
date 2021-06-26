<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
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
<link rel="stylesheet" href="./css/quick.css">
<script src="./js/modernizr.js"></script>
<meta name="description"
	content="Sách tiếng Việt
     - hệ thống nhà sách chuyên nghiệp. Đáp ứng tất cả các yêu cầu về sách." />

<script type="text/javascript">
    function search() {
		var xhttp;
		var searchname = document.searchform.searchname.value;
		
		if(searchname != " "){
		var url = "search?searchname="+searchname;
		if(window.XMLHttpRequest){
				xhttp = new XMLHttpRequest();
			}else{
				xhhtp = new ActiveXObject("Microsoft.XMLHTTP");
			}
		
			xhttp.onreadystatechange = function(){
 			
 				if(xhttp.readyState == 4){
 					var data = xhttp.responseText;
 	 				document.getElementById("result-search").innerHTML = data;
 				}
 			 	 	 	
 			}
			xhttp.open("get", url, true);
			xhttp.send();

		}else{
			document.getElementById("result-search").innerHTML = null;
		}
		
		
	}		
    </script>

<script type="text/javascript">
    	function validate1() {
			var username = document.form_register.username.value;
			var password = document.form_register.password.value;
			
			if(username == "" || password == ""){
				alert("hoàn thành các ô!");
				return false;
			}
		}
    	
    	function validate2(){
    		var username = document.form_register.username.value;
			var password = document.form_register.password.value;
			
			console.log(password);
			console.log(username);
			if(password != ""){
				if(password.length <= 6){
					document.getElementById("errorpass").innerHTML="mật khẩu phải dài hơn 6 kí tự";
				}else{
					document.getElementById("errorpass").style.display = "none";
				}
			}
    	}
    	
    	function validate3(){
    		var pre_pass = document.form_register.pre_pass.value;
			var password = document.form_register.password.value;
			
			if(password != "" && pre_pass != ""){
				if(pre_pass != password){
					document.getElementById("error2").innerHTML="mật khẩu không trùng nhau";
				}else{
					document.getElementById("error2").style.display = "none";
				}
			}
			
    	}
    
    </script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-1" id="result-search">
		<jsp:include page="menu.jsp"></jsp:include>

		<div class="swipper-slider">
			<div class="slider">
				<div id="slider" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="./images/Bia-1.jpg" class="d-block w-100" width="100%">
						</div>
						<c:forEach items="${banners}" var="banner">
							<div class="carousel-item">
								<img src="slideImage/${banner.image}" class="d-block w-100"
									width="100%">
							</div>
						</c:forEach>

					</div>
					<ol class="carousel-indicators">
						<li data-target="#slider" data-slide-to="0" class="active"></li>
						<li data-target="#slider" data-slide-to="1"></li>
						<li data-target="#slider" data-slide-to="2"></li>
						<li data-target="#slider" data-slide-to="3"></li>
					</ol>

				</div>
			</div>
		</div>


		<!--FEATURE-->
		<div class="clearfix"></div>
		<div class="featured-categories">
			<div class="row">
				<c:forEach items="${categories}" var="categories">
					<div class="col-md-3 row1">
						<img src="feature/${categories.featureCategoriesImage}">
					</div>

				</c:forEach>


			</div>
		</div>
		<!--/FEATURE-->

		<jsp:include page="flashsale.jsp"></jsp:include>

		<jsp:include page="rank.jsp" />
		
	</div>
	<jsp:include page="best-seller.jsp" />
	<jsp:include page="stationery.jsp" />



	<div class="popup-overlay"></div>
	<div class="popup">
		<div class="popup-close" onclick="closeLoginForm()">&times;</div>
		<div class="form">
			<div class="tab-login">
				<ul>
					<li class="tab-link ln-orange bd-orange"
						onclick="openLogin(event,'login')"><a href="#" class="">Đăng
							Nhập</a></li>
					<li class="tab-link" onclick="openLogin(event,'register')"><a
						href="#" class="">Đăng Kí</a></li>
				</ul>
			</div>
			<form action="LoginServlet" method="post">
				<div id="login" class="login-form-el fo">
					<div class="element">
						<label for="username">Tài Khoản</label> <input type="text"
							id="username" placeholder="nhập tài khoản..." name="username">
					</div>
					<div class="element">
						<label for="password">Mật Khẩu</label> <input type="password"
							id="password" placeholder="nhập mật khẩu..." name="password">
					</div>
					<div class="forgot-pass element">
						<span>Quên Mật Khẩu?</span>
					</div>
					<div class="element">
						<button>Đăng Nhập</button>
					</div>
				</div>
			</form>
			<form action="register" method="post" name="form_register"
				onsubmit="return validate1()">
				<div id="register" class="register-form-el fo"
					style="display: none;">
					<div class="element">
						<label for="username">Tài Khoản</label> <input type="text"
							id="username" placeholder="nhập tài khoản..." name="username">

					</div>
					<div class="element">
						<label for="password">Mật Khẩu</label> <input type="password"
							id="password" placeholder="nhập mật khẩu..." name="password"
							onkeyup="validate2()"> <label id="errorpass"
							style="color: red"></label>
					</div>

					<div class="element">
						<label for="password">Nhập Lại Mật Khẩu</label> <input
							type="password" id="prepass" placeholder="nhập lại mật khẩu..."
							name="pre_pass" onkeyup="validate3()"> <label id="error2"
							style="color: red;"> </label>
					</div>
					<div class="element">
						<button>Đăng Kí</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
		function openLoginForm() {
			document.body.classList.add("showLoginForm");
		}
		function closeLoginForm() {
			document.body.classList.remove("showLoginForm");
		}
	</script>

	<script>
		function openLogin(evt, cityName) {
			var i, x, tablinks, tabborder;
			x = document.getElementsByClassName("fo");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tab-link");

			for (i = 0; i < x.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" ln-orange", "");
				tablinks[i].className = tablinks[i].className.replace(
						" bd-orange", "");
			}

			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " ln-orange";
			evt.currentTarget.className += " bd-orange";

		}
	</script>

	<div class="website-features">
		<div class="container">
			<div class="row">
				<div class="col-md-3 feature-box">
					<img src="images/feature-1.png">
					<div class="feature-text">
						<p>
							<b>Hàng nguyên bản 100% </b>có sẵn tại công ty
						</p>
					</div>
				</div>
				<div class="col-md-3 feature-box">
					<img src="images/feature-2.png">
					<div class="feature-text">
						<p>
							<b>Trả hàng trong vòng 30 ngày </b>từ khi nhận được đơn hàng của
							bạn
						</p>
					</div>
				</div>
				<div class="col-md-3 feature-box">
					<img src="images/feature-3.png">
					<div class="feature-text">
						<p>
							<b>Giao hàng miễn phí cho mỗi đơn hàng trên</b>1.000.000đ
						</p>
					</div>
				</div>
				<div class="col-md-3 feature-box">
					<img src="images/feature-4.png">
					<div class="feature-text">
						<p>
							<b>Thanh Toán Trực Tuyến </b>(Card, Net banking)
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

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

	<script type="text/javascript">
		var countDownDate = new Date("${date}23:59:00").getTime();
	
		// Update the count down every 1 second
		var x = setInterval(function() {
	
		  // Get today's date and time
		  var now = new Date().getTime();
		    
		  // Find the distance between now and the count down date
		  var distance = countDownDate - now;
		    
		  // Time calculations for days, hours, minutes and seconds
		  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
		    
		  // Output the result in an element with id="demo"
		  document.getElementById("tm-sale").innerHTML = days + "d " + hours + "h "
		  + minutes + "m " + seconds + "s ";
		    
		  // If the count down is over, write some text 
		  if (distance < 0) {
		    clearInterval(x);
		    document.getElementById("tm-sale").innerHTML = "EXPIRED";
		  }
		}, 1000);


	
	</script>

	<!--QUICK VIEW-->
	<div class="cd-quick-view">
		<div class="cd-slider-wrapper">
			<ul class="cd-slider" id="id1">
				<li class="selected"><img id="selected"
					src="./images/Bia-1.jpg" name="selected"></li>
			</ul>
			<!-- cd-slider -->

		</div>
		<!-- cd-slider-wrapper -->

		<div class="cd-item-info" id="Finfor">
			<h2 class="cd-item-title">Produt Title</h2>
			<h5 class="cd-item-pulish">Nhà xuất bản:NXB Văn Học</h5>
			<h5 class="cd-item-form">hình thức bìa:Bìa Mềm</h5>
			<div class="cd-item-author">Tác giả:Diệp Lạc Vô Tâm</div>
			<p style="margin-left: 3px;" class="cd-item-content">Hàn Mạt Mạt,
				từ năm 8 tuổi đến năm 18 tuổi, cả cuộc sống của cô chỉ biết có anh,
				cần anh, theo anh, vì anh… Nếu đó không phải là tình yêu, phải chăng
				Mạt Mạt sẽ không cần đau lòng thêm nữa? Khi nhận ra tình yêu trẻ thơ
				của mình đối với anh chỉ là gánh nặng, cô đã quyết định buông tay,
				rời xa sự che chở của anh, rời xa sự ấm áp của anh. Nếu hạnh phúc
				của cô phải đánh đổi bằng sự chịu đựng của anh thì có lẽ cả đời này
				Mạt Mạt không cần thứ hạnh phúc xa xỉ ấy nữa</p>

			<ul class="cd-item-action" style="margin-left: 50px">
				<li><a class="add-to-cart btn" href="add-cart" id="add-to-cart">Thêm
						vào giỏ hàng</a></li>
				<li><a href="book-detail" id="detailx">xem thêm</a></li>
			</ul>
			<!-- cd-item-action -->
		</div>
		<!-- cd-item-info -->
		<a href="#0" class="cd-close" style="color: black;"></a>
	</div>
	<!-- cd-quick-view -->

	<script src="./js/velocity.min.js"></script>
	<script src="./js/main.js"></script>

	<script type="text/javascript">
      
      var a = document.getElementsByClassName("cd-trigger");
      var image_cap = document.getElementsByName("image_cap");
      var selected = document.getElementById("selected");
      var cart_title = document.getElementsByClassName("card-tt");
      var item_title = document.getElementsByClassName("cd-item-title");
      var item_form = document.getElementsByClassName("cd-item-form");
      var item_pulish = document.getElementsByClassName("cd-item-pulish");
      var item_author = document.getElementsByClassName("cd-item-author");
      	
      <c:forEach items="${flashsaleProducts}" var="flashsaleProduct">
	      a['${flashsaleProduct.count}'].addEventListener("click", function (){
	          var x = image_cap['${flashsaleProduct.count}'].src;
	          console.log(x);
	          var res = x.split("//");
	          var res2 = res[1].split("/");
	        selected.src = res2[1]+"/"+res2[2];
	        item_title[0].textContent = cart_title['${flashsaleProduct.count}'].textContent;
	        item_form[0].textContent = "Hình Thức Bìa: ${flashsaleProduct.bookInformation.form.formName}";
	        item_pulish[0].textContent = "Nhà Xuất Bản: ${flashsaleProduct.bookInformation.pulish.pulishName}";
	        item_author[0].textContent = "Tác Giả: ${flashsaleProduct.bookInformation.author.authorName}";
	        $("#add-to-cart").attr("href", "add-cart?bookid=${flashsaleProduct.bookInformation.bookId}");
	        $("#detailx").attr("href", "book-detail?bookId=${flashsaleProduct.bookInformation.bookId}");
	       
	       });
      </c:forEach>
      <c:forEach items="${products}" var="product">
	      a['${product.count}'].addEventListener("click", function (){
	          var x = image_cap['${product.count}'].src;
	          console.log(x);
	          var res = x.split("//");
	          var res2 = res[1].split("/");
	        selected.src = res2[1]+"/"+res2[2];
	        item_title[0].textContent = cart_title['${product.count}'].textContent;
	        item_form[0].textContent = "Hình Thức Bìa: ${product.bookInformation.form.formName}";
	        item_pulish[0].textContent = "Nhà Xuất Bản: ${product.bookInformation.pulish.pulishName}";
	        item_author[0].textContent = "Tác Giả: ${product.bookInformation.author.authorName}";
	        $("#add-to-cart").attr("href", "add-cart?bookid=${product.bookInformation.bookId}");
	        $("#detailx").attr("href", "book-detail?bookId=${product.bookInformation.bookId}");
	       });
  	</c:forEach>
  	
      		
			
      </script>


	<script type="text/javascript">
	     if(${msg!=null}){
	   		alert("${msg}");
	   	}
	     
	     if(${cartMsg != null}){
	    	 alert("${cartMsg}");
	     }
	     
     </script>




</body>
</html>