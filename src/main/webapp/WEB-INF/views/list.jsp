<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		<title>푸릇라이트 - List</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/header.js"></script>
	</head>
<%@ include file="/WEB-INF/views/header.jsp" %>
			<section class="container">
				<article id="main">
					<div id="main-head" style="font-weight : bold; font-size : 20px; padding : 30px 5px 20px 20px;">
						<h3>검색 내용 : </h3>
					</div>
					<div id="main-serve">
						<span><a href="#">낮은가격순</a></span>
						<span><a href="#">높은가격순</a></span>
						<span><a href="#">리뷰순</a></span>
						<span><a href="#">별점순</a></span>
					</div>
					<div class="container">
						<div class ="row">
							<c:forEach var="product" items="${products}" varStatus="i">
								<div class="productList ${product.pid} col-md col-sm-12" style="cursor:pointer;">
									<div>
										<img class="productImage${i.count}" src="${pageContext.request.contextPath}/resources/images/cherry1.jpg"/>
									</div>
									<a class="productName">${product.name}</a>
									<div class="productPriceArea">
										<span class="productDisrate">${product.disrate}</span>
										<del class="productDiscountPrice">${product.discountprice}</del>
									</div>
									<em>
										<span id="productPrice" class="productPrice">${product.price}</span>
									</em>
								</div>
							</c:forEach>
						</div>
					</div>
				</article>
			</section>
<%@ include file="/WEB-INF/views/footer.jsp" %>