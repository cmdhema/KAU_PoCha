<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/cart.css" />
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
				<li title="현재 위치"><strong>장바구니</strong></li>
			</ol>
		</div>

		<div class="titleArea">
			<h2>장바구니</h2>
		</div>

		<!-- 장바구니 모듈 Package -->
		<div class="xans-element- xans-order xans-order-basketpackage ">
			<p class="orderStep">
				<img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/img_step1.gif"
					alt="01 장바구니" />
			</p>
			<!-- 혜택정보 -->
			<!-- 탭 -->
			<div class="xans-element- xans-order xans-order-tabinfo ">
				<ul>
					<li class="selected "><a href="/order/basket.html">국내배송상품
							(2)</a></li>
					<li class=" "><a href="/order/basket.html?delvtype=B">해외배송상품
							(0)</a></li>
				</ul>
				<p class="displaynone">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
			</div>
			<!-- 장바구니 비어있을 때 -->
			<!-- 일반상품 -->
			<div class="orderListArea">
				<div class="xans-element- xans-order xans-order-normtitle title ">
					<h3>일반상품 (2)</h3>
				</div>

				<!-- 일반상품 (기본배송) -->
				<table border="1" summary=""
					class="xans-element- xans-order xans-order-normnormal boardList xans-record-">
					<caption>기본배송</caption>
					<thead>
						<tr>
							<th scope="col" class="chk"><input type="checkbox"
								onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);" /></th>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="price">판매가</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="mileage">적립금</th>
							<th scope="col" class="delivery">배송구분</th>
							<th scope="col" class="charge">배송비</th>
							<th scope="col" class="total">합계</th>
							<th scope="col" class="button">선택</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="10"><strong class="type">[기본배송]</strong> 상품구매금액
								<strong>110,000 <span class="displaynone">()</span></strong><span
								class="displaynone"> </span> + 배송비 0<span class="displaynone">
							</span> <span class="displaynone"> - 상품할인금액 0 </span> = 합계 : <strong
								class="total"><span>110,000</span>원</strong> <span
								class="displaynone"> </span></td>
						</tr>
					</tfoot>
					<tbody class="xans-element- xans-order xans-order-list">
						<tr class="xans-record-">
							<td><input type="checkbox" id="basket_chk_id_0"
								name="basket_product_normal_type_normal" /></td>
							<td class="thumb"><a
								href="/product/detail.html?product_no=16&cate_no=24"><img
									src="http://skin-skin2.pontosvs.cafe24.com/web/product/tiny/"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt="샘플상품 8" /></a></td>
							<td class="product"><a
								href="/product/detail.html?product_no=16&cate_no=24"><strong>샘플상품
										8</strong> </a><span class="displaynone"><br />(영문명 : )</span></td>
							<td class="price">
								<div class="discount">
									<strong>40,000원</strong>
									<p class="displaynone"></p>
								</div>
								<div class="displaynone">
									<strong>40,000원</strong>
									<p class="displaynone"></p>
								</div>
							</td>
							<td><span class="quantity"><input id="quantity_id_0"
									name="quantity_name_0" size="2" value="2" type="text" /><a
									href="javascript:;"
									onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_up.gif"
										alt="증가" class="QuantityUp" /></a><a href="javascript:;"
									onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_down.gif"
										alt="감소" class="QuantityDown" /></a></span> <a href="javascript:;"
								onclick="Basket.modifyQuantity()"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_modify.gif"
									alt="변경" /></a></td>
							<td class="mileage">-</td>
							<td class="delivery">기본배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td>
								<p class="displaynone">
									0원<span class="displaynone"><br /></span><br />
								</p>무료
							</td>
							<td class="total"><strong>80,000원</strong>
								<div class="displaynone"></div></td>
							<td class="button"><a href="javascript:;"
								onclick="Basket.orderBasketItem(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order.gif"
									alt="주문하기" /></a> <a href="javascript:;"
								onclick="BasketNew.moveWish(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
									alt="관심상품등록" /></a> <a href="javascript:;"
								onclick="Basket.deleteBasketItem(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete.gif"
									alt="삭제" /></a></td>
						</tr>
						<tr class="xans-record-">
							<td><input type="checkbox" id="basket_chk_id_1"
								name="basket_product_normal_type_normal" /></td>
							<td class="thumb"><a
								href="/product/detail.html?product_no=14&cate_no=24"><img
									src="http://skin-skin2.pontosvs.cafe24.com/web/product/tiny/"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt="샘플상품 6" /></a></td>
							<td class="product"><a
								href="/product/detail.html?product_no=14&cate_no=24"><strong>샘플상품
										6</strong> </a><span class="displaynone"><br />(영문명 : )</span></td>
							<td class="price">
								<div class="discount">
									<strong>30,000원</strong>
									<p class="displaynone"></p>
								</div>
								<div class="displaynone">
									<strong>30,000원</strong>
									<p class="displaynone"></p>
								</div>
							</td>
							<td><span class="quantity"><input id="quantity_id_1"
									name="quantity_name_1" size="2" value="1" type="text" /><a
									href="javascript:;"
									onclick="Basket.addQuantityShortcut('quantity_id_1', 1);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_up.gif"
										alt="증가" class="QuantityUp" /></a><a href="javascript:;"
									onclick="Basket.outQuantityShortcut('quantity_id_1', 1);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_down.gif"
										alt="감소" class="QuantityDown" /></a></span> <a href="javascript:;"
								onclick="Basket.modifyQuantity()"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_modify.gif"
									alt="변경" /></a></td>
							<td class="mileage">-</td>
							<td class="delivery">기본배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td>
								<p class="displaynone">
									0원<span class="displaynone"><br /></span><br />
								</p>무료
							</td>
							<td class="total"><strong>30,000원</strong>
								<div class="displaynone"></div></td>
							<td class="button"><a href="javascript:;"
								onclick="Basket.orderBasketItem(1);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order.gif"
									alt="주문하기" /></a> <a href="javascript:;"
								onclick="BasketNew.moveWish(1);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
									alt="관심상품등록" /></a> <a href="javascript:;"
								onclick="Basket.deleteBasketItem(1);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete.gif"
									alt="삭제" /></a></td>
						</tr>
					</tbody>
				</table>
				<!-- 일반상품 (업체기본배송) -->
				<!-- 일반상품 (개별배송) -->
				<!-- 일반상품 (해외배송) -->
			</div>
			<!-- 무이자상품 -->
			<div class="orderListArea">

				<!-- 무이자상품 (기본배송)-->
				<!-- 무이자상품 (개별배송)-->
				<!-- 무이자상품 (해외배송) -->
			</div>
			<!-- 무이자할부 정보 (카드이미지 등) -->
			<div
				class="xans-element- xans-order xans-order-basketpriceinfoguide  ">
				<p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
				<p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인
					가능합니다.</p>
			</div>
			<!-- 선택상품 제어 버튼 -->
			<div class="xans-element- xans-order xans-order-selectorder ">
				<span class="left"> <strong class="ctrlTxt">선택상품을</strong> <a
					href="#none" onclick="Basket.deleteBasket()"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete2.gif"
						alt="삭제하기" /></a> <a href="#none" onclick="Basket.addWishList()"
					class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
						alt="관심상품등록" /></a> <a href="#none" onclick="Basket.moveOversea()"
					class=""><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_foreign.gif"
						alt="해외배송상품 장바구니로 이동" /></a> <a href="#none"
					onclick="Basket.hopeProduct(''); return false;" class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_product.gif"
						alt="상품조르기" /></a>
				</span> <a href="#none" onclick="Basket.emptyBasket()"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_clear.gif"
					alt="장바구니비우기" /></a> <a href="#none"
					onclick="Basket.estimatePrint(this)" link="/estimate/userform.html"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_estimate.gif"
					alt="견적서출력" /></a>
			</div>
			<!-- 총 주문금액 : 국내배송상품 -->
			<div class="xans-element- xans-order xans-order-totalsummary  ">
				<table border="1" summary="">
					<caption>총 주문금액</caption>
					<colgroup>
						<col style="width: 23%;" />
						<col style="width: 24%;" />
						<col style="width: 23%;" class="displaynone" />
						<col style="width: auto;" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><span>총 상품금액</span><a href="#none"
								onclick="OrderLayer.onDiv('order_layer_detail', event.x, event.y);"
								class="more displaynone"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기" /></a></th>
							<th scope="col">총 배송비</th>
							<th scope="col" class="displaynone">총 할인금액<a href="#none"
								onclick="OrderLayer.onDiv('order_layer_benefit', event.x, event.y);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기" /></a>
							</th>
							<th scope="col">결제예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="price"><div class="box">
									<strong>110,000</strong>원 <span class="tail displaynone"></span>
								</div></td>
							<td class="option"><div class="box">
									<strong>+</strong><strong>0</strong>원 <span
										class="tail displaynone"></span>
								</div></td>
							<td class="discount displaynone"><div class="box">
									<strong>-</strong><strong>0</strong>원 <span
										class="tail displaynone"></span>
								</div></td>
							<td class="total"><div class="box">
									<strong>=</strong><strong>110,000</strong>원 <span
										class="tail displaynone"></span>
								</div></td>
						</tr>
					</tbody>
				</table>
				<!-- 총 상품금액 상세내역 레이어 -->
				<div id="order_layer_detail" class="totalDetail">
					<h3>총 상품금액 상세내역</h3>
					<div class="content">
						<p>110,000원</p>
						<ul>
							<li><strong>상품금액</strong><span></span></li>
							<li class="displaynone"><strong>부가세</strong><span></span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기" /></a>
					</div>
				</div>
				<!-- 총 할인금액 내역보기 레이어 -->
				<div id="order_layer_benefit" class="totalDetail">
					<h3>총 할인금액 상세내역</h3>
					<div class="content">
						<p id="mTotalBenefitPrice">0원</p>
						<ul>
							<li class="displaynone"><strong>기간할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>회원할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>재구매할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>대량구매할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>바로가기(링콘)할인</strong><span
								id="">원</span></li>
							<li class="displaynone"><strong>어바웃pbp할인</strong><span id="">원</span>
							</li>
							<li class="displaynone"><strong>신규상품할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>결제수단할인</strong><span id="">원</span>
							</li>
							<li class="displaynone"><strong>회원등급할인</strong><span id="">0원</span>
							</li>
						</ul>
					</div>
					<div class="close">
						<a href="#none"
							onclick="OrderLayer.offDiv('order_layer_benefit');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기" /></a>
					</div>
				</div>
			</div>
			<!-- 총 주문금액 : 해외배송상품 -->
			<div
				class="xans-element- xans-order xans-order-totaloversea displaynone ">
				<table border="1" summary="">
					<caption>총 주문금액</caption>
					<colgroup>
						<col style="width: 35%;" />
						<col style="width: 30%;" class="displaynone" />
						<col style="width: auto;" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><span>총 상품금액</span><a href="#none"
								onclick="OrderLayer.onDiv('order_layer_detail', event.x, event.y);"
								class="more displaynone"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기" /></a></th>
							<th scope="col" class="displaynone">총 할인금액<a href="#none"
								onclick="OrderLayer.onDiv('order_layer_benefit', event.x, event.y);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기" /></a>
							</th>
							<th scope="col">총 합계</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="price"><div class="box">
									<strong>110,000</strong><strong class="tail">원</strong> <span
										class="tail displaynone"></span>
								</div></td>
							<td class="discount displaynone"><div class="box">
									<strong>-</strong><strong>0</strong>원 <span
										class="tail displaynone"></span>
								</div></td>
							<td class="total"><div class="box">
									<strong>=</strong><strong>110,000</strong><strong class="tail">원</strong>
									<span class="tail displaynone"></span>
								</div></td>
						</tr>
					</tbody>
				</table>
				<!-- 총 상품금액 상세내역 레이어 -->
				<div id="order_layer_detail" class="totalDetail">
					<h3>총 상품금액 상세내역</h3>
					<div class="content">
						<p>110,000원</p>
						<ul>
							<li><strong>상품금액</strong><span></span></li>
							<li class="displaynone"><strong>부가세</strong><span></span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기" /></a>
					</div>
				</div>
				<!-- 총 할인금액 상세내역 레이어 -->
				<div id="" class="totalDetail">
					<h3>총 할인금액 상세내역</h3>
					<div class="content">
						<p id="mTotalBenefitPrice">0원</p>
						<ul>
							<li class="displaynone"><strong>기간할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>회원할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>재구매할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>대량구매할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>바로가기(링콘)할인</strong><span
								id="">원</span></li>
							<li class="displaynone"><strong>어바웃pbp할인</strong><span id="">원</span>
							</li>
							<li class="displaynone"><strong>신규상품할인</strong><span id="">0원</span>
							</li>
							<li class="displaynone"><strong>결제수단할인</strong><span id="">원</span>
							</li>
							<li class="displaynone"><strong>회원등급할인</strong><span id="">0원</span>
							</li>
						</ul>
					</div>
					<div class="close">
						<a href="#none"
							onclick="OrderLayer.offDiv('order_layer_benefit');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기" /></a>
					</div>
				</div>
			</div>
			<!-- 주문 버튼 -->
			<div class="xans-element- xans-order xans-order-totalorder">
				<a href="#none" onclick="Basket.orderAll(this)"
					link-order="/order/orderform.html?basket_type=all_buy"
					link-login="/member/login.html" class=" "><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_all.gif"
					alt="전체상품주문" /></a> <a href="#none"
					onclick="Basket.orderSelectBasket(this)"
					link-order="/order/orderform.html?basket_type=all_buy"
					link-login="/member/login.html" class=""><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_select.gif"
					alt="선택상품주문" /></a><span class="right"> <a href="/"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_ing.gif"
						alt="쇼핑계속하기" /></a>
				</span>
				<!-- 네이버 체크아웃 구매 버튼  -->
				<div id="NaverChk_Button"></div>
			</div>
		</div>
		<!-- //장바구니 모듈 Package -->

		<!-- 관심상품 목록 -->
		<div
			class="xans-element- xans-myshop xans-myshop-wishlist displaynone xans-record-">
			<!--
        $login_page = /member/login.html
        $count = 5
        $mode = basket
    -->
			<div class="title">
				<h3>관심상품</h3>
			</div>
			<table border="1" summary="">
				<caption>관심상품 목록</caption>
				<thead>
					<tr>
						<th scope="col" class="thumb">이미지</th>
						<th scope="col" class="product">상품정보</th>
						<th scope="col" class="price">판매가</th>
						<th scope="col" class="mileage">적립금</th>
						<th scope="col" class="delivery">배송구분</th>
						<th scope="col" class="charge">배송비</th>
						<th scope="col" class="total">합계</th>
						<th scope="col" class="button">선택</th>
					</tr>
				</thead>
			</table>
			<p class="empty ">관심상품 내역이 없습니다.</p>
		</div>


		<!-- 이용안내 -->
		<div class="xans-element- xans-order xans-order-basketguide help ">
			<h3>이용안내</h3>
			<div class="content">
				<h4>장바구니 이용안내</h4>
				<ul>
					<li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로
						결제해 주시기 바랍니다.</li>
					<li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로
						이동하여 결제하실 수 있습니다.</li>
					<li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면
						됩니다.</li>
					<li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
					<li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실
						수 있습니다.</li>
					<li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로
						교체됩니다.</li>
				</ul>
				<h4>무이자할부 이용안내</h4>
				<ul>
					<li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기]
						버튼을 눌러 주문/결제 하시면 됩니다.</li>
					<li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한
						주문/결제가 이루어집니다.</li>
					<li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수
						없습니다.</li>
				</ul>
			</div>
		</div>


	</div>
	<!-- } 레이아웃 오른쪽 영역 끝 -->
	<jsp:include page="bottom.jsp"></jsp:include>
	
</body>
</html>