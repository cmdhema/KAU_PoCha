<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- PG크로스브라우징필수내용 시작 { -->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!-- } PG크로스브라우징필수내용 끝 -->
<title>기본 레이아웃</title>
<script src="/resources/js/jquery-1.11.3.min.js"></script>
<script src="/resources/js/rolling_img.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/nanumgothic/nanumgothic.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/add_index.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrap_default">
		<!-- 로고 시작 { -->
		<div id="logo">
			<a href="/"><img src="/resources/img/logo.png" alt="" /></a>
		</div>
		<!-- } 로고 끝 -->

		<!-- 상단메뉴 시작 { -->


		<div id="gnb_top">
			<div id="horizontal_nav">
				<ul class="horizontal-dropdown">
					<li><a href="/aboutus?no=0" class="gnb_main">ABOUT US</a>
						<li><a href="menu?no=0" class="gnb_main">SHOPPING</a>
							<li><a href="/community?board_no=1" class="gnb_main">COMMUNITY</a>
								<li><a href="/location" class="gnb_main">LOCATION</a>
				</ul>
			</div>
		</div>
		<!-- } 상단메뉴 끝 -->
	</div>

	<!-- 롤링이미지(메인페이지 전용) 시작 { -->

	<div id="mainVisual" class="main_visual">
		<div class="visuals">
			<a style="background: url(/resources/img/menu/rolling_main1.png) top center repeat-x"></a>
			<a style="background: url(/resources/img/menu/rolling_main2.png) top center repeat-x"></a>
			<a style="background: url(/resources/img/menu/rolling_main3.png) top center repeat-x"></a>
		</div>
		<div class="circle"></div>
		<a class="spinn prev" href="#"><img
			src="/resources/img/rolling_prev.png"
			onmouseover="this.src='/resources/img/rolling_prev_hover.png'"
			onmouseout="this.src='/resources/img/rolling_prev.png'" alt="Prev" /></a>
		<a class="spinn next" href="#"><img
			src="/resources/img/rolling_next.png"
			onmouseover="this.src='/resources/img/rolling_next_hover.png'"
			onmouseout="this.src='/resources/img/rolling_next.png'" alt="Next" /></a>
	</div>
	<!-- } 롤링이미지(메인페이지 전용) 끝 -->


	<!-- 추천상품(슬라이드) 시작 { -->
	<div id="middle_blank"></div>
	<div
		class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1">
		<div id="title_area_hot">SHOPPING HOT ZONE</div>
		<div class="wrap_default">

			<div id="slide_item">
				<div id="slide_btn_prev">
					<a href="javascript:;" onclick="imgStart('L')"><img
						src="/resources/img/slide_prev.gif"
						onmouseover="this.src='/resources/img/slide_prev_hover.gif'"
						onmouseout="this.src='/resources/img/slide_prev.gif'" alt="Prev" /></a>
				</div>
				<div id="slide_btn_next">
					<a href="javascript:;" onclick="imgStart('R')"><img
						src="/resources/img/slide_next.gif"
						onmouseover="this.src='/resources/img/slide_next_hover.gif'"
						onmouseout="this.src='/resources/img/slide_next.gif'" alt="Next" /></a>
				</div>
				<div id="viewArea">
					<!--
        $count = 10
        -->
					<div id="imgList">
						<div class="xans-record-">
							<a
								href="/menu/16"><img
								src="/resources/img/menu/popular1_gajaeme.png"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=14&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">간자미 회무침</span></a><br /> <span
									class="price">20,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/menu/15"><img
								src="/resources/img/menu/popular2_ggomak.png"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=13&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">꼬막</span></a><br /> <span
									class="price">35,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/menu/14"><img
								src="/resources/img/menu/popular3_sukhwa.png"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=12&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">석화</span></a><br /> <span
									class="price">30,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/menu/13"><img
								src="/resources/img/menu/popular4_ddukbokgi.png"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=11&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">국물떡볶이</span></a><br /> <span
									class="price">15,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/menu/11"><img
								src="/resources/img/menu/new_dakkangjung.png"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=16&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">닭강정</span></a><br /> <span
									class="price">15,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/product/detail.html?product_no=15&cate_no=1&display_group=2"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
								onmouseover="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								onmouseout="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=15&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">샘플상품 7</span></a><br /> <span
									class="price">35,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/product/detail.html?product_no=10&cate_no=1&display_group=2"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
								onmouseover="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								onmouseout="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=10&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">샘플상품 2</span></a><br /> <span
									class="price">10,000원</span>
							</p>
						</div>
						<div class="xans-record-">
							<a
								href="/product/detail.html?product_no=9&cate_no=1&display_group=2"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
								onmouseover="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								onmouseout="this.src='//img.echosting.cafe24.com/thumb/img_product_big.gif'"
								alt="" /></a>
							<p>
								<a
									href="/product/detail.html?product_no=9&cate_no=1&display_group=2"><span
									style="font-size: 12px; color: #555555;">샘플상품 1</span></a><br /> <span
									class="price">5,000원</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- } 추천상품(슬라이드) 끝 -->

	<!-- 공지사항(스크롤) 시작 { -->
	<div id="wrap_notice">
		<div id="notice_line_right"></div>
		<div id="notice_title">
			<a href="/community?board_no=1"><img
				src="/resources/img/notice_title.gif" alt="" /></a>
		</div>

		<div id="notice"
			class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1 notice_list">

			<ul>
				<li class=""><a
					href="/board/free/read.html?no=1&board_no=1">${notice }</a></li>
			</ul>
		</div>
	</div>
	<!-- } 공지사항(스크롤) 끝 -->

	<div class="wrap_default">
		<!-- 동영상 or 배너 시작 { -->
		<div id="banner_area1">
			<div id="banner_area1_title">ADVERTISING VIDEO</div>
			<iframe width="480" height="390"
				src="https://www.youtube.com/embed/240S04eCCC0?autoplay=1&amp;rel=0&amp;&amp;showinfo=0&amp;wmode=opaque"
				frameborder="0" scrolling="no" name="mov" allowfullscreen></iframe>
		</div>
		<div id="banner_area2">
			<a href="#"><img src="/resources/img/main_banner.gif" alt="" /></a>
		</div>
		<!-- } 동영상 or 배너 끝 -->

		<!-- 최신글, 아이콘 링크 시작 { -->
		<div id="latest_area">
			<div class="latest_title_round">
				<div class="latest_title">
					<a href="/community?board_no=4">REVIEWS</a>
					<div>${review }</div>
				</div>
				<div class="latest_more">
					<a href="/community?board_no=4">more</a>
				</div>
			</div>
			<div class="latest_round"></div>
			<div class="latest_blank"></div>

			<div class="latest_title_round">
				<div class="latest_title">
					<a href="/community?board_no=6">QnA</a>
					<div>${qanda }</div>
				</div>
				<div class="latest_more">
					<a href="/community?board_no=6">more</a>
				</div>
			</div>
			<div class="latest_round"></div>
			<div class="latest_blank"></div>

			<div class="latest_title_round">
				<div class="latest_title">COMMUNICATE</div>
			</div>
			<div class="latest_round">
				<ul id="icon_list">
					<li><a href="http://www.kakao.com/talk" target="_blank"><img
							src="/resources/img/communicate_icon1.gif" alt="" /></a></li>
					<li><a href="http://www.facebook.com" target="_blank"><img
							src="/resources/img/communicate_icon2.gif" alt="" /></a></li>
					<li><a href="http://www.twitter.com" target="_blank"><img
							src="/resources/img/communicate_icon3.gif" alt="" /></a></li>
					<li><a href="http://instagram.com" target="_blank"><img
							src="/resources/img/communicate_icon4.gif" alt="" /></a></li>
					<li><a href="http://section.blog.naver.com" target="_blank"><img
							src="/resources/img/communicate_icon5.gif" alt="" /></a></li>
				</ul>
			</div>
		</div>
		<!-- } 최신글, 아이콘 링크 끝 -->
	</div>




	<div class="wrap_default">
		<!-- 맨 위로 버튼 시작 { -->

		<a href="#none" id="on_top" style="display: none"><img
			src="/resources/img/on_top.gif" alt="맨 위로" /></a>
		<!-- } 맨 위로 버튼 끝 -->
	</div>

	<jsp:include page="bottom.jsp"></jsp:include>


	<div class="wrap_default">
		<!-- 참고: 결제를 위한 필수 영역 -->
		<div id="progressPaybar" style="display: none;">
			<div id="progressPaybarBackground" class="layerProgress"></div>
			<div id="progressPaybarView">
				<div class="box">
					<p class="graph">
						<span><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif"
							alt="현재 결제가 진행중입니다." /></span> <span><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/layout/img_loading.gif"
							alt="" /></span>
					</p>
					<p class="txt">
						본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br /> 주문이 되지 않으니 결제
						완료 될 때 까지 닫지 마시기 바랍니다.
					</p>
				</div>
			</div>
		</div>
		<!-- //참고 -->
	</div>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>

	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=8baaf637f81429a1426a205e26b7dfba43141217_1450137811&type=js&"></script>
	<script type="text/javascript">
		var mobileWeb = false;
		var sSearchBannerUseFlag = 'F';
		var basket_result = '/product/add_basket.html';
		var basket_option = '/product/basket_option.html';
		var iBoardNo = "1";
		var iBoardNo = "4";
		var iBoardNo = "6";
		// 쇼핑몰 관리자 기능 사용 여부
		DB_ACTIVE = 'T';
		var aLogData = {
			"log_server1" : "eclog2-183.cafe24.com",
			"log_server2" : "eclog2-183.cafe24.com",
			"log_rref" : "http:\/\/skin-skin2.pontosvs.cafe24.com\/board\/free\/list.html?board_no=1",
			"mid" : "pontosvs"
		};
	</script>
</body>
</html>
