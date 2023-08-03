common = {recordsPerPage : 60, navPage : 10}


$('document').ready(function(){
	setPageInfo(common.recordsPerPage, common.navPage, 1);
	selectDataList();
});

function selectDataList(){
	$.getJSON("../ajax/list_content.txt",function(data){
		var html = "";
		totalCount = data.length;
		console.log("step2 totalCount fun : " + totalCount);
		$.each(data, function(index, item){
			if(index <= common.recordsPerPage*pageInfo.currentPage && index > common.recordsPerPage*(pageInfo.currentPage-1)){
				html += '<div class="product-card'+ index +'"style="cursor:pointer; "onclick="location.href=\'detailView.html\'">';
				html += '<div>';
				html += 	'<img class="product-image" src="' + item.image +'"/>';
				html += '</div>';
				html += '<div id="product-bridge">';
				html += 	'<img class="product-bridge" src="'+ item.bridge +'" style="width:80px;"/>';
				html += '</div>';
				html += '<a id="product-name" class="product-name">'+ item.name +'</a>';
				html += '<div id="product-area">';
				html += 	'<div id="product-area-price">';
				html += 		'<span class="product-disrate">'+ item.disrate +'</span>';
				html += 		'<del class="product-prevprice">'+ item.prevprice +'</del>';
				html +=		'</div>';
				html +=		'<em>';
				html +=			'<span class="product-price">'+ item.price +'</span>';
				html +=			'<span>';
				html +=				'<img class="product-delikind"src="'+ item.delikind +'" height="16">';
				html +=			'</span>';
				html +=		'</em>';
				html +=		'<span class="product-perprice">' + item.perprice + '</span>';
				html +=	'</div>';
				html +=	'<div id="product-arrive">';
				html +=		'<span class="product-delidate">' + item.delidate + '</span>';
				html +=	'</div>';
				html +=	'<div id="product-star">';
				html +=		'<span id="product-star-rate">';
				html +=			'<span id="product-star-rate-rating" class="product-starrate" style="width :' + item.starrate + '"></span>';
				html +=		'</span>';
				html +=		'<span id="product-star-count" class="product-reviewcount">' + item.reviewcount + '</span>';
				html +=	'</div>';
				html +=	'<div id="product-point">';
				html +=		'<div id="product-point-box">';
				html +=			'<img src="//image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png" id="product-point-img">';
				html +=			'<span class="product-cashpoint">' + item.cashpoint + '</span>';
				html +=		'</div>';
				html +=	'</div>';
		  		html += '</div>';
			} 
		});
		
	    $("#product").html(html);
	})
	const pageInfo = getPageInfo();
	
	setTimeout(() => paging($('#page-wrapper'), totalCount, pageInfo.recordsPerPage, pageInfo.navPage, pageInfo.currentPage), 100);
	
//	paging($('#page-wrapper'), totalCount, pageInfo.recordsPerPage, pageInfo.navPage, pageInfo.currentPage);
}
function paging(appendEle, totalCount, recordsPerPage, navPage, currentPage) {
	
	
	const totalPage = Math.ceil(totalCount / recordsPerPage);
	const pageGroup = Math.ceil(currentPage / navPage);
	console.log(navPage);
	
	if (common.navPage >= (totalCount/common.recordsPerPage)){
		common.navPage = (totalCount/common.recordsPerPage)
	}

	
	console.log(navPage);
	let last = pageGroup * navPage;
	if(last > totalPage){
		last = totalPage;
	}
	console.log(navPage);
	let first = last - (navPage - 1);
	
	const prev = first - 1;
	const next = last + 1;
	const rearMost = totalPage;

	
	let innerHtml = '';
	if(prev > 0){
		innerHtml += '<a id="prevbtn" href="#" onclick="movePage('+prev+')"> < </a>';
	}
	console.log("currentPage : " + currentPage);
	if(first <= 0){
		first = 1;
	}
	
	for (let i=first; i<=last; i++){
		if(currentPage === i){
			innerHtml += '<a href="#" class="on" onclick="movePage('+i+')">'+i+'</a>';
		} else {
			innerHtml += '<a href="#" class="no-on" onclick="movePage('+i+')">'+i+'</a>';
		}
	}
	console.log(last);
	console.log(totalPage);
	if(last <= totalPage){
		if(last%10 !== 0){
			innerHtml += '<a id="nextbtn" style="cursor:none; pointer-events: none;" href="#" onclick="movePage('+next+')"> > </a> ';
			innerHtml += ''
		} else { 
			innerHtml += '<a id="nextbtn" href="#" onclick="movePage('+next+')"> > </a> ';
			innerHtml += ''
		}
	}
	appendEle.empty();
	appendEle.append(innerHtml);
}

function movePage(currentPage){
	const pageInfo = getPageInfo();
	setPageInfo(pageInfo.recordsPerPage, pageInfo.navPage, currentPage);
	
	selectDataList();
}

function setPageInfo(recordsPerPage, navPage, currentPage){
	const pageInfo = {
			recordsPerPage : recordsPerPage,
			navPage : navPage,
			currentPage : currentPage
	};
	
	sessionStorage.setItem('pageInfo', JSON.stringify(pageInfo));
}

function getPageInfo(){
	return JSON.parse(sessionStorage.getItem('pageInfo'));
}

function sidemorebrand(){
	if($(".sidemorebrand").html() === "+ 더보기"){
		$(".side-brand-add").css("display","block");
		$(".sidemorebrand").html("- 닫기");
	} else if($(".sidemorebrand").html() === "- 닫기"){
		$(".side-brand-add").css("display","none");
		$(".sidemorebrand").html("+ 더보기");
	}
}

function sidemorekind(){
	if($(".sidemorekind").html() === "+ 더보기"){
		$(".side-kind-add").css("display","block");
		$(".sidemorekind").html("- 닫기");
	} else if($(".sidemorekind").html() === "- 닫기"){
		$(".side-kind-add").css("display","none");
		$(".sidemorekind").html("+ 더보기");
	}
}

function sidemorecolor(){
	if($(".sidemorecolor").html() === "+ 더보기"){
		$(".side-color-add").css("display","block");
		$(".sidemorecolor").html("- 닫기");
	} else if($(".sidemorecolor").html() === "- 닫기"){
		$(".side-color-add").css("display","none");
		$(".sidemorecolor").html("+ 더보기");
	}
}

/*
	.product-image : 상품 사진이미지
	.product-bridge : 쿠팡추천 등 딱지들
	.product-name : 상품명
	.product-disrate : 상품 할인율
	.product-prevprice : 할인전 가격
	.product-price : 상품 가격
	.product-delikind : 로켓배송 종류
	.product-perprice : g당 가격
	.product-delidate : xx까지 도착 보장
	.product-starrate : 별점 (style: width로 조정)
	.product-reviewcount : 리뷰 숫자
	.product-cashpoint : 최대 xxx원 적립
*/
