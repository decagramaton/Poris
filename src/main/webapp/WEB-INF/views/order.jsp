<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/main" type="image/x-icon" />
    <title>푸릇라이트 - 결제 페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/header.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/order.js"></script>
    

</head>
<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section id="body">
      <div class="middle container">
         <div class="orderTitle row">
            <h3 class="title col">주문/결제</h3>
            <span class="steps col">장바구니 ><em> 주문결제 ></em> 주문완료</span>
         </div>

         <div data-component="customerInfo">
            <div class="customer-root">
               <h2 class="customer-title">구매자정보</h2>
               <div class="table-frame">
                  <div>
                     <div class="table-row">
                        <div class="table-colume">이름</div>
                        <div id="customerName" class="table_content">${shopperInfo.shopperName}</div>
                     </div>
                     <div class="table-row">
                        <div class="table-colume">이메일</div>
                        <div id="customerEmail" class="table_content">${shopperInfo.shopperId}</div>
                     </div>
                     <div class="table-row">
                        <div class="table-colume">휴대폰 번호</div>
                        <div id="customerTel" class="table_content">${shopperInfo.shopperTel}</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div data-component="deliveryAddress">
            <h2 class="delivery-address">받는사람정보
               <button class="delivery-address-list-btn" type="button">배송지변경</button>
            </h2>
            <div class="table-frame">
               <div>
                  <div class="table-row">
                     <div class="table-colume">이름</div>
                     <div id="recipientName" class="table_content">${shipAddress.name}</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">배송주소</div>
                     <div id="deliveryDetailAddress" class="table_content">${shipAddress.address}</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">연락처</div>
                     <div id="deliveryTel" class="table_content">${shipAddress.tel}</div>
                  </div>
               </div>
            </div>
         </div>

         <div data-component="deliveryAddress-related" style="display: block;">
            <div class="delivery-request-container">
               <div class="table-frame" style="border-top:0;">
                  <div>
                     <div class="table-row">
                        <div class="table-colume">배송 요청사항</div>
                        <div class="table_content">
                           <span id="deliPre">문 앞</span>
                           <input type="hidden" id="requiredCheckTypeID" name="requiredCheckType" value=""/>
                           <input type="hidden" id="requiredMessageID" name="requiredMessage" value=""/>
                           <input type="hidden" id="passwordCheckTypeID" name="passwordCheckType" value=""/>
                           <input type="hidden" id="passwordMessageID" name="passwordMessage" value=""/>
                           <button class="delivery-request-popup-button" type="button">변경</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div>
            <div style="margin-top: 8px;">
               <div class="bundle-info-title">배송 목록</div>
               <div class="bundle-info-box">
                  <div class="bundle-info-item-list">
                  <c:forEach var="item" items="${deliveryInfo}">
                  	<div class="bundle-info-item-box">
                  		<div class="bundle-info-item">
                  			<p>${item.name}</p>
                  		</div>
                  		<div class="bundle-info-item-descript">수량 ${item.stock}개 / ${item.productPrice}원 </div>
                  	</div>
                  </c:forEach>        
                  </div>
               </div>
            </div>
         </div>

         <div id="pay-price-section" class="order-section">
            <h2 class="pay-h2">결제정보</h2>
            <div class="table-frame">
               <div>
                  <div class="table-row">
                     <div class="table-colume">총상품가격</div>
                     <div id="total_price" class="table_content">21,710원</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">할인금액</div>
                     <div class="table_content">
                        <div id="sale_coupon" style="display: inline-block; color:red; width: 100px;">0원</div>
                     </div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">배송비</div>
                     <div class="table_content">
                        <div id="delevery_price" style="display: inline-block; width: 100px;">0원</div>
                     </div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">총결제금액</div>
                     <div id="total_payment_price" class="table_content">21,710원</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">결제방법</div>
                     <div class="table_content" style="padding: 0 15px;">

                        <!-- 결제수단 선택 박스 -->
                        <div id="payBox">
                           <div class="type-selector-list-wrapper">
                              <ul id="payTypeList" class="type-selector-list">
                      
                                  <li id="rocketPayBox" class="type-selector-li selected-pay-type">
                                      <input class="type-selector-radio" type="radio" name="payType" id="payTypeBank" value="ROCKET_BANK">
                                      <label class="type-selector-label type-selector-label--bank" for="payTypeBank" style="font-weight: bold;">
                                          <span class="type-selector-label__text">계좌이체</span>
                                      </label>
                                  </li>              
                                  
                                 <li id="rocketPayCardBox" class="type-selector-li">
                                    <input class="type-selector-radio" type="radio" name="payType" id="payTypeCard" value="ROCKET_CARD">
                                    <label class="type-selector-label type-selector-label--card" for="payTypeCard" style="font-weight: normal;">
                                          <span class="type-selector-label__text">신용/체크카드</span>
                                          <img class="rpay-badge rpay-icon-instant-discount" src="//image7.coupangcdn.com/image/rocketpay/order/icon_ccid_v2.png" width="66" height="14" alt="즉시 할인혜택">
                                    </label>
                                 </li>
                              
                                 <li id="phonePayBox" class="type-selector-li">
                                       <input class="type-selector-radio" type="radio" name="payType" id="payTypePhone" value="PHONE">
                                       <label class="type-selector-label" for="payTypePhone" style="font-weight: normal;">
                                          <span class="type-selector-label__text">휴대폰</span>
                                       </label>
                                 </li>
                              
                                 <li id="virtualAccountPayBox" class="type-selector-li">
                                    <input class="type-selector-radio" type="radio" name="payType" id="payTypeAccount" value="VIRTUALACCOUNT">
                                    <label class="type-selector-label" for="payTypeAccount" style="font-weight: normal;">
                                          <span class="type-selector-label__text">무통장입금(가상계좌)</span>
                                    </label>
                                 </li>
                                  
                              </ul>
                          </div>
                        </div>

                        <!-- 상세결제 수단 선택 박스 -->
                        <div id="payTypeContent" class="pay-box-contents">
                           
                           <!-- 계좌이체 결제 -->
                           <div class="rocketPayBox pay-box-content selected-pay-type">
                              <h3 class="title">쿠팡 간편결제(계좌이체)</h3>
                              <div class="rocketpay-payment pay-type-content" data-controller="RocketpayPayment">
                                 <ul class="pay-type-sections">
                                    <li class="pay-type-section last-section">
                                       <label for="label_rocketBank_bankList" class="line-title">은행선택</label>
                                       <div class="line-data">
                                          <select id="label_rocketBank_bankList" data-node="bankList-select">
                                             <option value="">선택</option>
                                             <option value="KAKAO@카카오뱅크@@">카카오뱅크</option>
                                             <option value="NH@농협은행@@">농협은행</option>
                                             <option value="KB@국민은행@@">국민은행</option>
                                             <option value="SHINHAN@신한은행@@">신한은행</option>
                                             <option value="WOORI@우리은행@@">우리은행</option>
                                             <option value="IBK@기업은행@@">기업은행</option>
                                             <option value="HANA@하나은행@@">하나은행</option>
                                             <option value="KFCC@새마을금고@@">새마을금고</option>
                                             <option value="POST_OFFICE@우체국@@">우체국</option>
                                             <option value="SC@SC제일은행@@">SC제일은행</option>
                                             <option value="DAEGU@대구은행@@">대구은행</option>
                                             <option value="BUSAN@부산은행@@">부산은행</option>
                                             <option value="KYONGNAM@경남은행@@">경남은행</option>
                                             <option value="KWANGJU@광주은행@@">광주은행</option>
                                             <option value="SHINHYUP@신협@@">신협</option>
                                             <option value="SUHYUB@수협은행@@">수협은행</option>
                                             <option value="KDB@산업은행@@">산업은행</option>
                                             <option value="JB@전북은행@@">전북은행</option>
                                             <option value="JEJU@제주은행@@">제주은행</option>
                                             <option value="CITI@씨티은행@@">씨티은행</option>
                                             <option value="KBANK@케이뱅크@@">케이뱅크</option>
                                             <option value="TOSSBANK@토스뱅크@@">토스뱅크</option>
                                          </select>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>

                           <!-- 쿠페이머니 결제-->
                           <div class="rocketPayBalanceBox pay-box-content">
                              <h3 class="title">쿠팡 간편결제(쿠페이 머니)</h3>
                              <div class="rocketpay-payment pay-type-content" data-controller="UnifiedMoney" data-node="pay-typeContent">
                                 <ul class="pay-type-sections">
                                    <li class="pay-type-section">
                                          <div class="line-title" style="letter-spacing:-1px;">잔액</div>
                                          <div class="line-data">
                                                <strong>1,000,000 원</strong>
                                          </div>
                                    </li>
                              
                                    <li class="pay-type-section" style="border-top: 1px solid #e4e4e4;">
                                          <div class="line-note" data-node="balance-sufficient-message">* 잔액이 부족할 경우, 결제 진행 시에 충전됩니다.</div>
                                    </li>
                                 </ul>
                              </div>
                           </div>

                           <!-- 신용/체크카드 결제 -->
                           <div class="rocketPayCardBox pay-box-content">
                              <h3 class="title">신용/체크카드</h3>
                              <div class="rocketpay-card pay-type-content" data-controller="RocketpayCard" data-controller-data="{ &quot;hasCcidPromotion&quot;: false }" data-payment-promotions="[]">
                                 <ul class="pay-type-sections">
                                    <li class="pay-type-section">
                                       <label for="rocketCard-select" class="line-title">카드선택</label>
                                       <div class="line-data">
                                          <select name="rocketCardCode" id="rocketCard-select" class="rocketpay-card__cardList">
                                                <option value="">선택</option>
                                                <option value="KB">KB국민카드</option>
                                                <option value="LOTTE">롯데카드</option>
                                                <option value="SHINHAN">신한카드</option>
                                                <option value="HANA_SK">하나카드</option>
                                                <option value="BC">BC카드</option>
                                                <option value="SAMSUNG">삼성카드</option>
                                                <option value="HYUNDAI">현대카드</option>
                                                <option value="WOORI">우리카드</option>
                                                <option value="NH">NH농협카드</option>
                                                <option value="CITY">씨티카드</option>
                                                <option value="KakaoBank">카카오뱅크카드</option>
                                                <option value="TOSSBANK">토스뱅크카드</option>
                                                <option value="ETC">기타(은행/증권)카드</option>
                                          </select>
                                       </div>
                                    </li>
                                    <li class="pay-type-section last-section" style="border-top: 1px solid #e4e4e4;">
                                       <label for="rocketCard-select" class="line-title">할부기간</label>
                                       <div class="line-data">
                                          <select name="quota" id="rocketCard-quota-select" class="rocketpay-card__quotaList" disabled="disabled"><option value="00" selected="">일시불</option></select>
                                          <span id="rocketCard-installment-notice" class="note-install">* 할부는 50,000원 이상만 가능합니다</span>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>

                           <!-- 휴대폰 결제 -->
                           <div class="phonePayBox pay-box-content">
                              <h3 class="title">휴대폰</h3>
                              <div class="cellphone-payment pay-type-content">
                                 <ul class="pay-type-sections">
                                    <li class="pay-type-section">
                                       <label for="cellphoneTelecom" class="payment-cellphone__line-title">통신사 종류</label>
                                       <div class="payment-cellphone__line-data">
                                          <select name="cellphoneTelecom" id="cellphoneTelecom" class="payment-cellphone__select">
                                             <option value="" selected="">선택</option>
                                             <option value="SKT">SKT</option>
                                             <option value="KT">KT</option>
                                             <option value="CJH">헬로모바일</option>
                                             <option value="KCT">KCT</option>
                                          </select>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>

                           <!-- 무통장입금 결제 -->
                           <div class="virtualAccountPayBox pay-box-content">
                              <h3 class="title">무통장입금(가상계좌)</h3>
                              <div class="virtual-account-payment pay-type-content">
                                 <p class="validate-message" style="display: none;"></p>
                                 <ul class="pay-type-sections">
                                    <li class="deposit-bank-wrap pay-type-section">
                                       <label for="depositBank" class="line-title">입금은행</label>
                                       <div class="line-data">
                                          <select id="depositBank" class="" name="depositBank">
                                             <option value="" selected="" data-limitmsg="">선택</option>
                                             <option value="NH">농협은행</option>
                                             <option value="KB">국민은행</option>
                                             <option value="SHINHAN">신한은행</option>
                                             <option value="WOORI">우리은행</option>
                                             <option value="HANA">KEB하나은행</option>
                                             <option value="IBK">기업은행</option>
                                             <option value="DAEGU">대구은행</option>
                                             <option value="BUSAN">부산은행</option>
                                             <option value="POST_OFFICE">우체국</option>
                                             <option value="KYONGNAM">경남은행</option>
                                             <option value="KWANGJU">광주은행</option>
                                             <option value="SC">SC제일은행</option>
                                             <option value="SUHYUB">수협은행</option>
                                          </select>
                                       </div>
                                    </li>
                                    <li class="payBox-section  pay-type-section" style="border-top: 1px solid #e4e4e4;">
                                       <span class="line-title">입금기한</span>
                                       <div class="line-data">
                                          <span class="depositDueTxt">2023년 07월 12일 15시 23분까지</span>
                                       </div>
                                    </li>
                                    <li class="pay-type-explain" style="margin-top: 10px; padding-top: 3px;">
                                       <p class="cash-receipt-explain" style="color: #888;">* 현금으로 결제한 모든 금액은 우리은행과 채무지급보증계약을 체결하여 고객님의 안전거래를 보장하고 있습니다.</p>
                                    </li>
                                 </ul>
                              </div>
                              <dl class="virtual-account-payment-explain">
                                 <dt>무통장입금 시 유의사항</dt>
                                 <dd>입금완료 후 상품품절로 인해 자동취소된 상품은 환불 처리해 드립니다.</dd>
                                 <dd>무통장입금 결제 시 부분취소가 불가하며 전체취소 후 다시 주문하시기 바랍니다.</dd>
                                 <dd>은행 이체 수수료가 발생될 수 있습니다. 입금시 수수료를 확인해주세요.</dd>
                              </dl>
                           </div>
                        </div>
                        <div class="savePaymentOption">
                           <input class="savePaymentOption-checkbox" type="checkbox" id="savePaymentOption" checked="">
                           <label class="savePaymentOption-message" for="savePaymentOption">기본 결제 수단으로 사용</label>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div data-component="cash-receipt">
            <div class="cash-receipt__root">
               <h2 class="cash-receipt__title">현금영수증</h2>
               <div class="cash-receipt__wrap">
                  <div class="cash-receipt__checkbox-title__wrap">
                     <span class="cash-receipt__checkbox cash-receipt__checkbox__checked"></span>
                     <span class="cash-receipt__checkbox-title">현금영수증 신청</span>
                  </div>
                  <div class="data-cash-receipt-content">
                     <div class="cash-receipt__request-type__root">
                        <span id="DEDUCTION">
                           <span id="deductionRadio" class="cash-receipt__request-type__radio cash-receipt__request-type__radio__checked"></span>
                           <span class="cash-receipt__request-type__desc">소득공제</span>
                        </span>
                        <span id="EXPENSE">
                           <span id="expenseRadio" class="cash-receipt__request-type__radio cash-receipt__request-type__radio__unchecked"></span>
                           <span class="cash-receipt__request-type__desc">지출증빙</span>
                        </span>
                     </div>
                     <div class="cash-receipt__resiter-type__wrap">
                        <span>
                           <select name="cashReceiptRegisterType" class="cash-receipt__resiter-type__select">
                              <option value="PHONE_NUMBER">휴대폰번호</option>
                              <option value="CASH_RECEIPT_CARD_NUMBER">현금영수증카드</option>
                           </select>
                        </span>
                        <span><input name="cashReceiptRequestNo" class="cash-receipt__resiter-type__text" type="tel" size="20" maxlength="18" placeholder="숫자만 입력해 주세요"></span>
                     </div>
           
                     <div data-cash-receipt__notification__register="">
                        <div class="cash-receipt__notification_wrap">
                           <div class="cash-receipt__notification_li">* 해외구매대행 / 로켓직구 구매금액은 현금영수증 발행이 제외됩니다.</div>
                           <div class="cash-receipt__notification_li">* 쿠팡캐시 결제시 현금성 적립액에 한하여 현금영수증이 발행됩니다.</div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div class="orderBox wrap-order-agree">
            <div class="confirm-agreements-message">
               위 주문 내용을 확인 하였으며, 회원 본인은 개인정보 이용 및 제공(해외직구의 경우 국외제공) 및 결제에 동의합니다.
            </div>
            <div class="agreeBtn hasRocketPayCheckoutButton" id="btn_all">
	            <button class="custom-btn btn-3"><span>결제하기</span></button>
            </div>
         </div>
      </div>

    </section>
    <footer class="footer-frame">
     </footer>
</body>
</html>