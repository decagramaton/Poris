<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>List</title>
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/list.js"></script>
	</head>
	<body>
		<div id="container">
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
						<li><a href="#">회원가입</a></li>
						<li><a href="#">로그인</a></li>
					</ul>
				</div>
			</div>
			<header id="header">
				<div id="header1">
					<div id="cate-search">
						<div id="category">
							<ul>
								<li><a href="#"><img style="width:110px; height:115px;" src="../image/category.png"/></a>
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
									<a href="#" style= "display: block;">
										<img id="logoin"src="../image/coupang.png"/>
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
													<img src="../image/ic_mic.png" style="width:25px; height:30px;"/>
												</a>
												<a href="#" id="headerSearchBtn" title="검색">
													<img src="../image/search.png" style="width:40px; height:35px;"/>
												</a>
											</div>
										</div>
									</form>
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
										<a href="#">
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
							</div>	
						</div>
						
						<div id="mymenu">
							<ul>
								<li style="position:absolute;"><a href="#">
									<img src="../image/mycoupang.png" style="width: 50px; height: 60px;"></a>
									<ul id="mymenu-ul1">
										<li><a href="#">주문 목록</a></li>
										<li><a href="#">취소/반품</a></li>
										<li><a href="#">찜 리스트</a></li>
									</ul>
								</li>
							</ul>
							<ul>
								<li style="position:relative; left:60px;"><a href="cart.html">
								<img src="../image/cart.png" style="width: 50px; height: 63px;"></a>
									<ul id="mymenu-ul2">
										<li><a href="#" style=" text-align: center;">장바구니에 담긴 물품이 없습니다.</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</header>
			<section>
				<div id="main-cover">
					<div id="main-start" style="text-align: left;">
						<a href="#">쿠팡 홈</a>
						<span> > </span>
						<a href="#">식품</a>
						<span> > </span>
						<a href="#">과일</a>
						<span> > </span>
						<a href="#">망고/체리/아보카도/기타</a>
						<span> > </span>
						<a href="#">체리</a>
					</div>
				</div>
				<div id="side-main">
					<nav id="side">
						<div id="side-wrapper">
							<div id="search-service-filter">
								<ul>
									<li>
										<label class="item-name">
											<a href="#">
												<input type="checkbox" data-name="filterType">
		                                		<span class="service-filter">
		                                    		<img src="//image9.coupangcdn.com/image/badges/falcon/v1/web/rocket-all@2x.png" height="16">
		                                		</span>
		                                	</a>
	                        			</label>    		
	                        			<div id="rocket-child">
	                        				<ul>
	                        					<li>
	                        						<label>
	                        							<a href="#">
	                        								<input type="checkbox" title="serviceFilter" data-name="filterType">
	                                            			<span class="service-filter">
	                                            				<img src="//image10.coupangcdn.com/image/badges/falcon/v1/web/txt_rocket@2x.png" width="auto" height="12">
	                                            			</span>
	                                            			<span>
                                            					만 보기
                                            				</span>
	                                            		</a>
	                                           		</label>
	                        					</li>
	                        					<li>
	                        						<label>
	                        							<a href="#">
			                        						<input type="checkbox" data-name="filterType">
		                                            		<span class="service-filter">
		                                            			<img src="//image10.coupangcdn.com/image/badges/falcon/v1/web/txt_jikgu@2x.png" width="auto" height="12">
		                                            		</span>
		                                            		<span>
		                                            			만 보기
		                                            		</span>
		                                            	</a>
	                                            	</label>
	                        					</li>
	                        				</ul>
	                        			</div>
									</li>
									<li>
	                        			<label>
	                        				<a href="#">
	                        					<input type="checkbox" data-name="filterType">
	                                			<span class="service-filter-subscribable">
	                                    			sub
	                                			</span>
	                                		</a>
	                        			</label>
	                        		</li>
	                        		<li>
	                        			<label>
	                        				<a href="#">
	                        					<input type="checkbox" data-name="filterType">
	                                    		<span class="service-filter">
	                                    			<img src="//image6.coupangcdn.com/image/badges/top_brand/c-avenue.svg" height="16">
	                                			</span>
	                                		</a>
	                        			</label>
	                        		</li>
	                        		<li>
	                        			<label>
	                        				<a href="#">
	                        					<input type="checkbox" data-name="filterType">
	                                			<span class="service-filter-free">
	                                    			무료배송
	                                			</span>
	                                		</a>
	                        			</label>
	                        		</li>
								</ul>
							</div>
							<div class="side-brand">
								<h4>브랜드</h4>
								<ul>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													gomgom
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													프레샤인
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													제스프리
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													만나다
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													돌
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													다올찬
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-add" style="display : none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													뭐시기 브랜드
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-add" style="display : none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													저시기 브랜드
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-add" style="display : none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													개쩌는 브랜드
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-add" style="display : none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													놀라운 브랜드
												</span>
											</a>
										</label>
									</li>
									<li class="side-brand-add" style="display : none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													위대한 브랜드
												</span>
											</a>
										</label>
									</li>
								</ul>
								<button class="sidemorebrand" onclick="sidemorebrand()">+ 더보기</button>
							</div>
							<div>
								<h4>낱개 여부 상품</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													낱개상품
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>개당 중량</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													중소과
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													중과
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													대과
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>총 중량</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													1.5kg 이하
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													1.5 ~3kg
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													3 ~5kg
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													5 ~10kg
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													10kg 이상
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>보관 방식</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													냉장보관
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													냉동보관
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													실온보관
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>종류</h4>
								<ul>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													생과
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													주스
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													청
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													농축액
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													건조
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													퓨레
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													새로운 종류
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													더 새로운 종류
												</span>
											</a>
										</label>
									</li>
									<li class="side-kind-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													원시종
												</span>
											</a>
										</label>
									</li>
								</ul>
								<button class="sidemorekind" onclick="sidemorekind()">+ 더보기</button>
							</div>
							<div>
								<h4>색상</h4>
								<ul>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													혼합
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													주황색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													노란색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													검정색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													초록색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-default">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													빨간색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													쩌는색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													미지의색
												</span>
											</a>
										</label>
									</li>
									<li class="side-color-add" style="display:none;">
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													무지개색
												</span>
											</a>
										</label>
									</li>
								</ul>
								<button class="sidemorecolor" onclick="sidemorecolor()">+ 더보기</button>
							</div>
							<div>
								<h4>과일 크기</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													중소과
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													중과
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													대과
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>품질</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													프리미엄
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													일반
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													실속/못난이
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>과일 특징</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													고당도
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>손질 여부</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													손질
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													비손질
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													반손질
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>씨 유무</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													씨 있음
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													씨 없음
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>간편식</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													즉석섭취음료
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													즉석섭취식품
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													즉석조리식품
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													밀키트
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>유기농/친환경 등</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													인증 있음
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>품종</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													골드키위
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													그린키위
												</span>
											</a>
										</label>
									</li>	
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													레드키위
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>재배방식</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													하우스감귤
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													노지귤
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span>
													타이백귤
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>별점</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<span style="color:#4285f4; font-weight:bold; font-size:15px;">
													별점 전체
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<img src="../image/rating04.png" style="position:relative; bottom:-7px; width:90px;height:25px;"/>
												<span>
													4점이상
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<img src="../image/rating03.png" style="position:relative; bottom:-7px; width:90px;height:25px;"/>
												<span>
													3점이상
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<img src="../image/rating02.png" style="position:relative; bottom:-7px; width:90px;height:25px;"/>
												<span>
													2점이상
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<img src="../image/rating01.png" style="position:relative; bottom:-7px; width:90px;height:25px;"/>
												<span>
													1점이상
												</span>
											</a>
										</label>
									</li>
								</ul>
							</div>
							<div>
								<h4>가격</h4>
								<ul>
									<li>
										<label>
											<a href="#">
												<span style="color:#4285f4; font-weight:bold; font-size:15px;">
													가격 전체
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span style="font-size:14px;">
													7천원 이하
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span style="font-size:14px;">
													7천원~1만 4천원
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span style="font-size:14px;">
													1만 4천원~2만 1천원
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span style="font-size:14px;">
													2만 1천원~ 2만 8천원
												</span>
											</a>
										</label>
									</li>
									<li>
										<label>
											<a href="#">
												<input type="checkbox">
												<span style="font-size:14px;">
													2만 8천원 이상
												</span>
											</a>
										</label>
									</li>
								</ul>
								<div>
									<input type="text" style="width:40px; height:28px;"/>
									<span>~</span>
									<input type="text" style="width:40px; height:28px;"/>
									<span>원</span>
									<input id="side-price-search" type="button" value="검색"/>
								</div>
							</div>
						</div>
					</nav>
					<article id="main">
						<div id="main-head" style="font-weight : bold; font-size : 20px; padding : 30px 5px 20px 20px;">
							<h3>체리</h3>
						</div>
						<div id="main-serve">
							<span><a href="#">쿠팡 랭킹순</a></span>
							<span><a href="#">낮은가격순</a></span>
							<span><a href="#">높은가격순</a></span>
							<span><a href="#">판매량순</a></span>
							<span><a href="#">최신순</a></span>
							<ul>
								<li><a href="#">60개씩 보기</a>
									<ul>
										<li><a href="#">120개씩 보기</a></li>
									</ul>
								</li>
							</ul>
						</div>
						<div id="product">
							
						</div>
						<div id="page-wrapper" >
							
						</div>
					</article>
				</div>
			</section>
			<footer class="footer-frame">
		         <div class="footer-layer1">
		         	<a href="https://news.coupang.com/" target="_blank">회사소개</a>
			        <a href="https://ir.aboutcoupang.com/English/home/" target="_blank">Investor Relations</a>
			        <a href="https://rocketyourcareer.kr.coupang.com" target="_blank">인재채용</a>
			        <a href="https://wing.coupang.com/vendor/joining/welcome?inflow=WEB_FOOTER_B">입점 / 제휴문의</a>
			        <a href="https://csmessenger.coupang.com/cs-center/notice/main">공지사항</a>
			        <a href="https://csmessenger.coupang.com/cs-center/voc/main">고객의 소리</a>
			        <a href="/np/policies/terms">이용약관</a>
			        <a href="https://privacy.coupang.com/ko/center/coupang"><b>개인정보 처리방침</b></a>
			        <a href="https://rocketpay.coupang.com/rocketpay/operationTerms/coupangPcFooter">쿠팡페이 이용약관</a>
			        <a href="https://privacy.coupang.com/ko/land/coupay"><b>쿠팡페이 개인정보처리방침</b></a>
			        <a href="/np/safety">신뢰관리센터</a>
			        <a href="https://partners.coupang.com/" target="_blank">제휴마케팅</a>
			        <a href="https://ads.coupang.com" target="_blank" style="border: none;">광고안내</a>
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