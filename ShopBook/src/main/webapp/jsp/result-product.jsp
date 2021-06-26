<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENHAT
  Date: 10/7/2020
  Time: 3:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <a href="book-detail?bookId=${bookInformation.bookId}" class="content-product-h3">${bookInformation.bookName}</a>

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
                       href="#"
                       style="border: 1px solid black;"
                       onclick="save_to_db('${bookInformation.bookId}')">
                        Thêm Vào Giỏ</a>

                </div>
            </li>
        </c:forEach>

    </ul>
</div>
