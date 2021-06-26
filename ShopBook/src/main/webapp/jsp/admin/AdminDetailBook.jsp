<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${bookinformation.bookName}</title>
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
    <link rel="stylesheet" href="../css/detail.css">
    <link rel="stylesheet" href="../css/modal.css">
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
        <div class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">
        
        	<jsp:include page="menu_admin.jsp"></jsp:include>
        	
        	<div class="col p-3">
                	<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a
							href="home-admin">Trang Chủ</a></li>

						<li><a href="adminlistbook?pageid=1">Danh Sách</a></li>
						<li class="active">Chi tiết</li>

					</ul>

				</div>
				${msg}
				<table
					class="table table-striped table-responsive-md
                 btn-table"
					style="margin-top: 10px;">

					<thead>

					</thead>

					<tbody>
						<tr>
							<th scope="row">Mã Sách</th>
							<td>${bookinformation.bookId}</td>
						</tr>
						<tr>
							<th scope="row">Tên Sách</th>
							<td>${bookinformation.bookName}</td>
						</tr>
						<tr>
							<th scope="row">Nội Dung</th>
							<td>${bookinformation.bookContent}</td>
						</tr>
						<tr>
							<th scope="row">Số Lượng</th>
							<td>${bookinformation.bookAmount}</td>
						</tr>
						<tr>
							<th scope="row">Giá</th>
							<td>${bookinformation.bookPrice}</td>
						</tr>
						<tr>
							<th scope="row">Ảnh Bìa</th>
							<td>${bookinformation.mainImage}</td>
						</tr>
						<tr>
							<th scope="row">Năm Sản Xuất</th>
							<td>${bookinformation.bookDate}</td>
						</tr>
						<tr>
							<th scope="row">Trọng Lượng</th>
							<td>${bookinformation.bookWeight}</td>
						</tr>
						<tr>
							<th scope="row">Kích Thước</th>
							<td>${bookinformation.booksize}</td>
						</tr>
						<tr>
							<th scope="row">Số Trang</th>
							<td>${bookinformation.numberPage}</td>
						</tr>
						<tr>
							<th scope="row">Nhà Xuất Bản</th>
							<td>${bookinformation.pulish.pulishName}</td>
						</tr>
						<tr>
							<th scope="row">Nhà Cung Cấp</th>
							<td>${bookinformation.supplier.supplierName}</td>
						</tr>
						<tr>
							<th scope="row">Hình Thức Bìa</th>
							<td>${bookinformation.form.formName}</td>
						</tr>
						<tr>
							<th scope="row">Tác giả</th>
							<td>${bookinformation.author.authorName}</td>
						</tr>

					</tbody>

				</table>
				<ul class='grid'>
					<c:forEach items="${images}" var="image">
						<li>
							<div class="card">

								<img src="../bookinforimage/${image.bookImageName}"
									alt="Background" />
								<div class="back-side">
									<a href="#">Delete</a>
								</div>
								<div class="in-side">
									<a 
									href="update-main-image?img=${image.bookImageName}&bookid=${bookinformation.bookId}">Main</a>
								</div>
							</div>
						</li>
					</c:forEach>





				</ul>
				<div class="pagin">
					<div class="insert">
						<a href="AdminCreateBook.html" class="btn"
							style="background-color: aqua;">Chỉnh sửa</a>
						<button
							onclick="document.getElementById('id01').style.display='block'"
							style="width: auto;">Thêm Hình</button>
					</div>

				</div>
                	
                
            </div>
        </div>
    </div>
    
    <!-- MODAL -->
	<div id="id01" class="modal">
		<form class="modal-content animate"
			action="book-image?bookid=${bookinformation.bookId}"
			enctype="multipart/form-data" method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>

			<div class="container-1 vc">

				<label for="psw"><b>Hình Ảnh</b></label> <input type="file"
					id="input-file-now-custom-1 files" name="files" class="file-upload"
					multiple />

				<button type="submit">Hoàn Thành</button>
			</div>


		</form>

	</div>
	<script type="text/javascript">
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
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
</body>
</html>