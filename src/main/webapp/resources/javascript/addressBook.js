
function selectAddressBook(count) {
	console.log("count : " + count);
	console.log("input[name='recipientName"+count+"']");
	
	// 받을 사람, 받을 주소, 연락처를 부모 페이지에 값 전달
	window.opener.document.getElementById("recipientName").innerHTML = $("input[name='recipientName"+count+"']").val();
	window.opener.document.getElementById("deliveryDetailAddress").innerHTML = $("input[name='streetAddress"+count+"']").val();
	window.opener.document.getElementById("deliveryTel").innerHTML = $("input[name='recipientTel"+count+"']").val();
	
	// 부모 페이지의 JS function 실행
	$(opener.location).attr("href", "javascript:deliveryAddressCloseEvent()");
}