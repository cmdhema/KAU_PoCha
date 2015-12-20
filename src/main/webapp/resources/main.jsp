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
			<a href="/"><img src="/resources/img/logo.gif" alt="" /></a>
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

	<div class="wrap_default">
		<!-- 검색 시작 { -->
		<form id="searchBarForm" name="" action="/product/search.html"
			method="get" enctype="multipart/form-data">
			<input id="banner_action" name="banner_action" value="" type="hidden" />
			<div id="wrap_search"
				class="xans-element- xans-layout xans-layout-searchheader ">
				<!--
    $product_page=/product/detail.html
    $category_page=/product/list.html
    -->
				<fieldset>
					<legend style="display: none">검색</legend>
					<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
						fw-msg="" class="inputTypeText"
						onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
						type="text" /><img src="/resources/img/btn_search.gif" alt="검색"
						onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"
						style="cursor: pointer" />
				</fieldset>
			</div>
		</form>
		<!-- } 검색 끝 -->
	</div>

	<!-- 추가된 index 전용 css -->


	<!-- 롤링이미지(서브페이지 전용) 시작 { -->

	<div id="mainVisual" class="sub_visual">
		<div class="visuals">
			<a style="background: url(/resources/img/rolling_sub1.jpg) top center repeat-x"></a>
			<a style="background: url(/resources/img/rolling_sub2.jpg) top center repeat-x"></a>
			<a style="background: url(/resources/img/rolling_sub3.jpg) top center repeat-x"></a>
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