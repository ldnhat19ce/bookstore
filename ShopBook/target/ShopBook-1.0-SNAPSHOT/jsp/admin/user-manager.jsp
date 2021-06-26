<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lí Người Dùng</title>
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
    <link rel="stylesheet" href="../css/modal.css">
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
                            <a href="HomeAdmin.html">Trang Chủ</a>
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                            Quản Lí User
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                            <a href="Adminliterary.html">Tài Khoản Thường</a>
                        </li>
                        <div class="f-search">
                            <form action="" class="example">
                                <input type="text" placeholder="Search.." name="search2">
                                 <button type="submit"><i class="fa fa-search"></i></button>
                            
                            </form>
                        </div>
                    </ul>
                   
                </div>
                 <div class="c-title">
                 	<div class="card" style="width:230px">
                        <img class="card-img-top" src="./images/ava1.jpg" alt="Card image" style="width:100%">
                        <div class="card-body">
                          <h4 class="card-title">Tài Khoản: John Doe</h4>
                          <p class="card-text">Mã Thành Viên: M435</p>
                          <a href="#" class="btn btn-primary" 
                          onclick="document.getElementById('id01').style.display='block'">
                              xem thông tin</a>
                          <button class="btn btn-primary">xóa</button>
                        </div>
                    </div>
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