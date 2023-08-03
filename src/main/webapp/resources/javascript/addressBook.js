/* 고재승
- 배송지 선택 페이지 HTML , CSS 구현
- Ajax 기반 배송지 정보 출력 기능 구현
- 추후 백엔드에서 배송지 변경, 배송지 선택 기능 추가 예정
*/

window.onload = init;

function init() {
    print_address_list();
}

function print_address_list() {
    const xhttp = new XMLHttpRequest();
			
    xhttp.onload = function() {
        let data = JSON.parse(xhttp.responseText);
        let html = "";
        data.forEach((item,index) => {
            if(index == 0){
                html += '<div class="address-card address-card-pick">';
            } else {
                html += '<div class="address-card">';
            }
            html += '   <div class="address-card__head">';
            html += '   	<div class="address-card__title">'+ item.recipientName +'</div>';
            html += '   </div>';
            html += '   <div class="address-card__body">';
            html += '      <div class="address-card__text address-card__text--address">'+ item.roadAddress + '</div>';
            html += '      <div class="address-card__text address-card__text--cellphone">'+ item.recipientCellphone + '</div>';
            html += '      <div class="address-card__text address-card__text--delivery-preference">' + item.deliverySummary + '</div>';
            html += '   </div>';
            html += '   <div class="address-card__foot">';
            html += '      <from action="#" method="post" class="address-card__form--pick">';
            html += '          <input name="recipientName" value="' + item.recipientName + '" type="hidden">';
            html += '          <input name="roadAddress" value="' + item.roadAddress + '" type="hidden">';
            html += '          <input name="recipientCellphone" value="' + item.recipientCellphone +'" type="hidden">';
            html += '          <input name="deliverySummary" value="' + item.deliverySummary + '" type="hidden">';
            html += '          <button class="addressBookFormSubmit" type="submit">';
            html += '              <span class="addressbook__text">선택</span>';
            html += '          </button>';
            html += '      </from>';
            html += '      <from action="#" method="get">';
            html += '          <button class="address-card__button--edit" type="submit">';
            html += '              <span class="addressbook__text">수정</span>';
            html += '          </button>';
            html += '      </from>';
            html += '   </div>';
            html += '</div>';
        });

        html += '<form class="addressBookNewForm" method="get" action="#">';
        html += '   <div class="addressbook__button-fixer">';
        html += '       <button type="submit" class="addressbook-new-button">';
        html += '           <i class="addressbook__icon--plus"></i>';
        html += '           <span class="addressbook__text ">배송지 추가</span>';
        html += '       </button>';
        html += '   </div>';
        html += '</form>';

        document.querySelector(".content-body-corset").innerHTML = html;
    }
    xhttp.open("GET", "../ajax/address_book_list.txt");
    xhttp.send();
}