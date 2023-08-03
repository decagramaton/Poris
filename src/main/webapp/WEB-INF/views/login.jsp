<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>하얀과일 로그인  폼</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/login.js"></script>
</head>
<body>
    <header>
        <h1><a href="main.html"><img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png"></a></h1>
    </header>
    <section>
        <form action="login/askLogin" method="post" id="loginform">
            <fieldset>
                <legend class="skip">로그인 양식</legend>
                <ul>
                    <li>
                        <span class="id_bg"><!-- 배경이미지(메일) --></span>
                        <span>
                        	<c:if test="${loginParam != null}">
	                        	<input type="text" name="userId" placeholder="아이디(이메일)" value="${loginParam.userId}">
                        	</c:if>
                        	<c:if test="${loginParam == null}">
	                        	<input type="text" name="userId" placeholder="아이디(이메일)">
                        	</c:if>
                        </span>
                    </li>
                    <li class="error id_empty_error">아이디(이메일)을 입력해주세요</li>
                    <li class="error id_form_error">아이디(이메일)는 이메일 형식으로 입력해주세요</li>
                    <li>
                        <span class="pw_bg"><!-- 배경이미지(비밀번호) --></span>
                        <span>
                        	<c:if test="${loginParam != null}">
                        		<input type="password" name="userPw" placeholder="비밀번호" value="${loginParam.userId}">
                        	</c:if>
                        	<c:if test="${loginParam == null}">
                        		<input type="password" name="userPw" placeholder="비밀번호">
                        	</c:if>
                        </span>
                        <span class="pw_show_hide"></span>
                    </li>
                    <li class="error pw_error">비밀번호를 입력해주세요</li>
                </ul>
                <div class="btm">
                    <p>
                        <label>
                            <input type="checkbox" name="autoLogin" id="login_y">
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