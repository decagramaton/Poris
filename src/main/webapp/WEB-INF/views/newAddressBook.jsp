<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko_KR">
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>배송지 선택 페이지</title>
	    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newAddressBook_style.css">
	    <script src="${pageContext.request.contextPath}/resources/javascript/newAddressBook.js"></script>
	</head>
	<body>
	    <div class="content-head content-head--fixed">
	    	<h1 class="content-head__title">배송지 추가</h1>
		</div>
		
		
		<div class="content-body__corset">
		    <form method="post" class="_addressBookSaveForm" action="https://id.coupang.com/addressbook/save">
			    <div class="icon-text-field__frame-box _addressBookRecipientRoot">
				    <div class="icon-text-field__icon-container">
				        <div class="icon-text-field__icon-box icon-text-field__icon-box--fix">
				            <i class="icon-text-field__icon--person"></i>
				        </div>
				        <div class="icon-text-field__input-container">
				            <label for="addressbookRecipient" class="icon-text-field__input-area">
				                <input type="text" class="icon-text-field__input _addressBookRecipientInput" id="addressbookRecipient" name="recipientName" maxlength="40" placeholder="받는 사람" value="">
				            </label>
				        </div>
				    </div>
				</div>
				
				<div class="icon-text-field__frame-box _addressBookAddressErrorStatus">
				    <div class="icon-text-field__icon-container">
				        <div class="icon-text-field__icon-box icon-text-field__icon-box--fix">
				            <i class="icon-text-field__icon--map-pin"></i>
				        </div>
				        <div class="icon-text-field__input-container">
				            <label for="addressbookRecipientLocation" class="icon-text-field__input-area">
				                <input type="text" class="icon-text-field__input _addressBookRecipientInput" id="addressbookRecipientLocation" name="recipientLocation" maxlength="40" placeholder="받을 주소" value="">
				            </label>
				        </div>
				    </div>
				</div>
				
				<div class="icon-text-field icon-text-field--input-util _addressBookCellphoneAddonStatus">
				    <div class="icon-text-field__frame-box _addressBookCellphoneErrorStatus">
				        <div class="icon-text-field__icon-container">
				            <div class="icon-text-field__icon-box icon-text-field__icon-box--fix">
				                <i class="icon-text-field__icon--cellphone"></i>
				            </div>
				            <div class="icon-text-field__input-container">
				                <label for="addressbookCellphone" class="icon-text-field__input-area">
				                    <input type="tel" class="icon-text-field__input _addressBookCellphoneInput" id="addressbookCellphone" name="recipientCellphone" placeholder="연락처" value="">
				                </label>
				            </div>
				        </div>
				    </div>
				</div>
				
				
			    <div class="icon-text-field__frame-box _addressBookDeliveryPreferencesErrorStatus">
			        <div class="icon-text-field__icon-container">
			            <div class="icon-text-field__icon-box icon-text-field__icon-box--fix">
			                <i class="icon-text-field__icon--speech-bubble"></i>
			            </div>
			            <div class="icon-text-field__button-container">
		                    <a href="/fruitlight/deliveryPreferences" role="button" class="icon-text-field__button icon-text-field__button--icon-container _addressBookDeliveryPreferencesTrigger">
		                    	<span class="icon-text-field__text icon-text-field__text--button-label _addressBookDeliveryPreferencesDefaultSummary">배송 요청사항</span>
		                    </a>
		                    <label for="addressbookPreference" class="icon-text-field__input-area" style="display: none;">
				                    <input type="tel" class="icon-text-field__input _addressBookCellphoneInput" id="addressbookPreference" name="recipientPreference" value="">
				            </label>
			            </div>
			        </div>
			    </div>
				
				<!-- 저장 버튼 -->
			    <div class="addressbook__button-fixer">
			        <button type="button" class="addressbook__button--save _addressBookFormSubmit">
			            <span class="addressbook__text">저장</span>
			        </button>
			    </div>
			</form>
		</div>
	</body>
</html>