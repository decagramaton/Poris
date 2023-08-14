window.onload = init;

function init(){
	$("#carouselMainItem1").addClass("active");
	$("#carouselCateMainItem1").addClass("active");
}

const cateAdvertiseHide = window.matchMedia(`(max-width: 1100px)`);
const cateMainBannerHide = window.matchMedia(`(max-width: 768px)`);

const viewChangeHandler1 = (cateAdvertiseHide) => {
	if(cateAdvertiseHide.matches === true){
		$("#cateAdvertise").addClass("disabled-div");
		$("#cateAdvertise").removeClass("d-block");
		$("#cateAdvertise").addClass("d-none");
	} else {
		$("#cateAdvertise").removeClass("disabled-div");
		$("#cateAdvertise").removeClass("d-none");
		$("#cateAdvertise").addClass("d-block");
	}
}

const viewChangeHandler2 = (cateMainBannerHide) => {
	if(cateMainBannerHide.matches === true){
		$("#mainproduct").addClass("disabled-div");
		$("#mainproduct").removeClass("d-block");
		$("#mainproduct").addClass("d-none");
	} else {
		$("#mainproduct").removeClass("disabled-div");
		$("#mainproduct").removeClass("d-none");
		$("#mainproduct").addClass("d-block");
	}
}

cateAdvertiseHide.addEventListener("change", viewChangeHandler1);
cateMainBannerHide.addEventListener("change", viewChangeHandler2);