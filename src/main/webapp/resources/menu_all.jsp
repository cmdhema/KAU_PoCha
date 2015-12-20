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
				<!--
            $compare_page = /product/compare.html
        -->
				<!--<div class="title" id="Product_ListMenu">
            <h3><span>HIT PRODUCT</span></h3>
        </div>-->
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
				<fieldset class="condition displaynone">
					<legend>조건별 검색</legend>
					<p>

						<select
							class="xans-element- xans-product xans-product-firstselect FirstSelect"><option
								value="">-조건선택-</option>
							<option value="" class=""></option>
						</select> <select
							class="xans-element- xans-product xans-product-secondselect SecondSelect"><option
								value="">-조건선택-</option>
							<option value="" class=""></option>
						</select> <a href="#SelectSearch" class="SelectSearch"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_list_search.gif"
							alt="검색" /></a>
					</p>
				</fieldset>
			</div>
			<div class="xans-element- xans-product xans-product-listnormal">
				<!--
            $count = 12
            $basket_result = /product/add_basket.html
            $basket_option = /product/basket_option.html
        -->
				<ul class="prdList column4">
					<li id="anchorBoxId_16" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_16 displaynone" /></span> <a
								href="/product/detail.html?product_no=16&cate_no=24&display_group=1"
								name="anchorBoxName_16"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 8</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">40,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_15" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_15 displaynone" /></span> <a
								href="/product/detail.html?product_no=15&cate_no=24&display_group=1"
								name="anchorBoxName_15"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 7</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">35,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_14" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_14 displaynone" /></span> <a
								href="/product/detail.html?product_no=14&cate_no=24&display_group=1"
								name="anchorBoxName_14"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 6</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">30,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_13" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_13 displaynone" /></span> <a
								href="/product/detail.html?product_no=13&cate_no=24&display_group=1"
								name="anchorBoxName_13"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 5</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">25,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_12" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_12 displaynone" /></span> <a
								href="/product/detail.html?product_no=12&cate_no=24&display_group=1"
								name="anchorBoxName_12"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 4</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">20,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_11" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_11 displaynone" /></span> <a
								href="/product/detail.html?product_no=11&cate_no=24&display_group=1"
								name="anchorBoxName_11"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 3</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">15,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_10" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_10 displaynone" /></span> <a
								href="/product/detail.html?product_no=10&cate_no=24&display_group=1"
								name="anchorBoxName_10"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 2</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">10,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
							</ul>
						</div>
					</li>
					<li id="anchorBoxId_9" class="item xans-record-">
						<div class="box">
							<span class="chk"><input type="checkbox"
								class="ProductCompareClass xECPCNO_9 displaynone" /></span> <a
								href="/product/detail.html?product_no=9&cate_no=24&display_group=1"
								name="anchorBoxName_9"><img
								src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
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
										style="font-size: 12px; color: #555555;">샘플상품 1</span></a></strong>
							</p>
							<ul class="xans-element- xans-product xans-product-listitem">
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;">제조사</span> :</strong> <span
									style="font-size: 12px; color: #555555;">자체제작</span></li>
								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;">판매가</span>
										:</strong> <span
									style="font-size: 12px; color: #008BCC; font-weight: bold;">5,000원</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">트렌드</span> :</strong> <span
									style="font-size: 12px; color: #555555;">기본트렌드</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">국내·해외배송</span> :</strong> <span
									style="font-size: 12px; color: #555555;">국내배송</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송비</span> :</strong> <span
									style="font-size: 12px; color: #555555;">무료</span></li>
								<li class=" xans-record-"><strong class="title "><span
										style="font-size: 12px; color: #555555;">배송방법</span> :</strong> <span
									style="font-size: 12px; color: #555555;">택배</span></li>
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