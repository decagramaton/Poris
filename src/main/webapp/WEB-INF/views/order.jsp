<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <link rel="shortcut icon" href="//image9.coupangcdn.com/image/coupang/favicon/v2/favicon.ico" type="image/x-icon" />
    <title>쿠팡 주문/결제 페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/order.js"></script>

</head>
<body>
    <header class="header-frame">
      <div class="header-logo">
         <a class="main-logo" href="http://www.coupang.com/">
            <img src="${pageContext.request.contextPath}/resources/images/coupang_logo.png" width="174" height="41">
         </a>
      </div>
    </header>

    <section id="body">
      <div class="middle">
         <div class="orderTitle">
            <h3 class="title">주문/결제</h3>
            <span class="steps">장바구니 ><em> 주문결제 ></em> 주문완료</span>
         </div>

         <div data-component="customerInfo">
            <div class="customer-root">
               <h2 class="customer-title">구매자정보</h2>
               <div class="table-frame">
                  <div>
                     <div class="table-row">
                        <div class="table-colume">이름</div>
                        <div id="customerName" class="table_content">dotvilla</div>
                     </div>
                     <div class="table-row">
                        <div class="table-colume">이메일</div>
                        <div id="customerEmail" class="table_content">pilap31936@dotvilla.com</div>
                     </div>
                     <div class="table-row">
                        <div class="table-colume">휴대폰 번호</div>
                        <div id="customerTel" class="table_content">010 - 1234 - 9876</div>
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
                     <div id="recipientName" class="table_content">고재승</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">배송주소</div>
                     <div id="deliveryDetailAddress" class="table_content">서울특별시 종로구 창경궁로 254  7층</div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">연락처</div>
                     <div id="deliveryTel" class="table_content">010 - 1234 - 5678</div>
                  </div>
               </div>
            </div>
         </div>

         <div data-component="deliveryAddress-related" style="display: block;">
            <div class="delivery-request-container">
               <div class="table-frame" style="border-top:0;">
                  <div>
                     <div class="table-row">
                        <div class="table-colume"><span class="delivery-request-message">배송 요청사항</span></div>
                        <div class="table_content">
                           <span>문 앞</span>
                           <button class="delivery-request-popup-button" type="button">변경</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div>
            <div style="margin-top: 8px;">
               <div class="bundle-info-title">배송 1건 중 1</div>
               <div class="bundle-info-box">
                  <div class="delivery-date">
                     <span class="delivery-date-info">내일(목) 7/6 도착 보장</span>
                  </div>
                  <div class="bundle-info-item-list"></div>
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
                     <div class="table-colume">할인쿠폰</div>
                     <div class="table_content">
                        <div id="sale_coupon" style="display: inline-block; color:red; width: 100px;">0원</div>
                        <div id="non_sale_coupon_window">적용 가능한 할인쿠폰이 없습니다.</div>
                     </div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">배송비</div>
                     <div class="table_content">
                        <div id="delevery_price" style="display: inline-block; width: 100px;">0원</div>
                     </div>
                  </div>
                  <div class="table-row">
                     <div class="table-colume">쿠팡캐시</div>
                     <div class="table_content">
                        <div id="coupang_cash" style="display: inline-block; width: 100px;">0원</div>
                        <div id="my_coupnag_cash" style="display: inline-block;">보유 : <span>0원</span></div>
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
                                  <li id="rocketPayBalanceBox" class="type-selector-li">
                                      <input class="type-selector-radio" type="radio" name="payType" id="payTypeBalance" value="ROCKET_BALANCE">
                                      <label class="type-selector-label type-selector-label--balance" for="payTypeBalance" style="font-weight: normal;">
                                          <span class="type-selector-label__text">쿠페이 머니</span>
                                          <img class="rpay-badge rpay-icon-2percent" src="//image7.coupangcdn.com/image/rocketpay/order/icon_max_cashback_v2.png" width="66" height="14" alt="최대 캐시적립">
                                      </label>
                                  </li>
                      
                                  
                                 <li id="rocketPayCardBox" class="type-selector-li">
                                    <input class="type-selector-radio" type="radio" name="payType" id="payTypeCard" value="ROCKET_CARD">
                                    <label class="type-selector-label type-selector-label--card" for="payTypeCard" style="font-weight: normal;">
                                          <span class="type-selector-label__text">신용/체크카드</span>
                                          <img class="rpay-badge rpay-icon-instant-discount" src="//image7.coupangcdn.com/image/rocketpay/order/icon_ccid_v2.png" width="66" height="14" alt="즉시 할인혜택">
                                    </label>
                                 </li>
                              
                              
                                 <li id="cardPayBox" class="type-selector-li">
                                    <input class="type-selector-radio" type="radio" name="payType" id="payTypeCompanyCard" value="CARD">
                                    <label class="type-selector-label" for="payTypeCompanyCard" style="font-weight: normal;">
                                          <span class="type-selector-label__text">법인카드</span>
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

                           <!-- 법인카드 결제 -->
                           <div class="cardPayBox pay-box-content">
                              <h3 class="title">신용카드</h3>
                              <div class="card-payment pay-type-content">
                                 <ul class="pay-type-sections">
                                    <li class="pay-type-section">
                                       <label for="cardTypeSelect" class="line-title">카드선택</label>
                                       <div class="line-data">
                                          <select name="cardCode" id="cardTypeSelect" class="corporate-card__cardList">
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
                                    <li class="pay-type-section last-section">
                                       <label for="quotaSelect" class="line-title">할부기간</label>
                                       <div class="line-data">
                                          <select name="quota" id="quotaSelect" class="quotaSelect corporate-card__quotaList" disabled="">
                                             <option value="00" selected="">일시불</option>
                                          </select>
                                          <span class="note-install">법인카드는 일시불 결제만 가능합니다</span>
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
               <button type="button" id="paymentRocketpayBtn" style="display: inline-block;">
                  <img class="paymentRocketpayBtn__tooltip-2percent-cashback" src="//image10.coupangcdn.com/image/rocketpay/checkout/ico_cashback_tip.png" width="96" height="36" alt="최대 캐시적립">
                  <img src="//image7.coupangcdn.com/image/rocketpay/checkout/btn_coupay_payment.png" width="250" height="60" alt="쿠페이 머니 결제">
               </button>
               <button type="button" id="paymentBtn">
                  <img src="//image7.coupangcdn.com/image/rocketpay-order-image/pc/btn_payment.gif" width="260" height="60" alt="결제하기">
               </button>
            </div>
         </div>
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
              <p class="info" style="padding-top: 5px;">사이버몰 내 판매되는 상품 중에는 쿠팡에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어
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
</body>
</html>