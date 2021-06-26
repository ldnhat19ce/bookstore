<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flash Sale</title>
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
	<link rel="stylesheet" href="../css/flashsale.css">

<script type="text/javascript">
	$(function() {
		$("#txtFrom").datepicker({
			numberOfMonths : 1,
			onSelect : function(selected) {
				var dt = new Date(selected);
				dt.setDate(dt.getDate() + 1);
				$("#txtTo").datepicker("option", "minDate", dt);

			}
		});
		$("#txtTo").datepicker({
			numberOfMonths : 1,
			onSelect : function(selected) {
				var dt = new Date(selected);
				dt.setDate(dt.getDate() - 1);
				$("#txtFrom").datepicker("option", "maxDate", dt);
			}
		});
	});
	$('.week-picker .ui-datepicker-calendar tr').live('mousemove', function() {
		$(this).find('td a').addClass('ui-state-hover');
	});
	$('.week-picker .ui-datepicker-calendar tr').live('mouseleave', function() {
		$(this).find('td a').removeClass('ui-state-hover');
	});
</script>
</head>
<body>
	<jsp:include page="header_admin.jsp"></jsp:include>
	<div class="container-fluid px-0 h-100 dr-lf">
		<div
			class="row vh-100 collapse show no-gutters d-flex h-100 position-relative">

			<jsp:include page="menu_admin.jsp"></jsp:include>

			<div class="col p-3">
				<ul class="breadcrumb">
					<li><i class="fa fa-home" aria-hidden="true"></i> <a
						href="home-admin">Trang Chủ</a> <i
						class="fa fa-angle-double-right" aria-hidden="true"></i> Flash
						Sale <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
						href="flash-sale">Danh Sách</a></li>
				</ul>
				<div class="wrapper">
					<form action="" method="post">
						<div class="page-header">
							<div class="col">
								<div class="header-name-wrapper" style="display: flex;">
									<div class="header-name">Chương Trình Của Tôi</div>
									<div class="header-create">
										<a href="create-eventsale" type="button" class="btn">Tạo
											Chương Trình Khuyến Mãi Mới</a>
									</div>
								</div>
								<div class="book-tab">
									<div class="book-tabpanel">
										<div class="book-tab-table">
											<div class="book-table-header">
												<div class="book-table-main">
													<table>
								<thead>
									<tr>
										<th colspan="1" rowspan="1" style="width: 300px;">
											<div class="table-sale">
												<span class="table-sale-label"> Tên Chương
													Trình </span>
											</div>
										</th>
										<th colspan="1" rowspan="1" style="width: 300px;">
											<div class="table-sale">
												<span class="table-sale-label"> Sản Phẩm </span>
											</div>
										</th>
										<th colspan="1" rowspan="1" style="width: 140px;">
											<div class="table-sale">
												<span class="table-sale-label"> Từ </span>
											</div>
										</th>
										<th colspan="1" rowspan="1" style="width: 140px;">
											<div class="table-sale">
												<span class="table-sale-label"> Đến </span>
											</div>
										</th>
										<th colspan="1" rowspan="1" style="width: 175px;">
											<div class="table-sale">
												<span class="table-sale-label"> Thao Tác </span>
											</div>
										</th>
									</tr>




								</thead>
								<tbody>
								<c:forEach items="${flashsales}" var="flashsale">
									<tr style="background-color: rgba(250, 217, 97, .15)">
										<td class="is-body" style="width: 300px; height: 72px;">
											<div class="tb-sale">
												<div class="body-name">${flashsale.flashsaleName}</div>
												<div class="discount-status-component">
													<div class="discount-status">${flashsale.checkTime}</div>
													<div class="discount-time" style="padding-left: 0px;">
														${flashsale.countTime}</div>
												</div>
											</div>

										</td>
										<td class="is-body" style="width: 300px; height: 72px;">
											<div class="tb-sale">
												<div class="body-name">${flashsale.countRow} sản phẩm</div>

											</div>

										</td>
										<td class="is-body" style="width: 387px; height: 72px;">
											<div class="tb-sale">
												<div class="body-name f-sale">${flashsale.flashsaleStart}</div>

											</div>

										</td>
										<td class="is-body" style="width: 387px; height: 72px;">
											<div class="tb-sale">
												<div class="body-name f-sale">${flashsale.flashsaleEnd}</div>

											</div>

										</td>
										<td class="is-body" style="width: 387px; height: 72px;">
											<div class="tb-sale">
												<div class="body-name f-sale">
													<a href="#">Xóa</a> 
													<a href="edit-eventsale?flashsaleid=${flashsale.flashsaleId}">Chỉnh
														sửa</a>
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