/* 고재승
- 배송 요청사항 선택 페이지 HTML, CSS 구현
- 배송 요청사항 유형 선택 기능 구현
- 특정 유형 선택 시, 서브 UI 출력 기능 구현
*/

window.onload = init;

function init() {
    $("#_AA01_PUT_FRONT_OF_DOOR").on('change', lockerClickEvent);
    $("#_AA01_DIRECT_RECEIVE_AS_FRONT_OF_DOOR").on('change', lockerClickEvent);
    $("#_AA01_KEEP_LOBBY").on('change', lockerClickEvent);
    $("#_AA01_KEEP_IN_LOCKER").on('change', lockerClickEvent);
    $("#_AA01_OTHER_PLACE").on('change', lockerClickEvent);
}

function lockerClickEvent() {
    if($("#_AA01_KEEP_IN_LOCKER").is(":checked")){
        $("#locker_detail_form").css("display", "block");
    } else {
        $("#locker_detail_form").css("display", "none");
    }

    if($("#_AA01_OTHER_PLACE").is(":checked")){
        $("#other_place_detail_form").css("display", "block");
    } else {
        $("#other_place_detail_form").css("display", "none");
    }
}


/**
 * @author 고재승
 * 배송 요청사항을 호출한 부모 페이지의 종류에 따라 배송 요청사항을 전달하는 메소드
 */
function windowClose() {
	console.log(window.dataFromParent);
	if(window.dataFromParent === "orderPage"){
		// Step1. 부모 페이지의 요소에 자식 페이지의 요소 값 대입
		window.opener.document.getElementById("deliPre").innerHTML = $("input[name='requiredCheckType']:checked").val();
		window.opener.document.getElementById("requiredCheckTypeID").value = $("input[name='requiredCheckType']:checked").val();
		if($("input[name='requiredCheckType']:checked").val() === "택배함"){
			window.opener.document.getElementById("requiredMessageID").value = $("input[name='courierBoxMessage']").val();		
		} else if($("input[name='requiredCheckType']:checked").val() === "기타사항") {
			window.opener.document.getElementById("requiredMessageID").value = $("input[name='otherInfoMessage']").val();		
		}
		window.opener.document.getElementById("passwordCheckTypeID").value = $("input[name='passwordCheckType']:checked").val();
		window.opener.document.getElementById("passwordMessageID").value = $("input[name='passwordMessage']").val();
		
		// Step2. 자식 페이지를 close하는 부모 페이지의 JS 함수 실행
		$(opener.location).attr("href", "javascript:deliveryPreferencesCloseEvent()");
		
	} else if(window.dataFromParent === "newAddressBookPage") {
		$("#askDeliveryPreference", opener.document).css("display","none");
		$("#getDeliveryPreference", opener.document).css("display","block");
		$("#addressbookPreference", opener.document).val($("input[name='requiredCheckType']:checked").val());
		
		$(opener.location).attr("href", "javascript:deliveryPreferencesCloseEvent()");
	}
	
}