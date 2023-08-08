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
		
		// JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 변경 필수
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

}
