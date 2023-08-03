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
    console.log($("#_AA01_KEEP_IN_LOCKER").is(":checked"));
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
