<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css" />
<script src="/resources/js/jquery-1.11.3.min.js"></script>
<script src="/resources/js/basic.js"></script>
<script src="/resources/js/common.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="top_bg">

		<div class="wrap_default">
			<!-- 왼쪽링크 시작 { -->
			<div id="top_left">
				<ul>
					<li><a href="/">HOME</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/community?board_no=1">NOTICE</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/community?board_no=2">EVENT</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/community?board_no=6">QnA</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/community?board_no=4">REVIEWS</a></li>
				</ul>
			</div>
			<!-- } 왼쪽링크 끝 -->

			<!-- 회원관련(로그인 전), 움직이는 이미지 시작 { -->
			<!-- } 회원관련(로그인 전), 움직이는 이미지 끝 -->
			<!-- 회원관련(로그인 후) 시작 { -->
			<div id="top_right"
				class="xans-element- xans-layout xans-layout-statelogon ">
				<ul>
					<c:choose>
						<c:when test="${state == 'login' }">
							<li><a href="/logout"><span id="logout_color">LOGOUT</span></a></li>
						</c:when>
						<c:when test="${state == null }">
							<li><a href="/login">LOGIN</a></li>
						</c:when>
					</c:choose>
					<li class="gnb_blank">|</li>
					<li><a href="/member/modify.html">EDIT MY PROFILE</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/myaccount?id=0">MY ACCOUNT</a></li>
					<li class="gnb_blank">|</li>
					<li><a href="/cart?id=0">CART<span class="count displaynone"><span class="cart_count">()</span></span></a></li>

				</ul>
			</div>
			<!-- } 회원관련(로그인 후) 끝 -->
		</div>
	</div>
</body>
</html>