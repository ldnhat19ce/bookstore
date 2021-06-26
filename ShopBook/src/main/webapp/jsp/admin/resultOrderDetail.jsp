<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENHAT
  Date: 10/7/2020
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="body-message">
    <div class="in-title">
        <h1>Hóa Đơn</h1>
    </div>
    <div class="in-content">
        <div class="in-x1">
            <h1>Đơn vị bán Hàng: BookStore.vn</h1>
            <p>Mã Giao dịch: ${orderId}</p>
            <p>Địa chỉ: Đà Nẵng</p>
            <p>Điện Thoại: 01332134343</p>
            <hr>
        </div>
        <div class="in-x1">
            <h1>Người mua hàng: ${userOrder.name}</h1>
            <p>Số Điện Thoại: 0843142161</p>
            <p>Email: ${userOrder.email}</p>
            <p>Địa chỉ: ${userOrder.address}</p>
            <p>Hình Thức Thanh Toán: ${payName}</p>
        </div>
        <div class="deal">
            <table class="1">
                <thead>
                <tr>
                    <th>Mã</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Số Lượng</th>
                    <th>Đơn Giá</th>
                    <th>Thành tiền</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orderDetails}" var="orderDetail">
                    <tr>
                        <td>${orderDetail.orderId}</td>
                        <td>${orderDetail.bookInformation.bookName}</td>
                        <td>${orderDetail.orderDetailAmount}</td>
                        <td>${orderDetail.orderDetailPrice}đ</td>
                        <td>${orderDetail.orderDetailPrice * orderDetail.orderDetailAmount}đ</td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
            <p>Cộng Tiền Hàng: ${price} đ</p>
            <hr/>
        </div>
    </div>
    </div>
