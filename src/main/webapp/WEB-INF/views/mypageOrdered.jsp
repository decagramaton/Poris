<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<title>마이페이지 - 주문내역</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypageOrdered.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/header.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/mypageOrdered.js"></script>
	</head>
	<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
		<div class="container">
			<div class="bodycontainer">
				<div class="leftside">
					<nav>
						<div class="mymenu">
							<div class="mymenu-menu">
								<a class="mymenu-menu-title" href="mypageOrdered">주문 내역</a>
							</div>
							<div class="mymenu-menu" style="border-bottom: 0px;">
								<a class="mymenu-menu-title" href="mypageChangeInfo">내 정보 변경</a>
							</div>
						</div>
					</nav>
				</div>
				<div class="content">
					<div class="mycoupang-main-container">
						<div class="mycoupang-main">
							<div class="mycoupang-main-title">
								<span>주문목록</span>
							</div>
							<div class="mycoupang-main-search">
								<div class="mycoupang-main-search-it">
									<div class="mycoupang-main-search-it-flex">
										<form>
											<div class="mycoupang-main-search-it-flexin1">
												<input type="text" id="orderSearchKeyword" class="orderSearchKeyword" name="searcho" placeholder="주문한 상품을 검색할 수 있어요!">
											</div>
											<div class="mycoupang-main-search-it-flexin2">
												<button id="headerSearchBtn" class="headerSearchBtn" type="submit">
													<img id="headerSearchBtnImage" class="headerSearchBtnImage" title="검색" src="${pageContext.request.contextPath}/resources/images/search.png">	                 	
							                 	</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="mycoupang-product-search">
							</div>
							
							<div class="exist">
								<c:forEach var="mypageOrdered" items="${mypageOrdered}">
								<div class="order-date-line">
									<div class="left" id="ordereddate"><fmt:formatDate value="${mypageOrdered.ORDER_DATE}" pattern="yyyy.MM.dd"/> 주문</div>
									<div class="right"></div>
								</div>
									<div class="order-product">
										<table>
											<tbody>
												<tr>
													<td class="order-product-left">
														<div class="top">
															<div class="left">
																<span>배송 완료</span>
																<span class="dot">
																	<span></span>
																</span>
															</div>
														</div>
														<div class="bottom">
															<div>
																<div style="display:none;"></div>
																<div class="product-content">
																	<div class="bottom-flex">
																		<div class="image"><a><img src="${pageContext.request.contextPath}/resources/images/watermelon_cart.jpg"/></a></div>
																		<div class="content">
																			<div>
																				<a href="#">
																					<img height="16">
																					<span style="color:#111111";>${mypageOrdered.PRODUCT_NAME}</span>
																				</a>
																				<div>
																					<div class="price-ammount">
																						<span class="price">${mypageOrdered.DISCOUNT_PRICE}원 &nbsp;</span>
																						<span class="ammount">${mypageOrdered.STOCK}개</span>
																					</div>
																					<div class="gotocart">
																						<button>장바구니 담기</button>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</td>
													<td class="order-product-right">
														<div class="buttons">
															<button class="delisearch">배송조회</button>
															<button class="trade">교환, 반품 신청</button>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</c:forEach>
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
		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>