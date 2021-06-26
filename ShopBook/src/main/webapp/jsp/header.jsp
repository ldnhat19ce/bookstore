<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
						
						<form class="search-container" name="searchform">
							<input type="text" id="search-bar"
								placeholder="Tìm Kiếm Sản Phẩm Mong Muốn..." size="65" name="searchname" onkeyup="search()">

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
								<div class="noti-main">
									
								</div>
							</div>
	
						</div>
						<div class="cart-top">
							<a href="cart">
								<div class="header-cart-icon">
									<label><i class="fa fa-shopping-cart fa-lg"
										aria-hidden="true"></i></label>
								</div>
								<div class="header-cart-title">Giỏ Hàng
								</div>
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
                                    <label ><i class="fa fa-user-o fa-lg" aria-hidden="true"></i></label>
                                </div>
                                <div class="header-user-title">
                                    Tài Khoản
                                </div>
                            </a>

                            <div class="user-pop">
                                <div class="user-main">
                                    <div class="user-main-title">
                                        <label for=""><i class="fa fa-cog fa-lg" aria-hidden="true"></i></label>
                                        <label for="setting-user">
                                            <a href="#" id="setting-user">Cài Đặt Tài Khoản</a></label>
                                        
                                        
                                    </div>
                                    <div class="user-mo">
                                        <label for=""><i class="fa fa-sign-in fa-lg" aria-hidden="true"></i></label>
                                        <label for="user-logout"><a href="logout" class="user-logout">Đăng Xuất</a></label>
                                        
                                        
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
									<a href="Account.html" type="button" class="btn">Đăng Nhập</a>
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
							<div class="header-cart-title">Giỏ Hàng
							</div>
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
								<label><i class="fa fa-sign-in fa-lg" aria-hidden="true"></i></label>
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