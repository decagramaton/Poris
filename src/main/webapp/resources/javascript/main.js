function menuprev(){
	$("#menu-btn2").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left-gray@2x.png)");
	$("#menu-btn1").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right@2x.png)");
	$("#menus").css("transform","translateX(0px)")
	$("#menu-btn2").attr("disabled",true);
	$("#menu-btn1").attr("disabled",false);
}
function menunext(){
	$("#menu-btn1").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right-gray@2x.png)");
	$("#menu-btn2").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left@2x.png)");
	$("#menus").css("transform","translateX(-190px)")
	$("#menu-btn1").attr("disabled",true);
	$("#menu-btn2").attr("disabled",false);
}

function mainimage1() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image1").addClass("d-block");
}
function mainimage2() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image2").addClass("d-block");
}
function mainimage3() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image3").addClass("d-block");
}
function mainimage4() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image4").addClass("d-block");
}
function mainimage5() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image5").addClass("d-block");
}
function mainimage6() {
	$("#main-today > img").removeClass("d-block");
	$("#main-today > img").addClass("d-none");
	$("#main-today-image6").addClass("d-block");
}


function contentPrev1() {
	let btn = $("#btn-selector1").html();
	if(btn === "2"){
		$("#btn-selector1").html("1");
		$("#today-sell-seller-content-body-scroller1").css("transform","translateX(0px)");
		$("#today-sell-seller-content-body-prevbtn1").css("display","none");
	} else if(btn === "3"){
		$("#btn-selector1").html("2");
		$("#today-sell-seller-content-body-scroller1").css("transform","translateX(-900px)");
		$("#today-sell-seller-content-body-nextbtn1").css("display","block");
	}
}

function contentNext1() {
	let btn = $("#btn-selector1").html();
	if(btn === "1"){
		$("#btn-selector1").html("2");
		$("#today-sell-seller-content-body-scroller1").css("transform","translateX(-900px)");
		$("#today-sell-seller-content-body-prevbtn1").css("display","block");
	} else if(btn === "2"){
		$("#btn-selector1").html("3");
		$("#today-sell-seller-content-body-scroller1").css("transform","translateX(-1800px)");
		$("#today-sell-seller-content-body-nextbtn1").css("display","none");
	}
}

function contentPrev2() {
	let btn = $("#btn-selector2").html();
	if(btn === "2"){
		$("#btn-selector2").html("1");
		$("#today-sell-seller-content-body-scroller2").css("transform","translateX(0px)");
		$("#today-sell-seller-content-body-prevbtn2").css("display","none");
	} else if(btn === "3"){
		$("#btn-selector2").html("2");
		$("#today-sell-seller-content-body-scroller2").css("transform","translateX(-900px)");
		$("#today-sell-seller-content-body-nextbtn2").css("display","block");
	}
}

function contentNext2() {
	let btn = $("#btn-selector2").html();
	if(btn === "1"){
		$("#btn-selector2").html("2");
		$("#today-sell-seller-content-body-scroller2").css("transform","translateX(-900px)");
		$("#today-sell-seller-content-body-prevbtn2").css("display","block");
	} else if(btn === "2"){
		$("#btn-selector2").html("3");
		$("#today-sell-seller-content-body-scroller2").css("transform","translateX(-1800px)");
		$("#today-sell-seller-content-body-nextbtn2").css("display","none");
	}
}