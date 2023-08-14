<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div class="container">
			<div id="header1" class="headertop d-block">
				<div id="headerIcon" class="headerIcon">
					<c:if test="${ShopperInfo == null}">
						<a class="mr-2 mt-2 text-right" href="login">
							로그인
						</a>
					</c:if>
					<c:if test="${ShopperInfo != null}">
						<a class="mr-2 mt-2 text-right" href="logout">
							로그아웃
						</a>
					</c:if>
					<a class="mr-2 mt-2 text-right" href="order">
						장바구니
					</a>
					<c:if test="${ShopperInfo != null}">
		            	<a class="mr-2 mt-2 text-right" href="mypageOrdered?sid=${ShopperInfo.shopperNo}">
		            		마이페이지
		                </a>
		            </c:if>				
				</div>
			</div>
			<div id="header2" class="headerlogowrapper">
				<div id="headerLogo" class="headerLogo">
					<a href="main">
						<img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png" width="500" height="200"/>				
					</a>
				</div>
<%-- 			<div id="headerSearch" class="headerSearch">
					<form id="headerSearchForm">
						<input type="text" id="headerSearchKeyword" class="headerSearchKeyword" name="search" placeholder="과일 판매 쇼핑몰!" autocomplete="off" value="">
	                 	<button id="headerSearchBtn" class="headerSearchBtn" type="submit">
							<img id="headerSearchBtnImage" class="headerSearchBtnImage" title="검색" src="${pageContext.request.contextPath}/resources/images/search.png">	                 	
	                 	</button>
					</form>
				</div>--%>
			</div>
			<div id="menu" class="menu d-flex">
				<!-- <div class="rowbtn2">
	      			<button id="menu-btn2" class="menu-btn2" onclick="menuprev()" disabled><img/></button>
				</div> -->
           		<div id="menus" class="menus rowmenus" style="text-align: left; font-size: 14px;">
              	   <label class="col">
               		   <a href="list?search=못난이">
                  	       <span>못난이 과일</span>
               		   </a>
              	   </label>
              	   <label class="col">
               		   <a href="list?search=수박">
                  			<span>수박</span>
               	       </a>
              	   </label>
                   <label class="col">
                   		<a href="list?search=참외">
                         	<span>참외</span>
                      	</a>
                   </label>
                   <label class="col">
                      	<a href="list?search=체리">
                         	<span>체리</span>
                      	</a>
                   </label>
                   <label class="col">
                      	<a href="list?search=아보카도">
                         	<span>아보카도</span>
                      	</a>
                   </label>
                   <label class="col">
                      	<a href="list?search=망고">
                         	<span>망고</span>
                      	</a>
                   </label>
                   <label class="col">
                      	<a href="list?search=바나나">
                         	<span>바나나</span>
                      	</a>
                   </label>
                   <label class="col">
                   		<a href="list?search=오렌지">
                         	<span>오렌지</span>
                      	</a>
                   </label>
         		</div>
         		<!-- <div class="rowbtn1">
	          		<button id="menu-btn1" class="menu-btn1" onclick="menunext()"><img/></button>
         		</div> -->
       		</div>	
		</div>
