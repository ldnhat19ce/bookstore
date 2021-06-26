<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sách</title>
<link rel="apple-touch-icon" sizes="180x180"
	href="../apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="../favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="../favicon-16x16.png">
<link rel="manifest" href="../site.webmanifest">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/styleadmin.css">
	<style type="text/css">
		.main-content td{
	    max-width: 200px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
}
  
	</style>
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
		<div
			class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">

			<jsp:include page="menu_admin.jsp"></jsp:include>

			<div class="col p-3">
				<div class="main-content">
					<div class="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="fa fa-home" aria-hidden="true"></i> <a
								href="home-admin">Trang Chủ</a> <i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Quản Lí
								Sách <i class="fa fa-angle-double-right" aria-hidden="true"></i>
								<a href="adminlistbook?pageid=1">Danh Sách</a></li>
						</ul>


						<table class="table table-striped table-responsive-md btn-table">

							<thead>
								<tr>
									<th>id</th>
									<th>Tên Sách</th>
									<th>Nhà Cung Cấp</th>
									<th>NXB</th>
									<th>Tác giả</th>
									<th>chi tiết</th>
								</tr>
							</thead>

							<tbody>

								<c:forEach items="${bookInformations}" var="bookInformations">
									<tr>
										<th scope="row" title="${bookInformations.bookId}">${bookInformations.bookId}</th>
										<td title="${bookInformations.bookName}">${bookInformations.bookName}</td>
										<td title="${bookInformations.supplier.supplierName}">${bookInformations.supplier.supplierName}</td>
										<td title="${bookInformations.pulish.pulishName}">${bookInformations.pulish.pulishName}</td>
										<td title="${bookInformations.author.authorName}">${bookInformations.author.authorName}</td>

										<td><a
											href="detail-book?bookid=${bookInformations.bookId}"
											class="btn btn-teal btn-rounded btn-sm m-0"> <i
												class="fa fa-pencil-square-o" aria-hidden="true"></i>
										</a></td>
									</tr>
								</c:forEach>


							</tbody>

						</table>
						<div class="pagin">
							<div class="insert">
								
								<a href="create-book" class="btn"
									style="background-color: aqua;">Thêm Sách</a> 
									<a href="exel-book" class="btn" style="background-color: aqua;">import EXEL</a>
							</div>
							<div class="in">
								<ul class="pagination">
									<c:if test="${pageid == 1}">
										<li class="page-item disabled"><a class=" page-link"
											href="#">Previous</a></li>

										<li class="page-item"><a class="page-link"
											href="adminlistbook?pageid=${pageid+1}">Next</a></li>
									</c:if>
									<c:if test="${pageid == maxpageid}">
										<li class="page-item"><a class="page-link"
											href="adminlistbook?pageid=${pageid-1}">Previous</a></li>

										<li class="page-item disabled"><a class="page-link"
											href="#">Next</a></li>
											
									</c:if>
									<c:if test="${pageid < maxpageid && pageid > 1}">
										<li class="page-item"><a class="page-link"
											href="adminlistbook?pageid=${pageid-1}">Previous</a></li>

										<li class="page-item"><a class="page-link"
											href="adminlistbook?pageid=${pageid+1}">Next</a></li>
											
									</c:if>

								</ul>
							</div>

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