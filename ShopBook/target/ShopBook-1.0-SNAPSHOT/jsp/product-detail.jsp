<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${bookInformation.bookName}</title>
<link rel="apple-touch-icon" sizes="180x180"
	href="./apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./favicon-16x16.png">
<link rel="manifest" href="./site.webmanifest">
<!-- Font Awesome, Style -->
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" type="text/css" href="./css/productdetail.css">
<link rel="stylesheet" type="text/css" href="./js/owl.carousel.min.css">
<link rel="stylesheet" type="text/css" href="./js/smoothproducts.css">
<link rel="stylesheet" href="./css/ws.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="header.jsp" />

	<!-- Product Detail Page Start -->
	<div class="product-detail">
		<div class="container">
			<div class="product-detail-left">
				<div class="sp-loading">
					<img src="images/sp-loading.gif"> Loading Images
				</div>
				<div class="sp-wrap">
					<c:forEach items="${images}" var="images">
						<a href="bookinforimage/${images.bookImageName}"><img
						src="bookinforimage/${images.bookImageName}" alt=""></a> 
					</c:forEach>
					
				</div>
			</div>
			<div class="product-detail-right">
				<h3>
				${bookInformation.bookName}
				<br> 
				<small>Code : ${bookInformation.bookId}</small>
				</h3>
				<h5>
					<b>Nhà cung cấp : </b>${bookInformation.supplier.supplierName}
				</h5>
				<h5>
					<b>Nhà xuất bản : </b>${bookInformation.pulish.pulishName}
				</h5>
				<h5>
					<b>Tác Giả: </b>${bookInformation.author.authorName}
				</h5>
				<h5>
					<b>Thể Loại: </b>Ngôn Tình
				</h5>
				<h5>
					<b>Hình Thức Bìa: </b>${bookInformation.form.formName}
				</h5>
				<h5>
					<b>Chất lượng: </b>Tốt
				</h5>
				<h5>
					<b>Giá Bán: </b>${bookInformation.bookPrice} đ <s style="font-size: 15px;">${bookInformation.bookPrice} đ</s>
				</h5>
				<a href="add-product?bookid=${bookInformation.bookId}" class="addtocart"><i class="fas fa-heart"></i> Thêm
					Vào giỏ hàng</a> <a href="#" class="writereview"><i
					class="fas fa-pen"></i> Đánh giá</a> <a href="#" class="buynow"><i
					class="fas fa-shopping-cart"></i> Mua Ngay</a>
			</div>
			<div class="clr"></div>
			<div class="container tx">
				<div class="w3-bar w3-black">
					<button class="w3-bar-item w3-button tablink w3-red"
						onclick="openCity(event,'sp')">Thông tin sản phẩm</button>
					<button class="w3-bar-item w3-button tablink"
						onclick="openCity(event,'cmt')">Khách hàng nhận xét</button>

				</div>
				<div id="sp" class=" city">
					<div class="product-detail-feature">
						<p>Mã hàng</p>
						<p>${bookInformation.bookId}</p>
						<p>Tên Nhà Cung Cấp</p>
						<p>${bookInformation.supplier.supplierName}</p>
						<p>Tác giả</p>
						<p>${bookInformation.author.authorName}</p>
						<p>Người Dịch</p>
						<p>TT</p>
						<p>NXB</p>
						<p>${bookInformation.pulish.pulishName}</p>
						<p>Năm XB</p>
						<p>${bookInformation.bookDate}</p>
						<p>Trọng lượng (gr)</p>
						<p>${bookInformation.bookWeight}</p>
						<p>Kích thước</p>
						<p>${bookInformation.booksize}</p>
						<p>Số trang</p>
						<p>${bookInformation.numberPage}</p>
						<p>Hình thức</p>
						<p>${bookInformation.form.formName}</p>
						<p>Sản phẩm bán chạy nhất</p>
						<p>Top 100 sản phẩm bán chạy của tháng</p>

					</div>
				</div>
				<div id="cmt" class="city" style="display: none">
					<div class="hd">
						<span class="heading">4.9/5</span>
						<div class="faaa">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
						</div>

						<p style="margin-left: 5%;">23 đánh giá</p>
					</div>
					<hr style="border: 1px solid black;">
					<div class="row">
						<div class="side">
							<div>5 sao</div>
						</div>
						<div class="middle">
							<div class="bar-container">
								<div class="bar-5"></div>
							</div>
						</div>
						<div class="side right">
							<div>150</div>
						</div>
						<div class="side">
							<div>4 sao</div>
						</div>
						<div class="middle">
							<div class="bar-container">
								<div class="bar-4"></div>
							</div>
						</div>
						<div class="side right">
							<div>63</div>
						</div>
						<div class="side">
							<div>3 sao</div>
						</div>
						<div class="middle">
							<div class="bar-container">
								<div class="bar-3"></div>
							</div>
						</div>
						<div class="side right">
							<div>15</div>
						</div>
						<div class="side">
							<div>2 sao</div>
						</div>
						<div class="middle">
							<div class="bar-container">
								<div class="bar-2"></div>
							</div>
						</div>
						<div class="side right">
							<div>6</div>
						</div>
						<div class="side">
							<div>1 Sao</div>
						</div>
						<div class="middle">
							<div class="bar-container">
								<div class="bar-1"></div>
							</div>
						</div>
						<div class="side right">
							<div>20</div>
						</div>
					</div>
					<div class="detail-cmt">
						<div class="cmt-item">
							<div class="cmt-img">
								<img src="./images/1.jpg" style="width: 170px; height: 170px;">
							</div>
							<div class="cmt-content">
								<div class="cmt-name">Lê Thiện Nhân</div>
								<div class="cmt-star">
									<span class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span class="fa fa-star"></span>
								</div>
								<div class="time-cmt">2020-04-01 12:08:27</div>
								<div class="content">
									<p>Truyện bác Ánh không có khẩu 'vị mặn' mà như truyện ngôn
										tình cùng không 'nhạt nhẽo' , nó vừa đủ để làm đọc giả lưu
										luyến , ấn tượng khắc ghi trong lòng, phù hợp với tuổi teen.
										Mình rất thích của bác Ánh. quyển này tái bản mình sẽ rinh
										ngay về tủ. Mỗi câu chuyện của bác Ánh viết dường như khiến
										mình quay về tuổi thơ, quay về năm tháng đi học, bâng khuâng
										nhớ lại thời còn chiếc áo dài trắng thướt tha. Nhân vật Ngạn
										trong tác phẩm 'Mắt Biếc' đã khiến bao người rơi lệ, cậu hết
										lòng về thương nhớ Hà Lan, người con gái mắt biếc trong lòng
										Ngạn, cả một thời bé đến khi trưởng thành, tình yêu của cậu
										đều dành cho Hà Lan, tiếc thay số phận nghiệt ngã khiến câu
										chuyện tình vỡ lẽ, Hà Lan thích Dũng, một chàng trai lăng
										nhăng, tệ bạc mà phụ lòng Ngạn. Nhưng bi kịch chưa dừng lại ở
										đó, con gái Hà Lan-Trà Long lại đem lòng yêu mến Ngạn, mỗi lần
										nhìn Trà Long, Ngạn lại nhớ về Hà Lan, cậu cũng có tình cảm
										với Ngạn. Nhưng cuối cùng chàng trai ấy quyết định ...cái kết
										khá buồn........... tiếc thay một mối tình đẹp nhưng lại bị
										dòng đời xô đẩy, những sóng gió của cuộc đời mà mỗi nhân vật
										trong 'Mắt Biếc' nếm trải. ......nên đọc nhé, để biết Ngạn sẽ
										làm gì, mình tiết lộ đến đấy thôi.</p>
								</div>
								<div class="buts">
									<div class="count-like-cmt">5 lượt thích</div>
									<div class="cmt-like">
										<i class="fa fa-thumbs-up" aria-hidden="true"></i><a href="#">Thích</a>
									</div>
									<div class="wanted-cmt">
										<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
										<a href="#">Báo Cáo</a>
									</div>
								</div>
							</div>
						</div>
						<div class="cmt-item">
							<div class="cmt-img">
								<img src="./images/1.jpg" style="width: 170px; height: 170px;">
							</div>
							<div class="cmt-content">
								<div class="cmt-name">Lê Đức Nhật</div>
								<div class="cmt-star">
									<span class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span class="fa fa-star"></span>
								</div>
								<div class="time-cmt">2020-04-01 12:08:27</div>
								<div class="content">
									<p>Đầu tiên phải kể là mình là fan của chú Ánh nên nhà có
										siêu nhiều sách của chú luôn. Nhân dịp Mắt Biếc sắp ra phim
										nên review nhẹ nội dung cho các bạn nha. Đây là 1 cuốn khá nhẹ
										nhàng, êm đềm cho tình yêu tuổi học trò nhưng cũng thật da
										diết và thoảng buồn. Ngạn, một chàng trai quê với tình yêu
										thương cháy bỏng dành cho cô bạn Hà Lan vốn lớn lên từ nhỏ với
										mình. Câu chuyện cứ êm đềm ngọt ngào như thế cho đến khi cả
										hai ra thành phố học. Có lẽ vì tuổi trẻ, Hà Lan từ 1 cô thôn
										nữ giản dị thành một cô gái thành thị với những hào nhoáng mà
										quên luôn đi cái làng Đo Đo mình từng sống, còn Ngạn thì khác.
										Cậu vẫn giữ cho mình tình yêu quê hương đến cháy bỏng và cả
										tình yêu cho Hà Lan. Tuổi trẻ ngây dại đã đưa Hà Lan rơi vào
										mối tình với Dũng, một tay chơi hư hỏng rồi đánh mất đi tương
										lai của mình tất cả còn lại của em chỉ là những giọt nước mắt
										với tình yêu vô vọng với kẻ ruồng bỏ em và Trà Long, đứa con
										gái giống em y đúc. Ngạn thương em nhưng không được em trân
										trọng, Ngạn luôn âm thầm bên em, bảo vệ em và sau này là cả
										đứa con của em nữa. Em bỏ lại quê hương, bỏ lại cả đứa con và
										cả tình cảm mà Ngạn dành cho em nữa. Em nói đúng, Ngạn quá tốt
										với em, em không thể ở bên Ngạn được. Kết thúc câu chuyện lửng
										lơ khiến mình cảm giác có chút hụt hẫng nhưng như vậy là quá
										hoàn hảo cho cả 3 người. Trà Long, Hà Lan và Ngạn. Ngạn yêu Hà
										Lan, còn Trà Long đã vô tình khiến Ngạn nhìn thấy cô bạn năm
										ấy.</p>
								</div>
								<div class="buts">
									<div class="count-like-cmt">1 lượt thích</div>
									<div class="cmt-like">
										<i class="fa fa-thumbs-up" aria-hidden="true"></i><a href="#">Thích</a>
									</div>
									<div class="wanted-cmt">
										<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
										<a href="#">Báo Cáo</a>
									</div>
								</div>
							</div>
						</div>
						<div class="cmt-item">
							<div class="cmt-img">
								<img src="./images/1.jpg" style="width: 170px; height: 170px;">
							</div>
							<div class="cmt-content">
								<div class="cmt-name">Đinh Tấn Thành</div>
								<div class="cmt-star">
									<span class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span
										class="fa fa-star checked"></span> <span class="fa fa-star"></span>
								</div>
								<div class="time-cmt">2020-04-01 12:08:27</div>
								<div class="content">
									<p>Sau khi đọc xong nhiều tác phẩm của Nguyễn Nhật Ánh, tôi
										thấy ấn tượng nhất với "Mắt biếc"- một câu chuyện tình buồn
										nhưng đầy lãng mạn. Có thể bởi chính cái kết buồn đã làm tôi
										nhớ lâu hơn, day dứt hơn các câu chuyện khác của ông. Chàng
										trai si tình Ngạn nhút nhát sống nội tâm nhưng tâm hồn tràn
										đầy tình yêu sau đắm cao thượng với Hà lan, cô gái có đôi mắt
										biếc tuyệt đẹp. Tuổi thơ họ lớn lên bên nhau, chơi đùa cùng
										nhau đẹp quá, nhưng khi thành người lớn lại là 1 câu chuyện
										đầy nước mắt. Ở Ngạn là 1 tâm hồn sâu sắc, hoài niệm, luôn
										hướng về quê nhà- làng Đo Đo cùng những kỉ niệm tuổi thơ mà
										anh luôn nâng niu, quý trọng. Hà Lan thì bị cái phồn hoa nơi
										thành phố làm choáng ngợp, cuốn hút và chẳng còn là cô bé mắt
										biếc ngày xưa ở làng Đo đo nữa. Kết chuyện thật buồn khi Ngạn
										phải bỏ đi thật xa, không thể đến với Hà Lan và cũng chẳng thể
										được bù đắp bởi Trà Long như người đọc mong muốn, tình yêu của
										anh dành cho Hà Lan là quá lớn, quá sâu đậm, có lẽ cả đời anh
										sẽ không bao giờ có thể yêu được ai khác. Tác phẩm thật cuốn
										hút và xúc động khi đọc, và khi nghe tin sắp tới sẽ được
										chuyển thể thành phim thì tôi rất háo hức muốn được chứng kiến
										các nhân vật trong sách khi lên màn ảnh nhỏ sẽ trông như thế
										nào, có chuyển tải được hết những điều trong sách viết. Cùng
										đọc lại Mắt biếc và chờ đợi ngày được xem phim nào các bạn :)
									</p>
								</div>
								<div class="buts">
									<div class="count-like-cmt">1 lượt thích</div>
									<div class="cmt-like">
										<i class="fa fa-thumbs-up" aria-hidden="true"></i><a href="#">Thích</a>
									</div>
									<div class="wanted-cmt">
										<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
										<a href="#">Báo Cáo</a>
									</div>
								</div>
							</div>
						</div>
					</div>



				</div>
			</div>
			<div class="clr"></div>
			<div style="padding-top: 20px;">
				<!--<iframe src="https://docs.google.com/document/d/e/2PACX-1vSGFK9ypuR82p8J17UsZjaqITaIF8HKUIZZTwrYeRpFbosZIQcZd98cpzUYb69zLMp8_57R8eFsXt-U/pub?embedded=true"
				 width="100%" height="700px">-->
				<embed src="./book_pdf/DemoMacBiet.pdf" type="application/pdf"
					width="100%" height="700px">
				</iframe>
			</div>
		</div>
	</div>
	<!-- Popular Store Start -->
	<div class="popularStores">
		<div class="container">
			<h3>Có Thể Bạn Quan Tâm</h3>
			<div class="popularStoresInner">
				<a href="#">Văn Học</a> <a href="#">Tiểu Thuyết</a> <a href="#">Tâm
					Lí</a> <a href="#">Ngôn Tình</a> <a href="#">Thiếu Nhi</a> <a href="#">Thế
					Giới</a> <a href="#">Văn Hóa</a> <a href="#">Ẩm Thực</a>
			</div>

		</div>
	</div>
	
	<!-- Greatest Offer News Start -->
	<div class="news">
		<div class="container">
			<h3>Sách Nỗi Bật - Hot</h3>
			<div class="owl-carousel">
				<div class="item"><img src="./images/product-1.jpg"></div>
				<div class="item"><img src="./images/product-5.jpg"></div>
				<div class="item"><img src="./images/product-2.jpg"></div>
				<div class="item"><img src="./images/product-4.jpg"></div>
				<div class="item"><img src="./images/product-3.jpg"></div>
				

			</div>
		</div>
	</div>
	
	<!-- Support Section start-->
	<div class="support">
		<div class="container">	
			<a href="#">
				<img src="./images/icon1.png">
				<h5>Chuyển phát nhanh</h5>
			</a>
			<a href="#">
				<img src="./images/icon2.png">
				<h5>Hỗ trợ 24 giờ</h5>
			</a>
			<a href="#">
				<img src="./images/icon3.png">
				<h5>Phương thức thanh toán dễ dàng</h5>
			</a>
			<a href="#">
				<img src="./images/icon4.png">
				<h5>Bán trên cửa hàng điện tử</h5>
			</a>
		</div>
	</div>
	<!-- Support Section end-->
	
	<!-- Other Information start -->
	<div class="otherInfo">
		<div class="container">
			<h3 class="otherInfoHandle">GIỚI THIỆU VỀ THÔNG TIN CHI TIẾT SẢN PHẨM SHOPBOOK</h3>
			<div class="otherInfoBody">
				<p>Sách quốc văn với nhiều thể loại đa dạng như sách giáo khoa – tham khảo, giáo trình, sách học ngữ, từ điển, sách tham khảo thuộc nhiều chuyên ngành phong phú: văn học, tâm lý – giáo dục, khoa học kỹ thuật, khoa học kinh tế - xã hội, khoa học thường thức, sách phong thủy, nghệ thuật sống, danh ngôn, sách thiếu nhi, truyện tranh, truyện đọc, từ điển, công nghệ thông tin, khoa học – kỹ thuật, nấu ăn, làm đẹp...  của nhiều Nhà xuất bản, nhà cung cấp sách có uy tín như: NXB Trẻ, Giáo Dục, Kim Đồng, Văn hóa -Văn Nghệ, Tổng hợp TP.HCM, Chính Trị Quốc Gia; Công ty Đông A, Nhã Nam, Bách Việt, Alphabook, Thái Hà, Minh Lâm, Đinh Tị, Minh Long, TGM, Sáng Tạo Trí Việt, Khang Việt, Toàn Phúc.</p>
				<p>Sách quốc văn với nhiều thể loại đa dạng như sách giáo khoa – tham khảo, giáo trình, sách học ngữ, từ điển, sách tham khảo thuộc nhiều chuyên ngành phong phú: văn học, tâm lý – giáo dục, khoa học kỹ thuật, khoa học kinh tế - xã hội, khoa học thường thức, sách phong thủy, nghệ thuật sống, danh ngôn, sách thiếu nhi, truyện tranh, truyện đọc, từ điển, công nghệ thông tin, khoa học – kỹ thuật, nấu ăn, làm đẹp...  của nhiều Nhà xuất bản, nhà cung cấp sách có uy tín như: NXB Trẻ, Giáo Dục, Kim Đồng, Văn hóa -Văn Nghệ, Tổng hợp TP.HCM, Chính Trị Quốc Gia; Công ty Đông A, Nhã Nam, Bách Việt, Alphabook, Thái Hà, Minh Lâm, Đinh Tị, Minh Long, TGM, Sáng Tạo Trí Việt, Khang Việt, Toàn Phúc.</p>
				<p>Sách ngoại văn bao gồm: từ điển, giáo trình, tham khảo, truyện tranh thiếu nhi , sách học ngữ, từ vựng, ngữ pháp, luyện thi TOEFL, TOEIC, IELS…được nhập từ các NXB nước ngoài như: Cambridge, Mc Graw-Hill, Pearson Education, Oxford, Macmillan, Cengage Learning.</p>
				<p>Sách ngoại văn bao gồm: từ điển, giáo trình, tham khảo, truyện tranh thiếu nhi , sách học ngữ, từ vựng, ngữ pháp, luyện thi TOEFL, TOEIC, IELS…được nhập từ các NXB nước ngoài như: Cambridge, Mc Graw-Hill, Pearson Education, Oxford, Macmillan, Cengage Learning…</p>
				<p>Văn phòng phẩm, dụng cụ học tập, đồ chơi dành cho trẻ em, hàng lưu niệm… đa dạng, phong phú, mẫu mã đẹp, chất lượng tốt, được cung ứng bởi các công ty, nhà cung cấp uy tín như: Thiên Long, XNK Bình Tây, Hạnh Thuận, Ngô Quang, Việt Văn, Trương Vui, Hương Mi, Phương Nga, Việt Tinh Anh, Chăm sóc trẻ em Việt, Mẹ và em bé…</p>
			</div>
		</div>
	</div>
	
	<div class="clearfix"></div>
	<div class="footer">
		<div class="container tex-center">
			<div class="row">
				<div class="col-4">
					<p style="font-size: 20px; color: white;">Người Mua</p>
					<p>giải quyết khiếu nại</p>
					<p>hướng dẫn mua hàng</p>
					<p>chính sách đổi trả</p>
					<p>chăm sóc khách hàng</p>
					<p>nạp tiền điện thoại</p>
				</div>
				
				<div class="col-4">
					<p style="font-size: 20px; color: white;">Hỗ Trợ</p>
					<p>Các câu hỏi thường gặp</p>
					<p>gửi yêu cầu hỗ trợ</p>
					<p>hướng dẫn đặt hàng</p>
					<p>chính sách đổi trả</p>
					<p>hướng dẫn mua trả góp</p>
				</div>
				<div class="col-4">
					<p style="font-size: 20px; color: white;">Shop</p>
					<p> giới thiệu</p>
					<p>chính sách thanh toán</p>
					<p>chính sách bảo mật thông tin cá nhân</p>
					<p>chính sách giải quyết khiếu nại</p>
					<p>điều khoản sử dụng</p>
				</div>
				
			</div>
			<hr>
			<p class="copyright">2020<i></i>CoppyRight: ShopBook@copyright | Desgin By LTN - LĐN</p>
			
		</div>    
	</div>  
	
	<!-- Jquery V.3.3.1 -->
<script src="./js/jquery-3.3.1.min.js"></script>
<script src="./js/jquery.cycle.js"></script>
<script src="./js/owl.carousel.min.js"></script>
<script src="./js/smoothproducts.min.js"></script>
<script>
	$("#sliderShuffle").cycle({
		next: '#next',
		prev: '#prev'
	});
	
	$('.owl-carousel').owlCarousel({
		items:4,
		loop:true,
		margin:15,
		autoplay:true,
		autoplayTimeout:3000, //3 Second
		nav:true,
		responsiveClass:true,
		responsive:{
			0:{
				items:1,
				nav:true
			},
			600:{
				items:3,
				nav:true
			},
			1000:{
				items:4,
				nav:true
			}
		}

	});

	$(function(){
		$(".topbar ul li").click(function(){
			$(".topbar ul li").not(this).find("ul").slideUp();
			$(this).find("ul").slideToggle();
		});
		$(".topbar ul li ul li, productCategories ul li .megamenu").click(function(e){
			e.stopPropagation();	
		});
		$(".productCategories ul li").click(function(){
			$(".productCategories ul li").not(this).find(".megamenu").hide();
			$(this).find(".megamenu").toggle();
		});
		$(".otherInfoBody").hide();
		$(".otherInfoHandle").click(function(){
			$(".otherInfoBody").slideToggle();
		});
		$(".signBtn").click(function(){
			$("body").css("overflow", "hidden");
			$(".loginBox").slideDown();
		});
		$(".closeBtn").click(function(){
			$("body").css("overflow", "visible");
			$(".loginBox").slideUp();
		});
		$(".productViewBtn").click(function(e){
			e.preventDefault();
			$("body").css("overflow", "hidden");
			$(".productViewBox").slideDown();
		});
		$(".productViewBox-closeBtn").click(function(){
			$("body").css("overflow", "visible");
			$(".productViewBox").slideUp();
		});

		$(".sp-wrap").smoothproducts();
	});
</script>
<script>
	function openCity(evt, cityName) {
	var i, x, tablinks;
	x = document.getElementsByClassName("city");
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablink");
	for (i = 0; i < x.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " w3-red";
	}

</script>

 

</body>
</html>