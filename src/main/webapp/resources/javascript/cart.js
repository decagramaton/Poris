$(init);

function init() {
	//금액 xxx,xxx원 적용
	initPriceFormat();
	//상품개수 초기화
	itemCount = initItemCount();
	
	//상품전체선택 동작
	$(".cboxAll").click(checkAll);
	//상품개별선택 동작
	$(".cbox").click(checkItem);
	//상품삭제 동작
	$(".checkedDelete").click(deleteItem);
	
	//상품수량변경 동작
	$(".productStock").change(changeItemQuantity);
	
	//할인쿠폰 동작
	$(".cboxCoupon").click(checkCoupon);
}
//금액 xxx,xxx원 적용
function initPriceFormat() {
	$(".productPrice").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR"));
    });
	$(".cartItemProductPrice").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR"));
	});
	$(".shippingFreeRulePrice").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR") + "원이상");
	});
	$(".shippingPrice").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR") + "원");
	});
	$(".couponAmount").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR"));
	});
	$(".discountPrice").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR"));
	});
	$(".discountRule").each((index, item) => {
		$(item).html(parseInt($(item).html()).toLocaleString("ko-KR") + "원 이상 구매 시");
	});
}
//상품개수 설정 함수
function initItemCount() {
	var itemCount = $(".cartItem").length;
	$("#productCount").html(itemCount);
	
	return itemCount;
}

//상품전체선택 동작
function checkAll() {
   if($(event.target).is(':checked')) {
       $(".cbox").prop("checked", true);
       $(".cboxAll").prop("checked", true);
       $(".checkedAllDelete").html("전체삭제");
       $("#checkCount").html(itemCount);
   } else {
	   $(".cbox").prop("checked", false);
       $(".cboxAll").prop("checked", false);
       $(".checkedAllDelete").html("선택삭제");
       $("#checkCount").html(0);
   }
   
   //주문금액 동작
   calculatePrice();
}
//상품개별선택 동작
function checkItem() {
	var cboxs = $(".cbox");
    var cboxsChecked = 0;
    
    cboxs.each((index, item) => {
    	if(item.checked) {
    		cboxsChecked++;
    	}
    	$("#checkCount").html(cboxsChecked);
    })
    
    if(cboxs.length == cboxsChecked) {
  	  $(".cboxAll").prop("checked", true);
  	  $(".checkedAllDelete").html("전체삭제");
    } else {
  	  $(".cboxAll").prop("checked",false);
  	  $(".checkedAllDelete").html("선택삭제");
    }
    
    //주문금액 동작
    //calculatePrice();
}

//상품삭제 동작
function deleteItem() {
	if(confirm("선택한 상품을 삭제하시겠습니까?")) {
		var cboxsChecked = $(".cbox:checked");
		var pidsChecked = [];
		cboxsChecked.each((index, item) => {
			pidsChecked.push($(item).val());
		});
		
		$.ajax({
			url: "deleteChecked",
			method: "post",
			traditional: true,
			data: {pidsChecked:pidsChecked},
			success: function(data) {}
		});
	}
}

//상품수량변경 동작
function changeItemQuantity() {
	var quantityChange = $(event.target).next().next();
	var itemQuantity = $(event.target).val();
	var itemQuantityMin = $(event.target).attr("min");
	var itemPno = $(event.target).attr("name");
	
	if(itemQuantity == "" || itemQuantity <= itemQuantityMin) {
		itemQuantity = itemQuantityMin;
	}
	$(event.target).prop("value", itemQuantity);
	$(event.target).attr("value", itemQuantity);
	
	quantityChange.removeClass("d-none");
	quantityChange.click(function() {
		$(event.target).addClass("d-none");
	});
}

//주문금액 동작
function calculatePrice() {
	var cartItems = $(".cartTableBody .cartItem");
	var cboxsChecked = $(".cartTableBody .cbox:checked");
	
	if(cboxsChecked.length != 0) {
		//로켓배송 총 상품가격
		var totalPrice = 0;
		//로켓배송 총 배송비
		var totalDelivery = 0;
		//로켓배송 상품주문가격(총 상품가격 + 총 배송비)
		var orderPriceRocket = 0;
		
		cboxsChecked.each((index, item) => {
			let cartItemChecked = $(item).parent().parent();
			//총 상품가격 계산
			let itemPrice = cartItemChecked.children(":last-child").prev().children().html();
			totalPrice += parseInt(itemPrice.replace(/[^0-9]/g, ""));
			//총 배송비 계산
			let itemDelivery = cartItemChecked.children(":last-child").children(":last-child").html();
			if(itemDelivery == "무료") {
				totalDelivery += 0;
			} else {
				totalDelivery += parseInt(itemDelivery.replace(/[^0-9]/g, ""));
			}
		});
		var totalOrderPrice = totalPrice + totalDelivery;
		$(".finalProductPrice").html(totalPrice.toLocaleString("ko-KR"));
		$(".finalDeliveryPrice").html(totalDelivery.toLocaleString("ko-KR"));
		$(".finalTotalPrice").html(totalOrderPrice.toLocaleString("ko-KR") + '원');
		/*
		//총 상품가격 표시
		$(".totalPriceRocket").html(priceRocket.toLocaleString("ko-KR"));
		//총 배송비 표시
		if(deliveryRocket == 0) {
			$(".totalDeliveryRocket").parent().html('배송비 <strong class="totalDeliveryRocket">무료</strong>');
		} else {
			$(".totalDeliveryRocket").html(deliveryRocket.toLocaleString("ko-KR"));
		}
		//상품주문가격 표시
		orderPriceRocket = priceRocket + deliveryRocket;
		$(".totalOrderPriceRocket").html(orderPriceRocket.toLocaleString("ko-KR"));*/
	} else {
		/*$(".totalPriceRocket").html(0);
		$(".totalDeliveryRocket").parent().html('배송비 <strong class="totalDeliveryRocket">0</strong>원');
		$(".totalOrderPriceRocket").html(0);*/
	}
	
	//최종상품가격 동작
	calculateFinalPrice();
}

//할인쿠폰 동작
function checkCoupon() {
	var cboxsChecked = $(".cbox:checked");
	
	if(cboxsChecked.length != 0) {
		calculateFinalPrice();
	} else {
		$(event.target).prop("checked", false);
	}
}

//최종상품가격 동작
function calculateFinalPrice() {
	//현재 총상품금액
	var priceCurrent = parseInt($(".finalProductPrice").html());
	//현재 총배송비
	var deliveryCurrent = parseInt($(".finalDeliveryPrice").html());
	
	//쿠폰 적용
	var coupon = calculateCoupon(priceCurrent, deliveryCurrent);
	var discountProduct = coupon.Pdis;
	var discountDelivery = coupon.Ddis;
	
	//최종가격
	var priceFinal = priceCurrent;
	var discountFinal = discountProduct + discountDelivery;
	var deliveryFinal = deliveryCurrent;
	var orderPriceFinal = priceFinal + deliveryFinal - discountProduct;
	
	$(".finalProductPrice").html(priceFinal.toLocaleString("ko-KR"));
	$(".finalDiscountPrice").html(discountFinal.toLocaleString("ko-KR"));
	$(".finalDeliveryPrice").html(deliveryFinal.toLocaleString("ko-KR"));
	$(".finalTotalPrice").html(orderPriceFinal.toLocaleString("ko-KR") + '원');
	
	if(discountFinal != 0) {
		$(".cartFinalDiscount").removeClass("d-none");
	}
	else if(discountFinal == 0) {
		$(".cartFinalDiscount").addClass("d-none");
	}
}
//쿠폰가격 동작
function calculateCoupon(price, delivery) {
	var cboxCouponsChecked = $(".cboxCoupon:checked");
	
	//현재 총상품금액
	var priceCurrent = price;
	//현재 총배송비
	var deliveryCurrent = delivery;
	
	//적용할 상품할인가
	var discountProduct = 0;
	//적용할 배송비할인가
	var discountDelivery = 0;

	//선택한 쿠폰이 있을 경우
	if(cboxCouponsChecked.length != 0) {
		cboxCouponsChecked.each((index, item) => {
			//couponType: ####[원|%]
			var couponType = $(item).next().children(":last-child").html();
			
			
			
			
			
			//여기부터....
			
			
			
			
			
			//couponCondition: [금액제한없음|####원 이상 구매 시 ~~~]
			var couponCondition = $(item).parent().parent().next().children("em").html().split(" ")[0];
			//isDlivery: 배송비 할인쿠폰인지 아닌지
			var isDelivery = $(item).parent().parent().next().children("strong").html().includes("배송비");
			//couponPrice: 쿠폰할인가격
			var couponPrice = parseInt($(item).next().children(".couponAmount").html().replace(/[^0-9]/g, ""));
			
			//쿠폰작용가능여부
			var isUsable = false;
			
			//#### '원' 일 경우
			if(couponType.endsWith("원")) {
				//조건적합여부
				let isOk = true;
				
				//금액제한없음이 아니고 조건에 맞지 않는다면 isOk = false
				if(!couponCondition.includes("금액제한없음")) {
					if(priceCurrent < couponCondition.replace(/[^0-9]/g, "")) { isOk = false; }
				}
				
				if(isOk) {
					//'배송비' 할인일 경우
					if(isDelivery) {
						if(deliveryCurrent >= couponPrice) { 
							isUsable = true;
							discountDelivery += couponPrice;
						}
					}
					//'배송비' 할인이 아닐 경우
					else {
						if(priceCurrent >= couponPrice) {
							isUsable = true; 
							discountProduct += couponPrice;
						}
					}
				}
				
			}
			//#### '%' 일 경우
			else if(couponType.endsWith("%")) {
				//조건적합여부
				let isOk = true;
				
				//금액제한없음이 아니고 조건에 맞지 않는다면 isOk = false
				if(!couponCondition.includes("금액제한없음")) {
					if(priceCurrent < couponCondition.replace(/[^0-9]/g, "")) { isOk = false; }
				}
				
				if(isOk) {
					if(priceCurrent * (1-couponPrice/100) > 0) {
						isUsable = true;
						discountProduct += (priceCurrent * (couponPrice/100));
					}
				}
			}
			
			if(!isUsable) {	$(item).prop("checked", false); }
		});
	}
	return {Pdis:discountProduct, Ddis:discountDelivery};
}