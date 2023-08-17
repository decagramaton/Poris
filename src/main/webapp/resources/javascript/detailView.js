$(init);

function init() {
	//금액 xxx,xxx원 적용
	initPriceFormat();
	
	//메인이미지 변경 동작
	$(".productItems li img").hover(changeMain);
	//찜 동작
	$(".product-wish-btn").click(changeWish);
	//옵션 선택 동작
	$(".product-option-btn").click(openOption);
	$(".product-option-list-item").click(chooseOption);
	
	//상품옵션수량 변경 동작
	$(".product-quantity-plus-btn").click(changeQuantityPlus);
	$(".product-quantity-minus-btn").click(changeQuantityMinus);
	$(".product-quantity-input").change(changeQuantityInput);
	//상품옵션 삭제 동작
	$(".productDelete").click(deleteOption);
	
	//상품문의 페이저 버튼
	$(".inquiry-btn").click(changeInquiryPage);
	
	//장바구니 담기
	$(".product-cart-btn").click(addCart);
	//바로구매
	$(".product-buy-btn").click(buy);
}
//금액 xxx,xxx원 적용
function initPriceFormat() {
	$(".total-price").html(parseInt($(".total-price").html()).toLocaleString("ko-KR") + "원");
	$(".option-item-price").each((index, item) => {
		$(item).html(" : " + parseInt($(item).html().replace(/[^0-9]/g, "")).toLocaleString("ko-KR") + "원");
    });
	$(".product-option-originalPrice-txt").each((index, item) => {
		$(item).html(parseInt($(item).html().replace(/[^0-9]/g, "")).toLocaleString("ko-KR") + "원");
	});
}

//메인이미지 변경 동작
function changeMain() {
	var imgSrc = $(event.target).attr("src");
	$(".productMainImage").attr("src", imgSrc);
}

//찜 동작
function changeWish() {
	var wishBtn = $(event.target);
	
	if(wishBtn.val() == "on") {
		wishBtn.css("background", "url('//img1a.coupangcdn.com/image/dragonstone/sdp/PCSDP_imageasset_180417-min.png')");
		wishBtn.css("background-position", "-218px -209px");
		wishBtn.attr("value", "off");
	}
	else {
		wishBtn.css("background", "url('//img1a.coupangcdn.com/image/dragonstone/sdp/PCSDP_imageasset_180417-min.png')");
		wishBtn.css("background-position", "-262px -209px");
		wishBtn.attr("value", "on");
	}
}

//옵션 선택 동작
function openOption() {
	$(event.target).toggleClass("clicked");
	
	if($(".product-option-ico.open").css("display") == "none") {
		$(".product-option-ico.closed").css("display", "none");
		$(".product-option-ico.open").css("display", "inline-block");
	} else if($(".product-option-ico.closed").css("display") == "none") {
		$(".product-option-ico.closed").css("display", "inline-block");
		$(".product-option-ico.open").css("display", "none");
	}
	/*$(".product-option-ico").toggleClass("closed");*/
	$(".product-options-list").toggleClass("closed");
}
function chooseOption() {
	console.log($(event.target).attr("id"));
	var pid = $(event.target).attr("id");
	if(pid != undefined) {
		$(".product-option-tableBody").children("." + pid).addClass("selected");
	} else {
		pid = $(event.target).parent().attr("id");
		$(".product-option-tableBody").children("." + pid).addClass("selected");
	}
	$(".product-options-list").toggleClass("closed");
}

//상품수량 변경 동작
function changeQuantityPlus() {
	//현재 수량
	var productQuantityInput = $(event.target).parent().prev();
	var quantityCurrent = productQuantityInput.val();
	
	if(quantityCurrent == 1) {
		$(event.target).next().prop("disabled", false);
		$(event.target).next().attr("disabled", false);
	}
	productQuantityInput.prop("value", ++quantityCurrent);
	productQuantityInput.attr("value", quantityCurrent);
	
	var optionTablePrice = $(event.target).parent().parent().parent().parent().next();
	
	//상품가격 변경 동작
	changePrice(quantityCurrent, optionTablePrice);
}
function changeQuantityMinus() {
	//현재 수량
	var productQuantityInput = $(event.target).parent().prev();
	var quantityCurrent = productQuantityInput.val();
	
	productQuantityInput.prop("value", --quantityCurrent);
	productQuantityInput.attr("value", quantityCurrent);
	if(quantityCurrent == 1) {
		$(event.target).prop("disabled", true);
		$(event.target).attr("disabled", true);
	}
	
	var optionTablePrice = $(event.target).parent().parent().parent().parent().next();
	
	//상품가격 변경 동작
	changePrice(quantityCurrent, optionTablePrice);
}
function changeQuantityInput() {
	//현재 수량
	var quantityCurrent = $(event.target).val();
	var quantityMin = $(event.target).attr("min");
	var quantityMax = $(event.target).attr("max");
	
	if(quantityCurrent == "" || quantityCurrent <= quantityMin) {
		quantityCurrent = quantityMin;
		$(event.target).next().children(".product-quantity-minus-btn").prop("disabled", true);
		$(event.target).next().children(".product-quantity-minus-btn").attr("disabled", true);
	}
	else if(quantityCurrent > 1) {
		if(quantityCurrent > quantityMax) {
			quantityCurrent = quantityMax;
		}
		$(event.target).next().children(".product-quantity-minus-btn:disabled").prop("disabled", false);
		$(event.target).next().children(".product-quantity-minus-btn:disabled").attr("disabled", false);
	}
	
	$(event.target).prop("value", quantityCurrent);
	$(event.target).attr("value", quantityCurrent);
	
	var optionTablePrice = $(event.target).parent().parent().parent().next();
	
	//상품가격 변경 동작
	changePrice(quantityCurrent, optionTablePrice);
}
//상품가격 변경 동작
function changePrice(quantityCurrent, optionTablePrice) {
	var unitPrice = optionTablePrice.children().val();
	var newPrice = quantityCurrent * unitPrice;
	optionTablePrice.children("span").html(newPrice.toLocaleString("ko-KR") + "원")
	$(".product-option-originalPrice").attr("value", newPrice);
}

//상품옵션 삭제 동작
function deleteOption() {
	$(event.target).parent().parent().removeClass("selected");
}

//상품문의 페이저
function changeInquiryPage() {
	var toGoPage = $(event.target).prev().val();
	
	console.log(toGoPage);
	
	$.ajax({
		url: "/fruitlight/detailView/moveInquiryPage",
		method: "get",
		data: {
			pageNo:toGoPage
		},
		success: function(data) {
			let html = '';
			
			if(data.productInquiryList.length != 0) {
				html += '	<div class="inquiry-items">';

				$.each(data.productInquiryList, function(index, item) {
					html += '			<div class="inquiry-item">';
					html += '				<span class="inquiry-item-question-label">질문</span>';
					html += '				<div class="inquiry-item-question">';
					html += '					<div class="inquiry-item-shopper"><strong>' + item.shopper_NAME + '</strong></div>';
					html += '					<div class="inquiry-item-content">' + item.inquiry_CONTENT + '</div>';
					html += '					<div class="inquiry-item-time">' + item.strInquiryDate + '</div>';
					html += '				</div>';
					
					if(item.emptanswer == false) {
						html += '					<div class="inquiry-item-answer">';
						html += '						<i></i>';
						html += '						<span class="inquiry-item-answer-label">답변</span>';
						html += '						<div class="inquiry-item-answer-wrap">';
						html += '							<div class="inquiry-item-seller"><strong>[FRUITLIGHT]</strong></div>';
						html += '							<div class="inquiry-item-answer-content">' + item.answer_CONTENT + '</div>';
						html += '							<div class="inquiry-item-answer-time">' + item.strAnswerDate + '</div>';
						html += '						</div>';
						html += '					</div>';
					}
					html += '			</div>';
				});
				
				html += '	</div>';
				html += '	<div class="inquiry-page-btns">';
				
				if(data.productInquiryPager.totalGroupNo > 1) {
					if(data.productInquiryPager.groupNo > 1) {
						console.log(data.productInquiryPager.startPageNo-1)
						var prevPage = data.productInquiryPager.startPageNo-1
						html += '				<input type="hidden" value="' + prevPage + '">';
						html += '				<button class="page-prev inquiry-btn"></button>';
					}
				}
				
				for(let i=data.productInquiryPager.startPageNo; i<=data.productInquiryPager.endPageNo; i++) {
					if(data.productInquiryPager.pageNo != i) {
						html += '				<input type="hidden" value="' + i + '">';
						html += '				<button class="page-num inquiry-btn">' + i + '</button>';
					}
					if(data.productInquiryPager.pageNo == i) {
						html += '				<input type="hidden" value="' + i + '">';
						html += '				<button class="page-num selected inquiry-btn">' + i + '</button>';
					}
				}
				
				if(data.productInquiryPager.totalGroupNo > 1) {
					if(data.productInquiryPager.groupNo < data.productInquiryPager.totalGroupNo) {
						console.log(data.productInquiryPager.endPageNo+1)
						var nextPage = data.productInquiryPager.endPageNo+1
						html += '				<input type="hidden" value="' + nextPage + '">';
						html += '				<button class="page-next inquiry-btn"></button>';
					}
				}
				
				html += '	</div>';

				$(".inquiry-item-container").html(html);
				
				//상품문의 페이저 버튼
				$(".inquiry-btn").click(changeInquiryPage);
			}
		}
	});
}

//장바구니 담기
function addCart() {
	var selectedItems = $(".product-option-tableRow.selected");
	if(selectedItems.length == 0) {
		alert("옵션을 선택해주세요.");
	} else {
		var pnos = [];
		var stocks = [];
		selectedItems.each(function(index, item) {
			let selectedItemPno = $(item).find(".product-option-pid").val();
			let selectedItemStock = $(item).find(".product-quantity-input").val();
			pnos.push(selectedItemPno);
			stocks.push(selectedItemStock);
		});
		$.ajax({
			url: "/fruitlight/detailView/addCartProduct",
			method: "post",
			traditional: true,
			data: {
				pnos:pnos,
				stocks:stocks
			},
			success: function(data) {
			}
		});
		
		if($("#shopperInfo").val() == "") {
			if(confirm("로그인을 해주세요")) {
				location.href = "login";
			}
		} else {
			if(confirm("선택하신 상품이 장바구니에 담겼습니다.\n장바구니로 이동하시겠습니까?")) {
				location.href = "cart";
			}
		}
	}
}
//바로구매
function buy() {
	var selectedItems = $(".product-option-tableRow.selected");
	if(selectedItems.length == 0) {
		alert("옵션을 선택해주세요.");
	} else {
		var pnos = [];
		var pnames = [];
		var options = [];
		var stocks = [];
		var prices = [];
		var totalPrice = 0;
		selectedItems.each(function(index, item) {
			let selectedItemPno = $(item).find(".product-option-pid").val();
			let selectedItemPname = $(item).find(".product-option-pname").val();
			let selectedItemOption = $(item).find(".product-option-option").val();
			let selectedItemStock = $(item).find(".product-quantity-input").val();
			let selectedItemPrice = parseInt($(item).find(".product-option-originalPrice").val());
			totalPrice += selectedItemPrice;
			
			pnos.push(selectedItemPno);
			pnames.push(selectedItemPname);
			options.push(selectedItemOption);
			stocks.push(selectedItemStock);
			prices.push(selectedItemPrice);
		});
		
		var shippingPrice = 0;
		if(totalPrice > 30000) {
			shippingPrice = 0;
		} else {
			shippingPrice = 3000;
		}
		
		var orderPrice = totalPrice + shippingPrice;
		
		location.href = "detailView/buyDirect?"
			+ "pnos=" + encodeURIComponent(pnos.join(','))
			+ "&pnames=" + encodeURIComponent(pnames.join(','))
			+ "&options=" + encodeURIComponent(options.join(','))
			+ "&stocks=" + encodeURIComponent(stocks.join(','))
			+ "&prices=" + encodeURIComponent(prices.join(','))
			+ "&totalPrice=" + encodeURIComponent(totalPrice)
			+ "&shippingPrice=" + encodeURIComponent(shippingPrice)
			+ "&orderPrice=" + encodeURIComponent(orderPrice);
			
	}
}

/* 고재승
- AJAX기반 데이터 출력 기능 구현
    - 신선제품 필수 표기정보
    - 제품 상세 이미지, 텍스트 정보
    - 다른 상품 추천
    - 리뷰 통계
    - 상세 리뷰 리스트
*/

/*window.onload = printAjax;

function printAjax() {
    // 신선제품 필수 표기정보 출력 기능
    printFreshFoodRequiredInfo();

    // 제품 상세 이미지, 텍스트 출력 기능
    printFreshFoodDetailContent();

    // 다른 상품 추천 출력 기능
    printRecommendList();

    // 리뷰 통계 출력 기능
    printReviewStatisticalChart();

    // 상세 리뷰 출력 기능
    printReviewDetailList();
}

function printFreshFoodRequiredInfo() {
    $.ajax({
        type:"get",
        url:"../ajax/fresh_food_required_info.txt",
        dataType:"json",
        success: function(data){
            $.each(data , function(index, el){
                $("#fresh_food_title").text(el.freshFoodTitle);
                $("#fresh_food_weight").text(el.freshFoodWeight);

                $("#fresh_food_manufacturer").text(el.freshFoodManufacturer);
                $("#fresh_food_origin").text(el.freshFoodOrigin);

                $("#fresh_food_manufacturing_date").text(el.freshFoodManufacturingDate);
                $("#fresh_food_detail_group").text(el.freshFoodDetailGroup);

                $("#fresh_food_imported_food_statement").text(el.freshFoodImportedFoodStatement);
                $("#fresh_food_composition").text(el.freshFoodComposition);

                $("#fresh_food_storage_type").text(el.freshFoodStorageType);
                $("#fresh_food_precautions").text(el.freshFoodPrecautions);
                $("#fresh_food_consumer_consultationc_contact").text(el.freshFoodConsumerConsultationcContact);
            });
        },
        error:function(){
            console.log("fresh_food_required_info JSON txt file load fail");
        }
    })
}

function printFreshFoodDetailContent() {
    const xhttp = new XMLHttpRequest();
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            html += '<div class="content_image">';
            html += '   <img src="'+ item.mainImage +'" width="100%">';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div class="content_head">'+ item.mainContentText.head +'</div>';
            html += '   <div class="content_p">'+ item.mainContentText.content +'</div>';
            html += '</div>';
            html += '<div class="content_image">';
            html += '   <img src="'+ item.subImage +'" width="100%">';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div style="max-width:780px; width:auto; margin: 0 auto; padding: 0px;">';
            html += '       <div style="border-top: 1px solid #898989; margin: 30px 0 20px 0;">';
            html += '           <span style="background-color: #FFF; font-size: 2em; line-height: 0.6em; font-weight: bold;color:#000; letter-spacing: -0.06em; padding: 10px 10px 0 0;">체크포인트</span>';
            html += '       </div>';
            html += '       <div style="max-width: 780px; width: auto; margin: 15px auto 0 auto; font-size:1.3em; line-height:1.9em; letter-spacing: -0.01em;">';

            item.subContentText.forEach((el, idx) => {
                html += '           <img src="'+ el.image +'" style="max-width:25px; width:100%; vertical-align: middle;"> &nbsp;'+ el.content +'<br>';
            });

            html += '       </div>';
            html += '   </div>';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div calss="content_title_frame">';
            html += '      <div class="content_title_contour">';
            html += '         <span class="content_title_text"> 알아두면 좋은 정보 </span>';
            html += '      </div>';
            html += '   </div>';
            html += '</div>';
            html += '<div class="content_image">';
            html += '   <img src="'+ item.additionalInfo.image +'" width="100%">';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div class="content_p">'+item.additionalInfo.content+'</div>';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div calss="content_title_frame">';
            html += '      <div class="content_title_contour">';
            html += '         <span class="content_title_text"> 포장 정보 </span>';
            html += '      </div>';
            html += '   </div>';
            html += '</div>';
            html += '<div class="content_image">';
            html += '   <img src="'+ item.pakageImage +'" width="100%">';
            html += '</div>';
            html += '<div class="content_text">';
            html += '   <div calss="content_title_frame">';
            html += '      <div class="content_title_contour">';
            html += '         <span class="content_title_text"> 사이즈 </span>';
            html += '      </div>';
            html += '   </div>';
            html += '</div>';

            item.foodSize.forEach((el, idx) => {
                html += '<div class="content_image">';
                html += '   <img src="'+ el.image +'" width="100%">';
                html += '</div>';
            });
        });

        $(".product_detail_content_inside").html(html);
    }
    xhttp.open("GET", "../ajax/fresh_food_detail_content.txt");
    xhttp.send();
}

function printRecommendList() {
    const xhttp = new XMLHttpRequest();
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            html += '<div class="rc_product_sort">';
            html += '    <div class="rc_carousel_item">';
            html += '    <a href="'+ item.productLink +'">';
            html += '        <div class="rc_image_frame">';
            html += '            <img class="rc_image_set" src="'+ item.productImage +'">';
            html += '        </div>';

            if(item.deliveryPrice !== ""){
                html += '        <div class="rc_delivery_frame">';
                html += '            <span class="rc_delivery_set">'+item.deliveryPrice+'</span>';
                html += '        </div>';
            }

            html += '        <div class="rc_title_frame">';
            html += '            <span class="rc_title_set">'+item.productTitle+'</span>';
            html += '        </div>';
            html += '        <div class="rc_price_frame">';
            html += '            <span class="rc_price_set">'+changeComma(item.productPrice)+'원</span>';
            html += '        </div>';

            if(item.deliveryType !== ""){
                html += '        <div>';
                html += '            <img class="rl_item_badge" src="'+item.deliveryType+'">';
                html += '        </div>';
            }

            if(item.productSaleRate !== ""){
                html += '        <div style="display: flex; flex-direction: row; min-width: fit-content">';
                html += '            <div class="rc_sale_frame">';
                html += '                <span class="rc_sale_set">'+item.productSaleRate+'% 할인</span>';
                html += '            </div>';
                html += '        </div>';
            }

            html += '        <div class="rc_star_frame">';
            html += '            <div class="rc_star_sort">';
            html += '                <span class="rc_star_original">';
            html += '                <em class="rc_star_set" style="width: '+item.productReviewRate+'%;"></em>';
            html += '                </span>';
            html += '            </div>';
            html += '            <span>('+changeComma(item.productReviewCount)+')</span>';
            html += '        </div>';
            html += '    </a>';
            html += '    </div>';
            html += '    <div class="rc_product_contour"></div>';
            html += '</div>';
        });

        $(".recommended_products").html(html);
    }
    xhttp.open("GET", "../ajax/product_recommend_list.txt");
    xhttp.send();
}

function changeComma(data) {
    return data.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}


function printReviewStatisticalChart() {
    const xhttp = new XMLHttpRequest();
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            html += '<div class="sdp-review-summary-section">';
            html += '    <header class="sdp-review-summary-section-title">맛 만족도</header>';
            html += '    <ul class="sdp-review-summary-section-list">';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">예상보다 맛있어요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.tasteSatisfaction.good+'%; background-color: #6abb6f"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.tasteSatisfaction.good+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">괜찮아요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.tasteSatisfaction.normal+'%; background-color: #6abb6f"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.tasteSatisfaction.normal+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">예상보다 맛 없어요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.tasteSatisfaction.bad+'%; background-color: #6abb6f"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.tasteSatisfaction.bad+'%</div>';
            html += '    </li>';
            html += '    </ul>';
            html += '</div>';
            html += '<div class="sdp-review-summary-section">';
            html += '    <header class="sdp-review-summary-section-title">당도</header>';
            html += '    <ul class="sdp-review-summary-section-list">';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">아주 달콤해요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.brix.good+'%; background-color: #6480e4"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.brix.good+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">적당히 달아요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.brix.normal+'%; background-color: #6480e4"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.brix.normal+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">달지 않아요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.brix.bad+'%; background-color: #6480e4"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.brix.bad+'%</div>';
            html += '    </li>';
            html += '    </ul>';
            html += '</div>';
            html += '<div class="sdp-review-summary-section">';
            html += '    <header class="sdp-review-summary-section-title">새콤함</header>';
            html += '    <ul class="sdp-review-summary-section-list">';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">많이 새콤해요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.sour.good+'%; background-color: #888"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.sour.good+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">적당히 새콤해요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.sour.normal+'%; background-color: #888"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.sour.normal+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">새콤하지 않아요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.sour.bad+'%; background-color: #888"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.sour.bad+'%</div>';
            html += '    </li>';
            html += '    </ul>';
            html += '</div>';
            html += '<div class="sdp-review-summary-section">';
            html += '    <header class="sdp-review-summary-section-title">싱싱함</header>';
            html += '    <ul class="sdp-review-summary-section-list">';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">예상보다 싱싱해요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.fresh.good+'%; background-color: #7e71d7"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.fresh.good+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">보통이예요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.fresh.normal+'%; background-color: #7e71d7"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.fresh.normal+'%</div>';
            html += '    </li>';
            html += '    <li class="sdp-review-summary-section-list-item">';
            html += '        <div class="sdp-review-summary-section-list-item-answer">예상보다 안 싱싱해요</div>';
            html += '        <div class="sdp-review-summary-section-list-item-graph">';
            html += '            <div class="graph-background">';
            html += '                <div class="graph-bar" style="width:'+item.fresh.bad+'%; background-color: #7e71d7"></div>';
            html += '            </div>';
            html += '        </div>';
            html += '        <div class="graph-percent">'+item.fresh.bad+'%</div>';
            html += '    </li>';
            html += '    </ul>';
            html += '</div>';
        });

        $(".sdp-review-summary").html(html);
    }
    xhttp.open("GET", "../ajax/review_statistical.txt");
    xhttp.send();
}

function printReviewDetailList() {
    const xhttp = new XMLHttpRequest();
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            html += '<div class="sdp-review-article-list">';
            html += '    <div class="list-info">';
            html += '        <div class="list-info-profile">';
            html += '            <img src="'+item.userProfile.image+'"  style="width: auto; height: 100%; margin-left: -0.382166px; opacity: 1;">';
            html += '        </div>';
            html += '        <div class="list-info-user">';
            html += '            <span class="list-info-user-name">'+item.userProfile.nickname+'&nbsp;</span>';
            html += '            <img class="list-info-top-badge" src="'+item.userProfile.badge+'">';
            html += '        </div>';
            html += '        <div class="list-info-product-info">';
            html += '            <div class="star-gray">';
            html += '                <div class="star-orange" style="width: '+item.review.starRate+'%;"></div>';
            html += '            </div>';
            html += '            <div class="reg-date">'+item.review.writeDate+'</div>';
            html += '        </div>';
            html += '        <div class="list-info-product-info-seller-name">판매자: '+item.review.sallerName+'</div>';
            html += '        <div class="list-info-product-info-name">'+item.review.productName+'</div>';
            html += '    </div>';
            html += '    <div class="list-attachment">';

            item.review.imageList.forEach((el, idx) => {
                html += '        <div class="list-attachment-list">';
                html += '            <img class="list-attachment-img" src="'+el.image+'">';
                html += '        </div>';
            });

            html += '    </div>';
            html += '    <div class="list-review">';
            html += '        <div class="list-review-content">'+item.review.content+'</div>';
            html += '    </div>';
            html += '    <div class="list-survey">';
            html += '        <div class="list-survey-row">';
            html += '            <span class="list-survey-row-question">맛 만족도</span>';
            html += '            <span class="list-survey-row-answer">'+item.survey.taste+'</span>';
            html += '        </div>';
            html += '        <div class="list-survey-row">';
            html += '            <span class="list-survey-row-question">싱싱함</span>';
            html += '            <span class="list-survey-row-answer">'+item.survey.fresh+'</span>';
            html += '        </div>';
            html += '        <div class="list-survey-row">';
            html += '            <span class="list-survey-row-question">당도</span>';
            html += '            <span class="list-survey-row-answer">'+item.survey.brix+'</span>';
            html += '        </div>';
            html += '        <div class="list-survey-row">';
            html += '            <span class="list-survey-row-question">새콤함</span>';
            html += '            <span class="list-survey-row-answer">'+item.survey.sour+'</span>';
            html += '        </div>';
            html += '    </div>';
            html += '    <div class="list-help">';
            html += '    <div class="list-help-count">';
            html += '        <strong>'+item.survey.helpCount+'</strong>';
            html += '        명에게 도움 됨';
            html += '    </div>';
            html += '    <button class="list-help-btn">도움이돼요</button>';
            html += '    <button class="list-help-btn">도움 안돼요</button>';
            html += '    <button class="list-help-report-btn">신고하기</button>';
            html += '    <div class="sdp-review__clear"></div>';
            html += '    </div>';
            html += '</div>';
        });

        $("#review-detail-list").html(html);
    }
    xhttp.open("GET", "../ajax/review_detail.txt");
    xhttp.send();
}*/