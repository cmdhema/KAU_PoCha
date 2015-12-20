<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/aboutus_introduce.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function initialize() {
		var myLatlng = new google.maps.LatLng(35.87110100714382,
				128.60169690333006);
		var mapOptions = {
			zoom : 17,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(document.getElementById('map_canvas'),
				mapOptions);
		var marker = new google.maps.Marker({
			position : myLatlng,
			map : map,
			title : "대구시청"
		});
	}
</script>

<title>Insert title here</title>
</head>
<body onload="initialize()">

	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="main.jsp"></jsp:include>

	<div class="wrap_default">
		<!-- 레이아웃 왼쪽 영역 시작 { -->

		<div id="gnb_left">
			<div id="contents_left">
				<!-- 레이아웃 왼쪽 영역(왼쪽메뉴) 시작 { -->
				<div class="left_title">LOCATION</div>
				<ul class="cate top_blank">
					<li><a href="/layout/basic/page/page5.html">오시는 길</a></li>
				</ul>
				<!-- } 레이아웃 왼쪽 영역(왼쪽메뉴) 끝-->
				<!-- 레이아웃 왼쪽 영역(쇼핑몰 운영 정보) 시작 { -->
				<div class="left_title top_blank_title">CUSTOMER CENTER</div>
				<div id="phone_num">02-1234-5678</div>
				<div id="shop_time">
					WEEK : 09:00 ~ 18:00<br /> LUNCH : 12:00 ~ 13:00<br /> SAT, SUN,
					HOLIDAY OFF<br />
				</div>
				<div class="left_title top_blank_title">BANK ACCOUNT</div>
				<div id="bank_account_left">
					우체국(문전완)<br /> 504035-02-135641
				</div>
				<!-- } 레이아웃 왼쪽 영역(쇼핑몰 운영 정보) 끝 -->
			</div>
		</div>
		<!-- } 레이아웃 왼쪽 영역 끝 -->

		<!-- 레이아웃 오른쪽 영역 시작 { -->
		<div id="contents_right">

			<div class="path">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="/layout/basic/page/page5.html">LOCATION</a></li>
					<li title="현재 위치"><strong>오시는 길</strong></li>
				</ol>
			</div>

			<!--<div class="titleArea">
    <h2>오시는 길</h2>
</div>-->

			<div id="map_canvas" style="width: 500px; height: 300px;"></div>
		</div>
		<!-- } 레이아웃 오른쪽 영역 끝 -->
	</div>
	<jsp:include page="bottom.jsp"></jsp:include>

</body>
</html>