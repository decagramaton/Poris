<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="/html_css_javascript/image/favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainhead.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/mypage.js"></script>
	</head>
	<body>
		<div class="cll1">
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
					                                	<img src="./images/search.png" style="width:40px; height:33px;"/>
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
		                           			<li style="position:relative; left:60px;"><a href="#">
		                           				<img src="./images/cart.png" style="width: 50px; height: 63px;"></a>
		                              			<ul id="mymenu-ul2">
		                                 			<li><a href="#" style=" text-align: center;">장바구니에 담긴 물품이 없습니다.</a></li>
		                              			</ul>
		                           			</li>
		                        		</ul>
		                     		</div>	
		                  		</div>
		                  		<div id="menu">
		                  			<button id="menu-btn1" onclick="menunext()"><img/></button>
		                     		<div id="menus" style="text-align: left; font-size: 14px;">
		                        		<label>
		                           			<a href="#" style="margin-left:0px;">
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
				                        <label>
											<a href="#">
												<span>기획전</span>
											</a>
										</label>
										<label>
											<a href="#">
												<img style="width:20px; height:20px;" src="//image9.coupangcdn.com/image/coupang/common/icon_travel.png">
												<span>여행/티켓</span>
											</a>
										</label>
		                     		</div>
		                     		<button id="menu-btn2" onclick="menuprev()" disabled><img/></button>
		                  		</div>	
		               		</div>          
		            	</div>
		        	</div>
	      		</header>
	      	</div>
		</div>
		<div>
			<div class="bodycontainer">
				<div class="leftside">
					<div class="mycoupang">
						<span class="mycoupang-span">MY쿠팡</span>
					</div>
					<nav>
						<div class="mymenu">
							<div class="mymenu-menu">
								<div class="mymenu-menu-title">MY 쇼핑</div>
								<div class="mymenu-menu-content">
									<ul>
										<li>
											<a href="#">주문목록/배송조회</a>
										</li>
										<li>
											<a href="#">취소/반품/교환/환불내역</a>
										</li>
										<li>
											<a href="#">와우 멤버십</a>
										</li>
										<li>
											<a href="#">로켓프레시 프레시백</a>
										</li>
										<li>
											<a href="#">정기배송관리</a>
										</li>
										<li>
											<a href="#">영수증 조회/출력</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="mymenu-menu">
								<div class="mymenu-menu-title">MY 혜택</div>
								<div class="mymenu-menu-content">
									<ul>
										<li>
											<a href="#">할인쿠폰</a>
										</li>
										<li>
											<a href="#">쿠팡캐시/기프트카드</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="mymenu-menu">
								<div class="mymenu-menu-title">MY 활동</div>
								<div class="mymenu-menu-content">
									<ul>
										<li>
											<a href="#">문의하기</a>
										</li>
										<li>
											<a href="#">문의내역 확인</a>
										</li>
										<li>
											<a href="#">리뷰관리</a>
										</li>
										<li>
											<a href="#">찜 리스트</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="mymenu-menu" style="border-bottom: 0px;">
								<div class="mymenu-menu-title">MY 정보</div>
								<div class="mymenu-menu-content">
									<ul>
										<li>
											<a href="#">개인정보확인/수정</a>
										</li>
										<li>
											<a href="#">결제수단·쿠페이 관리</a>
										</li>
										<li>
											<a href="#">배송지 관리</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mymenu-qna">
							<ul>
								<li class="mymenu-qna-content">
									<a href="#">
										<span class="mymenu-qna-1">
											<span>쿠팡문의</span>
										</span>
									</a>
								</li>
								<li class="mymenu-qna-content">
									<a href="#">
										<span class="mymenu-qna-2">
											<span>고객의 소리
												<span style="font-size:11px; font-weight: 400;">제안·칭찬·불편 신고</span>
											</span>
										</span>
									</a>
								</li>
								<li class="mymenu-qna-content">
									<a href="#">
										<span class="mymenu-qna-3">
											<span>취소/반품 안내</span>
										</span>
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="content">
					<div class="mycoupang-dash">
						<ul>
							<li class="mycoupang-dash-li">
								<strong>미사용티켓</strong>
								<div class="mycoupang-dash-div">
									<a href="#">
										<span class="mycoupang-dash-wrapper">
											<span id="coupon-num">0</span>
											<span id="coupon-unit">장</span>
										</span>
									</a>
								</div>
							</li>
							<li class="mycoupang-dash-li">
								<strong>배송중</strong>
								<div class="mycoupang-dash-div">
									<a href="#">
										<span class="mycoupang-dash-wrapper">
											<span id="deli-num">0</span>
											<span id="deli-unit">개</span>
										</span>
									</a>
								</div>
							</li>
							<li class="mycoupang-dash-li">
								<strong>할인쿠폰</strong>
								<div class="mycoupang-dash-div">
									<a href="#">
										<span class="mycoupang-dash-wrapper">
											<span id="disc-num">0</span>
											<span id="disc-unit">장</span>
										</span>
									</a>
								</div>
							</li>
							<li class="mycoupang-dash-flex">
								<div class="mycoupang-dash-flex-div">
									<span>쿠페이 머니</span>
									<a href="#">
										<span class="mycoupang-dash-wrapper">
											<span class="coupang-money"id="coupaymoney">0</span>
											<span class="coupang-unit">원</span>
										</span>
									</a>
								</div>
								<div class="mycoupang-dash-flex-div" style="height:50%;">
									<span>쿠팡캐시</span>
									<a href="#">
										<span class="mycoupang-dash-wrapper">
											<span class="coupang-money" id="coupangcash">0</span>
											<span class="coupang-unit">원</span>
										</span>
									</a>
								</div>
							</li>
						</ul>
					</div>
					<div class="mycoupang-main-container">
						<div class="mycoupang-main">
							<div class="mycoupang-main-title">
								<span>주문목록</span>
							</div>
							<div class="mycoupang-main-search">
								<div class="mycoupang-main-search-it">
									<div class="mycoupang-main-search-it-flex">
										<div class="mycoupang-main-search-it-flexin1"><input value="" placeholder="주문한 상품을 검색할 수 있어요!"></div>
										<div class="mycoupang-main-search-it-flexin2">
											
										</div>
									</div>
								</div>
								<div class="mycoupang-main-year">
									<div>
										<div id="sel1" class="mycoupang-main-year-cate selected" style="width:72px;" onclick="yearselect1()">최근 6개월</div>
										<div id="sel2" class="mycoupang-main-year-cate" onclick="yearselect2()">2023</div>
										<div id="sel3" class="mycoupang-main-year-cate" onclick="yearselect3()">2022</div>
										<div id="sel4" class="mycoupang-main-year-cate" onclick="yearselect4()">2021</div>
										<div id="sel5" class="mycoupang-main-year-cate" onclick="yearselect5()">2020</div>
										<div id="sel6" class="mycoupang-main-year-cate" onclick="yearselect6()">2019</div>
										<div id="sel7" class="mycoupang-main-year-cate" onclick="yearselect7()">2018</div>
									</div>
								</div>
							</div>
							<div class="mycoupang-product-search">
								<div class="search-wrapper">
									<div id="search1" class="search-selected" onclick="searall()">전체</div><div id="search2" class="search-default" onclick="seardeli()">배송상품</div><div id="search3" class="search-default" onclick="seartour()">여행상품</div><div id="search4" class="search-default" onclick="seartick()">티켓상품</div>
								</div>
							</div>
							<div class="mycoupang-product-content none">
								<div>최근 6개월간 주문하신 내역이 없습니다.
									<span>2023년 주문 보기</span>
								</div>
							</div>
							<div class="mycoupang-notice">
								<div class="mycoupang-notice-delistatus">
									<div class="delistatus-wrapper">
										<div class="left"><h4>배송상품 주문상태 안내</h4></div>
										<div class="right"><a href="#">자세한 내용 더보기</a></div>
									</div>
									<div class="delistatus-content">
										<div>
											<i class="content-image1"></i>
											<div class="content-wrapper">
												<span>
													<span style="color: #111;">주문,결제,확인</span><br>
													<span>이 완료되었습니다.</span>
												</span>
											</div>
										</div>
										<div>
											<i class="content-image2"></i>
											<div class="content-wrapper">
												<span>
													<span style="color: #111;">주문,결제,확인</span><br>
													<span>이 완료되었습니다.</span>
												</span>
											</div>
										</div>
										<div>
											<i class="content-image3"></i>
											<div class="content-wrapper">
												<span>
													<span style="color: #111;">주문,결제,확인</span><br>
													<span>이 완료되었습니다.</span>
												</span>
											</div>
										</div>
										<div>
											<i class="content-image4"></i>
											<div class="content-wrapper">
												<span>
													<span style="color: #111;">주문,결제,확인</span><br>
													<span>이 완료되었습니다.</span>
												</span>
											</div>
										</div>
										<div style="width:145px;">
											<i class="content-image5"></i>
											<div class="content-wrapper">
												<span>
													<span style="color: #111;">주문,결제,확인</span><br>
													<span>이 완료되었습니다.</span>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div class="mycoupang-notice-cancel">
									<div class="cancel-title">
										<b>
											<i class="notice-icon"></i>
											<span>
												<span style="color:#e52628;">취소/반품/교환 신청</span>
												전 확인해주세요!
											</span>
											
										</b>
									</div>
									<div class="cancel-content">
										<strong>취소</strong>
									</div>
									<div class="cancel-content">
										-
										<span>
											여행/레저/숙박 상품은 취소 시 수수료가 발생할 수 있으며,<br>
											<span style="margin-left: 7px;">취소수수료를 확인하여 2일 이내(주말,공휴일 제외) 처리결과를 문자로 안내해드립니다.</span>
										</span>
										(당일 접수 기준, 마감시간 오후 4시)
									</div>
									<div class="cancel-content">
										- 문화 상품은 사용 전날 24시까지 취소 신청 시 취소수수료가 발생되지 않습니다.
									</div>
									<div class="cancel-content">
										<strong>반품</strong>
									</div>
									<div class="cancel-content">
										- 상품 수령 후 7일 이내 신청하여 주세요.
									</div>
									<div class="cancel-content">
										- 상품이 출고된 이후에는 배송 완료 후, 반품 상품을 회수합니다.
									</div>
									<div class="cancel-content">
										- 설치상품/주문제작/해외배송/신선냉동 상품 등은 고객센터에서만 반품 신청이 가능합니다.
										<a href="#">1:1문의하기</a>
									</div>
									<div class="cancel-content">
										<strong>교환</strong>
									</div>
									<div class="cancel-content">
										- 상품의 교환 신청은 고객센터로 문의하여 주세요.
										<a href="#">1:1문의하기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="rightside">
				<ul class="promotion-banner">
					<li>
						<a href="#"><img src="//image7.coupangcdn.com/image/displayitem/displayitem_8ad9b5e0-fd76-407b-b820-6494f03ffc31.jpg" width="102" height="150" alt=""></a>
					</li>
					<li>
						<a href="#"><img src="//image8.coupangcdn.com/image/displayitem/displayitem_47593472-8835-4934-8336-8b167506a82c.jpg" width="102" height="150" alt=""></a>
					</li>
					<li>
						<a href="#"><img src="//image9.coupangcdn.com/image/displayitem/displayitem_ad84783d-4811-49c6-99e8-79a1085b0d8b.png" width="102" height="150" alt=""></a>
					</li>
				</ul>
				<div class="myview">
					<div>
						<div class="side-cart">
							<a href="">
								<strong>장바구니</strong>
								<em class="cart-count">0</em>
							</a>
						</div>
						<div class="side-recent">
							<a href="">
								<strong>최근본상품</strong>
								<em class="cart-count">0</em>
							</a>
						</div>
						<div class="viewed-list">
							<ul class="viewed-list-page">
								<li class="no-item">
									최근본 상품이 <br>
									없습니다.
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer-frame" style="clear:both;">
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
	</body>
</html>