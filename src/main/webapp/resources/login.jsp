<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/resources/js/login.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/login.css"/>
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
				<li title="현재 위치"><strong>로그인</strong></li>
			</ol>
		</div>

		<div class="titleArea">
			<h2>로그인</h2>
		</div>

		<form id="member_form_5595130406" name="" modelAttribute="loginForm"
			action="/login" method="post"
			enctype="multipart/form-data">
			<input id="returnUrl" name="returnUrl"
				value="http://skin-skin2.pontosvs.cafe24.com/board/free/list.html?board_no=1"
				type="hidden" /> <input id="forbidIpUrl" name="forbidIpUrl"
				value="/index.html" type="hidden" /> <input id="certificationUrl"
				name="certificationUrl"
				value="/member/adult_certification.html?returnUrl=" type="hidden" />
			<div class="xans-element- xans-member xans-member-login ">
				<!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
				<div class="login">
					<h3>
						<img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/h3_login.gif"
							alt="회원로그인" />
					</h3>
					<fieldset>
						<legend>회원로그인</legend>
						<label class="id">
						<span>아이디</span>
						<input id="member_id" name="userId" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" value="" type="text" />
							</label> <label class="password"><span>비밀번호</span><input
							id="member_passwd" name="userPassword"
							fw-filter="isFill&isMin[4]&isMax[16]" fw-label="패스워드" fw-msg=""
							value="" type="password" /></label>
						<p class="security">
							<img
								src="http://img.echosting.cafe24.com/design/skin/default/member/ico_access.gif"
								alt="보안접속" /> 보안접속
						</p>
						<a href="#none"
							onclick="MemberAction.login('member_form_5595130406'); return false;"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_login.gif"
							alt="로그인" /></a>
						<ul>
							<li><a href="/member/id/find_id.html">아이디찾기</a></li>
							<li><a href="/member/passwd/find_passwd_info.html">비밀번호찾기</a></li>
						</ul>
						<p class="sns displaynone">
							<a href="#none"
								onclick="window.open('/Api/Member/Oauth2ClientLogin/googleplus/', '', 'toolbar=no location=no scrollbars=yes resizable=yes width=460 height=630');"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_google_login.gif"
								alt="구글 로그인" /></a>
						</p>
						<p class="link">
							회원가입을 하시면 다양하고 특별한<br />혜택이 준비되어 있습니다. <a
								href="/assign"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_join.gif"
								alt="회원가입" /></a>
						</p>
						<p class="link displaynone" id="noMemberWrap">
							비회원님도 상품구매가 가능하나 다양한<br />회원혜택에서 제외됩니다. <a href="" onclick=""><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_nomember.gif"
								alt="비회원구매" /></a>
						</p>
					</fieldset>
				</div>
			</div>
		</form>

	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->
		<jsp:include page="bottom.jsp"></jsp:include>
	
</body>
</html>