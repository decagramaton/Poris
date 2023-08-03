<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>쿠팡 로그인  폼</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/title_logo.png"></link>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/login.js"></script>
</head>
<body>
    <header>
        <h1><a href="main.html"><img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png"></a></h1>
    </header>
    <section>
        <form action="#" method="post" id="loginform">
            <fieldset>
                <legend class="skip">로그인 양식</legend>
                <ul>
                    <li>
                        <span class="id_bg"><!-- 배경이미지(메일) --></span>
                        <span><input type="text" name="user_id" placeholder="아이디(이메일)"></span>
                    </li>
                    <li class="error id_empty_error">아이디(이메일)을 입력해주세요</li>
                    <li class="error id_form_error">아이디(이메일)는 이메일 형식으로 입력해주세요</li>
                    <li>
                        <span class="pw_bg"><!-- 배경이미지(비밀번호) --></span>
                        <span><input type="password" name="user_pw" placeholder="비밀번호"></span>
                        <span class="pw_show_hide"></span>
                    </li>
                    <li class="error pw_error">비밀번호를 입력해주세요</li>
                </ul>
                <div class="btm">
                    <p>
                        <label>
                            <input type="checkbox" name="login_y" id="login_y">
                            <span>자동로그인</span>
                        </label>
                    </p>
                    <a href="#" class="idpw_search">아이디(이메일)/비밀번호 찾기</a>
                </div>
                <button type="submit" id="login_btn">로그인</button>
            </fieldset>
        </form>
        <a href="joinForm.html" class="join_link">회원가입</a>
    </section>
    <footer>
        &copy; Coupang Corp. All rights reserved.
    </footer>
</body>

</html>