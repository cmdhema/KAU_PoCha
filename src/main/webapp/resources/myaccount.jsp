<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/myaccount.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="main.jsp"></jsp:include>
	<jsp:include page="rightmenu_menu.jsp"></jsp:include>

	<!-- 레이아웃 오른쪽 영역 시작 { -->
	<div id="contents_right">

		<div class="path">
			<span>현재 위치</span>
			<ol>
				<li><a href="/">홈</a></li>
				<li title="현재 위치">마이 쇼핑</li>
			</ol>
		</div>

		<div class="titleArea">
			<h2>마이 쇼핑</h2>
		</div>

		<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
    $url = /member/login.html
-->
		</div>


		<div class="xans-element- xans-myshop xans-myshop-bankbook">
			<ul>
				<li class=" "><strong class="title">가용적립금</strong> <strong
					class="data use"> 0원</strong> <a
					href="/myshop/mileage/historyList.html"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_result.gif"
						alt="조회" /></a></li>
				<li class=""><strong class="title">총적립금</strong> <strong
					class="data">0원</strong></li>
				<li class=""><strong class="title">사용적립금</strong> <strong
					class="data">0원</strong></li>
				<li class="displaynone"><strong class="title"></strong> <strong
					class="data use"> </strong> <a
					href="/myshop/deposits/historyList.html"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_result.gif"
						alt="조회" /></a></li>
				<li class="etc"><strong class="title">총주문</strong> <strong
					class="data">0(0회)</strong></li>
				<li class="etc displaynone"><strong class="title">쿠폰</strong> <strong
					class="data"><span>개</span></strong> <a
					href="/myshop/coupon/coupon.html"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_result.gif"
						alt="조회" /></a></li>
			</ul>
		</div>

		<div id="myshopMain"
			class="xans-element- xans-myshop xans-myshop-main ">
			<div class="shopMain order">
				<h3>
					<a href="/myshop/order/list.html"><strong>order</strong>주문내역 조회</a>
				</h3>
				<p>
					<a href="/myshop/order/list.html">고객님께서 주문하신 상품의 주문내역을 확인하실 수
						있습니다.<br />비회원의 경우, 주문서의 주문번호와 비밀번호로 주문조회가 가능합니다.
					</a>
				</p>
			</div>
			<div class="shopMain profile">
				<h3>
					<a href="/member/modify.html"><strong>profile</strong>회원 정보</a>
				</h3>
				<p>
					<a href="/member/modify.html">회원이신 고객님의 개인정보를 관리하는 공간입니다.<br />개인정보를
						최신 정보로 유지하시면 보다 간편히 쇼핑을 즐기실 수 있습니다.
					</a>
				</p>
			</div>
			<div class="shopMain wishlist">
				<h3>
					<a href="/myshop/wish_list.html"><strong>wishlist</strong>관심 상품</a>
				</h3>
				<p>
					<a href="/myshop/wish_list.html">관심상품으로 등록하신 상품의 목록을 보여드립니다.</a>
				</p>
			</div>
			<div class="shopMain mileage">
				<h3>
					<a href="/myshop/mileage/historyList.html"><strong>mileage</strong>적립금</a>
				</h3>
				<p>
					<a href="/myshop/mileage/historyList.html">적립금은 상품 구매 시 사용하실 수
						있습니다.<br />적립된 금액은 현금으로 환불되지 않습니다.
					</a>
				</p>
			</div>
			<div class="shopMain deposits displaynone">
				<h3>
					<a href="/myshop/deposits/historyList.html"><strong>deposits</strong>예치금</a>
				</h3>
				<p>
					<a href="/myshop/deposits/historyList.html">예치금은 현금과 동일하게 상품
						구매시 사용하실 수 있습니다.<br />예치된 금액은 현금으로 환불이 가능합니다. (예치금 적립: 주문취소 등의
						환불금액 발생 시 예치금으로 적립이 가능합니다.)
					</a>
				</p>
			</div>
			<div class="shopMain consult displaynone">
				<h3>
					<a href="/board/consult/list.html"><strong>consult</strong>1:1
						맞춤상담</a>
				</h3>
				<p>
					<a href="/board/consult/list.html">고객님의 궁금하신 문의사항에 대하여 1:1맞춤상담
						내용을 확인하실 수 있습니다.</a>
				</p>
			</div>
			<div class="shopMain coupon displaynone">
				<h3>
					<a href="/myshop/coupon/coupon.html"><strong>coupon</strong>쿠폰</a>
				</h3>
				<p>
					<a href="/myshop/coupon/coupon.html">고객님이 보유하고 계신 쿠폰내역을 보여드립니다.</a>
				</p>
			</div>
			<div class="shopMain board">
				<h3>
					<a href="/myshop/board_list.html"><strong>board</strong>게시물 관리</a>
				</h3>
				<p>
					<a href="/myshop/board_list.html">고객님께서 작성하신 게시물을 관리하는 공간입니다.<br />고객님께서
						작성하신 글을 한눈에 관리하실 수 있습니다.
					</a>
				</p>
			</div>
			<div class="shopMain address">
				<h3>
					<a href="/myshop/addr/list.html"><strong>address</strong>배송 주소록
						관리</a>
				</h3>
				<p>
					<a href="/myshop/addr/list.html">자주 사용하는 배송지를 등록하고 관리하실 수 있습니다.</a>
				</p>
			</div>
		</div>
	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->

</body>
</html>