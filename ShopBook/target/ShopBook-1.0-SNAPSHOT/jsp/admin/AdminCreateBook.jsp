<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Thêm Sách</title>
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
    <link rel="stylesheet" href="../css/option_picker.css">
    
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
        <div class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">
        
        	<jsp:include page="menu_admin.jsp"></jsp:include>
        	
        	<div class="col p-3">
                <h3>${msg}</h3>
				<form action="create-book" method="post">
                    <div class="form-group">
                      <label for="inputBookid">Mã Sách</label>
                      <input type="text" class="form-control" id="inputBookid" 
                      placeholder="Mã Sách" name="bookid"/>
                      
                    </div>
                    <div class="form-group">
                        <label for="inputbookname">Tên Sách</label>
                        <input type="text" class="form-control" id="inputbookname" 
            			 placeholder="Tên Sách" name="bookname"/>
                        
                      </div>
                      <div class="form-group">
                        <label for="inputbookcategory">Thể Loại</label>
                         <select class="form-control form-control-xs selectpicker" id="inputbookcategory" 
                        	name="category" data-live-search="true" data-title="Chọn thể loại..." data-width="100%" >
                          
                          <c:forEach items="${bookCategories}" var="bookCategories">
                          		<option value="${bookCategories.categoryId}">${bookCategories.categoryName}</option>
                          </c:forEach>
                        </select>
                        
                      </div>
                    <div class="form-group">
                      <label for="inputbookcontent">Nội dung</label>
                      <input type="text" class="form-control" 
                      id="inputbookcontent" placeholder="nội dung" name="bookcontent"/>
                    </div>
                     <div class="form-group">
                      <label for="inputbookamount">Số Lượng</label>
                      <input type="text" class="form-control" 
                      id="inputbookamount" placeholder="Số Lượng" name="bookamount"/>
                    </div>
                     <div class="form-group">
                      <label for="inputbookprice">Giá</label>
                      <input type="text" class="form-control" 
                      id="inputbookprice" placeholder="giá" name="bookprice"/>
                    </div>
                    <div class="form-group">
                        <label for="inputbookdate">Năm Sản Xuất</label>
                        <input type="date" class="form-control" 
                        id="inputbookdate"  name="bookdate" />
                    </div>
                    <div class="form-group">
                        <label for="inputbookweight">Trọng Lượng</label>
                        <input type="text" class="form-control" 
                        id="inputbookweight" placeholder="Trọng Lượng" name="bookweight"/>
                    </div>
                    <div class="form-group">
                        <label for="inputbooksize">Kích Thước</label>
                        <input type="text" class="form-control" 
                        id="inputbooksize" placeholder="Kích Thước" name="booksize"/>
                    </div>
                    <div class="form-group">
                        <label for="inputbooknumberpage">Số Trang</label>
                        <input type="number" class="form-control" 
                        id="inputbooknumberpage" placeholder="Số trang" name="numberpage"/>
                    </div>
                    <div class="form-group">
                        <label for="selectauthor">Tác Giả</label>
                        <select class="form-control form-control-xs selectpicker" id="selectauthor" 
                        name="author" data-live-search="true" data-title="Chọn tác giả..." data-width="100%">
                          
                          <c:forEach items="${authors}" var="author">
                          		<option value="${author.authorId}">${author.authorName}</option>	
                          </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="selectpulishing">Nhà Xuất Bản</label>
                        <select class="form-control form-control-xs selectpicker" id="selectpulishing"
                         name="pulish" data-live-search="true" data-title="Chọn nhà xuất bản..." data-width="100%">
                         
                          <c:forEach items="${pulishs}" var="pulish">
                         		 <option value="${pulish.pulishId}" data-tokens="${pulish.pulishName}">
                         		 ${pulish.pulishName}</option> 		
                          </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="selectsupplier">Nhà Cung Cấp</label>
                        <select class="form-control form-control-xs selectpicker" multiple data-size="7" id="selectsupplier" 
                        name="supplier" data-live-search="true" data-title="Chọn nhà cung cấp..." data-width="100%">
                          
                          <c:forEach items="${suppliers}" var="supplier">
                          		<option value="${supplier.supplierId}" data-tokens="${supplier.supplierName}">
                          		${supplier.supplierName}</option>
                          </c:forEach>
                          
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="selectform">Hình Thức</label>
                        <select class="form-control" id="selectform" name="form">
                          
                          <c:forEach items="${forms}" var="form">
                          		<option value="${form.formId}">${form.formName}</option>		
                          </c:forEach>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Hoàn Thành</button>
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
      <script src="../js/select_option_piker.js"></script>
</body>
</html>