<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hóa Đơn</title>
	<link rel="apple-touch-icon" sizes="180x180" href="../apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="../favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="../favicon-16x16.png">
	<link rel="manifest" href="../site.webmanifest">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/styleadmin.css">
    <link rel="stylesheet" href="../css/print.css">
   
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
        <div class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">
        
        	<jsp:include page="menu_admin.jsp"></jsp:include>
        	
        	<div class="col p-3">
                <div class="breadcrumbs">
                    <ul class="breadcrumb">
                        <li class="xt1">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            <a href="home-admin">Trang Chủ</a>
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                            Quản Lí Giao Dịch
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                            <a href="deal-manager">Giao Dịch</a>
                        </li>
                        <div class="f-search">
                            <form action="" class="example">
                                <input type="text" placeholder="Search.." name="search2">
                                 <button type="submit"><i class="fa fa-search"></i></button>
                            
                            </form>
                        </div>
                    </ul>
                   
                </div>
                <div class="container">
                    <div class="deal">
                        <table>
                            <thead>
                            <tr>
                                <th>Mã Giao Dịch</th>
                                <th>Ngày Giao Dịch</th>
                                <th>Mã Khách Hàng</th>
                                <th>In</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${orders}" var="order">
                                    <tr>
                                        <td>${order.orderId}</td>
                                        <td>${order.dateOrder}</td>
                                            <td id="customer_id"><c:if test="${order.userId != 0}">
                                                ${order.userId}
                                            </c:if>
                                            <c:if test="${order.userId == 0}">
                                                ${order.keyId}
                                            </c:if>
                                            </td>
                                        <td><button data-toggle="modal"  data-target="#MyModal"
                                            data-id="${order.orderId}" class="open-homeEvents">
                                            <i class="fa fa-print" aria-hidden="true"></i>
                                        </button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="clearfix"></div>
                    <div class="cl cl2">
                        <ul class="pagination c">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
     <!--modal-->
    <div id="printThis">
        <div id="MyModal" class="modal fade" tabindex="-1"
             role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          
          <div class="modal-dialog modal-lg">
            
            <!-- Modal Content: begins -->
            <div class="modal-content">
            
              <!-- Modal Body -->  
              <div class="modal-body" id="order_detail">
                <div class="body-message">
                    <div class="in-title">
                        <h1>Hóa Đơn</h1>
                    </div>
                    <div class="in-content">
                        <div class="in-x1">
                            <h1>Đơn vị bán Hàng: BookStore.vn</h1>
                            <p>Mã Giao dịch: M123</p>
                            <p>Địa chỉ: xxx</p>
                            <p>Điện Thoại: 01332134343</p>
                            <hr>
                        </div>
                        <div class="in-x1">
                            <h1>Người mua hàng: Lê Thiện Nhân</h1>
                            <p>Số Điện Thoại: 0843142161</p>
                            <p>Email: ltnhan.19ce@sict.udn.vn</p>
                            <p>Địa chỉ: tam kỳ</p>
                            <p>Hình Thức Thanh Toán: internet - banking</p>
                            <p>Số tài Khoản: 2323232</p>
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
                                <tr>
                                    <td><span id="idHolder"></span></td>
                                    <td>Nhà Giả Kim</td>
                                    <td>5</td>
                                    <td>100.000đ</td>
                                    <td>500.000đ</td>
                                </tr>
                                
                                </tbody>
                            </table>
                            <p>Cộng Tiền Hàng: </p>
                            <hr/>
                        </div>
                    </div>
                    
                </div>
              </div>
            
              <!-- Modal Footer -->
              <div class="modal-footer">
               <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
              <button id="btnPrint" type="button" class="btn btn-default">Print</button>
              </div>
            
            </div>
            <!-- Modal Content: ends -->
            
          </div>
            </div>
        </div>

    <script>
        function getOrderDetail(orderId){
            var xhttp;
            var url = "detail-order?orderId="+orderId;
            if (window.XMLHttpRequest) {
                xhttp = new XMLHttpRequest();
            } else {
                xhhtp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            xhttp.onreadystatechange = function() {

                if (xhttp.readyState == 4) {
                    var data = xhttp.responseText;
                    document.getElementById("order_detail").innerHTML = data;
                }

            }
            xhttp.open("get", url, true);
            xhttp.send();
        }

        $(document).on("click", ".open-homeEvents", function () {
            var customerId = $(this).data('id');
            getOrderDetail(customerId);
            //$('#idHolder').html(customerId);
        });
    </script>
    
     <script>
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;
        
        for (i = 0; i < dropdown.length; i++) {
          dropdown[i].addEventListener("click", function() {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
          dropdownContent.style.display = "none";
          } else {
          dropdownContent.style.display = "block";
          }
          });
        }
     </script>	
     <script>
        document.getElementById("btnPrint").onclick = function () {
            var customerId = document.getElementById("customer_id").innerText;
            printElement(document.getElementById("printThis"));
 		 }
  
	  function printElement(elem) {
	      var domClone = elem.cloneNode(true);
	      
	      var $printSection = document.getElementById("printSection");
	      
	      if (!$printSection) {
	          var $printSection = document.createElement("div");
	          $printSection.id = "printSection";
	          document.body.appendChild($printSection);
	      }
	      
	      $printSection.innerHTML = "";
	      $printSection.appendChild(domClone);
	      window.print();
	  }
    </script>
</body>
</html>