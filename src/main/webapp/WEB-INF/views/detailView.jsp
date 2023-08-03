<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
   <meta charset="UTF-8">
   <title>쿠팡! | 과일엔 미국산 생체리</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="shortcut icon" href="//image9.coupangcdn.com/image/coupang/favicon/v2/favicon.ico" type="image/x-icon" />
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detailView_style.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
   <script src="${pageContext.request.contextPath}/resources/javascript/detailView.js"></script>
</head>

<body>
   <div class="container">
      <div id="top-bar">
         <div id="header-header">
            <ul id="header-header1">
               <li><a href="#">즐겨찾기</a></li>
               <li><a id="dropdown-a" href="#"> 입점신청</a>
                  <ul id="dropdown-ipjum">
                     <li><a href="#">오픈마켓</a></li>
                     <li><a href="#">여행·티켓</a></li>
                     <li><a href="#">로켓배송</a></li>
                     <li><a href="#">제휴마케팅</a></li>
                  </ul>
               </li>
            </ul>
            <ul id="header-header2">
               <li><a href="#">고객센터</a>
                  <ul>
                     <li><a href="#">자주묻는 질문</a></li>
                     <li><a href="#">1:1 채팅문의</a></li>
                     <li><a href="#">고객의 소리</a></li>
                     <li><a href="#">취소 / 반품안내</a></li>
                  </ul>
               </li>
               <li><a href="./joinForm.jsp">회원가입</a></li>
               <li><a href="#">로그인</a></li>
            </ul>
         </div>
      </div>
      <header id="header">
         <div id="header1">
            <div id="cate-search">
               <div id="category">
                  <ul>
                     <li><a href="#"><img style="width:110px; height:115px;" src="./images/category.png"/></a>
                        <ul>
                           <li><a href="#">패션의류/잡화</a></li>
                           <li><a href="#">뷰티</a></li>
                           <li><a href="#">출산/유아동</a></li>
                           <li><a href="#">식품</a></li>
                           <li><a href="#">주방용품</a></li>
                           <li><a href="#">생활용품</a></li>
                           <li><a href="#">홈인테리어</a></li>
                           <li><a href="#">가전디지털</a></li>
                           <li><a href="#">스포츠/레저</a></li>
                           <li><a href="#">자동차용품</a></li>
                           <li><a href="#">도서/음반/DVD</a></li>
                           <li><a href="#">완구/취미</a></li>
                           <li><a href="#">문구/오피스</a></li>
                           <li><a href="#">헬스/건강식품</a></li><hr>
                           <li><a href="#">여행/티켓</a></li><hr>
                           <li><a href="#">테마관</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               <div id="bridge">
                  <div id="logo-search">
                     <div id="logo">
                        <a href="https://www.coupang.com/" style= "display: block;">
                           <img id="logoin"src="./images/coupang.png"/>
                        </a>
                     </div>
                     <div id="search">
                        <form id="searchform">
                           <div class="searchform-header">
                              <div class="sel-category">
                                 <select class="sel-category-content">
                                   <option selected>전체</option>
                                   <option>여성패션</option>
                                   <option>남성패션</option>
                                   <option>남녀 공용 의류</option>
                                   <option>유아동패션</option>
                                   <option>뷰티</option>
                                   <option>출산/유아동</option>
                                   <option>식품</option>
                                   <option>주방용품</option>
                                   <option>생활용품</option>
                                   <option>홈인테리어</option>
                                   <option>가전디지털</option>
                                   <option>스포츠/레저</option>
                                   <option>자동차용품</option>
                                   <option>도서/음반/DVD</option>
                                   <option>완구/취미</option>
                                   <option>문구/오피스</option>
                                   <option>반려동물용품</option>
                                   <option>헬스/건강식품</option>
                                   <option>국내여행</option>
                                   <option>해외여행</option>
                                   <option>장마 준비</option>
                                   <option>로켓설치</option>
                                   <option>공간별 집꾸미기</option>
                                   <option>헬스케어 전문관</option>
                                   <option>쿠팡 Only</option>
                                   <option>싱글라이프</option>
                                   <option>악기전문관</option>
                                   <option>결혼준비</option>
                                   <option>아트/공예</option>
                                   <option>미세먼제용품</option>
                                   <option>홈카페</option>
                                   <option>실버스토어</option>
                                   <option>로켓펫닥터</option>
                                 </select>

                              </div>
                              <div class="sear-category">
                                 <input type="text" id="headerSearchKeyword" 
                                 title="쿠팡 상품 검색" value="" placeholder="찾고 싶은 상품을 검색해보세요!" autocomplete="off">
                                 <a href="#" id="headerMicBtn" title="마이크">
                                    <img src="./images/ic_mic.png" style="width:25px; height:30px;"/>
                                 </a>
                                 <a href="#" id="headerSearchBtn" title="검색">
                                    <img src="./images/search.png" style="width:40px; height:35px;"/>
                                 </a>
                              </div>
                           </div>
                        </form>
                     </div>
                     <div id="mymenu">
                        <ul>
                           <li style="position:absolute;"><a href="#">
                              <img src="./images/mycoupang.png" style="width: 50px; height: 60px;"></a>
                              <ul id="mymenu-ul1">
                                 <li><a href="#">주문 목록</a></li>
                                 <li><a href="#">취소/반품</a></li>
                                 <li><a href="#">찜 리스트</a></li>
                              </ul>
                           </li>
                        </ul>
                        <ul>
                           <li style="position:relative; left:60px;"><a href="cart.html">
                           <img src="./images/cart.png" style="width: 50px; height: 63px;"></a>
                              <ul id="mymenu-ul2">
                                 <li><a href="#" style=" text-align: center;">장바구니에 담긴 물품이 없습니다.</a></li>
                              </ul>
                           </li>
                        </ul>
                     </div>	
                  </div>
                  <div id="menu">
                     <div id="menus" style="text-align: left; font-size: 14px;">
                        <label>
                           <a href="#">
                              <img style="width:20px; height:20px;" src="//image10.coupangcdn.com/image/coupang/rds/logo/xxhdpi/logo_rocket_symbol_large.png">
                              <span>로켓배송</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <img style="width:20px; height:20px;" src="//image9.coupangcdn.com/image/coupang/common/pc_header_rocket_fresh_1x.png">
                              <span>로켓프레시</span>
                           </a>
                        </label>
                        <label>
                           <a href="./registerForm.jsp">
                              <img style="width:20px; height:20px;" src="//image6.coupangcdn.com/image/coupang/common/logoBizonlyBrown.png">
                              <span>쿠팡비즈</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <img style="width:20px; height:20px;" src="//image6.coupangcdn.com/image/coupang/home/icons/Overseas.png">
                              <span>로켓직구</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <span>골드박스</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <span>와우회원할인</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <span>이벤트/쿠폰</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <img style="width:20px; height:20px;" src="//image10.coupangcdn.com/image/coupang/home/icons/RETURNED_MARKET_B@2x.png">
                              <span>반품마켓</span>
                           </a>
                        </label>
                        <label>
                           <a href="#">
                              <img style="width:20px; height:20px;" src="//image9.coupangcdn.com/image/coupang/common/icon_government_promotion.png">
                              <span>착한상점</span>
                           </a>
                        </label>
                     </div>
                  </div>	
               </div>
               
               
            </div>
         </div>
      </header>

      <div class="contents">
         <div class="top-product">
            <ul class="categories">
               <li>
                  <a href="https://www.coupang.com/">쿠팡 홈</a>
                  &nbsp; >
               </li>
               <li>
                  <a href="https://www.coupang.com/np/categories/194276?eventCategory=breadcrumb&eventLabel=">식품</a>
                  &nbsp; >
               </li>
               <li>
                  <a href="https://www.coupang.com/np/categories/194282?eventCategory=breadcrumb&eventLabel=">과일</a>
                  &nbsp; >
               </li>
               <li>
                  <a href="https://www.coupang.com/np/categories/194340?eventCategory=breadcrumb&eventLabel=">체리</a>
               </li>
            </ul>
            <div class="top-product-main">
               <div class="product-image">
                  <ul class="productItems">
                     <li><img
                           src="//thumbnail10.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/2022/06/23/10/9/bbabae63-6743-4538-877b-7ccf2fddbef5.jpg"
                           id="cherry1">
                     </li>
                     <li><img
                           src="//thumbnail10.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/2022/06/23/10/9/d2a7d797-4b2d-4ab9-b0fa-1a29a3d3c8ad.jpg"
                           id="cherry2">
                     </li>
                     <li><img
                           src="//thumbnail9.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/2022/06/23/10/1/78ecbb19-a253-42a2-a6ba-085d0222e141.jpg"
                           id="cherry3">
                     </li>
                     <li><img
                           src="//thumbnail6.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/2022/06/23/10/8/5ed822b0-dfdb-48cc-80dc-bcbc725820d4.jpg"
                           id="cherry4">
                     </li>
                     <li><img
                           src="//thumbnail6.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/4911267064515809-dc68e857-13d0-418d-91be-6a9469093ec3.jpg"
                           id="cherry5">
                     </li>
                     <li><img
                           src="//thumbnail7.coupangcdn.com/thumbnails/remote/48x48ex/image/retail/images/2022/06/23/10/6/4ebabbb5-c770-4218-b8dc-b07e77b23eb6.jpg"
                           id="cherry6">
                     </li>
                  </ul>
                  <img class="productMainImage"
                     src="//thumbnail10.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2022/06/23/10/9/bbabae63-6743-4538-877b-7ccf2fddbef5.jpg">
               </div>
               <!-- 구매 선택 -->
               <div class="product-buy">
                  <!-- 상품 이름 -->
                  <div class="product-buy-header">
                     <div class="product-buy-header_left">
                        <h2>과일엔 미국산 생체리</h2>
                        <div class="prod-buy-header__info">
                           <span class="prod-buy-header__productreview" style="display:block;">
                              <a href="#product_review-form">
                                 <span class="rating-star-container" style="float:left;">
                                    <span class="rating-star-num" style="width: 90.0%;"></span>
                                 </span>
                                 <span class="count">183개 상품평</span>
                              </a>
                           </span>
                        </div>
                     </div>
                     <div class="product-buy-header_right">
                        <button value="off" class="product-wish-btn"></button>
                        <button class="product-share-btn"></button>
                     </div>
                  </div>
                  <!-- 상품 가격 -->
                  <div class="product-price-container">
                     <div class="product-price">
                        <!-- 할인율 및 원래가격 -->
                        <div class="product-origin-price">
                           <span class="discount-rate">63%</span>
                           <span class="origin-price">18,900원</span>
                           <button class="origin-price-info-btn"></button>
                        </div>
                        <!-- 총가격 -->
                        <div class="product-total-price">
                           <span class="total-price">6,900원</span>
                           <span class="unit-price">(100g당 <span>1,725원</span>)</span>
                           <div class="price-badge-list">
                              <span>
                                 <image src="./images/rocket_fresh.png" style="height: 14px; vertical-align: middle;">
                                 </image>
                              </span>
                              <span style="margin-left: 7px;">
                                 <span class="split-line"></span>
                                 <em class="prod-txt-blue">로켓와우 전용</em>
                                 <span class="rocket-falcon-icon"></span>
                              </span>
                           </div>
                        </div>
                        <!-- 쿠팡캐시 적립금 -->
                        <div class="product-cash">
                           <div class="max-cash">
                              <img src="//image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png"
                                 width="14px">
                              <span class="reward-cash-txt">최대 345원 적립</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 상품 배송비 -->
                  <div class="product-shipping-container">
                     <div class="product-shipping-fee">
                        <span>무료배송</span>
                        <span>(로켓프레시 상품 15,000원 이상 구매 시)</span>
                     </div>
                     <div class="product-shipping-date">
                        <span>내일(토) 6/24 새벽 7시 전</span>
                        <span>도착 보장</span>
                        <span>(밤 12시 전 주문 시</span>
                        <span>/</span>
                        <span>서울⋅경기 기준)</span>
                     </div>
                  </div>
                  <!-- 상품 옵션 -->
                  <div class="product-option-container">
                  	 <div class="product-option-btn-container">
                  	 	<button class="product-option-btn">
	                        <div class="product-option-item">
	                           <div class="product-option-title">
	                              <span>중량 x 수량</span>
	                              <span><strong>400g x 1팩</strong></span>
	                           </div>
	                           <img src="./images/search_triangle.PNG" width="10px">
	                        </div>
                     	</button>
                  	 </div>
                     <ul class="product-options-list closed">
	                  	<li class="product-option-list-item">
	                  		<a href="#">
	                  			<div>
			                      <div><strong class="product-option-list-title">1.2kg x 1팩</strong></div>
			                      <div><strong class="product-option-list-price">17,900원</strong> (100g당 1,492원)</div>
				                </div>
	                  		</a>
	                  	</li>
	                  	<li class="product-option-list-item selected">
	                  		<a href="#">
	                  			<div>
			                      <div><strong class="product-option-list-title">400g x 1팩</strong></div>
			                      <div><strong class="product-option-list-price">6,900원</strong> (100g당 1,750원)</div>
				                </div>
	                  		</a>
	                  	</li>
	                  	<li class="product-option-list-item">
	                  		<a href="#">
	                  			<div>
			                      <div><strong class="product-option-list-title">800g x 1팩</strong></div>
			                      <div><strong class="product-option-list-price">17,900원</strong> (100g당 1,500원)</div>
				                </div>
	                  		</a>
	                  	</li>
	                  </ul>
                  </div>
                  <!-- 쿠팡캐시 적립 -->
                  <div class="product-reward-cash-container">
                     <div class="reward-cash-summary">
                        <div class="reward-cash-summary_title">
                           <img src="//image6.coupangcdn.com/image/badges/sdp/cashback/web/cash-icon@2x.png"
                              width="20px">
                           <span>캐시적립 혜택</span>
                        </div>
                        <div class="reward-cash-summary_info">
                           <span>|</span>
                           <span>최대 <strong>345</strong>원 적립</span>
                        </div>
                     </div>
                     <div class="reward-cash-promotion">
                        <p>
                           쿠페이 머니 결제 시 1% 적립
                        </p>
                        <p>
                           [로켓와우 + 쿠페이 계좌이체] 결제 시 2% 적립
                        </p>
                        <p>
                           [로켓와우 + 쿠페이 머니] 결제 시 4% 추가적립
                           <strong>2808일 남음</strong>
                        </p>
                        <button type="button" class="reward-cash-promotion-btn">
                           로켓와우 무료체험 신청하기
                        </button>
                     </div>
                  </div>
                  <!-- 상품 수량 및 구매 -->
                  <div class="product-quantity-buy">
                     <!-- 상품 수량 -->
                     <div class="product-quantity-container">
                        <div class="product-quantity">
                           <input class="product-quantity-input" type="number" value="1" min="1" max="50"/>
                           <div class="product-quantity-btns">
                              <button class="product-quantity-plus-btn" type="button"></button>
                              <button class="product-quantity-minus-btn" type="button" disabled="disabled"></button>
                           </div>
                        </div>
                     </div>
                     <!-- 장바구니/구매하기 -->
                     <div class="product-buy-footer">
                        <button class="product-cart-btn">
                           장바구니 담기
                        </button>
                        <button class="product-buy-btn">
                           <span>바로구매 ></span>
                        </button>
                     </div>
                  </div>
                  <!-- 상품 정보 -->
                  <div class="product-description">
                     <ul>
                        <li>원산지: 컨텐츠 참조</li>
                        <li>제조년월일: 2023-06-17</li>
                        <li>과일 종류: 생과</li>
                        <li>개당 중량: 400g</li>
                        <li>보관방법: 냉장보관</li>
                        <li>쿠팡상품번호: 6597727886 - 14913598627</li>
                     </ul>
                  </div>
                  <!-- <div>
                     <label for="optionQuantity"> </label> 
                     <input type="number" id="optionQuantity" style="width:200px" min="1" max="3" >
                  </div> -->
               </div>
            </div>
         </div>
         <div class="bottom">
            <!-- 함께 비교하면 좋을 상품[complete] -->
            <div id="compare_product_form" class="compare_product">
               <div class="recommendation">
                  <div class="recommendation_header">
                     <div class="recommendation_header_title">함께 비교하면 좋을 상품</div>
                     <span class="recommendation_header_description">광고
                        <i class="recommendation_header_description_icon"></i>
                     </span>
                     <span></span>
                  </div>
                  <div class="recommendation_inner">
                     <div class="ui_recommendation_list">
                        <ul>
                           <li class="rl_item ">
                              <a target="_blank" href="#"></a>
                              <div>
                                 <img class="rl_item_image"
                                    src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/90af/878801a5d6a6b68ba4b6eddffc9b38d0b176dab016205eb0f2f673db62bf.png"
                                    alt="이브팜 고당도 프리미엄 최상급 점보체리 500g 1kg 2kg 5kg, 1개"
                                    onerror="this.src='//t1a.coupangcdn.com/thumbnails/remote/300x300/image/coupang/common/no_img_1000_1000.png'">
                              </div>
                              <strong class="rl_item_title">이브팜 고당도 프리미엄 최상급 점보체리 500g 1kg 2kg 5kg, 1개</strong>
                              <div class="rl_item_price">
                                 <em>91,850</em> 원
                              </div>
                              <div class="rl_item_detail_price">(100g당 1,837원)</div>
                              <div class="rl_item_review">
                                 <span class="rl_item_review_score_bg">
                                    <span class="rl_item_review_score" style="width: 90%;"><em>90%</em></span>
                                 </span>
                                 <span class="rl_item_review-count">(18)</span>
                              </div>
                              </a>

                           </li>
                           <li class="rl_item ">
                              <a target="_blank" href="#"></a>
                              <div>
                                 <img class="rl_item_image"
                                    src="https://thumbnail6.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/5424/aa8e5d0e349b4471a61b21978745efe417a2b42ff8b778fa05fa7c8df8cd.jpg"
                                    alt="[100%항공직송] 로얄 사이즈 고당도 생 체리, 1박스, 1kg(특상)"
                                    onerror="this.src='//t1a.coupangcdn.com/thumbnails/remote/300x300/image/coupang/common/no_img_1000_1000.png'">
                              </div>
                              <strong class="rl_item_title">[100%항공직송] 로얄 사이즈 고당도 생 체리, 1박스, 1kg(특상)</strong>
                              <div class="rl_item_price">
                                 <em>22,910</em> 원
                              </div>
                              <div class="rl_item_detail_price">(100g당 229원)</div>
                              <div class="rl_item_review">
                                 <span class="rl_item_review_score_bg">
                                    <span class="rl_item_review_score" style="width: 90%;"><em>90%</em></span>
                                 </span>
                                 <span class="rl_item_review-count">(1,248)</span>
                              </div>
                              </a>

                           </li>
                           <li class="rl_item ">
                              <a target="_blank" href="#"></a>
                              <div>
                                 <img class="rl_item_image"
                                    src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/680b/61e32f9757ccb1cf11b6b83e02e3619519b531ead8c5db05c7b0009e2aa1.jpg"
                                    alt="프리미엄 미국산 생 체리 캘리포니아 항공직송 로즈루비, 미국산 체리 500g, 1개"
                                    onerror="this.src='//t1a.coupangcdn.com/thumbnails/remote/300x300/image/coupang/common/no_img_1000_1000.png'">
                              </div>
                              <strong class="rl_item_title">프리미엄 미국산 생 체리 캘리포니아 항공직송 로즈루비, 미국산 체리 500g, 1개</strong>
                              <div class="rl_item_price">
                                 <em>16,900</em> 원
                              </div>
                              <div class="rl_item_detail_price">(100g당 3,380원)</div>
                              <div class="rl_item_review">
                                 <span class="rl_item_review_score_bg">
                                    <span class="rl_item_review_score" style="width: 100%;"><em>100%</em></span>
                                 </span>
                                 <span class="rl_item_review-count">(2)</span>
                              </div>
                              </a>

                           </li>
                           <li class="rl_item ">
                              <a target="_blank" href="#"></a>
                              <div>
                                 <img class="rl_item_image"
                                    src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/f237/b7789fbafd38b1cbcc6465fe80ea7cc5aa606e9707d20b00967e0c4c2749.jpg"
                                    alt="따봉프레시 백화점용 3차선별 고당도 황제 생체리, 1개, 1.2kg"
                                    onerror="this.src='//t1a.coupangcdn.com/thumbnails/remote/300x300/image/coupang/common/no_img_1000_1000.png'">
                              </div>
                              <strong class="rl_item_title">따봉프레시 백화점용 3차선별 고당도 황제 생체리, 1개, 1.2kg</strong>
                              <div class="rl_item_price">
                                 <em>39,800</em> 원
                              </div>
                              <div class="rl_item_detail_price">(100g당 3,317원)</div>
                              <div class="rl_item_review">
                                 <span class="rl_item_review_score_bg">
                                    <span class="rl_item_review_score" style="width: 100%;"><em>100%</em></span>
                                 </span>
                                 <span class="rl_item_review-count">(10)</span>
                              </div>
                              </a>
                           </li>
                           <li class="rl_item ">
                              <a target="_blank" href="#"></a>
                              <div>
                                 <img class="rl_item_image"
                                    src="https://thumbnail10.coupangcdn.com/thumbnails/remote/300x300ex/image/retail/images/450511451941192-172b01db-ce55-4aa6-bc28-0d59540c37d3.jpg"
                                    alt="다조은 김천 자두(4~6입), 300g, 1팩"
                                    onerror="this.src='//t1a.coupangcdn.com/thumbnails/remote/300x300/image/coupang/common/no_img_1000_1000.png'">
                              </div>
                              <strong class="rl_item_title">다조은 김천 자두(4~6입), 300g, 1팩</strong>
                              <div class="rl_item_price">
                                 <em>39,800</em> 원
                              </div>
                              <img class="rl_item_badge" src="./images/rocket_fresh.png">
                              <div class="rl_item_detail_price">(100g당 3,317원)</div>
                              <div class="rl_item_review">
                                 <span class="rl_item_review_score_bg">
                                    <span class="rl_item_review_score" style="width: 100%;"><em>100%</em></span>
                                 </span>
                                 <span class="rl_item_review-count">(10)</span>
                              </div>
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 상품내용 목차 -->
            <div id="detail_product_form" class="detaile_product">
               <ul class="detail_product_form_title">
                  <li name="detail" class="active">상품 상세</li>
                  <li name="review"><a href="#product_review-form" style="color: #555;">상품평</a></li>
                  <li namme="qna"><a href="#prduct_qna_form" style="color: #555;">상품 문의</a></li>
                  <li name="etc"><a href="#product-etc-inquery" style="color: #555;">배송/교환/반품 안내</a></li>
               </ul>
               <ul class="detail_product_form_contents">
                  <!-- 상품 상세 -->
                  <li name="detail_product_contents">
                     <!-- 상품 상세 내용 -->
                     <div>
                        <div class="product_essential_info">
                           <p class="table_title">필수 표기정보</p>
                           <div class="table_frame">
                              <div class="table_row">
                                 <div class="table_column">품목 또는 명칭</div>
                                 <div id="fresh_food_title" class="table_content"></div>
                                 <div class="table_column">포장단위별 내용물의 용량(중량),수량,크기</div>
                                 <div id="fresh_food_weight" class="table_content"></div>
                              </div>
                              <div class="table_row">
                                 <div class="table_column">생산자(수입자)</div>
                                 <div id="fresh_food_manufacturer" class="table_content"></div>
                                 <div class="table_column">원산지</div>
                                 <div id="fresh_food_origin" class="table_content"></div>
                              </div>
                              <div class="table_row">
                                 <div class="table_column">제조연월일, 소비기한 또는 품질유지기한</div>
                                 <div id="fresh_food_manufacturing_date" class="table_content"></div>
                                 <div class="table_column">세부 품목군별 표시사항</div>
                                 <div id="fresh_food_detail_group" class="table_content"></div>
                              </div>
                              <div class="table_row">
                                 <div class="table_column">수입식품 문구 여부</div>
                                 <div id="fresh_food_imported_food_statement" class="table_content"></div>
                                 <div class="table_column">상품구성</div>
                                 <div id="fresh_food_composition" class="table_content"></div>
                              </div>
                              <div class="table_row">
                                 <div class="table_column">보관방법,취급방법</div>
                                 <div id="fresh_food_storage_type"class="table_content"></div>
                                 <div class="table_column">소비자안전을 위한 주의사항</div>
                                 <div id="fresh_food_precautions"  class="table_content"></div>
                              </div>
                              <div class="table_row">
                                 <div class="table_column">소비자상담관련 전화번호</div>
                                 <div id="fresh_food_consumer_consultationc_contact" class="table_content"></div>
                                 <div class="table_column"></div>
                                 <div class="table_content"></div>
                              </div>
                           </div>
                        </div>
                        <div class="product_detail_content">
                           <div class="product_detail_content_inside"></div>
                        </div>
                     </div>
                     <!-- 이런 상품은 어떄요 -->
                     <div id="recomment_product_list_form">
                        <div class="recomment_product_list_frame">
                           <div
                              style="display: flex; flex-direction: row; width: 100%; height: 54px; min-height: 54px; align-items: center">
                              <div
                                 style="-webkit-line-clamp: 1; overflow: hidden; display: -webkit-box!important; -webkit-box-orient: vertical; width: 100%; flex-grow: 1; padding: 0px 0px 0px 6px">
                                 <span
                                    style="font-size: 18px; font-weight: bold; color: rgba(33, 43, 54, 1); word-break: break-all; vertical-align: middle">이런
                                    상품은 어때요?</span>
                              </div>
                              <div
                                 style="-webkit-line-clamp: 1; overflow: hidden; display: -webkit-box!important; -webkit-box-orient: vertical; min-width: fit-content; margin: 0px 16px 0px 0px">
                                 <span
                                    style="font-size: 12px; font-weight: normal; color: rgba(17, 17, 17, 0.3); word-break: break-all; vertical-align: middle">AD</span>
                              </div>
                           </div>
                           <!-- 상품 추천의 개별 상품 -->
                           <div class="recommended_products"></div>
                        </div>
                     </div>
                  </li>

                  <!-- 상품평 -->
                  <li id="product_review-form" class="product-review-content">
                     <div class="sdp-review">
                        <div class="sdp-review-guide">상품평 운영원칙</div>
                        <h4 class="sdp-review-title">상품평</h4>
                        <div class="sdp-review-section-guide">동일한 상품에 대해 작성된 상품평으로, 판매자는 다를 수 있습니다.</div>

                        <div>
                           <!-- 별점 -->
                           <div class="sdp-review-total-star">
                              <div class="sdp-review-total-star-info">
                                 <div class="sdp-review-total-star-info-gray">
                                    <div class="sdp-review-total-star-info-orange" style="width: 222px;"></div>
                                 </div>
                                 <div class="sdp-review-total-star-info-count">183</div>
                                 <div class="sdp-review-total-star-info-detail">
                                    <span class="sdp-review-total-star-info-detail-content">자세히보기 &gt;</span>
                                 </div>
                              </div>
                           </div>

                           <!-- 리뷰 사진 -->
                           <div class="sdp-review-gallery">
                              <div>
                                 <ul class="sdp-review-gallery-list">
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail8.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/9f497616-d5af-4d89-a8ec-5d1ffa246edc.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/5d65389c-3e75-4a49-8fdf-fc6b4d5410b7.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/d3f2d485-cae1-44ff-ac56-288e9124f05a.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail9.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/e2ece8e7-7ade-4c80-abf9-39b2475c05aa.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/d3f2d485-cae1-44ff-ac56-288e9124f05a.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/5d65389c-3e75-4a49-8fdf-fc6b4d5410b7.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail8.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/14/8920372023070213512/9f497616-d5af-4d89-a8ec-5d1ffa246edc.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item">
                                       <img class="sdp-review-gallery-list-item-image"
                                          src="https://thumbnail7.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/b9740b88-1730-4c55-83f1-e6339fd3da8a.jpg">
                                    </li>
                                    <li class="sdp-review-gallery-list-item-more-btn">
                                       <div class="sdp-review-gallery-list-item-more-btn-count"> 45</div>
                                       <div class="sdp-review-gallery-list-item-more-btn-content">더보기 &gt;</div>
                                    </li>
                                 </ul>
                              </div>
                           </div>

                           <!-- 리뷰 통계 -->
                           <section class="sdp-review-summary"></section>
                        </div>

                        <div style="margin-top:90px;">
                           <!-- 리뷰 정렬 바 -->
                           <div class="sdp-review-article-order">
                              <div class="sdp-review-article-order-sort">

                                 <button class="sdp-review-article-order-sort-best-btn">베스트순</button>

                                 <div class="sdp-review-article-order-sort-bar">|</div>

                                 <button class="sdp-review-article-order-sort-newest-btn">최신순</button>
                              </div>
                              <div class="sdp-review-article-order-search">
                                 <input class="sdp-review-article-order-search-input" type="text"
                                    placeholder="상품평을 검색해보세요." maxlength="30">
                                 <div class="sdp-review-article-order-search-btn">
                                    <img class="sdp-review-article-order-search-btn-img"
                                       src="//img1a.coupangcdn.com/image/productreview/web/pdp/article/search-btn_v1.png">
                                 </div>
                              </div>
                              <div class="sdp-review-article-order-star">
                                 <div class="sdp-review-article-order-star-all">
                                    <div style="display: inline-block;">
                                       <div class="all-content">모든 별점 보기</div>
                                       <div class="all-count">183</div>
                                       <img class="all-arrow-down"
                                          src="//img1a.coupangcdn.com/image/productreview/web/pdp/article/star-select-down_v1.png"
                                          style="display: inline-block;">
                                    </div>
                                 </div>
                              </div>
                           </div>

                           <!-- 리뷰 상세 글 -->
                           <div id="review-detail-list">
                              <!--
                              <article class="sdp-review-article-list">
                                 <div class="list-info">
                                    <div class="list-info-profile">
                                       <img
                                          src="//thumbnail10.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202209/11/6408141922936458392/d3f6efa3-c0e6-46c2-9977-6e77c12caf4d.png"
                                          style="width: auto; height: 100%; margin-left: -0.382166px; opacity: 1;">
                                    </div>
                                    <div class="list-info-user">
                                       <span class="list-info-user-name">온바라기&nbsp;</span>
                                       <img class="list-info-top-badge"
                                          src="//img1a.coupangcdn.com/image/productreview/web/pdp/badges/TOP50_v1.png">
                                    </div>
                                    <div class="list-info-product-info">
                                       <div class="star-gray">
                                          <div class="star-orange" style="width: 80%;"></div>
                                       </div>
                                       <div class="reg-date">2023.06.09</div>
                                    </div>
                                    <div class="list-info-product-info-seller-name">판매자: 쿠팡(주)</div>
                                    <div class="list-info-product-info-name">과일엔 미국산 생체리, 800g,1팩</div>
                                 </div>

                                 <div class="list-attachment">
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail7.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/d16c7938-5618-4008-a438-1b1fdbf1bd53.jpg">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail9.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/c8367b5a-0bf4-476e-addb-a5d2377b881c.jpg">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail9.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/61886e0c-1e09-43ca-a269-603ab0ff21a1.jpg">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail10.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/5edccf7f-cfc3-4cbf-8f3c-f1f330568d39.jpg">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail7.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/b9740b88-1730-4c55-83f1-e6339fd3da8a.jpg">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/9/6408141922936458392/aba5a0aa-c7ab-4662-a29a-47ae598279ab.jpg">
                                    </div>
                                 </div>

                                 <div class="list-review">
                                    <div class="list-review-content">
                                       체리는 저희 엄마가 무척이나 좋아하시는 과일이에요<br><br>
                                       요것도 나올때만 먹을수 있으니 살 수 있으면 사는 편인데요<br><br>
                                       확실히 체리는 가격이 좀 비쌉니다ㅜ<br><br>
                                       어디서 구입하던 마찬가지라 어쩔수 없는것 같아요<br><br>
                                       아무래도 가격이 있는만큼 맛이 없으면 어쩌나 걱정했는데 나름 괜찮네요<br><br>
                                       아주 달콤한 것도 있고 좀 새콤한것도 있고 그렇지만 전반적으로 괜찮아요<br><br>
                                       신선도는 반정도는 꼭지까지 신선했고 반은 그냥저냥한 상태에요<br><br>
                                       먹는데 지장은 없지만 맛이 살짝 떨어져요<br><br>
                                       그래도 엄마가 맛나게 드셔서 좋습니다<br><br>
                                       다음에도 구입할께요~^^
                                    </div>
                                 </div>

                                 <div class="list-survey">
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">맛 만족도</span>
                                       <span class="list-survey-row-answer">괜찮아요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">싱싱함</span>
                                       <span class="list-survey-row-answer">보통이에요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">당도</span>
                                       <span class="list-survey-row-answer">적당히 달아요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">새콤함</span>
                                       <span class="list-survey-row-answer">적당히 새콤해요</span>
                                    </div>
                                 </div>

                                 <div class="list-help">
                                    <div class="list-help-count">
                                       <strong>8</strong>
                                       명에게 도움 됨
                                    </div>
                                    <button class="list-help-btn">도움이돼요</button>
                                    <button class="list-help-btn">도움 안돼요</button>
                                    <button class="list-help-report-btn">신고하기</button>
                                    <div class="sdp-review__clear"></div>
                                 </div>
                              </article>

                              <article class="sdp-review-article-list">
                                 <div class="list-info">
                                    <div class="list-info-profile">
                                       <img
                                          src="//thumbnail7.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202112/9/662383801868194448/1127fbc5-0585-4add-a103-4572510b2eaa.jpeg"
                                          style="width: auto; height: 100%; margin-left: -0.382166px; opacity: 1;">
                                    </div>
                                    <div class="list-info-user">
                                       <span class="list-info-user-name">장원석&nbsp;</span>
                                       <img class="list-info-top-badge"
                                          src="//img1a.coupangcdn.com/image/productreview/web/pdp/badges/REAL_NAME_REVIEWER_v1.png">
                                    </div>
                                    <div class="list-info-product-info">
                                       <div class="star-gray">
                                          <div class="star-orange" style="width: 80%;"></div>
                                       </div>
                                       <div class="reg-date">2023.06.11</div>
                                    </div>
                                    <div class="list-info-product-info-seller-name">판매자: 쿠팡(주)</div>
                                    <div class="list-info-product-info-name">과일엔 미국산 생체리, 800g,1팩</div>
                                 </div>

                                 <div class="list-attachment">
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail10.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/11/662383801868194448/d20d55a8-9b50-44b9-9e9d-0e75612b200c.jpg"
                                          style="width: 100%; height: auto; margin-top: -14.5453px; opacity: 1;">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail10.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/11/662383801868194448/18d7d01e-c2c4-4eba-b1cd-e98edbffbf5e.jpg"
                                          style="width: 100%; height: auto; margin-top: -14.5453px; opacity: 1;">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail7.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/11/662383801868194448/59732733-046a-4204-a584-c0e9f7e664e2.jpg"
                                          style="width: 100%; height: auto; margin-top: -14.5453px; opacity: 1;">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail10.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/11/662383801868194448/be6155f7-01f1-43e2-bd42-d4fdb39298f9.jpg"
                                          style="width: 100%; height: auto; margin-top: -14.5453px; opacity: 1;">
                                    </div>
                                    <div class="list-attachment-list">
                                       <img class="list-attachment-img"
                                          src="https://thumbnail6.coupangcdn.com/thumbnails/local/320/image2/PRODUCTREVIEW/202306/11/662383801868194448/7bbf2eec-1a31-4d50-ab8a-86c1bdad1e9c.jpg"
                                          style="width: 100%; height: auto; margin-top: -14.5453px; opacity: 1;">
                                    </div>
                                 </div>

                                 <div class="list-review">
                                    <div class="list-review-content">
                                       조식으로 샌드위치나 미니핫도그에 과일 하나씩 꼭 챙겨 먹이는데 이번에 가격 괜찮게 떠서 구매해봤는데 잘 먹네요.
                                    </div>
                                 </div>

                                 <div class="list-survey">
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">맛 만족도</span>
                                       <span class="list-survey-row-answer">예상보다 맛있어요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">싱싱함</span>
                                       <span class="list-survey-row-answer">예상보다 싱싱해요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">당도</span>
                                       <span class="list-survey-row-answer">적당히 달아요</span>
                                    </div>
                                    <div class="list-survey-row">
                                       <span class="list-survey-row-question">새콤함</span>
                                       <span class="list-survey-row-answer">새콤하지 않아요</span>
                                    </div>
                                 </div>

                                 <div class="list-help">
                                    <div class="list-help-count">
                                       <strong>2</strong>
                                       명에게 도움 됨
                                    </div>
                                    <button class="list-help-btn">도움이돼요</button>
                                    <button class="list-help-btn">도움 안돼요</button>
                                    <button class="list-help-report-btn">신고하기</button>
                                    <div class="sdp-review__clear"></div>
                                 </div>
                              </article>
                              -->

                              <div class="sdp-review-article-page">
                                 <button class="page-prev"></button>
                                 <button class="page-num">1</button>
                                 <button class="page-num">2</button>
                                 <button class="page-num">3</button>
                                 <button class="page-num">4</button>
                                 <button class="page-num">5</button>
                                 <button class="page-num">6</button>
                                 <button class="page-num">7</button>
                                 <button class="page-num">8</button>
                                 <button class="page-num">9</button>
                                 <button class="page-num">10</button>
                                 <button class="page-next"></button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>

                  <!-- 상품 문의 [작업자 : 은지] -->
                  <li id="prduct_qna_form" class="product-inquiry">
                     <div class="product-inquiry-list">
                        <div class="inquiry-title">
                           <h4>상품문의</h4>
                           <a href="#">문의하기</a>
                        </div>
                        <div class="inquiry-notice">
                           <ul>
                              <li>구매한 상품의 <strong>취소/반품은 마이쿠팡 구매내역에서 신청</strong> 가능합니다.</li>
                              <li>상품문의 및 후기게시판을 통해 취소나 환불, 반품 등은 처리되지 않습니다.</li>
                              <li><strong>가격, 판매자, 교환/환불 및 배송 등 해당 상품 자체와 관련 없는 문의는 고객센터 내 1:1 문의하기</strong>를 이용해주세요.
                              </li>
                              <li><strong>"해당 상품 자체"와 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 이동, 노출제한, 삭제 등의 조치가 취해질 수
                                    있습니다.</strong></li>
                              <li>공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.</li>
                           </ul>
                        </div>
                        <div class="inquiry-item-container">
                           <div class="inquiry-items">
                              <!-- 문의1 -->
                              <div class="inquiry-item">
                                 <span class="inquiry-item-question-label">질문</span>
                                 <div class="inquiry-item-question">
                                    <div class="inquiry-item-option">300g | 1개 쿠팡</div>
                                    <div class="inquiry-item-content">씻어서 먹어야하죠? 새척된건 아니죠?</div>
                                    <div class="inquiry-item-time">2022/08/18 08:55:17</div>
                                 </div>
                                 <div class="inquiry-item-answer">
                                    <i></i>
                                    <span class="inquiry-item-answer-label">답변</span>
                                    <div class="inquiry-item-answer-wrap">
                                       <div class="inquiry-item-seller"><strong>[COUPANG]</strong></div>
                                       <div class="inquiry-item-answer-content">만나다 미국 체리 상품은 세척해야 하는 점 참고 부탁드립니다.</div>
                                       <div class="inquiry-item-answer-time">2022/08/18 09:51:06</div>
                                    </div>
                                 </div>
                              </div>
                              <!-- 문의2 -->
                              <div class="inquiry-item">
                                 <span class="inquiry-item-question-label">질문</span>
                                 <div class="inquiry-item-question">
                                    <div class="inquiry-item-option">300g | 1개 쿠팡</div>
                                    <div class="inquiry-item-content">체리 맛있나여</div>
                                    <div class="inquiry-item-time">2023/06/22 11:55:17</div>
                                 </div>
                                 <div class="inquiry-item-answer">
                                    <i></i>
                                    <span class="inquiry-item-answer-label">답변</span>
                                    <div class="inquiry-item-answer-wrap">
                                       <div class="inquiry-item-seller"><strong>[COUPANG]</strong></div>
                                       <div class="inquiry-item-answer-content">냠냠굿</div>
                                       <div class="inquiry-item-answer-time">2023/06/22 12:00:06</div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- 전체보기 버튼 -->
                           <div class="inquiry-expand">
                              <button type="button" class="inquiry-expand-btn">전체보기 <i></i></button>
                           </div>
                        </div>
                        <div class="inquiry-report">
                           <p>판매 부적격 상품 또는 허위과장광고 및 지식재산권을 침해하는 상품의 경우 신고하여 주시기 바랍니다.</p>
                           <a href="#">신고하기</a>
                        </div>
                     </div>
                  </li>

                  <!-- 배송 문의-->
                  <!-- 상품 etc -->
                  <li class="product-etc" id="product-etc-inquery">
                     <h5>배송정보</h5>
                     <div class="product-etc-delivery">
                        <div class="delivery-first-row">
                           <div class="delivery-first-row_left">
                              <div class="delivery-item">
                                 <div class="delivery-item-col">
                                    배송방법
                                 </div>
                                 <div class="delivery-item-content">
                                    신선/냉장/냉동
                                 </div>
                              </div>
                              <div class="delivery-item">
                                 <div class="delivery-item-col">
                                    묶음배송 여부
                                 </div>
                                 <div class="delivery-item-content">
                                    가능
                                 </div>
                              </div>
                           </div>
                           <div class="delivery-first-row_right">
                              <div class="delivery-item">
                                 <div class="delivery-item-col">
                                    배송비
                                 </div>
                                 <div class="delivery-item-content">
                                    <ul>
                                       <li>무료배송</li>
                                       <li>- 로켓프레시 상품 중 15,000원 이상 구매 시 무료배송</li>
                                       <li>- 해당 서비스 가능 지역에 한함</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        
                        <div class="delivery-item">
                           <div class="delivery-item-col">
                              배송기간
                           </div>
                           <div class="delivery-item-content">
                              <ul>
                                 <li>- 서비스 이용 지역별 상이</li>
                                 <li>&nbsp;&nbsp;&nbsp;(단, 주문 시간별 도착 예정 시간은 지역 및 상황에 따라 변동될 수 있어, 정확한 정보는 결제 완료 시 안내되는
                                    문구를 꼭 확인 부탁드립니다)</li>
                                 <li>- 천재지변, 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해 부탁드립니다.</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <h5>교환/반품 안내</h5>
                     <ul class="return-notice">
                        <li>ㆍ교환/반품에 관한 일반적인 사항은 판매자가 제시사항보다 관계법령이 우선합니다.</li>
                        <li>다만, 판매자의 제시사항이 관계법령보다 소비자에게 유리한 경우에는 판매자 제시사항이 적용됩니다.</li>
                     </ul>
                     <div class="product-etc-return">
                        <div class="return-item">
                           <div class="return-item-col">
                              교환/반품 비용
                           </div>
                           <div class="return-item-content">
                              <ul>
                                 <li>ㆍ와우멤버십 회원: 무료로 반품/교환 가능</li>
                                 <li>ㆍ와우멤버십 회원 아닌 경우:</li>
                                 <li>1) [총 주문금액] - [반품 상품금액] = 19,800원 미만인 경우 반품비 5,000원</li>
                                 <li>2) [총 주문금액] - [반품 상품금액] = 19,800원 이상인 경우 반품비 2,500원</li>
                              </ul>
                           </div>
                        </div>
                        <div class="return-item">
                           <div class="return-item-col">
                              교환/반품 신청 기준일
                           </div>
                           <div class="return-item-content">
                              <ul>
                                 <li>ㆍ단순변심에 의한 로켓배송 상품의 교환/반품은 제품 수령 후 30일 이내까지, 교환/반품 제한사항에 해당하지 않는 경우에만 가능</li>
                                 <li>&nbsp;&nbsp;&nbsp;※ 로켓프레시 상품의 경우 배송시작 후에는 취소가 불가하며, 배송완료 후 반품을 진행하실 수 있습니다. 단,
                                    신선/냉장/냉동 상품의 단순변심의</li>
                                 <li>&nbsp;&nbsp;&nbsp;경우 재판매가 불가한 상품의 특성 상 단순변심에 의한 반품이 제한됩니다.</li>
                                 <li>ㆍ상품의 내용이 표시·광고의 내용과 다른 경우에는 상품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터
                                    <br /> 30일 이내에 청약철회 가능
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <h5>교환/반품 제한사항</h5>
                     <ul class="limit-list">
                        <li>ㆍ주문/제작 상품의 경우, 상품의 제작이 이미 진행된 경우</li>
                        <li>ㆍ상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우 (단, 내용 확인을 위한 포장 개봉의 경우는 예외)</li>
                        <li>ㆍ고객의 사용, 시간경과, 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
                        <li>ㆍ세트상품 일부 사용, 구성품을 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우</li>
                        <li>ㆍ모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 달라, 고객이 단순 변심으로 교환/반품을 무료로 요청하는 경우</li>
                        <li>ㆍ제조사의 사정 (신모델 출시 등) 및 부품 가격 변동 등에 의해 무료 교환/반품으로 요청하는 경우</li>
                        <p>※ 각 상품별로 아래와 같은 사유로 취소/반품이 제한될 수 있습니다.</p>
                     </ul>
                     <div class="product-etc-limit">
                        <div class="limit-item">
                           <div class="limit-item-col">
                              의류/잡화/수입명품
                           </div>
                           <div class="limit-item-content">
                              <ul>
                                 <li>ㆍ상품의 택(TAG) 제거, 라벨 및 상품 훼손, 구성품 누락으로 상품의 가치가 현저히 감소된 경우</li>
                              </ul>
                           </div>
                        </div>
                        <div class="limit-item">
                           <div class="limit-item-col">
                              계절상품/식품/화장품
                           </div>
                           <div class="limit-item-content">
                              <ul>
                                 <li>ㆍ신선/냉장/냉동 상품의 단순변심의 경우</li>
                                 <li>ㆍ뷰티 상품 이용 시 트러블(알러지, 붉은 반점, 가려움, 따가움)이 발생하는 경우,
                                 <li>
                                 <li>&nbsp;&nbsp;&nbsp;진료 확인서 및 소견서 등을 증빙하면 환불이 가능 (제반비용 고객부담)</li>
                              </ul>
                           </div>
                        </div>
                        <div class="limit-item">
                           <div class="limit-item-col">
                              전자/가전/설치상품
                           </div>
                           <div class="limit-item-content">
                              <ul>
                                 <li>ㆍ설치 또는 사용하여 재판매가 어려운 경우</li>
                                 <li>ㆍ상품의 시리얼 넘버 유출로 내장된 소프트웨어의 가치가 감소한 경우 (내비게이션, OS시리얼이 적힌 PMP)</li>
                                 <li>ㆍ홀로그램 등을 분리, 분실, 훼손하여 상품의 가치가 현저히 감소하여 재판매가 불가할 경우 (노트북, 데스크탑 PC 등)</li>
                              </ul>
                           </div>
                        </div>
                        <div class="limit-item">
                           <div class="limit-item-col">
                              자동차용품
                           </div>
                           <div class="limit-item-content">
                              <ul>
                                 <li>ㆍ상품을 개봉하여 장착한 이후 단순변심인 경우</li>
                              </ul>
                           </div>
                        </div>
                        <div class="limit-item">
                           <div class="limit-item-col">
                              CD/DVD/GAME/BOOK
                           </div>
                           <div class="limit-item-content">
                              <ul>
                                 <li>ㆍ복제가 가능한 상품의 포장 등을 훼손한 경우</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <h5>판매자 정보</h5>
                     <div class="product-etc-seller">
                        <div class="seller-item">
                           <div class="seller-item-col">
                              판매자
                           </div>
                           <div class="seller-item-content">
                              쿠팡 1577-7011
                           </div>
                        </div>
                     </div>
                     <p class="product-etc-notice">미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수 있습니다.</p>
                  </li>
               </ul>

            </div>

            <!-- 다른 고객이 함께 구매한 상품 -->
            <div class="peopleAlsoBought"></div>
            <!-- 연관 추천 상품 -->
            <div class="recommend-product"></div>
            <!-- 고르고 골랐어요 -->
            <div class="bottom-banner"></div>
         </div>
      </div>

      <footer class="footer-frame">
         <div class="footer-layer1">
            <a href="https://news.coupang.com/" target="_blank">회사소개</a>
            <a href="https://ir.aboutcoupang.com/English/home/" target="_blank">Investor Relations</a>
            <a href="https://rocketyourcareer.kr.coupang.com" target="_blank">인재채용</a>
            <a href="https://wing.coupang.com/vendor/joining/welcome?inflow=WEB_FOOTER_B">입점 / 제휴문의</a>
            <a href="https://csmessenger.coupang.com/cs-center/notice/main">공지사항</a>
            <a href="https://csmessenger.coupang.com/cs-center/voc/main">고객의 소리</a>
            <a href="/np/policies/terms">이용약관</a>
            <a href="https://privacy.coupang.com/ko/center/coupang" style="font-weight: bold;"><b>개인정보 처리방침</b></a>
            <a href="https://rocketpay.coupang.com/rocketpay/operationTerms/coupangPcFooter">쿠팡페이 이용약관</a>
            <a href="https://privacy.coupang.com/ko/land/coupay" style="font-weight: bold;"><b>쿠팡페이 개인정보처리방침</b></a>
            <a href="/np/safety">신뢰관리센터</a>
            <a href="https://partners.coupang.com/" target="_blank">제휴마케팅</a>
            <a href="https://ads.coupang.com" target="_blank">광고안내</a>
         </div>

         <div class="footer-layer2">
            <h1><a href="https://www.coupang.com/" title="COUPANG">COUPANG</a></h1>
            <div>
               <address>
                  상호명 및 호스팅 서비스 제공 : 쿠팡(주)<br>
                  대표이사 : 강한승,박대준<br>
                  서울시 송파구 송파대로 570 <br>
                  사업자 등록번호 : 120-88-00767 <br>
                  통신판매업신고 : 2017-서울송파-0680<br>
                  <a class="licensee"
                     href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208800767"
                     target="_blank" title="사업자정보 확인">사업자정보 확인 &gt;</a>
               </address>
               <div class="contact-info">
                  <a class="call-center" href="https://csmessenger.coupang.com/cs-center/chat/main" title="365 고객센터">
                     <strong>365고객센터</strong> | 전자금융거래분쟁처리담당<br>
                     <em>1577-7011 (유료)</em>
                     서울시 송파구 송파대로 570<br>
                     <span class="contact-fax">email : help@coupang.com</span>
                  </a>
               </div>
               <p class="safe-service">
                  <strong>우리은행 채무지급보증 안내</strong><br>
                  <span>
                     당사는 고객님이 현금 결제한 금액에 대해<br>우리은행과 채무지급보증 계약을 체결하여<br>안전거래를 보장하고 있습니다.<br>
                  </span>
                  <a href="https://www.coupang.com/np/etc/popWooriService" target="_blank"
                     style="text-decoration: underline;" title="서비스 가입사실 확인">서비스 가입사실 확인
                     &gt;</a>
               </p>
            </div>
         </div>

         <div class="footer-layer3">
            <div class="certification-list">
            </div>
         </div>

         <div class="footer-layer4">
            <div class="coupang-copyright">
               <p class="info" style="padding-top: 9px;">사이버몰 내 판매되는 상품 중에는 쿠팡에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어
                  있습니다.<br>
                  마켓플레이스(오픈마켓) 상품의 경우 쿠팡은 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>
                  쿠팡은 마켓플레이스(오픈마켓) 상품, 거래정보 및 거래 등에 대하여 책임을 지지않습니다.<br>
                  쿠팡은 소비자 보호와 안전거래를 위해 신뢰관리센터(CM112@coupang.com)를 운영하고 있으며, 관련 분쟁이 발생할 경우 별도의 분쟁 처리절차에 의거 분쟁이 처리됩니다.<br>
                  Copyright © Coupang Corp. 2010-2022 All Rights Reserved.
               </p>
               <ul class="sns-link">
                  <li><a href="https://www.facebook.com/Coupang.korea" target="_blank" class="facebook"
                        title="쿠팡 페이스북">쿠팡 페이스북</a></li>
                  <li><a href="https://news.coupang.com/" target="_blank" class="blog" title="쿠팡 뉴스룸">쿠팡 뉴스룸</a></li>
                  <li><a href="https://www.instagram.com/coupang" target="_blank" class="instagram" title="쿠팡 인스타그램">쿠팡
                        인스타그램</a></li>
               </ul>
            </div>
         </div>
      </footer>
   </div>
</body>

</html>