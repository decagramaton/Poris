<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <title>배송지 선택 페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/addressBook_style.css">

</head>
<body>
    <div>
        <header class="content-head">
            <h1 class="content-head-title">배송지 선택</h1>
        </header>
        <section class="content-body">
            <div class="content-body-corset">
            	<c:forEach var="item" items="${addrBookList}">
	            	<div class="address-card">
	            		<div class="address-card__head">
							<div class="address-card__title">${item.recipientName}</div>
						</div>
						<div class="address-card__body">
							<div class="address-card__text address-card__text--address">${item.streetAddress}</div>
							<div class="address-card__text address-card__text--cellphone">${item.recipientTel}</div>
							<div class="address-card__text address-card__text--delivery-preference">${item.recipientSummary}</div>
						</div>
						<div class="address-card__foot">
						   <from action="#" method="post" class="address-card__form--pick">
 						       <input name="recipientName" value="${item.recipientName}" type="hidden">
						       <input name="streetAddress" value="${item.streetAddress}" type="hidden">
						       <input name="recipientTel" value="${item.recipientTel}" type="hidden">
						       <input name="recipientSummary" value="${item.recipientSummary}" type="hidden">
						       <button class="addressBookFormSubmit" type="submit">
						           <span class="addressbook__text">선택</span>
						       </button>
						   </from>
						   <from action="#" method="get">
						       <a href="/fruitlight/addressBook/changeAddressBook" class="address-card__button--edit">
						           <span class="addressbook__text">수정</span>
						       </a>
						   </from>
						</div>
					</div>
            	</c:forEach>
				<form class="addressBookNewForm" method="get" action="#">
				   <div class="addressbook__button-fixer">
				       <button type="submit" class="addressbook-new-button">
				           <i class="addressbook__icon--plus"></i>
				           <span class="addressbook__text ">배송지 추가</span>
				       </button>
				   </div>
				</form>
            </div>
        </section>
    </div>

</body>
</html>