<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainhead.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainbody.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css"/>
		<title>쿠팡 메인</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/main.js"></script>
	</head>
	<body>
		<div id="renewalcontainer">
			<div class="container">
		      	<div id="top-bar">
		         	<div id="header-header">
		            	<ul id="header-header1">
		               		<li><a href="order/">주문 결제 테스트</a></li>
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
		               		<li><a href="joinForm">회원가입</a></li>
		               		<li><a href="login">로그인</a></li>
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
	      	<div id="body-container">
	      		<section id="main-today" class="m-auto">
	      			<img id="main-today-image1" src="image/maincherry1.jpg" class="d-block"/>
	      			<img id="main-today-image2" src="image/maincherry2.jpg" class="d-none"/>
	      			<img id="main-today-image3" src="image/mainmango1.jpg" class="d-none"/>
	      			<img id="main-today-image4" src="image/mainmango2.jpg" class="d-none"/>
	      			<img id="main-today-image5" src="image/mainavocado1.jpg" class="d-none"/>
	      			<img id="main-today-image6" src="image/mainavocado2.jpg" class="d-none"/>
	      			<ul id="main-today-lists">
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli1.jpg" onmouseover="mainimage1()"/>
	      						<span>&nbsp;</span>
	      					</a>
	      				</li>
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli2.jpg" onmouseover="mainimage2()"/>
	      						<span>&nbsp;</span>
	      					</a>
	      				</li>
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli3.jpg" onmouseover="mainimage3()"/>
	      						<span>&nbsp;</span>
	      					</a>
	      				</li>
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli4.jpg" onmouseover="mainimage4()"/>
	      						<span>&nbsp;</span>
	      					</a>
	      				</li>
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli5.jpg" onmouseover="mainimage5()"/>
	      						<span>&nbsp;</span>
	      					</a>
	      				</li>
	      				<li>
	      					<a href="#">
	      						<img src="image/mainli6.jpg" onmouseover="mainimage6()"/>
	      					</a>
	      				</li>
	      			</ul>
	      		</section>
	      		<div>
	      			<section id="" class="">
		      			<div id="today-discovery" class="m-auto">
		      				<div class="pt-4">
		      					<span class="px-2 font-weight-bold">오늘의 발견</span>
		      					<span id="today-discovery-hottext" class="px-2 small">오늘 쿠팡이 엄선한 가장 HOT한 상품!</span>
		      				</div>
		      				<div id="today-discovery-content">
		      					<ul>
		      						<li>
		      							<a href="detailView.html">
		      								<img src="image/cherry1.jpg"/>
		      								<strong style="left:30px; bottom: 670px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li>
		      							<a href="list.html">
		      								<img src="image/cherry2.jpg"/>
		      								<strong style="left:530px; bottom: 670px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="detailView.html">
		      								<img src="image/cherry3.jpg" style="width:237px;"/>
		      								<strong style="left:30px; bottom: 350px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="list.html">
		      								<img src="image/cherry4.jpg" style="width:237px;"/>
		      								<strong style="left:280px; bottom: 350px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="detailView.html">
		      								<img src="image/cherry5.jpg" style="width:237px;"/>
		      								<strong style="left:530px; bottom: 350px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="list.html">
		      								<img src="image/cherry6.jpg" style="width:237px;"/>
		      								<strong style="left:780px; bottom: 350px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li>
		      							<a href="#">
		      								<img src="image/cherry7.jpg"/>
		      								<strong style="left:30px; bottom: 30px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="#">
		      								<img src="image/cherry8.jpg" style="width:237px;"/>
		      								<strong style="left:530px; bottom: 30px;">구매하기</strong>
		      							</a>
		      						</li>
		      						<li class="today-discovery-content-small">
		      							<a href="#">
		      								<img src="image/cherry1.jpg" style="width:237px;"/>
		      								<strong style="left:780px; bottom: 30px;">구매하기</strong>
		      							</a>
		      						</li>
		      					</ul>			
		      				</div>
		      			</div>
		      			<div id="today-sell">
		      				<div id="today-sell-seller" class="my-4 pt-5">
		      					<div id="today-sell-seller-content">
		      						<div id="today-sell-seller-content-head" class="d-flex justify-content-between mb-4" style="width:980px;">
		      							<div id="today-sell-seller-content-title">
		      								<span>오늘의</span>
		      								<span style="color: #cb1400	">판매자 특가</span>
		      							</div>				
		      							<div id="today-sell-seller-content-page">
		      								<em id="btn-selector1">1</em>
		      								<span>/3</span>
		      							</div>
		      						</div>
		      						<div id="today-sell-seller-content-bodyframe">
			      						<div id="today-sell-seller-content-body">
			      							<div id="today-sell-seller-content-body-scroller-wrap">
			      								<div id="today-sell-seller-content-body-scroller1">
			      									<ul>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry1.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry2.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry3.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry4.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry5.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry6.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry7.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-discount" class="d-flex align-items-center">
		      															<span>지금 43% 할인중</span>
		      														</div>
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      									</ul>
			      								</div>
			      							</div>
			      						</div>
			      						<a><button id="today-sell-seller-content-body-prevbtn1" style="display:none;" onclick="contentPrev1()"></button></a>
			      						<a><button id="today-sell-seller-content-body-nextbtn1" style="display:block;" onclick="contentNext1()"></button></a>
			      					</div>
			      					<%-- 두번째 --%>
			      					<div id="today-sell-seller-content-head" class="d-flex justify-content-between mb-4" style="width:980px;">
		      							<div id="today-sell-seller-content-title">
		      								<span>지금 이 상품이 필요하신 가요?</span>
		      							</div>				
		      							<div id="today-sell-seller-content-page">
		      								<em id="btn-selector2">1</em>
		      								<span>/3</span>
		      							</div>
		      						</div>
		      						<div id="today-sell-seller-content-bodyframe">
			      						<div id="today-sell-seller-content-body">
			      							<div id="today-sell-seller-content-body-scroller-wrap">
			      								<div id="today-sell-seller-content-body-scroller2">
			      									<ul>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry8.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry7.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry6.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry5.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry4.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry3.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      										<li>
			      											<div onclick="location.href='#'" style="cursor : pointer;">
		      													<img src="image/cherry2.jpg" style="width: 160px; height: 160px;"/>
		      													<div id="seller-product-info">
		      														<div id="seller-product-info-title">
		      															<span>대충 엄청 길게써서 ... 나오게 하는 문구닌까 신경 안쓰셔도 됩니다.</span>
		      														</div>
		      														<div id="seller-product-info-price">
		      															<span>굉장나 엄청한 가격</span>
		      														</div>
		      														<div id="seller-product-info-rate" class="d-flex align-items-center">
		      															<span id="seller-product-info-rate-bg">
		      																<span style="width: 80%;">80%</span>
		      															</span>
		      															<span id="seller-product-info-rate-count">
		      																(52,300)
		      															</span>
		      														</div>
		      													</div>
			      											</div>
			      										</li>
			      									</ul>
			      								</div>
			      							</div>
			      						</div>
			      						<a><button id="today-sell-seller-content-body-prevbtn2" style="display:none;" onclick="contentPrev2()"></button></a>
			      						<a><button id="today-sell-seller-content-body-nextbtn2" style="display:block;" onclick="contentNext2()"></button></a>
			      					</div>
		      					</div>
		      				</div>
		      			</div>
		      			<div id="cate-advertise">
		      				<p>HOT! TREND</p>
		      				<span>카테고리 별</span>
		      				<span style="color : #4285f4;">추천 광고상품</span>
		      				<div id="cate-advertise-cherry">
		      					<dl>
		      						<dt id="cate-advertise-cherry-title">
		      							<span>체리</span>
		      							<a href="list.html">&nbsp;바로가기 ></a>
		      						</dt>
		      						<dd id="cate-advertise-cherry-hotkey">
		      							<strong>HOT 키워드</strong>
		      							<a># 키워드1</a>
		      							<a># 키워드2</a>
		      							<a># 키워드3</a>
		      							<a># 키워드4</a>
		      							<a># 키워드5</a>
		      							<a># 키워드6</a>
		      						</dd>
		      						<dd id="cate-advertise-cherry-promotion">
		      							<div id="demo1" class="carousel slide" data-ride="carousel">
  											<ul class="carousel-indicators">
										    	<li data-target="#demo1" data-slide-to="0" class="active"></li>
										    	<li data-target="#demo1" data-slide-to="1"></li>
										    	<li data-target="#demo1" data-slide-to="2"></li>
										    	<li data-target="#demo1" data-slide-to="3"></li>
										    	<li data-target="#demo1" data-slide-to="4"></li>
										    	<li data-target="#demo1" data-slide-to="5"></li>
										    	<li data-target="#demo1" data-slide-to="6"></li>
										    	<li data-target="#demo1" data-slide-to="7"></li>
										  	</ul>
										  	<div class="carousel-inner">
											    <div class="carousel-item active">
											    	<img src="image/cherry1.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>  
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
      												<img src="image/cherry3.jpg" width="500" height="500">
												    <div class="carousel-caption" style="bottom:50px;">
												    	<h3>그저 체리</h3>
												        <p>쓸말이 없어서 아무거나 넣어봤어요</p>
												    </div>
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											        	<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry1.jpg"width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
      												<img src="image/cherry3.jpg" width="500" height="500">
												    <div class="carousel-caption" style="bottom:50px;">
												    	<h3>그저 체리</h3>
												        <p>쓸말이 없어서 아무거나 넣어봤어요</p>
												    </div>
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry1.jpg"width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											        	<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
												</div>
											</div>
											
											<a class="carousel-control-prev" href="#demo1" data-slide="prev">
    											<span class="carousel-control-prev-icon"></span>
  											</a>
  											<a class="carousel-control-next" href="#demo1" data-slide="next">
    											<span class="carousel-control-next-icon"></span>
  											</a>
										</div>
		      						</dd>
		      						<dd id="cate-advertise-cherry-list">
		      							<div id="demo2" class="carousel slide" data-ride="carousel">
  											<ul class="carousel-indicators">
										    	<li data-target="#demo2" data-slide-to="0" class="active bg-dark"></li>
										    	<li data-target="#demo2" data-slide-to="1" class="bg-dark"></li>
										    	<li data-target="#demo2" data-slide-to="2" class="bg-dark"></li>
										    	<li data-target="#demo2" data-slide-to="3" class="bg-dark"></li>
										    	<li data-target="#demo2" data-slide-to="4" class="bg-dark"></li>
										  	</ul>
										  	<div class="carousel-inner">
											    <div class="carousel-item active">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
											  	</div>
											  	<div class="carousel-item">
      												<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
											  	</div>
											</div>
											<a class="carousel-control-prev" href="#demo2" data-slide="prev">
    											<span class="carousel-control-prev-icon"></span>
  											</a>
  											<a class="carousel-control-next" href="#demo2" data-slide="next">
    											<span class="carousel-control-next-icon"></span>
  											</a>
										</div>
		      						</dd>
		      					</dl>
		      				</div>
		      				<div id="cate-advertise-cherry" style="border-top: 2px solid yellow;">
		      					<dl>
		      						<dt id="cate-advertise-cherry-title">
		      							<span style="color:yellow;">망고</span>
		      							<a href="#">&nbsp;바로가기 ></a>
		      						</dt>
		      						<dd id="cate-advertise-cherry-hotkey">
		      							<strong>HOT 키워드</strong>
		      							<a># 키워드1</a>
		      							<a># 키워드2</a>
		      							<a># 키워드3</a>
		      							<a># 키워드4</a>
		      							<a># 키워드5</a>
		      							<a># 키워드6</a>
		      						</dd>
		      						<dd id="cate-advertise-cherry-promotion">
		      							<div id="demo3" class="carousel slide" data-ride="carousel">
  											<ul class="carousel-indicators">
										    	<li data-target="#demo3" data-slide-to="0" class="active"></li>
										    	<li data-target="#demo3" data-slide-to="1"></li>
										    	<li data-target="#demo3" data-slide-to="2"></li>
										    	<li data-target="#demo3" data-slide-to="3"></li>
										    	<li data-target="#demo3" data-slide-to="4"></li>
										    	<li data-target="#demo3" data-slide-to="5"></li>
										    	<li data-target="#demo3" data-slide-to="6"></li>
										    	<li data-target="#demo3" data-slide-to="7"></li>
										  	</ul>
										  	<div class="carousel-inner">
											    <div class="carousel-item active">
											    	<img src="image/cherry1.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>  
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
      												<img src="image/cherry3.jpg" width="500" height="500">
												    <div class="carousel-caption" style="bottom:50px;">
												    	<h3>그저 체리</h3>
												        <p>쓸말이 없어서 아무거나 넣어봤어요</p>
												    </div>
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											        	<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry1.jpg"width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
      												<img src="image/cherry3.jpg" width="500" height="500">
												    <div class="carousel-caption" style="bottom:50px;">
												    	<h3>그저 체리</h3>
												        <p>쓸말이 없어서 아무거나 넣어봤어요</p>
												    </div>
												</div>
												<div class="carousel-item">
											    	<img src="image/cherry1.jpg"width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											      		<h3>여기 체리도 싸요</h3>
											        	<p>365일 체리만 먹어도 안물릴거같은데</p>
											      	</div>   
											  	</div>
											  	<div class="carousel-item">
											    	<img src="image/cherry2.jpg" width="500" height="500">
											    	<div class="carousel-caption" style="bottom:50px;">
											        	<h3>와! 체리가 싸요</h3>
											        	<p>신선하닌까 당장 사가세요 ~</p>
											      	</div>   
												</div>
											</div>
											
											<a class="carousel-control-prev" href="#demo3" data-slide="prev">
    											<span class="carousel-control-prev-icon"></span>
  											</a>
  											<a class="carousel-control-next" href="#demo3" data-slide="next">
    											<span class="carousel-control-next-icon"></span>
  											</a>
										</div>
		      						</dd>
		      						<dd id="cate-advertise-cherry-list">
		      							<div id="demo4" class="carousel slide" data-ride="carousel">
  											<ul class="carousel-indicators">
										    	<li data-target="#demo4" data-slide-to="0" class="active bg-dark"></li>
										    	<li data-target="#demo4" data-slide-to="1" class="bg-dark"></li>
										    	<li data-target="#demo4" data-slide-to="2" class="bg-dark"></li>
										    	<li data-target="#demo4" data-slide-to="3" class="bg-dark"></li>
										    	<li data-target="#demo4" data-slide-to="4" class="bg-dark"></li>
										  	</ul>
										  	<div class="carousel-inner">
											    <div class="carousel-item active">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
											  	</div>
											  	<div class="carousel-item">
      												<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
												</div>
												<div class="carousel-item">
											    	<ul id="cate-advertise-cherry-list-list">
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    		<li id="cate-advertise-cherry-list-item">
											    			<a href="#">
											    				<img src="image/cherry1.jpg"/>
											    				<span id="hover-underline">뭐시기 저시기</span>
											    				<span></span>
											    				<span>
											    					<strong>18000</strong> 원
											    					<span>
											    						<img src="//image10.coupangcdn.com/image/delivery_badge/default/ios/rocket_merchant/consignment_v3@2x.png" height="14" alt="로켓배송">
											    					</span>
											    				</span>	
											    			</a>
											    		</li>
											    	</ul>
											  	</div>
											</div>
											<a class="carousel-control-prev" href="#demo4" data-slide="prev">
    											<span class="carousel-control-prev-icon"></span>
  											</a>
  											<a class="carousel-control-next" href="#demo4" data-slide="next">
    											<span class="carousel-control-next-icon"></span>
  											</a>
										</div>
		      						</dd>
		      					</dl>
		      				</div>
		      			</div>
		      		</section>
		      		<article id="side-bar">
		      			
		      		</article>
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