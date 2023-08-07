//검색기능
function validation(){
	if($("#headerSearchKeyword").val()==""){
		alert("검색하고 싶은 내용을 입력하세요.");
		console.log("키워드 없음");
		return false;
	}
	console.log("정상 실행");
	return true;
}
$(document).ready(function(){
	$("#headerSearchBtn").click(function(){
		var check = validation();
	
		if(check){
			console.log("check 실행");
			let searchValue = $("#headerSearchKeyword").val();
			$("#headerSearchForm").attr("action","list?pname="+searchValue);
			$("#headerSearchForm").submit();
		}
	});
});
	
//헤더 메뉴 옆으로 넘기기
function menuprev(){
	$("#menu-btn2").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left-gray@2x.png)");
	$("#menu-btn1").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right@2x.png)");
	$("#menus").css("transform","translateX(0px)")
	$("#menu-btn2").attr("disabled",true);
	$("#menu-btn1").attr("disabled",false);
}
function menunext(){
	$("#menu-btn1").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right-gray@2x.png)");
	$("#menu-btn2").css("backgroundImage","url(//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left@2x.png)");
	$("#menus").css("transform","translateX(-190px)")
	$("#menu-btn1").attr("disabled",true);
	$("#menu-btn2").attr("disabled",false);
}