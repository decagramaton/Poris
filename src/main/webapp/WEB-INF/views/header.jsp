<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div class="container">
			<div id="header" class="header d-block">
				<div id="headerLogo" class="headerLogo">
					<a href="main">
						<img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png" width="200" height="100"/>				
					</a>
				</div>
				<div id="headerSearch" class="headerSearch">
					<form id="headerSearchForm">
						<input type="text" id="headerSearchKeyword" class="headerSearchKeyword" name="pname" placeholder="과일 판매 쇼핑몰!" autocomplete="off" value="">
	                 	<button id="headerSearchBtn" class="headerSearchBtn" type="button">
							<img id="headerSearchBtnImage" class="headerSearchBtnImage" title="검색" src="${pageContext.request.contextPath}/resources/images/search.png">	                 	
	                 	</button>
					</form>
				</div>
				<div id="headerIcon" class="headerIcon">
					<a class="mr-2 mt-2 text-right" href="detailView">
						<img src="${pageContext.request.contextPath}/resources/images/detailview.png" width="40" height="40"/>
					</a>
					<a class="mr-2 mt-2 text-right" href="order">
						<img src="${pageContext.request.contextPath}/resources/images/cart.png" width="40" height="40"/>
					</a>
					<a class="mr-2 mt-2 text-right" href="login">
						<img src="${pageContext.request.contextPath}/resources/images/person.png" width="40" height="40"/>
					</a>
					<a class="mr-2 mt-2 text-right" href="mypageOrdered">
						<img src="${pageContext.request.contextPath}/resources/images/mypage.png" width="40" height="40"/>
					</a>   					
				</div>
			</div>
			<div id="menu" class="menu">
      			<button id="menu-btn1" class="menu-btn1" onclick="menunext()"><img/></button>
               		<div id="menus" class="menus" style="text-align: left; font-size: 14px;">
                  		<label>
                   			<a href="list?pname=수박">
                      			<span>수박</span>
                   			</a>
                  		</label>
	                   <label>
	                   		<a href="list?pname=참외">
	                         	<span>참외</span>
	                      	</a>
	                   </label>
	                   <label>
	                      	<a href="list?pname=체리">
	                         	<span>체리</span>
	                      	</a>
	                   </label>
	                   <label>
	                      	<a href="list?pname=아보카도">
	                         	<span>아보카도</span>
	                      	</a>
	                   </label>
	                   <label>
	                      	<a href="list?pname=망고">
	                         	<span>망고</span>
	                      	</a>
	                   </label>
	                   <label>
	                      	<a href="list?pname=바나나">
	                         	<span>바나나</span>
	                      	</a>
	                   </label>
          			</div>
          		<button id="menu-btn2" class="menu-btn2" onclick="menuprev()" disabled><img/></button>
       		</div>	
		</div>
