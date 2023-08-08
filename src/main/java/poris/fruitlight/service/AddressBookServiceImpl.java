package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.AddressBookParam;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;

@Service
public class AddressBookServiceImpl implements AddressBookService{
	
	@Override
	public List<AddressBookParam> getAddressBookList() {
		
		// 배송지 목록 JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 제거
		List<AddressBookParam> AddrList = new ArrayList<>();
		for(int i=1; i<=5; i++) {
			AddressBookParam addrBook = new AddressBookParam();
			addrBook.setRecipientName("받을사람 테스트 내용"+i);
			addrBook.setStreetAddress("받을주소 테스트 내용"+i);
			addrBook.setRecipientSummary("직접 받고 부재 시 문 앞"+i);
			addrBook.setRecipientTel("010-1234-123"+i);
			AddrList.add(addrBook);
		}
		
		return AddrList;
	}
	
	@Override
	public boolean changeAddressBook(AddressBookParam ChangeAddressBook) {
		
		// Step1. 기존 AddressBook 조회 후 객체 저장
		// 배송지 목록 JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결 시 제거
		AddressBookParam addrbook = new AddressBookParam();
		addrbook.setRecipientName("나의 집");
		addrbook.setStreetAddress("서울 중구 충무로");
		addrbook.setRecipientTel("010-1234-1234");
		addrbook.setRecipientSummary("직접 받고 부재시 문 앞");
		
		// Step2. 없으면 예외처리 및 변경 실패 메세지 반환
		if(addrbook == null) {
			return false;
		} else {
			// Step3. 기존 AddressBook이 존재하면 값 변경
			addrbook.setRecipientName(ChangeAddressBook.getRecipientName());
			addrbook.setStreetAddress(ChangeAddressBook.getStreetAddress());
			addrbook.setRecipientTel(ChangeAddressBook.getRecipientTel());
			addrbook.setRecipientSummary(ChangeAddressBook.getRecipientSummary());
			
			// Step4. DB에 Update
			// int result = AddressBookDao.updateAddressBook(addrbook);
			// if(result == 1) { return true; }
			// else { return false; }
			return true;
		}
	}
}
