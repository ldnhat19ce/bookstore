<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--RANK-->
<div class="rank">
	<div class="cont-2">
		<div class="rank-title">
			<h2 style="color: black;">Bảng Xếp Hạng</h2>
		</div>
		<div class="w3-bar" style="background-color: white;">
			<button class="w3-bar-item w3-button tablink w3-red"
				onclick="openCity(event,'rankvh')">Văn Học</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'ranktn')">Thiếu Nhi</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'rankkns')">Tâm Lí - Kĩ Năng Sống</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'rankdif')">Thể Loại Khác</button>

		</div>
		<div id="rankvh" class=" city">
			<div class="tab-tt p1">
				<div class="tab-form">
					<div class="tab-view tablink-ic1 bord-x" onclick="rankVH_js(event,'result_rank_vh1')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-1.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS33">Sword Art Online-tặng kèm Bookmark</a>
							</li>
							<li><a href="#">Reki Kawahara</a></li>
							<li><a href="#">732 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic1" onclick="rankVH_js(event,'result_rank_vh2')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-2.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS34">Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé? - Tập 3 - Tặng Kèm Postcard</a>
							</li>
							<li><a href="#">Kareno Akira</a></li>
							<li><a href="#">1454 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic1" onclick="rankVH_js(event,'result_rank_vh3')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-3.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS35">[Bản Đặc Biệt] COP CRAFT - Cảnh Sát Đến Từ Hai Thế Giới</a>
							</li>
							<li><a href="#">Shouji Gato</a></li>
							<li><a href="#">1448 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic1" onclick="rankVH_js(event,'result_rank_vh4')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-4.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS36">[Bản Giới Hạn] Amaryllis Ở Xứ Sở Băng Giá </a>
							</li>
							<li><a href="#">Takeshi Matsuyama, Paseri</a></li>
							<li><a href="#">1432 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic1" onclick="rankVH_js(event,'result_rank_vh5')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-5.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS37">Your Name</a>
							</li>
							<li><a href="#">Shinkai Makoto</a></li>
							<li><a href="#">1434 lượt bình chọn</a></li>
						</div>
					</div>

				</div>
			</div>
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tab-view-rank1" id="result_rank_vh1">
						<div class="tab-view-img-1">
							<img src="./images/bxh-1.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS33">Sword Art Online 16 - Tặng Kèm Bookmark PVC</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Người thành công là người biết tìm ra hoàn cảnh có lợi cho mình.
								Nếu tìm không ra thì hãy tạo ra nó. Muốn thành công bạn phải có một cái đầu
								lạnh và một trái tim nóng. Hay nói cách khác bạn phải tôi luyện cho mình
								tinh thần “thép”.</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank1" id="result_rank_vh2" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-2.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS34">Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé? - Tập 3 - Tặng Kèm Postcard</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Cô muốn nghe câu “Mừng em đã về”. Muốn thốt lên rành rọt “Em về rồi đây”. Muốn ăn bánh bơ. Những mong mỏi ấy đều đã thành hiện thực. Cô trở về nhà như đã hứa. Gặp lại người hằng nhớ nhung. Thế nên không còn hẹn ước nào nữa. Hồi kết đuổi tới nơi, lặng lẽ chạm vào cô từ phía sau.

								“Xin lỗi nhé. Tôi không bao giờ hạnh phúc được nữa đâu. Bởi tôi nhận ra, tôi đã…”

								Câu chuyện về những ngày tháng ngắn ngủi nhưng rực rỡ của chàng kĩ sư trẻ tuổi và những cô nhóc yêu tinh, bước sang hồi thứ ba. tim nóng. Hay nói cách khác bạn phải tôi luyện cho mình
								tinh thần “thép”.</a></li>
						</div>
					</div>
					<div class="tab-view tab-view-rank1" id="result_rank_vh3" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-3.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS35">[Bản Đặc Biệt] COP CRAFT - Cảnh Sát Đến Từ Hai Thế Giới (Tập 1)
								- Tặng Kèm 1 Bookmark + 1 Poster Khổ Lớn (30x42cm) + 4 Postcard (9x13cm)</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Tilarna Exedilika. Hiệp sĩ học việc đến từ thế giới khác. Thiếu kiến thức thông thường. Mĩ nữ màu trắng.

								Kei Matoba. Thám tử tài giỏi của Sở Cảnh sát thành phố San Teresa. Người đàn ông vụng về dị ứng với mèo.

								Hai người được lệnh kết hợp điều tra tại thành phố San Teresa, nơi mở ra cánh cổng siêu không gian nối với thế giới khác.
								Dù có cãi vã và đối lập nhau trong mọi việc, nhưng Matoba và Tilarna vẫn cùng nhau truy bắt kẻ thù chung. Dần dần, giữa hai người
								nảy sinh mối tin tưởng kỳ lạ…
								“Dragnet Mirage” đã trở lại với nhiều thay đổi lớn! Tiểu thuyết hành động cảnh sát siêu hấp dẫn!</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank1" id="result_rank_vh4" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-4.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS36">[Bản Giới Hạn] Amaryllis Ở Xứ Sở Băng Giá - Tặng Kèm Postcard Mica + Poster Khổ Lớn</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Light-novel oneshot về đề tài robot cùng tác giả Takeshi Matsuyama với Iris - Những ngày mưa

								Bối cảnh câu chuyện diễn ra trong một thế giới băng giá khép kín năm trăm mét dưới lòng đất, khi các robot được giao nhiệm vụ bảo vệ một thiết bị ngủ đông đặc biệt - nơi hơn ba trăm “chủ nhân” đang say ngủ sau thảm hoạ kỉ băng hà biến Trái Đất thành một cõi tối tăm và lạnh lẽo. Những robot tận tuỵ bảo vệ “chủ nhân” của mình và mong đến ngày “chủ nhân” của họ thức giấc.
								Những robot không chỉ được cấu tạo từ sắt thép mà trong họ còn có kí ức, ước mơ và hi vọng</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank1" id="result_rank_vh5" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-5.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS37">Your Name</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Your Name

								Mitsuha là nữ sinh trung học sống ở vùng quê hẻo lánh. Một ngày nọ, cô mơ thấy mình ở Tokyo trong một căn phòng xa lạ, biến thành con trai, gặp những người bạn chưa từng quen biết.

								Trong khi đó ở một nơi khác, Taki, một nam sinh trung học người Tokyo lại mơ thấy mình biến thành con gái, sống ở vùng quê hẻo lánh.

								Cuối cùng hai người họ nhận ra đang bị hoán đổi với nhau qua giấc mơ. Kể từ lúc hai con người xa lạ ấy gặp nhau, bánh xe số phận bắt đầu chuyển động.

								Đây là phiên bản tiểu thuyết của bộ phim hoạt hình Your Name., do chính đạo diễn Shinkai Makoto chấp bút. .</a></li>



						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="ranktn" class=" city" style="display: none">
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tablink-ic2 bord-x" onclick="rankKTN_js(event,'result_rank_ktn1')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tn-1.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS38">Bộ Sách Black Clover - Tập 1 + Tập 2 + Tập 3 (Bộ 3 Tập) - Tặng Kèm 1 Postcard PVC</a>
							</li>
							<li><a href="#">Yūki Tabata</a></li>
							<li><a href="#">1518 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic2" onclick="rankKTN_js(event,'result_rank_ktn2')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tn-2.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS39">Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba - Tập 9: Đại Chiến Dịch Xâm Nhập Phố Đèn Đỏ</a>
							</li>
							<li><a href="#">Koyoharu Gotouge</a></li>
							<li><a href="#">1504 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic2" onclick="rankKTN_js(event,'result_rank_ktn3')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tn-3.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS40">Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba - Tập 8: Sức Mạnh Của Thượng Huyền - Sức Mạnh Của Trụ Cột</a>
							</li>
							<li><a href="#">Koyoharu Gotouge</a></li>
							<li><a href="#">1501 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic2" onclick="rankKTN_js(event,'result_rank_ktn4')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tn-4.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS41">Dragon Ball Full Color - Phần Một: Thời Niên Thiếu Của Son Goku - Tập 1</a>
							</li>
							<li><a href="#">Akira Toriyama</a></li>
							<li><a href="#">1482 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic2" onclick="rankKTN_js(event,'result_rank_ktn5')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tn-5.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS42">Cô Dâu Thảo Nguyên - Tập 3 - Tặng Kèm Standee Hình Nhân Vật</a>
							</li>
							<li><a href="#">Mori Kaoru</a></li>
							<li><a href="#">1434 lượt bình chọn</a></li>
						</div>
					</div>
				</div>
			</div>

			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tab-view-rank2" id="result_rank_ktn1" >

						<div class="tab-view-img">
							<img src="./images/bxh-tn-1.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS38">Bộ Sách Black Clover - Tập 1 + Tập 2 + Tập 3 (Bộ 3 Tập) - Tặng Kèm 1 Postcard PVC</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Tại một thế giới nơi pháp thuật là tất cả, cậu thiếu niên Asta  lại  không  thể  sử  dụng  chút  pháp thuật nào  từ thuở mới lọt lòng. Để chứng minh sức mạnh của bản thân và thực hiện lời giao ước với bạn bè, Asta đã nhắm tới mục tiêu trở thành
								“Ma pháp đế” pháp sư đứng đầu mọi pháp sư. Câu chuyện về những cậu thiếu niên có pháp thuật xin được bắt đầu!</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank2" id="result_rank_ktn2" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tn-2.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS39">Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba - Tập 9: Đại Chiến Dịch Xâm Nhập Phố Đèn Đỏ</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Nhóm Tanjiro cùng Âm trụ Uzui Tengen hướng đến khu phố đèn đỏ nơi quỷ cư ngụ. Tại đó, 3 người vợ ninja của Tengen đã xâm nhập để thu thập thông tin nhưng lại đột nhiên mất liên lạc. Nhóm Tanjiro phải giả gái để đột nhập vào điều tra, nhưng vẫn không tìm được nơi ẩn nấp của quỷ.
								Trong lúc ấy, các oiran thì bị quỷ bắt cóc!! Liệu nhóm Tanjiro có thể tìm ra con quỷ đang lẩn trốn không!?</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank2" id="result_rank_ktn3" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tn-3.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS40">Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba - Tập 8: Sức Mạnh Của Thượng Huyền - Sức Mạnh Của Trụ Cột</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba - Tập 8: Sức Mạnh Của Thượng Huyền - Sức Mạnh Của Trụ Cột

								Tanjiro đã sử dụng Hỏa thần thần lạc - Bích La Thiên để chiến đấu với quỷ giấc mơ Enmu. Liệu trận chiến đã đến hồi kết!? Và bản chất của thứ xuất hiện trên cơ thể Tanjiro là gì? Cuối cùng, Viêm trụ Rengoku Kyojuro cũng đã hành động. Trước những lời từ một người mạnh, thứ mà Tanjiro thấy là….!?

								“Xin chào, lại là Gotouge đây! Mọi người có khỏe không? Sức khỏe không thể mua được bằng tiền, nên tôi cầu mong mọi người đều mạnh khỏe. Cảm ơn các bạn đã gửi tới tôi thật nhiều lời động viên, trà bánh và đồ handmade nữa! Ngày nào tôi cũng háo hức đến mức chảy cả máu cam kìa. Mỗi khi bị chảy máu cam tôi đều
								nhét giấy và đeo mặt nạ kín mít nên không sao đâu, các bạn đừng lo!” (KOYOHARU GOTOUGE)</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank2" id="result_rank_ktn4" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tn-4.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS41">Dragon Ball Full Color - Phần Một: Thời Niên Thiếu Của Son Goku - Tập 1</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">DRAGON BALL là một Manga kinh điển với tầm ảnh hưởng lớn đến mức nào! Một bộ truyện chúng ta đã gắn bó suốt từ nhỏ, ăn cùng, ngủ cùng, bắt gặp hình ảnh ở khắp mọi nơi, vậy thì chẳng có lí do gì mà không sở hữu 1 phiên bản
								rực rỡ sắc màu như thế này cả! Nhất là khi "Giấc mơ thuở bé" nay đã thành sự thực nữa!</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank2" id="result_rank_ktn5" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tn-5.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS42">Cô Dâu Thảo Nguyên - Tập 3 - Tặng Kèm Standee Hình Nhân Vật</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Ở tập này chúng ta sẽ theo chân anh chàng Henry Smith, kẻ đã “ăn nhờ ở đậu” nhà Eihon một thời gian, đến thị trấn có tên Karaza.

								Tại đây, Smith bị mất ngựa, lừa và mọi hành lí mang theo, nhưng anh đã có cuộc gặp gỡ định mệnh với Talas, cô gái cùng chung cảnh ngộ với anh.

								Phải chăng cô gái này sẽ là “cô dâu thứ hai” xuất hiện trong bộ truyện?</a></li>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div id="rankkns" class=" city" style="display: none">
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tablink-ic3 bord-x" onclick="rankKNS_js(event,'result_rank_kns1')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-kns-1.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS43">21 Bài Học Cho Thế Kỉ</a>
							</li>
							<li><a href="#">Yuval Noah Harari</a></li>
							<li><a href="#">1547 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic3" onclick="rankKNS_js(event,'result_rank_kns2')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-kns-2.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS44">Dám Bị Ghét</a>
							</li>
							<li><a href="#">Kishimi Ichiro, Koga Fumitake</a></li>
							<li><a href="#">1454 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic3" onclick="rankKNS_js(event,'result_rank_kns3')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-kns-3.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS45">Tư Duy Nhanh Và Chậm (Tái Bản)</a>
							</li>
							<li><a href="#">Daniel Kahneman</a></li>
							<li><a href="#">1448 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic3" onclick="rankKNS_js(event,'result_rank_kns4')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-kns-4.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS46">Thiên Tài Bên Trái, Kẻ Điên Bên Phải</a>
							</li>
							<li><a href="#">Cao Minh</a></li>
							<li><a href="#">1432 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic3" onclick="rankKNS_js(event,'result_rank_kns5')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-kns-5.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="book-detail?bookId=MS47">Đắc Nhân Tâm (Khổ Lớn) (Tái Bản)</a>
							</li>
							<li><a href="#">Dale Carnegie</a></li>
							<li><a href="#">1434 lượt bình chọn</a></li>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tab-view-rank3" id="result_rank_kns1">

						<div class="tab-view-img">
							<img src="./images/bxh-kns-1.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS43">21 Bài Học Cho Thế Kỉ</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#"> Sau khi tìm hiểu quá khứ và tương lai của nhân loại qua hai cuốn sách gây tiếng vang là Sapiens và Homo deus, Yuval Noah Harari đi sâu vào các vấn đề “ngay tại đây” và “ngay lúc này”, tức các sự kiện hiện tại và tương lai gần nhất của xã hội loài người.

								Những triển vọng đầy hứa hẹn của công nghệ sẽ được đưa ra bàn luận bên cạnh những hiểm họa như “đứt gãy” do công nghệ gây ra, việc kiểm soát thế giới bên trong dẫn tới sự sụp đổ của hệ thần kinh hay “tự do trong khuôn khổ”. Chính trị và tôn giáo có còn bắt tay nhau như trong quá khứ hay sẽ thao túng con người theo những cách riêng rẽ, mới mẻ hơn? Và những vấn đề toàn cầu ấy liên quan mật thiết tới hành vi và đạo đức của từng cá nhân riêng lẻ như thế nào? Xét cho cùng, những thách thức lớn nhất và những lựa chọn quan trọng nhất
								của ngày nay là gì? Ta cần chú ý đến điều gì? Ta nên dạy con cái ta những gì?</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank3" id="result_rank_kns2" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-kns-2.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS44">Dám Bị Ghét  </a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">Dám Bị Ghét

								Các mối quan hệ xã hội thật mệt mỏi.

								Cuộc sống sao mà nhạt nhẽo và vô nghĩa.

								Bản thân mình xấu xí và kém cỏi.

								Quá khứ đầy buồn đau còn tương lai thì mờ mịt.

								Yêu cầu của người khác thật khắc nghiệt và phi lý.</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank3" id="result_rank_kns3" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-kns-3.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">Tư Duy Nhanh Và Chậm (Tái Bản)</a>
							</li>
							<li><a href="book-detail?bookId=MS45">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">Chúng ta thường tự cho rằng con người là sinh vật có lý trí mạnh mẽ, khi quyết định hay đánh giá vấn đề luôn kĩ lưỡng và lý tính. Nhưng sự thật là, dù bạn có cẩn trọng tới mức nào, thì trong cuộc sống hàng ngày hay trong vấn đề liên quan đến kinh tế, bạn vẫn có những quyết định dựa trên cảm tính chủ quan của mình. “Tư duy nhanh và chậm”, cuốn sách nổi tiếng tổng hợp tất cả nghiên cứu được tiến hành qua nhiều thập kỷ của nhà tâm lý học từng đạt giải Nobel Kinh tế Daniel Kahneman sẽ cho bạn thấy những sư hợp lý và phi lý trong tư duy của chính bạn. Cuốn sách được đánh giá là “kiệt tác” trong việc thay đổi hành vi của con người, Tư duy nhanh và chậm đã dành được vô số giải thưởng danh giá, lọt vào Top 11 cuốn sách kinh doanh hấp dẫn nhất năm 2011. Alpha Books đã mua bản quyền và sẽ xuất bản cuốn sách trong Quý 1 năm nay. Tư duy nhanh và
								chậm dù là cuốn sách có tính hàn lâm cao nhưng vô cùng bổ ích với tất cả mọi người và đặc biệt rất dễ hiểu và vui nhộn.</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank3" id="result_rank_kns4" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-kns-4.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">Thiên Tài Bên Trái, Kẻ Điên Bên Phải</a>
							</li>
							<li><a href="book-detail?bookId=MS46">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ,
								là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank5" id="result_rank_kns5" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-kns-5.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="book-detail?bookId=MS47">Đắc Nhân Tâm (Khổ Lớn) (Tái Bản)</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.

								Đây là cuốn sách độc nhất về thể loại self-help sở hữu một lượng lớn người hâm mộ. Ngoài ra cuốn sách có doanh số bán ra cao nhất được tờ báo The New York Times bình chọn trong nhiều năm. Cuốn sách này không còn là một tác phẩm về nghệ
								thuật đơn thuần nữa mà là một bước thay đổi lớn trong cuộc sống của mỗi người</a></li>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="rankdif" class=" city" style="display: none">
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tablink-ic4 bord-x" onclick="rankDIF_js(event,'result_rank_dif1')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tlk-1.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="#">Hoa Học Trò Số 1336 - Tặng Kèm Fanbook Khổ Lớn NCT 127</a>
							</li>
							<li><a href="#">Nhiều Tác Giả</a></li>
							<li><a href="#">1547 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic4" onclick="rankDIF_js(event,'result_rank_dif2')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tlk-2.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="#">Sapiens: Lược Sử Loài Người (Tái Bản)</a>
							</li>
							<li><a href="#">Yuval Noah Harari</a></li>
							<li><a href="#">1454 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic4" onclick="rankDIF_js(event,'result_rank_dif3')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tlk-3.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="#">Súng, Vi Trùng Và Thép (Tái Bản 2020)</a>
							</li>
							<li><a href="#">Jared Diamond</a></li>
							<li><a href="#">1448 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic4" onclick="rankDIF_js(event,'result_rank_dif4')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tlk-4.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="#">Lịch Sử Thế Giới</a>
							</li>
							<li><a href="#">DK</a></li>
							<li><a href="#">1432 lượt bình chọn</a></li>
						</div>
					</div>
					<div class="tab-view tablink-ic4" onclick="rankDIF_js(event,'result_rank_dif5')">
						<div class="up">
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
						<div class="tab-view-img">
							<img src="./images/bxh-tlk-5.jpg">
						</div>
						<div class="tab-ct">
							<li><a href="#">[Ấn Bản Cao Cấp] Một Chiến Dịch Ở Bắc Kỳ - Bìa Cứng - Tặng Kèm Hộp Postcard 12 Tấm</a>
							</li>
							<li><a href="#">Charles Édouard Hocquard</a></li>
							<li><a href="#">1434 lượt bình chọn</a></li>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-tt">
				<div class="tab-form">
					<div class="tab-view tab-view-rank4" id="result_rank_dif1">

						<div class="tab-view-img">
							<img src="./images/bxh-tlk-1.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">
								Hoa Học Trò Số 1336 - Tặng Kèm Fanbook Khổ Lớn NCT 127</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">"Con nhà người ta" của ngành Y

								Không chỉ "đáng gờm" trong học lực và đam mê theo đuổi ngành Y, "chàng trai thanh xuân" của Hoa Học Trò 1336 còn gây ấn tượng bởi
								ngoại hình cực mê. Cùng "hẹn hò" với "người ấy" trên số sau bạn nhé!</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank4" id="result_rank_dif2" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tlk-2.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">Sapiens: Lược Sử Loài Người (Tái Bản)</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">Sapiens tập trung vào các quá trình quan trọng đã định hình loài người và thế giới quanh nó, chẳng hạn như sự ra đời của sản xuất nông nghiệp, việc tạo ra tiền, sự lan truyền của những tôn giáo, và sự nổi lên của những nhà nước quốc gia. Không giống như những quyển sách khác cùng loại, Sapiens đã có một lối tiếp cận liên ngành học, bắc cầu qua những khoảng cách giữa lịch sử, sinh học, triết học và kinh tế theo một lối trước đây chưa từng có. Hơn nữa, lấy cả quan điểm vĩ mô và vi mô, Sapiens không chỉ đề cập đến những gì đã xảy ra và tại sao,
								mà còn đi sâu vào việc những cá nhân trong lịch sử đó đã cảm nhận nó như thế nào.</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank4" id="result_rank_dif3" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tlk-3.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">
								Súng, Vi Trùng Và Thép (Tái Bản 2020)
							</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">"Bàn tay của diễn trình lịch sử từ 8.000 năm trước vẫn đang đè nặng lên chúng ta."
								Cuốn sách giải thích vì sao các nền văn minh Á – Âu (bao gồm cả Bắc Phi) lại tồn tại được, cũng như đã chinh phục các nền văn minh khác, cùng lúc ông bác bỏ các lý thuyết về sự thống trị của các nền văn minh Á –Âu dựa trên trí tuệ, đạo đức hay ưu thế di truyền. Jared Diamond lập luận rằng, sự khác biệt về quyền lực và công nghệ giữa các xã hội loài người có nguồn gốc từ sự khác biệt về môi trường, trong đó sự khác biệt này được khuếch đại không ngường. Qua đó, ông giải thích tại sao Tây Âu, chứ không phải
								các nền văn minh khác trong thế giới Á – Âu như Trung Quốc, lại trở thành các thế lực thống trị</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank4" id="result_rank_dif4" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tlk-4.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">Lịch Sử Thế giới</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">"Bàn tay của diễn trình lịch sử từ 8.000 năm trước vẫn đang đè nặng lên chúng ta."
								Cuốn sách giải thích vì sao các nền văn minh Á – Âu (bao gồm cả Bắc Phi) lại tồn tại được, cũng như đã chinh phục các nền văn minh khác, cùng lúc ông bác bỏ các lý thuyết về sự thống trị của các nền văn minh Á –Âu dựa trên trí tuệ, đạo đức hay ưu thế di truyền. Jared Diamond lập luận rằng, sự khác biệt về quyền lực và công nghệ giữa các xã hội loài người có nguồn gốc từ sự khác biệt về môi trường, trong đó sự khác biệt này được khuếch đại không ngường. Qua đó, ông giải thích tại sao Tây Âu,
								chứ không phải các nền văn minh khác trong thế giới Á – Âu như Trung Quốc, lại trở thành các thế lực thống trị</a></li>



						</div>
					</div>
					<div class="tab-view tab-view-rank4" id="result_rank_dif5" style="display: none;">

						<div class="tab-view-img">
							<img src="./images/bxh-tlk-5.jpg">
						</div>
						<div class="tab-ct tab-ct-up">
							<li><a href="#">[Ấn Bản Cao Cấp] Một Chiến Dịch Ở Bắc Kỳ - Bìa Cứng - Tặng Kèm Hộp Postcard 12 Tấm</a>
							</li>
							<li><a href="#">Tác Giả: Maurice Leblanc, Francis de C</a></li>
							<li><a href="#">Nhà Cung Cấp: IPM</a></li>
							<li><a href="#">Nhà Xuất Bản: NXB Văn Học</a></li>
							<li><a href="#">Hình Thức Bìa: Bìa Mềm</a></li>
							<div class="cate-element-evaluate" style="margin-left: 0px;">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> (238 đánh giá)
							</div>
							<div class="x-item-price">
								<span class="current-price">96.000 đ</span>
							</div>
							<li><a href="#">ẤN BẢN CAO CẤP: Bìa cứng, có bìa áo in bằng công nghệ metalize, khổ lớn 18,5 x 26,5 cm, dày 592 trang, ruột in 2 màu (xanh, đen), bằng mực vi sinh trên giấy GV76-BB định lượng 100 gsm (giấy S100 trước đây).

								Hộp postcard tặng kèm gồm 12 tấm, kích thước 15 cm x 21 cm, in bốn màu, hai mặt, trên giấy Ivory cao cấp định lượng 350 gsm, thiết kế theo phong cách
								Indochine, được lựa chọn từ các tranh khắc tuyệt đẹp trong sách.</a></li>



						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="more-rank">
			<button>Xem Thêm</button>
		</div>

	</div>

</div>

<!--/RANK-->



<!--SCRIPT TAB-->
<script>
	function openCity(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("city");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" w3-red", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " w3-red";
	}
</script>
<script>
	function openCity1(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("city1");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink1");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" w3-red", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " w3-red";
	}
</script>
<script>
	function rankVH_js(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("tab-view-rank1");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink-ic1");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" bord-x", "");
		}
		document.getElementById(cityName).style.display = "inline-flex";
		evt.currentTarget.className += " bord-x";
	}
</script>
<script>
	function rankKTN_js(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("tab-view-rank2");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink-ic2");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" bord-x", "");
		}
		document.getElementById(cityName).style.display = "inline-flex";
		evt.currentTarget.className += " bord-x";
	}
</script>
<script>
	function rankKNS_js(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("tab-view-rank3");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink-ic3");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" bord-x", "");
		}
		document.getElementById(cityName).style.display = "inline-flex";
		evt.currentTarget.className += " bord-x";
	}
</script>
<script>
	function rankDIF_js(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("tab-view-rank4");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink-ic4");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" bord-x", "");
		}
		document.getElementById(cityName).style.display = "inline-flex";
		evt.currentTarget.className += " bord-x";
	}
</script>