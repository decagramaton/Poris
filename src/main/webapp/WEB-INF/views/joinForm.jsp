<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <title>푸릇라이트 - 회원가입</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/joinForm_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/joinForm.js"></script>

</head>
<body>
    <header>
        <h1><a href="main"><img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png"></a></h1>
    </header>
    <section>
        <form action="askJoinForm" method="get" id="joinform">
            <div class="form_title">회원정보를 입력해주세요</div>
            <fieldset>
                <legend class="skip">회원가입 양식</legend>
                <ul>
                    <li>
                        <span class="id_bg"><!-- 배경이미지(이메일) --></span>
                        <span style="width:100%"><input type="text" name="user_id" id="user_id" placeholder="아이디(이메일)"></span>
                    </li>
                    <span id="uidNotInputErr" class="errorMsg">이메일을 입력하세요.</span>
                    <span id="uidNotAvailableErr" class="errorMsg">이메일을 올바르게 입력해주세요.</span>
                    <li>
                        <span class="pw_bg"><!-- 배경이미지(비밀번호) --></span>
                        <span style="width:100%"><input type="password" name="user_pw" id="user_pw" placeholder="비밀번호"></span>
                    </li>
                    <span id="user_pw_letter_combination" class="errorMsg">영문/숫자/특수문자 2가지 이상 조합 (8~20자)</span>
                    <span id="user_pw_character_pattern" class="errorMsg">3개 이상 연속되거나 동일한 문자/숫자 제외</span>
                    <span id="user_pw_duplicate_pattern" class="errorMsg">아이디(이메일) 제외</span>
                    <span id="user_pw_success" class="errorMsg">사용가능한 비밀번호입니다</span>
                    <li>
                        <span class="pw_check_bg"><!-- 배경이미지(비밀번호 확인) --></span>
                        <span style="width:100%"><input type="password" name="user_pw_check" id="user_pw_check" placeholder="비밀번호 확인"></span>
                    </li>
                    <span id="pw_no_match" class="errorMsg">새 비밀번호가 일치하지 않습니다.</span>
                    <span id="pw_match" class="errorMsg">새 비밀번호가 일치합니다.</span>
                    <li>
                        <span class="name_bg"><!-- 배경이미지(성함) --></span>
                        <span style="width:100%"><input type="text" name="user_name" id="user_name" placeholder="이름"></span>
                    </li>
                    <span id="uname_no_match" class="errorMsg">이름을 정확히 입력하세요.</span>
                    <li>
                        <span class="tel_bg"><!-- 배경이미지(연락처) --></span>
                        <span style="width:100%"><input type="tel" name="user_tel" id="user_tel" placeholder="휴대폰 번호"></span>
                    </li>
                    <span id="phone_no_match" class="errorMsg">휴대폰 번호를 정확하게 입력하세요.</span>
                </ul>
                <div class="agree_form">
                    <div class="all_agree_form">
                        <label>
                            <input type="checkbox" name="all_agree_y" id="all_agree_y">
                            <span class="all_agree_content">모두 확인하였으며 동의합니다.</span>
                            <div>
                                전체 동의에는 필수 및 선택 정보에 대한 동의가 포함되어 있으며, 개별적으로 동의를 선택 하실 수 있습니다. 선택 항목에 대한 동의를 거부하시는 경우에도 서비스 이용이 가능합니다.
                            </div>
                        </label>
                    </div>
                    <ul class="detail_agree_form">
                        <div class="wrapper">
                            <label>
                            <input type="checkbox" id="age_agree_check">
                                <span>[필수] 만 14세 이상입니다</span>
                            </label>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="coupang_agree_check">
                                <span>[필수] 쿠팡 이용약관 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="finance_agree_check">
                                <span>[필수] 전자금융거래 이용약관 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="user_info_collection_agree_check">
                                <span>[필수] 개인정보 수집 및 이용 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="user_info_share_agree_check">
                                <span>[필수] 개인정보 제3자 제공 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="user_info_for_marketing_agree_check">
                                <span>[선택] 마케팅 목적의 개인정보 수집 및 이용 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="marketing_receive_agree_check">
                                <span>[선택] 광고성 정보 수신 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="info_receive_style">
                            <input type="checkbox" id="email_receive_agree_check">
                            <span>[선택] 이메일 수신 동의</span>
                        </div>
                        <div class="info_receive_style">
                            <input type="checkbox" id="sms_receive_agree_check">
                            <span>[선택] SMS, SNS 수신 동의</span>
                        </div>
                        <div class="info_receive_style">
                            <input type="checkbox" id="app_receive_agree_check">
                            <span>[선택] 앱 푸시 수신 동의</span>
                        </div>
                    </ul>
                </div>
                <div class="join_btn">
                    <button type="submit" id="join_btn">동의하고 계속하기</button>
                </div>
            </fieldset>
        </form>
    </section>
    <div class="biz_register">
        <p>법인 고객이신가요? </p>
        <p>사업자 회원으로 전용 특가 혜택을 누려보세요. </p>
        <a href="https://login.coupang.com/corporation/member/landing-page">쿠팡비즈 간편가입
            <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M5.6812 2.43364C5.91414 2.18614 6.29156 2.15621 6.55912 2.35155L6.62358 2.40508L12.2902 7.73841C12.5499 7.98283 12.5685 8.38355 12.3459 8.6503L12.2902 8.70935L6.62358 14.0427C6.35546 14.295 5.93355 14.2822 5.6812 14.0141C5.44827 13.7666 5.44124 13.3881 5.65242 13.1328L5.70976 13.0717L10.86 8.22389L5.70976 3.37601C5.46227 3.14308 5.43234 2.76566 5.62767 2.49809L5.6812 2.43364Z" fill="#454F5B"></path>
            </svg>
        </a>
    </div>
    <footer>
        &copy; Coupang Corp. All rights reserved.
    </footer>
</body>

</html>