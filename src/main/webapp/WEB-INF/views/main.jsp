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
<%@ include file="/WEB-INF/views/header.jsp" %>
	<div id="body-container">
   		<div id="mainproduct" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
			    <li data-target="#mainproduct" data-slide-to="0" class="active"></li>
			    <li data-target="#mainproduct" data-slide-to="1"></li>
			    <li data-target="#mainproduct" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
			        <img src="${pageContext.request.contextPath}/resources/images/mainfruit1.jpg" alt="mainfruit1" width="1100" height="500">
			    </div>
			    <div class="carousel-item">
			        <img src="${pageContext.request.contextPath}/resources/images/mainfruit2.jpg" alt="mainfruit2" width="1100" height="500">
			    </div>
			    <div class="carousel-item">
			        <img src="${pageContext.request.contextPath}/resources/images/mainfruit3.jpg" alt="mainfruit3" width="1100" height="500">
			    </div>
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
						      			<a href="detailView?pid=${todaylist.pid}">
						      				<img class="productImage" src="${pageContext.request.contextPath}/resources/images/cherry2.jpg"/>
						      			</a>
						      		</div>
						      		<div class="productNameHolder">
						      			<a id="productName" class="productName" href="detailView?pid=${todaylist.pid}">${todaylist.name}</a>
						      		</div>
						      		<div id="price" class="price">
										<div id="productPriceArea" class="productPriceArea">
											<span id="productDisrate" class="productDisrate">${todaylist.disrate}%</span>
											<del id="productDiscountPrice"class="productDiscountPrice">${todaylist.discountprice}원</del>
										</div>
										<em>
											<span id="productPrice" class="productPrice">${todaylist.price}원</span>
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
					      			<span>지금 ${sellerlist.disrate}% 할인중!</span>
					      		</div>
					      		<div class="productNameHolder">
					      			<a id="productName" class="productName">${sellerlist.name}</a>
					      		</div>
					      		<div id="price" class="price">
									<em>
										<span id="productPrice" class="productPrice">${sellerlist.price}원</span>
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
								    <div class="carousel-item active">
								    	<img src="${pageContext.request.contextPath}/resources/images/cherry1.jpg" width="500" height="500">
								    	<div class="carousel-caption" style="bottom:50px;">
								      		<h3>여기 체리도 싸요</h3>
								        	<p>365일 체리만 먹어도 안물릴거같은데</p>
								      	</div>  
									</div>
									<div class="carousel-item">
								    	<img src="${pageContext.request.contextPath}/resources/images/cherry2.jpg" width="500" height="500">
								    	<div class="carousel-caption" style="bottom:50px;">
								      		<h3>와! 체리가 싸요</h3>
								        	<p>신선하닌까 당장 사가세요 ~</p>
								      	</div>   
								  	</div>
								  	<div class="carousel-item">
										<img src="${pageContext.request.contextPath}/resources/images/cherry3.jpg" width="500" height="500">
									    <div class="carousel-caption" style="bottom:50px;">
									    	<h3>그저 체리</h3>
									        <p>쓸말이 없어서 아무거나 넣어봤어요</p>
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
   						<dd id="cateAdvertiseCherryList" class="cateAdvertiseCherryList">
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
						    	<ul id="cateAdvertiseCherryListList" class="cateAdvertiseCherryListList">
						    		<li id="cateAdvertiseCherryListItem" class="cateAdvertiseCherryListItem">
						    			<a href="#">
						    				<img src="${pageContext.request.contextPath}/resources/images/cherry1.jpg"/>
						    				<span id="hoverUnderline" class="hoverUnderline">뭐시기 저시기</span>
						    				<span></span>
						    				<span>
						    					<strong>18000</strong> 원
						    				</span>	
						    			</a>
						    		</li>
						    		<li id="cateAdvertiseCherryListItem" class="cateAdvertiseCherryListItem">
						    			<a href="#">
						    				<img src="${pageContext.request.contextPath}/resources/images/cherry2.jpg"/>
						    				<span id="hoverUnderline" class="hoverUnderline">뭐시기 저시기</span>
						    				<span></span>
						    				<span>
						    					<strong>18000</strong> 원
						    				</span>	
						    			</a>
						    		</li>
						    	</ul>
							</div>
							<div class="carousel-item">
						  	</div>
						  	<div class="carousel-item">
							</div>
							<div class="carousel-item">
							</div>
							<div class="carousel-item">
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
	      		</div>
      		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>