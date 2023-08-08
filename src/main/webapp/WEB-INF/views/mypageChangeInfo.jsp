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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypageChangeInfo.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascript/mypageChangeInfo.js"></script>
	</head>
<%@ include file="/WEB-INF/views/header.jsp" %>
		<div class="container">
			<div class="bodycontainer">
				<div class="leftside">
					<nav>
						<div class="mymenu">
							<div class="mymenu-menu">
								<a class="mymenu-menu-title" href="mypageOrdered">주문 내역</a>
							</div>
							<div class="mymenu-menu" style="border-bottom: 0px;">
								<a class="mymenu-menu-title" href="mypageChangeInfo">내 정보 변경</a>
							</div>
						</div>
					</nav>
				</div>
				<div class="content">
					<div class="mycoupang-main-container">
						<div class="mycoupang-main-title">
							<span>내 정보 변경</span>
						</div>
					</div>
					<%-- <div class="noPasswordInfo">
						<form>
							<div class="passwordRequest">
								<span>비밀번호 확인</span>
								<input type="text"/>
								<button id="headerSearchBtn" class="headerSearchBtn" type="button">
									<img id="headerSearchBtnImage" class="headerSearchBtnImage" title="검색" src="${pageContext.request.contextPath}/resources/images/search.png">	                 	
			                 	</button>
							</div>
						</form>
					</div> --%>
					<table class="changeInfo">
						<tbody>
							<tr>
								<th scope="row">아이디</th>
								<td>
									<div class="infoForm id">
										<span>sfasffsa@poris.com</span>
										<button id="emailChange" class="d-inline-block" onclick="openEmailChange()">이메일 변경하기</button>
										<button id="emailCancel" class="d-none" onclick="openEmailChangeCancel()">이메일 변경취소</button>
										<form id="changeIdForm"class="d-none changeForm">
											<input type="text" value="">
											<button type="submit">인증메일 보내기</button>
										</form>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">이름</th>
								<td class="infoForm name"> 
									<span> 김진성 </span>
								</td>
							</tr>
							<tr>
								<th scope="row">휴대폰 번호</th>
								<td>
									<div class="infoForm tel">
										<span>01012345678</span>
										<button id="telChange" class="d-inline-block" onclick="openTelChange()">휴대폰 번호 변경하기</button>
										<button id="telCancel" class="d-none" onclick="openTelChangeCancel()">휴대폰 번호 변경취소</button>
										<form id="changeTelForm" class="d-none changeForm">
											<input type="text" value="">
											<button type="submit">인증번호 보내기</button>
										</form>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">비밀번호 변경</th>
								<td>
									<div class="pwForm">
										<form>
											<div>
												<span style="padding-right: 30px;">현재 비밀번호</span>
												<input type="password" value="">
											</div>
											<div>
												<span style="padding-right: 46px;">새 비밀번호</span>
												<input type="password" value=""><br>
											</div>
											<div>
												<span style="padding-right: 14px;">비밀번호 재입력</span>
												<input type="password" value=""><br>
											</div>
											<button type="submit">비밀번호 변경</button>
										</form>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">배송지</th>
								<td>
									<div class="infoForm DeliverAddress">
										<span>서울특별시 종로구 창경궁로 254</span>
										<button id="daChange" class="d-inline-block" onclick="openDAChange()">배송지 변경하기</button>
										<button id="daCancel" class="d-none" onclick="openDAChangeCancel()">배송지 변경취소</button>
										<form id="changeDAForm" class="d-none changeForm">
											<div>
												<span style="padding-right: 50px;">주소</span>
												<input type="text" value="" style="width:500px;">
											</div>
											<div>
												<span style="padding-right: 14px;">상세 주소</span>
												<input type="text" value="" style="width:400px;">
											</div>
											<button type="submit">변경하기</button>
										</form>
									</div>	
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>