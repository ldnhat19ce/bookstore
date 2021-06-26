<%--
  Created by IntelliJ IDEA.
  User: LENHAT
  Date: 9/24/2020
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="cart-product-main" >
    <li>
        <c:if test="${not empty msg}">
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
                            <a href="#" onclick="delete_cart('${listCart.bookInformation.bookId}')">Xóa</a>
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
