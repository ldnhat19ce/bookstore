<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
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
    <link rel="stylesheet" href="../css/editeven.css">
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
        <div class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">
        
        	<jsp:include page="menu_admin.jsp"></jsp:include>
        	
        	<div class="col p-3">
                <ul class="breadcrumb">
	                <li>
	                    <i class="fa fa-home" aria-hidden="true"></i>
	                    <a href="home-admin">Trang Chủ</a>
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    Flash Sale
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    <a href="flash-sale">Danh Sách</a>
	                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
	                    <a href="edit-eventsale">Chỉnh sửa</a>
	                </li>
               </ul>
               <div class="page-header">
                    <div class="page-header-name">
                        <div class="page-header-name-wrapper">
                            <div class="header-name">
                                ${flashsale.flashsaleName}
                            </div>
                            <div class="header-action">
                                <a href="#" class="btn">Xóa</a>
                            </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="page-header-meta">
                                <div class="discount-status">
                                    ${flashsale.checkTime}
                                </div>
                                <div class="discount-time">
                                    ${flashsale.countTime}
                                </div>
                            </div>
                            <div class="page-detail-type">
                                <label class="page-title">Loại</label>
                                <label style="cursor: text;">Khuyến mãi</label>
                            </div>
                            <div class="page-detail-period">
                                <label class="page-title">Thời gian diễn ra sự kiện</label>
                                <label style="cursor: text;">01:00 ${flashsale.flashsaleStart} - 23:59 ${flashsale.flashsaleEnd}</label>
                                <label style="margin-left: 10px;"><a href="#">Sửa Khuyến mãi</a></label>
                            </div>
                    </div>
                    
                </div>
                <div class="product-header">
                    <div class="book-tab" >
                        <div class="book-tabpanel">
                              <div class="book-tab-table">
                                  <div class="book-table-header">
                                      <div class="book-table-main">
                                          <table class="tb1">
                                              <thead>
                                                <tr>
                                                  <th colspan="1" 
                                                  rowspan="1" class="th1">
                                                    <div class="table-sale">
                                                        <span class="table-sale-label">
                                                            Mã Sản Phẩm
                                                        </span>  
                                                    </div>
                                                </th>
                                                <th colspan="1" rowspan="1" class="th2">
                                                  <div class="table-sale">
                                                      <span class="table-sale-label">
                                                          Tên Sản Phẩm
                                                      </span>  
                                                  </div>
                                              </th>
                                              <th colspan="1" rowspan="1" class="th4">
                                                <div class="table-sale">
                                                    <span class="table-sale-label">
                                                        Giới Hạn Đặt Hàng  
                                                    </span>  
                                                </div>
                                            </th>
                                            <th colspan="1" rowspan="1"  class="th3">
                                              <div class="table-sale">
                                                  <span class="table-sale-label">
                                                        Gía Gốc
                                                  </span>  
                                              </div>
                                          </th>
                                          <th colspan="1" rowspan="1" class="th3">
                                            <div class="table-sale">
                                                <span class="table-sale-label">
                                                    Giá Đã Giảm
                                                </span>  
                                            </div>
                                            </th>
                                             <th colspan="1" rowspan="1" class="th3">
                                                <div class="table-sale">
                                                    <span class="table-sale-label">
                                                        Thao Tác
                                                    </span>  
                                                </div>
                                            </th>
                                        </tr>
                                                  
                                                  
                                                  

                                              </thead>
                                        <tbody>
                                        <c:forEach items="${flashsaleProducts}" var="flashsaleProduct">
                                        	<tr style="background-color: rgba(250,217,97,.15)">
                                                <td class="is-body td1" >
                                                  <div class="tb-sale">
                                                    <div class="body-name" style="width: 100px;">
                                                      ${flashsaleProduct.bookInformation.bookId}
                                                  </div>
                                                 
                                                  </div>
                                                    
                                                </td>
                                                <td class="is-body td2">
                                                  <div class="tb-sale">
                                                    <div class="body-name" style="width: 200px;" 
                                                    title=" ${flashsaleProduct.bookInformation.bookName}">
                                                        ${flashsaleProduct.bookInformation.bookName}
                                                  </div>
                                                 
                                                  </div>
                                                    
                                                </td>
                                                <td class="is-body td4" >
                                                  <div class="tb-sale">
                                                    <div class="body-name f-sale" style="text-align: center;">
                                                      ${flashsaleProduct.productQuantitylimit}
                                                  </div>
                                                 
                                                  </div>
                                                    
                                                </td>
                                                <td class="is-body td3" >
                                                  <div class="tb-sale">
                                                    <div class="body-name f-sale">
                                                       ${flashsaleProduct.bookInformation.bookPrice}
                                                  </div>
                                                 
                                                  </div>
                                                    
                                                </td>
                                                <td class="is-body td3" >
                                                  <div class="tb-sale">
                                                    <div class="body-name f-sale">
                                                         ${flashsaleProduct.productDiscount}
                                                  </div>
                                                 
                                                  </div>
                                                    
                                                </td>
                                                <td class="is-body td3">
                                                    <div class="tb-sale">
                                                      <div class="body-name f-sale">
                                                            <a href="#" class="btn" style="color: red;">Xóa</a>
                                                    </div>
                                                   
                                                    </div>
                                                      
                                                  </td>
                                            </tr>
                                        </c:forEach>
                                            
                                            

                                        </tbody>

                                          </table>
                                          
                                      </div>
                                  </div>
                              </div>
                        </div>
                    </div>  
                </div>
                <div class="create-product">
                  <a href="create-productsale?flashsaleid=${flashsaleId}" class="btn" type="button">Thêm Sản Phẩm</a>
                </div>
                
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
</body>
</html>