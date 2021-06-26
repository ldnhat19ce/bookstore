<%--
  Created by IntelliJ IDEA.
  User: LENHAT
  Date: 10/5/2020
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon-16x16.png">
    <link rel="manifest" href="./site.webmanifest">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/ws.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/quick.css">
    <script src="./js/modernizr.js"></script>
    <meta name="description"
          content="Sách tiếng Việt
     - hệ thống nhà sách chuyên nghiệp. Đáp ứng tất cả các yêu cầu về sách." />
    <link rel="stylesheet" href="./css/Payment.css">
</head>
<body>
<div class="container-1">
    <div class="form-success">
        <div class="form-success-title">
            Đơn Hàng Của Bạn Đã Được Tiếp Nhận
        </div>
        <div class="form-infor">
            <div class="form-success-Name">
                <label ><i class="fa fa-user-o fa-lg" aria-hidden="true"></i> </label>
                <label><b>${user.fullname}</b></label>
            </div>
            <div class="form-success-Location">
                <label><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i></label>
                <label><b>${addr}</b></label>
            </div>
            <div class="form-success-code">
                <div style="float: left;">Mã đơn hàng của bạn là:</div>
                <p style="color: orangered; float: left;">#${orderId}</p>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="form-success-price">
            Đơn hàng của bạn trị giá ${user.price} đ
        </div>

        <div class="form-success-button more-flash">
            <a href="trang-chu" class="btn">Tiếp Tục Mua Sắm</a>
        </div>
    </div>
</div>
</body>
</html>
