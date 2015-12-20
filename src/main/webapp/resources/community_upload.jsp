<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/community.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/board/writePackage.css" />
<script src="/resources/js/board.js"></script>
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
			<form id="boardWriteForm" name="" action="/community/${board_no }" modelAttribute="boardForm"
				method="post" enctype="multipart/form-data">
				<input id="board_no" name="boardId" value="${board_no }" type="hidden" /> 
				<div
					class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
					<div class="boardWrite ">
						<table border="1" summary="">
							<caption>글쓰기 폼</caption>

							<tbody>
								<tr class="first">
									<th scope="row">제목</th>
									<td><input id="subject" name="title"
										class="inputTypeText" value="" type="text" /></td>
								</tr>
								<tr>
									<td colspan="2" class="write">
									<script type="text/javascript" src="http://editor.cafe24.com/js/nneditor.js"></script> 
											<script type="text/javascript">
												NN.Config.instanceID = "contents";
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
														"contents");
											</script>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnArea ">
						<a href="#none"
							onclick="post('boardWriteForm');"><img
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