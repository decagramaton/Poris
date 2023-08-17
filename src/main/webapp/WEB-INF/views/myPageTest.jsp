<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon" />
		<title>푸릇라이트 - 장바구니</title>
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<script src="${pageContext.request.contextPath}/resources/javascript/orderheader.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css"/>
		<script src="${pageContext.request.contextPath}/resources/javascript/cart.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		
	</head>
	<body>
		<%@ include file="/WEB-INF/views/headersimple.jsp" %>
		<div class="container">
			
			<div class="container">
	            <div class="row">
	               <div class="col-md-3 bg-light">
	                     <!-- <div class="flex-grow-1" style="height: 0px; overflow-y: auto; overflow-x: hidden;"> -->
	                       <nav class="navbar flex-column bg-light">
	                       <h2>마이 페이지</h2>
							<!-- Links -->
							  <ul class="navbar-nav">
							    <li class="nav-item">
							      <a class="nav-link" href="#">주문목록</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" href="#">회원정보 변경</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" href="#">나의 상품문의</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" href="#">나의 상품후기</a>
							    </li>
							  </ul>
							</nav>
	                     <!-- </div> -->
	               </div>
		           <div class="col-md-5 p-3">
		           		<%@ include file="/WEB-INF/views/testMypageOrdered.jsp" %>
		           </div>
	               
	            </div>
	        </div>
   
                     
		</div>
		<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>