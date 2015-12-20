<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/community.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/board/writePackage.css" />

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
			class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 ">
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
			<form id="boardWriteForm" name="" action="/exec/front/Board/write/4"
				method="post" enctype="multipart/form-data">
				<input id="board_no" name="board_no" value="4" type="hidden" /> <input
					id="product_no" name="product_no" value="0" type="hidden" /> <input
					id="move_write_after" name="move_write_after"
					value="/board/free/list.html?board_no=4" type="hidden" /> <input
					id="cate_no" name="cate_no" value="" type="hidden" /> <input
					id="bUsePassword" name="bUsePassword" value="" type="hidden" /> <input
					id="order_id" name="order_id" value="" type="hidden" /> <input
					id="is_post_checked" name="is_post_checked" value="" type="hidden" />
				<input id="61d84fef19c71c4642239b52449954d7"
					name="61d84fef19c71c4642239b52449954d7"
					value="b6c81b6f0348b976698477107847b4d0" type="hidden" />
				<div
					class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
					<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
					<div class="boardWrite ">
						<table border="1" summary="">
							<caption>글쓰기 폼</caption>

							<tbody>
								<tr class="first">
									<th scope="row">제목</th>
									<td><input id="subject" name="subject" fw-filter="isFill"
										fw-label="제목" fw-msg="" class="inputTypeText" maxLength="125"
										value="" type="text" /> <input id="notice0" name="notice[]"
										fw-filter="" fw-label="공지사항" fw-msg="" value="T"
										type="checkbox" /><label for="notice0">공지사항</label> <input
										id="is_post0" name="is_post[]" fw-filter="" fw-label="게시안함"
										fw-msg="" value="B" type="checkbox" /><label for="is_post0">게시안함</label></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">작성자</th>
									<td></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">이메일</th>
									<td></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">평점</th>
									<td><input id="point0" name="point" fw-filter=""
										fw-label="평점" fw-msg="" value="5" type="radio"
										checked="checked" /><label for="point0"><span
											class="point5"><em>★★★★★</em></span></label> <input id="point1"
										name="point" fw-filter="" fw-label="평점" fw-msg="" value="4"
										type="radio" /><label for="point1"><span
											class="point4"><em>★★★★</em></span></label> <input id="point2"
										name="point" fw-filter="" fw-label="평점" fw-msg="" value="3"
										type="radio" /><label for="point2"><span
											class="point3"><em>★★★</em></span></label> <input id="point3"
										name="point" fw-filter="" fw-label="평점" fw-msg="" value="2"
										type="radio" /><label for="point3"><span
											class="point2"><em>★★</em></span></label> <input id="point4"
										name="point" fw-filter="" fw-label="평점" fw-msg="" value="1"
										type="radio" /><label for="point4"><span
											class="point1"><em>★</em></span></label></td>
								</tr>
								<tr>
									<td colspan="2" class="write"><script
											type="text/javascript"
											src="http://editor.cafe24.com/js/nneditor.js"></script> <script
											type="text/javascript">
												NN.Config.instanceID = "content";
												NN.Config.value = "";

												var EDITORWRAPPER = {
													execFtp : function(oReq) {
														PRODUCTEDITOR
																.execFtp(oReq);
													}
												};
												var NNCONFIG_PATH = window.location.protocol
														+ '//'
														+ window.location.host
														+ '/ind-script/nnEditor/';
												var NNCONFIG_UPLOADURL = window.location.protocol
														+ '//'
														+ window.location.host
														+ '/web/upload/NNEditor/';
												var NNCONFIG_UPLOADPATH = '/home/ec_users/pontosvs/public_html/web/upload/NNEditor/';
												var FTPIMAGESBUTTON = {
													'ftp' : {
														'param' : this,
														'position' : '8,2',
														'cssText' : 'background-image:url(/ec-img/editor/ftp.gif); background-repeat: no-repeat; background-position:0px 5px; width:34px;',
														'method' : EDITORWRAPPER.execFtp
													},
													'images' : {
														'param' : this,
														'position' : '8,1',
														'cssText' : 'background-image:url(/ec-img/editor/images.gif); background-repeat: no-repeat; background-position:3px 3px; width:20px;',
														'method' : function(evt) {
															this.layer
																	.empty({
																		'__TITLE__' : '이미지 여러장 삽입',
																		'width' : '250',
																		'e2' : evt,
																		'callback' : function() {
																			NN.Utils
																					.g('_contents_id_nullLayerPage').innerHTML = '<fieldset><legend>이미지 여러장 삽입</legend><input type="hidden" id="img_editor" value=""><table height="100%" width="240" order="0"><tbody><tr><td><div id="previewImageUploadEditor" style="text-align:center; border:1px solid #D7D7D7; width:240px; height:240px; overflow-y:scroll; overflow-x:hidden;" previewSize="225x225"></div></td></tr><tr><td style="text-align:center; padding:2px;"><div id="nameImageUploadEditor"></div></td></tr><tr><td style="text-align:center;"><span id="btnImageUploadEditor"></span></td></tr></tbody></table></fieldset><div class="actionPanel" style="margin:10px;"><div style="text-align: center;"><input type="button" value="입력" id="_insert" onclick="" class="nneditor-insert" /><input type="button" value="닫기" id="_close" class="nneditor-cancel" /></div></div>';
																			var evtClose = function() {
																				// remove-events
																				removeEvent(
																						NN.Utils
																								.g('_insert'),
																						'click',
																						this.Events.evtImages,
																						true);
																				removeEvent(
																						NN.Utils
																								.g('_close'),
																						'click',
																						this.Events.evtClose,
																						true);

																				var element = document
																						.getElementById('_target_id_nullLayerPage');
																				element.innerHTML = '';
																				this.exec
																						.close();
																			}
																					.bind2Event(this);

																			NN.Utils
																					.g($(
																							'div[id*="nneditorClose"]')
																							.attr(
																									'id')).onclick = evtClose;

																			var evtImages = function() {
																				var s = this.oSelection;
																				if (NN.Browser.MSIE
																						&& s.lastRange)
																					s
																							.focus();
																				this.save
																						.saveHistory(true);

																				$
																						.each(
																								$(
																										'#img_editor')
																										.val()
																										.split(
																												','),
																								function(
																										k,
																										v) {
																									if (v != '') {
																										s
																												.pasteContent('<img alt="" src="'+v+'">');
																									}
																									s
																											.pasteContent('<P>&nbsp;');
																								});

																				// remove-events
																				removeEvent(
																						NN.Utils
																								.g('_insert'),
																						'click',
																						this.Events.evtImages,
																						true);
																				removeEvent(
																						NN.Utils
																								.g('_close'),
																						'click',
																						this.Events.evtClose,
																						true);

																				var element = document
																						.getElementById('_target_id_nullLayerPage');
																				element.innerHTML = '';
																				this.exec
																						.close();
																			}
																					.bind2Event(this);

																			this.oEvent
																					.add(
																							NN.Utils
																									.g('_insert'),
																							'click',
																							evtImages,
																							'static');
																			evtImages = null;
																			this.oEvent
																					.add(
																							NN.Utils
																									.g('_close'),
																							'click',
																							evtClose,
																							'static');
																			evtClose = null;
																		}
																				.bind2(this)
																	});
															PREVIEW
																	.init(
																			'btnImageUploadEditor',
																			'nameImageUploadEditor',
																			'previewImageUploadEditor',
																			'img_editor',
																			NNCONFIG_UPLOADPATH,
																			0);
														}
													}
												};
												NN.Config.path = NNCONFIG_PATH;
												NN.Config.uploadURL = NNCONFIG_UPLOADURL;
												NN.Config.uploadPath = NNCONFIG_UPLOADPATH;
												NN.Config.addToolbarBtn = FTPIMAGESBUTTON;

												//Editor Height
												NN.Config.height = 400;

												var oNN_content = new NNEditor();
												oNN_content.build();

												if (typeof $Editor != "object") {
													$Editor = {
														_obj : {},

														push : function(obj, id) {
															this._obj[id] = obj;
														},

														get : function(id) {
															return this._obj[id];
														},

														reset : function(id) {
															this._obj[id]
																	.getText().value = "";
															this._obj[id]
																	.getIFDoc().body.innerHTML = this._obj[id].Config.START_HTML;
														},

														contents : function(id,
																context) {
															this._obj[id]
																	.getText().value = context;
															this._obj[id]
																	.getIFDoc().body.innerHTML = this._obj[id].view
																	.parsing(2);
														}
													};
												}

												$Editor.push(oNN_content,
														"content");
											</script> <input type="hidden" id="content_hidden"
										fw-filter="isSimplexEditorFill" fw-label="내용"
										value="oNN_content" /></td>
								</tr>
								<tr class="ucc">
									<th scope="row">UCC URL</th>
									<td><input id="ucc" name="ucc" size="35" fw-filter=""
										fw-label="UCC URL" value="" type="text" />&nbsp;&nbsp;&nbsp;<label
										class="size" for="ucc_width">넓이</label><input id="ucc_width"
										name="ucc_width" size="2" value="400" type="text" />&nbsp;&nbsp;&nbsp;<label
										class="size" for="ucc_height">높이</label><input id="ucc_height"
										name="ucc_height" size="2" value="300" type="text" /></td>
								</tr>
							</tbody>
							<tbody class="displaynone">
								<tr>
									<th scope="row">첨부파일1</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">첨부파일2</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">첨부파일3</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">첨부파일4</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">첨부파일5</th>
									<td></td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<th scope="row">비밀번호</th>
									<td><input id="password" name="password" fw-filter=""
										fw-label="비밀번호" fw-msg="" value="" type="password" /></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">비밀글설정</th>
									<td><input id="secure0" name="secure" fw-filter="isFill"
										fw-label="비밀글설정" fw-msg="" value="F" type="radio"
										checked="checked" /><label for="secure0">공개글</label> <input
										id="secure1" name="secure" fw-filter="isFill" fw-label="비밀글설정"
										fw-msg="" value="T" type="radio" /><label for="secure1">비밀글</label></td>
								</tr>
								<tr class="captcha displaynone">
									<th scope="row">자동발송금지<br />보안문자
									</th>
									<td>
										<p>
											<img
												src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/ico_warning.gif"
												alt="" /> 영문, 숫자 조합을 공백없이 입력하세요(대소문자구분)
										</p>
									</td>
								</tr>
								<tr class="agree displaynone">
									<th scope="row">개인정보 수집 및 <br />이용 동의
									</th>
									<td><br /> 개인정보 수집 및 이용에 동의하십니까?</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnArea ">
						<span class="left "><a href="#none"
							onclick="BOARD.pre_comment('');"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_reply_admin.gif"
								alt="관리자답변보기" /></a></span> <span class="left"><a
							href="/board/free/list.html?board_no=4"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_list.gif"
								alt="목록" /></a></span> <a href="#none"
							onclick="BOARD_WRITE.form_submit('boardWriteForm');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_register.gif"
							alt="등록" /></a> <a href="/board/free/list.html?board_no=4"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_cancel.gif"
							alt="취소" /></a>
					</div>
				</div>
			</form>
		</div>

	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->
	
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>