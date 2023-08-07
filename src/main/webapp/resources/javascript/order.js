window.onload = init;

function init() {
    // 결제 정보 초기화
    paymentInfoInit();

    // 배송지 변경 이벤트 버튼
    $(".delivery-address-list-btn").click(deliveryAddressBtn);

    // 배송 요청사항 변경 이벤트 버튼
    $(".delivery-request-popup-button").click(deliveryPreferencesBtn);

    // 결제수단 초기화
    $("#rocketPayBox").change(radioChange);
    $("#rocketPayBalanceBox").change(radioChange);
    $("#rocketPayCardBox").change(radioChange);
    $("#cardPayBox").change(radioChange);
    $("#phonePayBox").change(radioChange);
    $("#virtualAccountPayBox").change(radioChange);

    // 결제수단 선택 이벤트
    $("#rocketPayBox").click(selectPayType);
    $("#rocketPayBalanceBox").click(selectPayType);
    $("#rocketPayCardBox").click(selectPayType);
    $("#cardPayBox").click(selectPayType);
    $("#phonePayBox").click(selectPayType);
    $("#virtualAccountPayBox").click(selectPayType);

    // 현금영수증 종류 선택
    $("#DEDUCTION").click(selectCashReceiptDeduction);
    $("#EXPENSE").click(selectCashReceiptExpense);

}

function customerInfoInit() {
    $.ajax({
        type:"get",
        url:"../ajax/order_customer_info.txt",
        dataType:"json",
        success: function(data){
            $.each(data , function(index, el){
                $("#customerName").text(el.customerName);
                $("#customerEmail").text(el.customerEmail);
                $("#customerTel").text(el.customerTel);
                
                $("#recipientName").text(el.recipientName);
                $("#deliveryDetailAddress").text(el.deliveryDetailAddress);
                $("#deliveryTel").text(el.deliveryTel);
                
            });
        },
        error:function(){
            console.log("order_customoer_info JSON txt file load fail");
        }
    })
}

function deliveryInfoInit() {
    const xhttp = new XMLHttpRequest();
    let week_array = new Array('일', '월', '화', '수', '목', '금', '토');
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            html += '<div class="bundle-info-item-box">';
            html += '   <div class="bundle-info-item">';
            html += '       <p>'+ item.name +'</p>';
            html += '   </div>';
            html += '   <div class="bundle-info-delivery-service">';
            html += '       <img src="'+ item.deliveryImageSrc +'">';
            html += '   </div>';
            html += '   <div class="bundle-info-item-descript">수량 '+ item.count + '개 /' + item.deliveryPrice +'</div>';
            html += '</div>';
        });

        $(".bundle-info-title").text("배송 " + data.length + "건 중 " + data.length);
        $(".delivery-date-info").text("내일 (" + week_array[new Date().getDay()+1] + ") " + (new Date().getMonth()+1) + "/" + (new Date().getDate()+1) +"도착 보장");
        $(".bundle-info-item-list").html(html);
    }
    xhttp.open("GET", "../ajax/delivery_product_list.txt");
    xhttp.send();
}

function paymentInfoInit() {
    $.ajax({
        type:"get",
        url:"../ajax/payment_info.txt",
        dataType:"json",
        success: function(data){
            $.each(data , function(index, el){
                
                $("#total_price").text(changeComma(el.totalPrice) +"원");
                $("#sale_coupon").text(changeComma(el.saleCoupon) +"원");
                $("#delevery_price").text(changeComma(el.deleveryPrice) +"원");
                $("#coupang_cash").text(changeComma(el.coupangCash) +"원");
                $("#my_coupnag_cash").text(changeComma(el.myCoupnagCash) +"원");
                totalPaytemtPrice = parseInt(el.totalPrice) + parseInt(el.deleveryPrice) - (parseInt(el.saleCoupon) + parseInt(el.coupangCash));
                $("#total_payment_price").text(changeComma(totalPaytemtPrice) +"원");

                if(parseInt(el.saleCoupon) === parseInt(0)) {
                    $("#non_sale_coupon_window").css("display", "inline-block");
                } else {
                    $("#non_sale_coupon_window").css("display", "none");
                }
            });
        },
        error:function(){
            console.log("payment_info JSON txt file load fail");
        }
    })
}

function changeComma(data) {
    return data.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}


function deliveryAddressBtn() {
    window.open("../addressBook.html", "_blank","top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no", true);
}

function deliveryPreferencesBtn() {
    window.open("../deliveryPreferences.html", "_blank","top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no", true);
}

function radioChange() {
    if($(event.target).is(":checked")) {
        $("#payTypeList").children("li").each((index, el) => {
            $(el).children("label").css("font-weight","normal");
        });

        $(event.target).parent().children("label").css("font-weight","bold");
    }
}

function selectPayType() {
    let payType = event.target.value;

    $(".rocketPayBox").parent().children(".pay-box-content").each((index, el) => {
        $(el).removeClass("selected-pay-type");
    });

    if(payType === "ROCKET_BANK") {
        $(".rocketPayBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","block");
    } else if (payType === "ROCKET_BALANCE") {
        $(".rocketPayBalanceBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","block");
    } else if (payType === "ROCKET_CARD") {
        $(".rocketPayCardBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","none");
    } else if (payType === "CARD") {
        $(".cardPayBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","none");
    } else if (payType === "PHONE") {
        $(".phonePayBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","none");
    } else if (payType === "VIRTUALACCOUNT") {
        $(".virtualAccountPayBox").addClass("selected-pay-type");
        $(".cash-receipt__root").css("display","block");
    }
}

function selectCashReceiptDeduction() {
    $("#expenseRadio").removeClass("cash-receipt__request-type__radio__checked");
    $("#expenseRadio").addClass("cash-receipt__request-type__radio__unchecked");

    $("#deductionRadio").removeClass("cash-receipt__request-type__radio__unchecked");
    $("#deductionRadio").addClass("cash-receipt__request-type__radio__checked");
}
function selectCashReceiptExpense() {
    $("#expenseRadio").removeClass("cash-receipt__request-type__radio__unchecked");
    $("#expenseRadio").addClass("cash-receipt__request-type__radio__checked");

    $("#deductionRadio").removeClass("cash-receipt__request-type__radio__checked");
    $("#deductionRadio").addClass("cash-receipt__request-type__radio__unchecked");
}