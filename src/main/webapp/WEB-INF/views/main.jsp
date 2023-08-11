<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css"/>
		<title>main </title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/header.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/main.js"></script>
	</head>
	<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
	<div id="body-container">
   		<div id="mainproduct" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
			    <li data-target="#mainproduct" data-slide-to="0" class="active"></li>
			    <li data-target="#mainproduct" data-slide-to="1"></li>
			    <li data-target="#mainproduct" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<c:forEach var="product" items="${productlist}" varStatus="i">
					<div id="carouselMainItem${i.count}" class="carousel-item">
				        <img src="data:${product.MEDIA_DATA};base64, ${base64Img}" alt="mainfruit${i.count}" width="1100" height="500">
				    </div>
				</c:forEach>
			</div>
			<a class="carousel-control-prev" href="#mainproduct" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#mainproduct" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			</a>
			</div>
	      	
	      	<div class="todayDiscoveryContainer">
	      		<div class="todayDiscoveryHottext pt-4">
   					<span class="px-2 font-weight-bold">오늘의 발견</span>
   				</div>
			      	<div id="todayDiscovery" class="todayDiscovery container">
			      		 <div class="row">
					     <c:forEach var="todaylist" items="${todaylists}">
				      		<div id="todayDiscoveryProduct" class="todayDiscoveryProduct col-md col-sm-12">
					      		<div>
					      			<div>
						      			<a href="detailView?pid=${todaylist.PRODUCT_NO}">
						      				<img class="productImage" src="${pageContext.request.contextPath}/resources/images/cherry2.jpg"/>
						      			</a>
						      		</div>
						      		<div class="productNameHolder">
						      			<a id="productName" class="productName" href="detailView?pid=${todaylist.PRODUCT_NO}">${todaylist.PRODUCT_NAME}</a>
						      		</div>
						      		<div id="price" class="price">
										<div id="productPriceArea" class="productPriceArea">
											<span id="productDisrate" class="productDisrate">${todaylist.DISCOUNT_RATE}%</span>
											<del id="productDiscountPrice"class="productDiscountPrice">${todaylist.PRODUCT_PRICE}원</del>
										</div>
										<em>
											<span id="productPrice" class="productPrice">${todaylist.DISCOUNT_PRICE}원</span>
										</em>
									</div>
								</div>
				      		</div>
		      			</c:forEach>
	      			</div>
		      	</div>
	      	</div>
			<div class="todaySellerContainer">
	      		<div class="todaySellerHottext pt-4">
   					<span class="px-2 font-weight-bold">오늘의 판매자 특가</span>
   				</div>
		      	<div id="todaySeller" class="todaySeller container">
		      		<div class="row"> 
			      		<c:forEach var="sellerlist" items="${sellerlists}">
				      		<div id="todaySellerProduct" class="todaySellerProduct col-md">
				      			<div>
					      			<img class="productImage" src="${pageContext.request.contextPath}/resources/images/cherry3.jpg"/>
					      		</div>
					      		<div class="productDiscountHolder">
					      			<span>지금 ${sellerlist.DISCOUNT_RATE}% 할인중!</span>
					      		</div>
					      		<div class="productNameHolder">
					      			<a id="productName" class="productName">${sellerlist.PRODUCT_NAME}</a>
					      		</div>
					      		<div id="price" class="price">
									<em>
										<span id="productPrice" class="productPrice">${sellerlist.DISCOUNT_PRICE}원</span>
									</em>
								</div>
				      		</div>
			      		</c:forEach>
			    	</div>
		    	</div>
		    </div>
   			<div id="cateAdvertise" class="cateAdvertise">
   				<p>HOT! TREND</p>
   				<span>카테고리 별</span>
   				<span style="color : #4285f4;">추천 광고상품</span>
   				<div id="cateAdvertiseCherry" class="cateAdvertiseCherry">
   					<dl>
   						<dt id="cateAdvertiseCherryTitle" class="cateAdvertiseCherryTitle">
   							<span>체리</span>
   							<a href="list?=체리">&nbsp;바로가기 ></a>
   						</dt>
   						<dd id="cateAdvertiseCherryPromotion" class="cateAdvertiseCherryPromotion">
   							<div id="demo1" class="carousel slide" data-ride="carousel">
								<ul class="carousel-indicators">
							    	<li data-target="#demo1" data-slide-to="0" class="active"></li>
							    	<li data-target="#demo1" data-slide-to="1"></li>
							    	<li data-target="#demo1" data-slide-to="2"></li>
							  	</ul>
								<div class="carousel-inner">
							  		<c:forEach var="catemainlist" items="${catemainlists}" varStatus="i">
									    <div id="carouselCateMainItem${i.count}" class="carousel-item">
									    	<img src="${pageContext.request.contextPath}/resources/images/cherry${i.count}.jpg" width="500" height="500">
									    	<div class="carousel-caption" style="bottom:50px;">
									      		<h3>메인 코멘트</h3>
									        	<p>서브 코멘트</p>
									      	</div>  
										</div>
							  		</c:forEach>
								</div>
								<a class="carousel-control-prev" href="#demo1" data-slide="prev">
									<span class="carousel-control-prev-icon"></span>
								</a>
								<a class="carousel-control-next" href="#demo1" data-slide="next">
									<span class="carousel-control-next-icon"></span>
								</a>
							</div>
   						</dd>
   						<dd id="cateAdvertiseCherryList" class="cateAdvertiseCherryList">
   							<div id="demo2" class="carousel slide" data-ride="carousel">
								<ul class="carousel-indicators">
					    	<li data-target="#demo2" data-slide-to="0" class="active bg-dark"></li>
					    	<li data-target="#demo2" data-slide-to="1" class="bg-dark"></li>
					    	<li data-target="#demo2" data-slide-to="2" class="bg-dark"></li>
					  	</ul>
					  	<div class="carousel-inner">
						    <div class="carousel-item active">
						    	<ul id="cateAdvertiseCherryListList" class="cateAdvertiseCherryListList">
						    		<c:forEach var="catesublist" items="${catesublists}" varStatus="i">
							    		<li id="cateAdvertiseCherryListItem" class="cateAdvertiseCherryListItem">
							    			<a href="detailView">
							    				<img src="${pageContext.request.contextPath}/resources/images/cherry${i.count}.jpg"/>
							    				<span id="hoverUnderline" class="hoverUnderline">${catesublist.PRODUCT_NAME}</span>
							    				<span>
							    					<strong>${catesublist.PRODUCT_PRICE}</strong>원
							    				</span>	
							    			</a>
							    		</li>
						    		</c:forEach>
						    	</ul>
							</div>
							<div class="carousel-item">
						  	</div>
						  	<div class="carousel-item">
							</div>
						</div>
						<a class="carousel-control-prev" href="#demo2" data-slide="prev">
							<span class="carousel-control-prev-icon bg-dark"></span>
						</a>
						<a class="carousel-control-next" href="#demo2" data-slide="next">
							<span class="carousel-control-next-icon bg-dark"></span>
						</a>
					</div>
   						</dd>
   					</dl>
   				</div>
	      		</div>
      		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>