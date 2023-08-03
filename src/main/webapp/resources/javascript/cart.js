$(init);

function init() {
	//상품테이블 초기화
	initCartTable();
	//할인쿠폰 초기화
	initCoupon();
}
//상품테이블 초기화
function initCartTable() {
	$.ajax({
		type: "get",
		url: "../ajax/cartItem.txt",
		dataType:"json",
		success: function(data) {
			//장바구니 데이터가 없을 경우
			if(data.length == 0) {
				$(".cartTable tbody").addClass("d-none");
				$(".cartTableCol1").addClass("invisible");
				$(".cartSelect").addClass("d-none");
				$(".cartCoupon").addClass("d-none");
				$(".cashPromotion").addClass("d-none");
				$(".cartFinalPrice").addClass("d-none");
				$(".orderBtns").addClass("d-none");
				$(".cartNoItem").removeClass("d-none");
			}
			//장바구니 데이터가 있을 경우
			else {
				var now = new Date();

				let tomorrowMonth = now.getMonth() + 1;
				let tomorrowDate = now.getDate() + 1;
				let tomorrowDay = now.getDay() + 1; //요일 일요일(0)~토요일(6)
				let tomorrowDayTxt = "";
				switch (tomorrowDay) {
				  case 0:
					tomorrowDayTxt = "일";
				    break;
				  case 1:
					tomorrowDayTxt = "월";
				    break;
				  case 2:
					tomorrowDayTxt = "화";
				    break;
				  case 3:
				    tomorrowDayTxt = "수";
				    break;
				  case 4:
					tomorrowDayTxt = "목";
				    break;
				  case 5:
					tomorrowDayTxt = "금";
				    break;
				  case 6:
					tomorrowDayTxt = "토";
				}
				
				let deliveryDate = "내일 (" + tomorrowDayTxt + ") " + tomorrowMonth + "/" + tomorrowDate;
				
				let htmlRocket = "";
				htmlRocket += '<tr class="cart_delivery_kind">';
				htmlRocket += '	<td class="p-3" colspan="5">';
				htmlRocket += '		<span class="font-weight-bold">로켓배송 상품</span>';
				htmlRocket += '	</td>';
				htmlRocket += '</tr>';
				let htmlNormal = "";
				htmlNormal += '<tr class="cart_delivery_kind">';
				htmlNormal += '	<td class="p-3" colspan="5">';
				htmlNormal += '		<span class="font-weight-bold">판매자배송 상품</span>';
				htmlNormal += '	</td>';
				htmlNormal += '</tr>';
				
				data.forEach((item, index) => {
					//로켓배송 필터
					if(item.Dkind == "로켓배송") {
						htmlRocket += '<tr class="cartItem">';
						htmlRocket += '	<td class="cartItem_check"><input type="checkbox" class="cbox"/></td>';
						htmlRocket += '	<td class="cartItem_img"><img src="./image/' + item.Pimg + '" width="75px"></td>';
						htmlRocket += '	<td class="cartItem_product">';
						htmlRocket += '		<div class="cartItem_product">';
						htmlRocket += '			<a href="' + item.Plink + '">';
						htmlRocket += 				item.Pname + ', ';
						htmlRocket += '				<span class="product_option">' + item.Poption + '</span>';
						htmlRocket += '			</a>';
						htmlRocket += '		</div>';
						htmlRocket += '		<div class="cartItem_product_option row font-weight-light">';
						htmlRocket += '			<div class="option_delivery col-6 text-left">';
						htmlRocket += '				<span class="option_delivery_date_rocket">' + deliveryDate + ' 도착 보장</span>';
						htmlRocket += '				<span class="option_delivery_region">(서울경기 기준)</span>';
						htmlRocket += '			</div>';
						htmlRocket += '			<div class="option_price col-6 text-right">';
						htmlRocket += '				<span class="product_price">' + item.Pprice.toLocaleString("ko-KR") + '원</span>';
						htmlRocket += '				<label class="product_quantity">';
						htmlRocket += '					<input class="productQuantity" type="number" min="1" max="50" name="' + item.Pno + '" value="' + item.Pqty + '">';
						htmlRocket += '					<input class="quantityChange d-none" type="button" value="수량변경">';
						htmlRocket += '				</label>';
						htmlRocket += '				<span class="productTotalPrice ml-3">' + (item.Pprice * item.Pqty).toLocaleString("ko-KR") + '원</span>';
						htmlRocket += '				<button class="productDelete"></button>';
						htmlRocket += '			</div>';
						htmlRocket += '			<div class="cartItem_product_cash col-12 mt-2 text-right">';
						htmlRocket += '				<div class="max-cash">';
						htmlRocket += '                	<img src="//image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png"';
						htmlRocket += '                   width="14px">';
						htmlRocket += '              <span class="productCash">최대 ' + ((item.Pprice * item.Pqty) * 0.1).toLocaleString("ko-KR") + '원 적립</span>';
						htmlRocket += '      	</div>';
						htmlRocket += '		</div>';
						htmlRocket += '	</div>';
						htmlRocket += '	</td>';
						htmlRocket += '	<td class="cartItemPrice">';
						htmlRocket += '		<div>' + (item.Pprice * item.Pqty).toLocaleString("ko-KR") + '원</div>';
						htmlRocket += '		<img src="../image/rocket_delivery.png" width="55px">';
						htmlRocket += '	</td>';
						htmlRocket += '	<td>무료</td>';
						htmlRocket += '</tr>';
					} else if(item.Dkind == "일반배송") {
						htmlNormal += '<tr class="cartItem">';
						htmlNormal += '	<td class="cartItem_check"><input type="checkbox" class="cbox"/></td>';
						htmlNormal += '	<td class="cartItem_img"><img src="../image/' + item.Pimg + '" width="75px"></td>';
						htmlNormal += '	<td class="cartItem_product">';
						htmlNormal += '		<div class="cartItem_product">';
						htmlNormal += '			<a href="' + item.Plink + '">';
						htmlNormal += 				item.Pname + ', ';
						htmlNormal += '				<span class="product_option">' + item.Poption + '</span>';
						htmlNormal += '			</a>';
						htmlNormal += '		</div>';
						htmlNormal += '		<div class="cartItem_product_option row font-weight-light">';
						htmlNormal += '			<div class="option_delivery col-6 text-left">';
						htmlNormal += '				<span class="option_delivery_date">' + deliveryDate + ' 도착 예정</span>';
						//htmlNormal += '				<span class="option_delivery_region">(서울경기 기준)</span>';
						htmlNormal += '			</div>';
						htmlNormal += '			<div class="option_price col-6 text-right">';
						htmlNormal += '				<span class="product_price">' + item.Pprice.toLocaleString("ko-KR") + '원</span>';
						htmlNormal += '				<label class="product_quantity">';
						htmlNormal += '					<input class="productQuantity" type="number" min="1" max="50" name="' + item.Pno + '" value="' + item.Pqty + '">';
						htmlNormal += '					<input class="quantityChange d-none" type="button" value="수량변경">';
						htmlNormal += '				</label>';
						htmlNormal += '				<span class="productTotalPrice ml-3">' + (item.Pprice * item.Pqty).toLocaleString("ko-KR") + '원</span>';
						htmlNormal += '				<button class="productDelete"></button>';
						htmlNormal += '			</div>';
						htmlNormal += '			<div class="cartItem_product_cash col-12 mt-2 text-right">';
						htmlNormal += '				<div class="max-cash">';
						htmlNormal += '                	<img src="//image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png"';
						htmlNormal += '                   width="14px">';
						htmlNormal += '              <span class="productCash">최대 ' + ((item.Pprice * item.Pqty) * 0.1).toLocaleString("ko-KR") + '원 적립</span>';
						htmlNormal += '      	</div>';
						htmlNormal += '		</div>';
						htmlNormal += '	</div>';
						htmlNormal += '	</td>';
						htmlNormal += '	<td class="cartItemPrice">';
						htmlNormal += '		<div>' + (item.Pprice * item.Pqty).toLocaleString("ko-KR") + '원</div>';
						htmlNormal += '	</td>';
						htmlNormal += '	<td>' + item.Pdelprice.toLocaleString("ko-KR") + '원</td>';
						htmlNormal += '</tr>';
					}
				});
				
				htmlRocket += '<tr class="cart_total_price text-right">';
				htmlRocket += '	<td colspan="5" class="p-3">';
				htmlRocket += '		<span>상품가격 <span class="totalPriceRocket font-weight-bold">0</span>원 </span>';
				htmlRocket += '		<span class="symbol_plus_r mx-2"></span>';
				htmlRocket += '		<span>배송비 <strong class="totalDeliveryRocket">0</strong>원</span>';
				htmlRocket += '		<span class="symbol_equal_r mx-2"></span>';
				htmlRocket += '		<span>주문금액 <span class="totalOrderPriceRocket font-weight-bold">0</span>원</span>';
				htmlRocket += '	</td>';
				htmlRocket += '</tr>';
				
				htmlNormal += '<tr class="cart_total_price text-right">';
				htmlNormal += '	<td colspan="5" class="p-3">';
				htmlNormal += '		<span>상품가격 <span class="totalPriceNormal font-weight-bold">0</span>원 </span>';
				htmlNormal += '		<span class="symbol_plus_r mx-2"></span>';
				htmlNormal += '		<span>배송비 <strong class="totalDeliveryNormal">0</strong>원</span>';
				htmlNormal += '		<span class="symbol_equal_r mx-2"></span>';
				htmlNormal += '		<span>주문금액 <span class="totalOrderPriceNormal font-weight-bold">0</span>원</span>';
				htmlNormal += '	</td>';
				htmlNormal += '</tr>';
				
				$(".cartTableBodyRocket").html(htmlRocket);
				$(".cartTableBodyNormal").html(htmlNormal);
			}
			
			//상품개수 초기화
			itemCount = initItemCount();
			
			//상품전체선택 동작
			$(".cboxAll").click(checkAll);
			//상품개별선택 동작
			$(".cbox").click(checkItem);
			//상품개별삭제 동작
			$(".productDelete").click(deleteProduct);
			//상품삭제 동작
			$(".checkedAllDelete").click(deleteItem);
			
			//상품수량변경 동작
			$(".productQuantity").change(changeItemQuantity);
		}
	});
}
//할인쿠폰 초기화
function initCoupon() {
	$.ajax({
		type: "get",
		url: "../ajax/myCoupon.txt",
		dataType:"json",
		success: function(data) {
			//쿠폰이 있을 경우
			if(data.length != 0) {
				let html = "";
					html += '	<div class="coupon_title">할인쿠폰 적용</div>';
					html += '	<div class="coupon_list">';
                	
					//{"Cno":1, "Ctype":"원", "Cprice":10000, "Cname":"첫 구매 할인쿠폰", "Ccondition":"금액제한없음"},
					//{"Cno":2, "Ctype":"%", "Cprice":10, "Cname":"10% 할인쿠폰", "Ccondition":"30000원 이상 구매 시 10% 할인"}
					//Ctype == 원: 할인금액
					//Ctype == %: 할인율
				data.forEach((item, index) => {
					html += '		<dl class="coupon_item row py-1">';
					html += '			<dt class="col-2">';
					html += '				<label>';
					html += '					<input type="checkbox" class="cboxCoupon">';
					html += '					<span><span class="couponAmount ml-1">' + item.Cprice.toLocaleString("ko-KR") + '</span>' + item.Ctype + '</span>';
					html += '				</label>';
					html += '			</dt>';
					html += '			<dd class="col p-0">';
					html += '				<strong>' + item.Cname + '</strong>';
					html += '				<em>' + item.Ccondition + '</em>';
					html += '			</dd>';
					html += '		</dl>';
				});
				
				html += '	</div>';
				$(".cartCoupon").html(html);

				//할인쿠폰 동작
				$(".cboxCoupon").click(checkCoupon);
			}
		}
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
    calculatePrice();
}

//상품개별삭제 동작
function deleteProduct() {
	var cartItem = $(event.target).parent().parent().parent().parent();
	deleteCartItem(cartItem);
	itemCount = initItemCount();
	
	//주문금액 동작
    calculatePrice();
}

//상품삭제 동작
function deleteItem() {
	if(confirm("선택한 상품을 삭제하시겠습니까?")) {
		var cboxsChecked = $(".cbox:checked");
		
		//전체삭제
		if(cboxsChecked.length == itemCount) {
			$(".cartTable tbody").addClass("d-none");
			$(".cartTableCol1").addClass("invisible");
			$(".cartSelect").addClass("d-none");
			$(".cartCoupon").addClass("d-none");
			$(".cashPromotion").addClass("d-none");
			$(".cartFinalPrice").addClass("d-none");
			$(".orderBtns").addClass("d-none");
			$(".cartNoItem").removeClass("d-none");
		}
		//선택삭제
		cboxsChecked.each((index, item) => {
			var cartItem = $(item).parent().parent();
			deleteCartItem(cartItem);
		})
		
		itemCount = initItemCount();
		$("#checkCount").html(0);
		
		//주문금액 동작
	    calculatePrice();
	}
}

function deleteCartItem(cartItem) {
	cartItem.detach();
	
	var cartItemsRocket = $(".cartTableBodyRocket .cartItem");
	var cartItemsNormal = $(".cartTableBodyNormal .cartItem");
	
	if(cartItemsRocket.length === 0) {
		$(".cartTableBodyRocket").addClass("d-none");
	} else if(cartItemsNormal.length === 0) {
		$(".cartTableBodyNormal").addClass("d-none");
	}
	
	if(cartItemsRocket.length === 0 && cartItemsNormal.length === 0) {
		$(".cartTable tbody").addClass("d-none");
		$(".cartTableCol1").addClass("invisible");
		$(".cartSelect").addClass("d-none");
		$(".cartCoupon").addClass("d-none");
		$(".cashPromotion").addClass("d-none");
		$(".cartFinalPrice").addClass("d-none");
		$(".orderBtns").addClass("d-none");
		$(".cartNoItem").removeClass("d-none");
	}
}

//상품수량변경 동작
function changeItemQuantity() {
	var quantityChange = $(event.target).next();
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
		changeItemPrice(itemPno, itemQuantity);
	});
}
function changeItemPrice(itemPno, itemQuantity) {
	var quantityChange  = $(event.target);
	var productTotalPrice = quantityChange.parent().next();
	var cartItemPrice = quantityChange.parent().parent().parent().parent().next().children("div");
	var productCash = quantityChange.parent().parent().next().children().children(":nth-child(2)");
	
	$.ajax({
		url: "./json/cartItem.jsp",
		method: "get",
		success: function(data) {
			let Pprice = 0;
			let itemPrice = 0;
			
			data.forEach((item, index) => {
				if(item.Pno == itemPno) {
					Pprice = item.Pprice;
				}
			});
			
			itemPrice = Pprice * itemQuantity;
			itemCash = itemPrice * 0.1;
			productTotalPrice.html(itemPrice.toLocaleString("ko-KR") + "원");
			cartItemPrice.html(itemPrice.toLocaleString("ko-KR") + "원");
			productCash.html("최대 " + itemCash.toLocaleString("ko-KR") + "원 적립")

			//주문금액 동작
			calculatePrice();
		}
	});
	
	$(event.target).addClass("d-none");
	
	//추후 변경된 상품수량을 json으로 보내서 db에 저장하는 코드 추가
	
}

//주문금액 동작
function calculatePrice() {
	//로켓배송
	var cartItemsRocket = $(".cartTableBodyRocket .cartItem");
	var cboxsRocket = $(".cartTableBodyRocket .cbox:checked");
	
	if(cboxsRocket.length != 0) {
		//로켓배송 총 상품가격
		var priceRocket = 0;
		//로켓배송 총 배송비
		var deliveryRocket = 0;
		//로켓배송 상품주문가격(총 상품가격 + 총 배송비)
		var orderPriceRocket = 0;
		
		cboxsRocket.each((index, item) => {
			let checkedItemRocket = $(item).parent().parent();
			//총 상품가격 계산
			let itemPrice = checkedItemRocket.children(":last-child").prev().children(":first-child").html();
			priceRocket += parseInt(itemPrice.replace(/[^0-9]/g, ""));
			//총 배송비 계산
			let itemDelivery = checkedItemRocket.children(":last-child").html();
			if(itemDelivery == "무료") {
				deliveryRocket += 0;
			} else {
				deliveryRocket += parseInt(itemDelivery.replace(/[^0-9]/g, ""));
			}
		});
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
		$(".totalOrderPriceRocket").html(orderPriceRocket.toLocaleString("ko-KR"));
	} else {
		$(".totalPriceRocket").html(0);
		$(".totalDeliveryRocket").parent().html('배송비 <strong class="totalDeliveryRocket">0</strong>원');
		$(".totalOrderPriceRocket").html(0);
	}
	
	//판매자배송
	var cartItemsNormal = $(".cartTableBodyNormal .cartItem");
	var cboxsNormal = $(".cartTableBodyNormal .cbox:checked");
	
	if(cboxsNormal.length != 0) {
		//판매자배송 총 상품가격
		var priceNormal = 0;
		//판매자배송 총 배송비
		var deliveryNormal = 0;
		//판매자배송 상품주문가격(총 상품가격 + 배송비)
		var orderPriceNormal = 0;
		
		cboxsNormal.each((index, item) => {
			let checkedItemNormal = $(item).parent().parent();
			//총 상품가격 계산
			let itemPrice = checkedItemNormal.children(":last-child").prev().children(":first-child").html();
			priceNormal += parseInt(itemPrice.replace(/[^0-9]/g, ""));
			//총 배송비 계산
			let itemDelivery = checkedItemNormal.children(":last-child").html();
			if(itemDelivery == "무료") {
				deliveryNormal += 0;
			} else {
				deliveryNormal += parseInt(itemDelivery.replace(/[^0-9]/g, ""));
			}
		});
		//총 상품가격 표시
		$(".totalPriceNormal").html(priceNormal.toLocaleString("ko-KR"));
		//총 배송비 표시
		if(deliveryNormal == 0) {
			$(".totalDeliveryNormal").parent().html('배송비 <strong class="totalDeliveryNormal">무료</strong>');
		} else {
			$(".totalDeliveryNormal").html(deliveryNormal.toLocaleString("ko-KR"));
		}
		//상품주문가격 표시
		orderPriceNormal = priceNormal + deliveryNormal;
		$(".totalOrderPriceNormal").html(orderPriceNormal.toLocaleString("ko-KR"));
	} else {
		$(".totalPriceNormal").html(0);
		$(".totalDeliveryNormal").parent().html('배송비 <strong class="totalDeliveryNormal">0</strong>원');
		$(".totalOrderPriceNormal").html(0);
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
	//로켓배송
	var priceRocket = $(".totalPriceRocket").html().replace(/[^0-9]/g, "");
	var deliveryRocket = 0;
	var orderPriceRocket = $(".totalOrderPriceRocket").html().replace(/[^0-9]/g, "");
	//판매자배송
	var priceNormal = $(".totalPriceNormal").html().replace(/[^0-9]/g, "");
	var deliveryNormal = $(".totalDeliveryNormal").html().replace(/[^0-9]/g, "");
	var orderPriceNormal = $(".totalOrderPriceNormal").html().replace(/[^0-9]/g, "");
	
	//현재 총상품금액
	var priceCurrent = parseInt(priceRocket) + parseInt(priceNormal);
	//현재 총배송비
	var deliveryCurrent = parseInt(deliveryRocket) + parseInt(deliveryNormal);
	
	//쿠폰 적용
	var coupon = calculateCoupon(priceCurrent, deliveryCurrent);
	var discountProduct = coupon.Pdis;
	var discountDelivery = coupon.Ddis;
	
	//최종가격
	var priceFinal = priceCurrent;
	var discountFinal = discountProduct;
	var deliveryFinal = deliveryCurrent - discountDelivery;
	var orderPriceFinal = priceFinal - discountProduct + deliveryFinal;
	
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
			var couponType = $(item).next().html();
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