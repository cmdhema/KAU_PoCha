<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/layout.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/add_index.css" />
<script src="/resources/js/jquery-1.11.3.min.js"></script>
<script src="/resources/js/rolling_img.js"></script>
<title>Insert title here</title>
</head>
<body>
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
					<li><a href="/menu?no=0" class="gnb_main">SHOPPING</a>
					<li><a href="/community?board_no=1" class="gnb_main">COMMUNITY</a>
					<li><a href="/location" class="gnb_main">LOCATION</a>
				</ul>
			</div>
		</div>
		<!-- } 상단메뉴 끝 -->
	</div>

	<!-- 추가된 index 전용 css -->


	<!-- 롤링이미지(서브페이지 전용) 시작 { -->

	<div id="mainVisual" class="sub_visual">
		<div class="visuals">
			<a style="background: url(/resources/img/menu/rolling_main1.png) top center repeat-x"></a>
			<a style="background: url(/resources/img/menu/rolling_main2.png) top center repeat-x"></a>
			<a style="background: url(/resources/img/menu/rolling_main3.png) top center repeat-x"></a>
		</div>
		<div class="circle"></div>
		<a class="spinn prev" href="#"><img src="/resources/img/rolling_prev.png"
			onmouseover="this.src='/resources/img/rolling_prev_hover.png'"
			onmouseout="this.src='/resources/img/rolling_prev.png'" alt="Prev" /></a> <a
			class="spinn next" href="#"><img src="/resources/img/rolling_next.png"
			onmouseover="this.src='/resources/img/rolling_next_hover.png'"
			onmouseout="this.src='/resources/img/rolling_next.png'" alt="Next" /></a>
	</div>
	<!-- } 롤링이미지(서브페이지 전용) 끝 -->

	<!-- 언어선택 시작 { -->
	<!-- } 언어선택 끝 -->

</body>
</html>