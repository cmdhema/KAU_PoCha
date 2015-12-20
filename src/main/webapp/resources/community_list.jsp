<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/community.css" />


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="main.jsp"></jsp:include>
	<jsp:include page="rightmenu_community.jsp"></jsp:include>

	<!-- 레이아웃 오른쪽 영역 시작 { -->
	<div id="contents_right">

		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li><a href="/board/index.html">게시판</a></li>
						<li title="현재 위치"><strong>${title}</strong></li>
					</ol>
				</div>
				<div class="title">
					<h2>
						<font color="#555555">${title}</font>
					</h2>
					<p>${title}입니다.</p>
				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="boardList">
				<table border="1" summary="">
					<caption>게시판 목록</caption>
					<colgroup
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<col style="width: 70px;" />
						<col style="width: 135px;" class="displaynone" />
						<col style="width: auto;" />
						<col style="width: 84px;" />
						<col style="width: 80px;" class="" />
						<col style="width: 55px;" class="" />
						<col style="width: 55px;" class="displaynone" />
						<col style="width: 80px;" class="displaynone" />
					</colgroup>
					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th scope="col"><input class="boardListAll" value="all"
								type="checkbox" /> 번호</th>
							<th scope="col" class="displaynone">카테고리</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col" class="">작성일</th>
							<th scope="col" class="">조회</th>
							<th scope="col" class="displaynone">추천</th>
							<th scope="col" class="displaynone">평점</th>
						</tr>
					</thead>
				</table>
			</div>
			<div
				class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 boardListEmpty  ">
				<p>등록된 게시물이 없습니다.</p>
			</div>
			<div
				class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002  ">
				<a href="/community/list?board_no=${board_no }" class=""><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_write.gif"
					alt="글쓰기" /></a>
			</div>
		</div>


		<form id="boardSearchForm" name="" action="/board/free/list.html"
			method="get" enctype="multipart/form-data">
			<input id="board_no" name="board_no" value="4" type="hidden" /> <input
				id="page" name="page" value="1" type="hidden" /> <input
				id="board_sort" name="board_sort" value="" type="hidden" />
			<div
				class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
				<fieldset class="boardSearch">
					<legend>게시물 검색</legend>
					<p>
						<select id="search_date" name="search_date" fw-filter=""
							fw-label="" fw-msg="">
							<option value="week">일주일</option>
							<option value="month">한달</option>
							<option value="month3">세달</option>
							<option value="all">전체</option>
						</select> <select id="search_key" name="search_key" fw-filter=""
							fw-label="" fw-msg="">
							<option value="subject">제목</option>
							<option value="content">내용</option>
							<option value="writer_name">글쓴이</option>
							<option value="member_id">아이디</option>
							<option value="nick_name">별명</option>
							<option value="product">상품정보</option>
						</select> <input id="search" name="search" fw-filter="" fw-label=""
							fw-msg="" class="inputTypeText" value="" type="text" /> <a
							href="#none" onclick="BOARD.form_submit('boardSearchForm');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_find.gif"
							alt="찾기" /></a>
					</p>
				</fieldset>
			</div>
		</form>
	</div>
	
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>