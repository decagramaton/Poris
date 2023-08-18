<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<title>마이페이지 - 내정보 변경</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypageleftside.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypageShopperDelete.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/header.js"></script>
	</head>
	<body>
<%@ include file="/WEB-INF/views/headersimple.jsp" %>
		<div class="container">
			<div class="bodycontainer">
				<%@ include file="/WEB-INF/views/mypageleftside.jsp" %>
				
				<h1>회원 탈퇴</h1>
				
				<div class="agree_form">			
					<div class="controls">
						<div class="text" id="agreement_content_1">
							<p><span style="font-size:18px;"><strong>회원 탈퇴&nbsp;동의</strong></span></p>
							<p><strong>수집하는 개인정보의 항목</strong></p>
							<ul>
								<li>회사는 회원가입, 상담, 콘텐츠구매, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
								<p>- 필수사항 : 아이디, 비밀번호, 이름, 휴대폰 번호</p>
								</li>
							</ul>
							<p><strong>자동수집하는 개인정보의 항목</strong></p>
							<ul>
								<li>서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
								<p>- IP Address, 쿠키, 접속로그, 서비스 이용 기록, 불량 이용 기록, 결제기록, OS버전, 브라우저 모델명</p>
								</li>
							</ul>
						</div>
						<div class="confirm">			
							<label for="accept_agreement_1">						
								<input type="checkbox" name="acceptAgreement" value="Y" id="acceptAgreement">
								[필수] 개인정보수집 이용.동의에 동의합니다.
							</label>
						</div>
					</div>
				</div>
                <div class="join_btn">
                    <button type="submit" id="join_btn">회원 탈퇴</button>
                </div>
			</div>
		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>