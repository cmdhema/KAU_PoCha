<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/menu.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="main.jsp"></jsp:include>
	<jsp:include page="rightmenu_menu.jsp"></jsp:include>

	<!-- 레이아웃 오른쪽 영역 시작 { -->
	<div id="contents_right">

		<div class="xans-element- xans-product xans-product-menupackage ">
			<div
				class="xans-element- xans-product xans-product-headcategory path ">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li class=""><a href="/product/list.html?cate_no=24">(대분류)
							전체 메뉴</a></li>
					<li class="displaynone"><a href="/product/list.html"></a></li>
					<li class="displaynone"><a href="/product/list.html"></a></li>
					<li class="displaynone"><strong><a
							href="/product/list.html"></a></strong></li>
				</ol>
			</div>
			<div
				class="xans-element- xans-product xans-product-headcategory title ">
				<p class="banner"></p>
				<h2>
					<span>전체 메뉴</span>
				</h2>
			</div>
			<ul class="menuCategory">
				<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
				<!-- //참고 -->
			</ul>
		</div>

		<!-- 일반상품 -->
		<div class="xans-element- xans-product xans-product-normalpackage ">
			<div class="xans-element- xans-product xans-product-normalmenu ">
				<div class="function">
					<p class="prdCount">
						등록 제품 : <strong>8</strong>개
					</p>
					<ul id="type"
						class="xans-element- xans-product xans-product-orderby">
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=5#Product_ListMenu">신상품</a></li>
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=1#Product_ListMenu">상품명</a></li>
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=3#Product_ListMenu">낮은가격</a></li>
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=4#Product_ListMenu">높은가격</a></li>
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=2#Product_ListMenu">제조사</a></li>
						<li class="xans-record-"><a
							href="?cate_no=24&sort_method=7#Product_ListMenu">사용후기</a></li>
					</ul>
					<span class="compare displaynone"><a href="#none"
						onclick="EC_ListAction.setProductCompare();"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_compare.gif"
							alt="상품비교" /></a></span>
				</div>
			</div>
			<div class="xans-element- xans-product xans-product-listnormal">
				<ul class="prdList column4">
					<li id="anchorBoxId_16" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_16 displaynone" /></span> <a
								href="/menu/16"
								name="anchorBoxName_16">
								<img src="/resources/img/menu/popular1_gajaeme.png"
								id="eListPrdImage16_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('16', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=16&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">가재미회무침</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">간재미(국산),오이,양파,당근,미나리</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">20,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_15" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_15 displaynone" /></span> <a
								href="/menu/15"
								name="anchorBoxName_15"><img
								src="/resources/img/menu/popular2_ggomak.png"
								id="eListPrdImage15_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('15', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=15&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">꼬막</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">한국</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">35,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_14" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_14 displaynone" /></span> <a
								href="/menu/14"
								name="anchorBoxName_14"><img
								src="/resources/img/menu/popular3_sukhwa.png"
								id="eListPrdImage14_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('14', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=14&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">석화</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">한국</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">30,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_13" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_13 displaynone" /></span> <a
								href="/menu/13"
								name="anchorBoxName_13"><img
								src="/resources/img/menu/popular4_ddukbokgi.png"
								id="eListPrdImage13_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('13', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=13&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">국물떡볶이</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">떡,어묵,양파,마늘,달걀</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">15,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_12" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_12 displaynone" /></span> <a
								href="/menu/12"
								name="anchorBoxName_12"><img
								src="/resources/img/menu/popular5_nakji.png"
								id="eListPrdImage12_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('12', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=12&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">낚지볶음과 소면</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">낙지(국내산),소면,양파,깨</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">20,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_11" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_11 displaynone" /></span> <a
								href="/menu/11"
								name="anchorBoxName_11"><img
								src="/resources/img/menu/new_dakkangjung.png"
								id="eListPrdImage11_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" /> <img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_new.gif"
										class="icon_img" alt="New" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('11', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=11&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">닭강정</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">닭 가슴살(국산), 마늘</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">15,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_10" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_10 displaynone" /></span> <a
								href="/menu/10"
								name="anchorBoxName_10"><img
								src="/resources/img/menu/new_ddongjip.png"
								id="eListPrdImage10_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('10', '24', '1','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=10&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">집통마늘소금똥집</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">닭고기(국내산),감자,양파,청양고추,대파</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">10,000원</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_9" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_9 displaynone" /></span> <a
								href="/menu/9"
								name="anchorBoxName_9"><img
								src="/resources/img/menu/new_bulgogi.png"
								id="eListPrdImage9_1" alt="" class="thumb" /></a>
							<div class="status">
								<div class="icon">
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_recommended.gif"
										class="icon_img" alt="추천" />
								</div>
								<div class="button">
									<div class="option"></div>
									<img
										src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_prd_zoom.gif"
										onClick="zoom('9', '24', '1','', '');" style="cursor: pointer"
										alt="상품 큰 이미지 보기" />
								</div>
							</div>
							<p class="name">
								<strong><a
									href="/product/detail.html?product_no=9&cate_no=24&display_group=1"
									class=""><span class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품명</span> :</span> <span
										style="font-size: 12px; color: #555555;">쫄깃 오삼불고</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">삼겹살(국내산),김치(국내산),홍어(국내산),깻잎(국내산)</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">15,000원</span></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="xans-element- xans-product xans-product-normalpaging">
			<p class="first">
				<a href="#none"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_page_first.gif"
					alt="첫 페이지" /></a>
			</p>
			<p>
				<a href="#none"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_page_prev.gif"
					alt="이전 페이지" /></a>
			</p>
			<ol>
				<li class="xans-record-"><a href="?cate_no=24&page=1"
					class="this">1</a></li>
			</ol>
			<p>
				<a href="#none"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_page_next.gif"
					alt="다음 페이지" /></a>
			</p>
			<p class="last">
				<a href="#none"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_page_last.gif"
					alt="마지막 페이지" /></a>
			</p>
		</div>
	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>