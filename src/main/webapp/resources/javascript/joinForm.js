/* 고재승
- 쿠팡 회원가입 HTML, CSS 구현
- 정규표현식 기반 유저 아이디(이메일) 데이터 유효성 검사 기능 구현
- 정규표현식 기반 유저 패스워드 데이터 3가지 유효성 검사 기능 구현
    - 영문/숫자/특수문자 2가지 이상 조합 (8~20자)
    - 3개 이상 연속되거나 동일한 문자/숫자 제외
    - 아이디(이메일) 제외
- 유저 패스워드 다시 입력 데이터 유효성 검사 기능 구현
- 유저 이름 데이터 유효성 검사 기능 구현
- 유저 연락처 데이터 유효성 검사 기능 구현
- 모든 유효성 조건을 만족하지 않을 시 form 제출 비활성화 기능 구현
*/

window.onload = init;

function init() {
    $("#user_id").click(checkEmptyUserID);
    $("#user_id").keyup(checkPattenUserID);

    $("#user_pw").click(checkEmptyPassword);
    $("#user_pw").keyup(checkPattenPassword);
    
    $("#user_pw_check").click(checkEmptyAgainPassword);
    $("#user_pw_check").keyup(checkEmptyAgainPassword);

    $("#user_name").click(checkEmptyUserName);
    $("#user_name").keyup(checkEmptyUserName);
    
    $("#user_tel").click(checkEmptyPhone);
    $("#user_tel").keyup(checkEmptyPhone);


    $("#all_agree_y").click(checkAllAgreeJoinForm);
}

function checkAllAgreeJoinForm() {
    if ($(event.target).is(':checked')){
        $(age_agree_check).prop('checked',true);
        $(coupang_agree_check).prop('checked',true);
        $(finance_agree_check).prop('checked',true);
        $(user_info_collection_agree_check).prop('checked',true);
        $(user_info_share_agree_check).prop('checked',true);
    } else {
        $(age_agree_check).prop('checked',false);
        $(coupang_agree_check).prop('checked',false);
        $(finance_agree_check).prop('checked',false);
        $(user_info_collection_agree_check).prop('checked',false);
        $(user_info_share_agree_check).prop('checked',false);
    }
}


function checkEmptyUserID () {
    if($("#user_id").val() === ""){
        $("#uidNotInputErr").css("display","block");
        $("#uidNotAvailableErr").css("display","none");
    } else {
        $("#uidNotInputErr").css("display","none");
    }
}
function checkPattenUserID () {
    let email_pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if(!email_pattern.test($('#user_id').val())){
        $("#uidNotInputErr").css('display','none');
        $("#uidNotAvailableErr").css("display","block");
    } else {
        $("#uidNotAvailableErr").css("display","none");
    }
}


function checkEmptyPassword () {
    if($("#user_pw").val() === ""){
        $("#user_pw_letter_combination").css("display","block");
        $("#user_pw_character_pattern").css("display","block");
        $("#user_pw_duplicate_pattern").css("display","block");
    }
}
function checkPattenPassword () {
    let isLetterCombination = false;
    let isCharanterPattern = false;
    let isDuplicatePattern = false;

    // 영문/숫자/특수문자 2가지 이상 조합 (8~20자)
    let letter_combination_pattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
    if(letter_combination_pattern.test($("#user_pw").val())) {
        $("#user_pw_letter_combination").css("color","green");
        isLetterCombination = true;
    } else {
        isLetterCombination = false;
        $("#user_pw_letter_combination").css("color","#e52528");
    }


    // 3개 이상 연속되거나 동일한 문자/숫자 제외
    let character_pattern = /(\w)\1\1/;
    if(character_pattern.test($("#user_pw").val())){
        isCharanterPattern = false;
        $("#user_pw_character_pattern").css("color","#e52528");
    } else {
        isCharanterPattern = true;
        $("#user_pw_character_pattern").css("color","green");
    }

    
    // 아이디(이메일) 제외
    let split_email = $("#user_id").val().split("@");
    let front_email = split_email[0];
    let id_pw_equal_patten = new RegExp(`${front_email}`,'i');
    if(!id_pw_equal_patten.test($("#user_pw").val())){
        isDuplicatePattern = true;
        $("#user_pw_duplicate_pattern").css("color","green");
    } else {
        isDuplicatePattern = false;
        $("#user_pw_duplicate_pattern").css("color","#e52528");
    }

    if(isLetterCombination&&isCharanterPattern&&isDuplicatePattern){
        $("#user_pw_letter_combination").css("display","none");
        $("#user_pw_character_pattern").css("display","none");
        $("#user_pw_duplicate_pattern").css("display","none");
        $("#user_pw_success").css("display","block");
        $("#user_pw_success").css("color","green");

    } else {
        $("#user_pw_letter_combination").css("display","block");
        $("#user_pw_character_pattern").css("display","block");
        $("#user_pw_duplicate_pattern").css("display","block");
        $("#user_pw_success").css("display","none");
    }
}


function checkEmptyAgainPassword () { 
    if($("#user_pw_check").val() === $("#user_pw").val()){
        $("#pw_match").css("display","block");
        $("#pw_match").css("color","green");
        $("#pw_no_match").css("display","none");
    } else {
        $("#pw_match").css("display","none");
        $("#pw_no_match").css("display","block");
    }
}


function checkEmptyUserName () { 
    if($("#user_name").val() === "") {
        $("#uname_no_match").css("display","block");
    } else {
        $("#uname_no_match").css("display","none");
    }
}


function checkEmptyPhone () { 
    let tel_partten = /^(010)-[0-9]{4}-[0-9]{4}$/;
    if($("#user_tel").val() === "" || !tel_partten.test($(user_tel).val())) {
        $("#phone_no_match").css("display","block");
    } else {
        $("#phone_no_match").css("display","none");
    }
}



function checkValidation() {

    // 모든 에러 메시지를 보여주지 않도록 초기화
	$(".errorMsg").each((index,el) => {$(el).css("display","none")});

    // 유효성 검사에서 실패시 form의 제출기능 비활성화
	if(isSuccess == false) {
		event.preventDefault();
	}
}