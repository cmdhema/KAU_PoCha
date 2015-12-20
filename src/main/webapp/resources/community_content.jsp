<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/community.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/community_contents.css" />


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
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li><a href="/board/index.html">게시판</a></li>
						<li title="현재 위치"><strong>${title }</strong></li>
					</ol>
				</div>
				<div class="title">
					<h2>
						<font color="#555555">${title }</font>
					</h2>
					<p>${title }입니다.</p>
				</div>
			</div>
			<!-- 글 내용-->
			<form id="BoardDelForm" name="" action="/exec/front/Board/del/1"
				method="post" enctype="multipart/form-data">
				<input id="no" name="no" value="1" type="hidden" /> <input
					id="bulletin_no" name="bulletin_no" value="1" type="hidden" /> <input
					id="board_no" name="board_no" value="1" type="hidden" /> <input
					id="member_id" name="member_id" value="simplex" type="hidden" />
				<input id="list_url" name="list_url"
					value="/board/free/list.html?board_no=1" type="hidden" /> <input
					id="bdf_modify_url" name="bdf_modify_url"
					value="/board/free/modify.html?board_act=edit&amp;no=1&amp;board_no=1"
					type="hidden" /> <input id="bdf_del_url" name="bdf_del_url"
					value="/exec/front/Board/del/1" type="hidden" /> <input
					id="bdf_action_type" name="bdf_action_type" value="" type="hidden" />
				<div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002">
					<div class="boardView ">
						<table border="1" summary="">
							<caption>게시판 상세</caption>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td>${board.title}</td>
								</tr>
								<tr>
									<th scope="row">작성자</th>
									<td><a href='#none'>${board.userId}</a> 
								</tr>
								<tr class="etcArea">
									<td colspan="2">
										<ul>
											<li class="date "><strong class="th">작성일</strong> <span
												class="td">${board.date}</span></li>
											<li class="recom displaynone"><strong class="th">추천</strong>
												<span class="td"><a href="#none"
													onclick="BOARD_READ.article_vote('/exec/front/Board/vote/1?no=1&board_no=1&page=&return_url=/board/free/read.html');">
														<img
														src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_recommend.gif"
														alt="추천하기" />
												</a></span></li>
											<li class="hit "><strong class="th">조회수</strong> <span
												class="td">${board.read}</span></li>
										</ul>
									</td>
								</tr>
								<tr class="view">
									<td colspan="2">
										<div class="detail">${board.contents }</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnArea ">
						<span class="left"><a
							href="/board/free/list.html?board_act=list&board_no=1"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_list.gif"
								alt="목록" /></a></span> <a href="#none"
							onclick="BOARD_READ.article_delete('BoardDelForm','1');" class=""><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_delete.gif"
							alt="삭제" /></a> <a
							href="/board/free/modify.html?board_act=edit&no=1&board_no=1"
							class=""><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_modify.gif"
							alt="수정" /></a> <a href="/board/free/reply.html" class="displaynone"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_reply.gif"
							alt="답변" /></a>
					</div>
				</div>
			</form>
		</div>

		<div
			class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 ">
			<!-- 코멘트 리스트 -->
			<!-- 코멘트 페이징 -->
			<!-- 댓글 수정 -->
			<form id="commentForm" name=""
				action="/exec/front/Board/CommentUpdate/1" method="post"
				enctype="multipart/form-data">
				<input id="board_no" name="board_no" value="1" type="hidden" /> <input
					id="no" name="no" value="1" type="hidden" /> <input
					id="comment_no" name="comment_no" value="" type="hidden" /> <input
					id="member_id" name="member_id" value="" type="hidden" />
			</form>
		</div>
	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->






	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>