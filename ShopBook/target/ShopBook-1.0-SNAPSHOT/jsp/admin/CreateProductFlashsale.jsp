<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add product</title>
	<link rel="apple-touch-icon" sizes="180x180" href="../apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="../favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="../favicon-16x16.png">
	<link rel="manifest" href="../site.webmanifest">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="../css/styleadmin.css">
    <link rel="stylesheet" href="../css/addevent.css">
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
        <div class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">
        
        	<jsp:include page="menu_admin.jsp"></jsp:include>
        	
        	<div class="col p-3">
                <ul class="breadcrumb">
	                <li style="color: black;">
	                    <i class="fa fa-home" aria-hidden="true"></i>
	                    <a href="home-admin">Trang Chủ</a>
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    Flash Sale
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    <a href="flash-sale">Danh Sách</a>
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    <a href="create-productsale?flashsaleid=${flashsaleId}">Thêm Sản Phẩm</a>
	                </li>
               </ul>
               <div class="container">
                    <div class="table-wrapper">
                      <div class="table-title">
                        <div class="row">
                          <div class="col-sm-12 col-md-12">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                <i class="material-icons">&#xE147;</i> <span>Excel</span></a>
                            
                          </div>
                        </div>
                      </div>
                      <div class="table-x">
                      <form action="create-productsale?flashsaleid=${flashsaleId}" method="post">
                        <table class="table table-striped table-hover tb-2">
                        
                          <thead>
                            <tr>
                              <th>
                                <span class="custom_checkbox">
                                  <input type="checkbox" id="selectAll"><label for="selectAll"></label>
                                </span>
                              </th>
                              <th>Mã Sản Phẩm</th>
                              <th>Tên Sản Phẩm</th>
                              <th>Giới Hạn Số Lượng</th>
                              <th>Giá đã giảm</th>
                              <th>Thao Tác</th>
                            </tr>
                          </thead>
                          <tbody>
                          
                          <c:forEach items="${bookInformations}" var="bookInformation">
                          	<tr>
	                              <td>
	                                <span class="custom_checkbox">
	                                  <input type="checkbox" id="checkbox1" name="options[]" value="${bookInformation.bookId}">
	                                  <label for="checkbox1"></label>
	                                </span>
	                              </td>
	                              <td>${bookInformation.bookId}</td>
	                              <td class="pxxx" title="${bookInformation.bookName}">${bookInformation.bookName}</td>
	                              <td><input type="number" name="productQuantitylimit"></td>
	                              <td><input type="text" name="productDiscount"></td>
	                              <td>
	                                <a href="#" class="edit open-homeEvents"
                                        data-id="${bookInformation.bookId}" data-toggle="modal" data-target="#MyModal">
	                                  <i class="material-icons" data-toggle="tooltip" title="View">&#xE254;</i></a>
	                                               
	                              </td>
                            </tr>
                          </c:forEach>
                          </tbody>
                        </table>
                        	<input type="submit" value="thêm"/>
                        </form>
                      </div>
                      
                    </div>
                  </div>
            </div>
        </div>
    </div>
    
    <!-- Delete Modal HTML -->
                  <div id="MyModal" class="modal fade bd-example-modal-lg">
                    <div class="modal-dialog  modal-lg" id="result_product">
                      <div class="modal-content">
                        <form>
                          <div class="modal-header" >						
                            <h4 class="modal-title" style="color: black;">Thông tin</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          </div>
                          <div class="modal-body">					
                            <table class="table table-striped table-responsive-md
                            btn-table tb-x1" style="margin-top: 10px;">
           
                             <thead>
                              
                             </thead>
                           
                             <tbody >
                             
                               <tr> 
                                 <th scope="row">Mã Sách</th>
                                 <td>MS1</td>
                               </tr>
                               <tr > 
                                 <th scope="row">Tên Sách</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Nội Dung</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Số Lượng</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Năm Sản Xuất</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Trọng Lượng</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Kích Thước</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Số Trang</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Nhà Xuất Bản</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Nhà Cung Cấp</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Hình Thức Bìa</th>
                                 <td>Nhà giả kim</td>
                               </tr>
                               <tr> 
                                 <th scope="row">Tác giả</th>
                                 <td>Nhà giả kim</td>
                               </tr>

                              
                             </tbody>
                           
                           </table>
                           <span id="idHolder"></span>
                          </div>s
                          <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Thêm">
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
    
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

            function getProduct(bookId){
                var xhttp;
                var url = "flashsale-detail-product?bookid="+bookId;
                if (window.XMLHttpRequest) {
                    xhttp = new XMLHttpRequest();
                } else {
                    xhhtp = new ActiveXObject("Microsoft.XMLHTTP");
                }

                xhttp.onreadystatechange = function() {

                    if (xhttp.readyState == 4) {
                        var data = xhttp.responseText;
                        document.getElementById("result_product").innerHTML = data;
                    }

                }
                xhttp.open("get", url, true);
                xhttp.send();
            }

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
                        document.getElementById("result_product").innerHTML = data;
                    }

                }
                xhttp.open("get", url, true);
                xhttp.send();
            }

            function getName(){
                document.getElementById("result_product").innerHTML = "1234";
            }

            $(document).on("click", ".open-homeEvents", function () {
                var bookId = $(this).data('id');
                getProduct(bookId);
            });
        </script>
     
      <script>
                $(document).ready(function(){
            // Activate tooltip
            $('[data-toggle="tooltip"]').tooltip();
            
            // Select/Deselect checkboxes
            var checkbox = $('table tbody input[type="checkbox"]');
            $("#selectAll").click(function(){
                if(this.checked){
                    checkbox.each(function(){
                        this.checked = true;                        
                    });
                } else{
                    checkbox.each(function(){
                        this.checked = false;                        
                    });
                } 
            });
            checkbox.click(function(){
                if(!this.checked){
                    $("#selectAll").prop("checked", false);
                }
            });
        });
     </script>
</body>
</html>