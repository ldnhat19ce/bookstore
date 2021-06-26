<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tạo Chương Trình</title>
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
  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" 
    href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="../css/flashsale.css">
    <script type="text/javascript">
      $(function () {
          $("#txtFrom").datepicker({
              numberOfMonths: 1,
              onSelect: function (selected) {
                  var dt = new Date(selected);
                  dt.setDate(dt.getDate() + 1);
                  $("#txtTo").datepicker("option", "minDate", dt);

              }
          });
          $("#txtTo").datepicker({
              numberOfMonths: 1,
              onSelect: function (selected) {
                  var dt = new Date(selected);
                  dt.setDate(dt.getDate() - 1);
                  $("#txtFrom").datepicker("option", "maxDate", dt);
              }
          });
      });
      $('.week-picker .ui-datepicker-calendar tr').live('mousemove', 
      function() { $(this).find('td a').addClass('ui-state-hover'); });
    $('.week-picker .ui-datepicker-calendar tr').live('mouseleave', 
    function() { $(this).find('td a').removeClass('ui-state-hover'); });
      </script>
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
                    <a href="create-eventsale">Tạo Chương Trình</a>
                </li>
               </ul>

              <div class="wrapper">
                  <form action="create-eventsale" method="post">
                      <div class="page-header">
                          <div class="col">
                          		<h4>${msg}</h4>
                              <div class="header-name-wrapper">
                                  <div class="header-name">
                                        Tạo Chương Trình Khuyến Mại Mới
                                  </div>
                              </div>
                              <div class="header-sub-editing" style="font-size: 14px;">
                                Vui lòng điền thông tin chi tiết về Chương Trình Khuyến Mãi của bạn và giá của từng sản phẩm
                              </div>
                              <div class="editor-title">
                                Thông Tin Khuyến Mãi
                              </div>
                              <div class="header-title-item">
                                    <label class="h-title">Tên chương trình khuyến mãi</label>
                                    <label><input type="text" placeholder="tên chương trình.."
                                    name="flashsaleName"></label>
                              </div>
                              <div class="header-title-time">
                                  <label class="h-title">Thời gian khuyến mại</label>
                                  <label class="h-input">
                                  <input type="text" id="txtFrom" placeholder="bắt đầu..."
                                  name="flashsaleStart"></label>
                                  <label class="h-input"><input type="text" id="txtTo" placeholder="kết thúc..." 
                                  name="flashsaleEnd"/></label>
                              </div>
                            
                    
                            
                          </div>
                          <div class="header-accept">
                            <label class="h-title"></label>
                              <button type="submit">Lưu & Tiếp Tục</button>
                          </div>
                        
    
                      </div>
                    
                  </form>
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