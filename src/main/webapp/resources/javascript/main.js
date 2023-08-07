const cateAdvertiseHide = window.matchMedia(`(max-width: 1100px)`);

const viewChangeHandler = (cateAdvertiseHide) => {
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
cateAdvertiseHide.addEventListener("change", viewChangeHandler);