package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poris.fruitlight.dao.ShippingAddressDao;
import poris.fruitlight.dto.AddressBook;
import poris.fruitlight.dto.Shopper;

@Service
public class AddressBookServiceImpl implements AddressBookService{
	
	@Autowired
	private ShippingAddressDao shippingAddressDao;
	
	@Override
	public List<AddressBook> getAddressBookList(Shopper shopper) {
		
		List<AddressBook> AddrList = shippingAddressDao.selectShippingAddressListById(shopper);

		if(AddrList == null) {
			return null;
		}
		
		return AddrList;
	}
	
	@Override
	public boolean changeAddressBook(AddressBook addressBook) {
		
		// Step1. 기존 AddressBook 조회 후 객체 저장
		// 배송지 목록 JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결 시 제거
		AddressBook addrbook = new AddressBook();
		addrbook.setShippingName("나의 집");
		addrbook.setShippingAddress("서울 중구 충무로");
		addrbook.setReceiverTel("010-1234-1234");
		addrbook.setShippingPreference("직접 받고 부재시 문 앞");
		
		// Step2. 없으면 예외처리 및 변경 실패 메세지 반환
		if(addrbook == null) {
			return false;
		} else {
			// Step3. 기존 AddressBook이 존재하면 값 변경
			addrbook.setShippingName(addressBook.getShippingName());
			addrbook.setShippingAddress(addressBook.getShippingAddress());
			addrbook.setReceiverTel(addressBook.getReceiverTel());
			addrbook.setShippingPreference(addressBook.getShippingPreference());
			
			// Step4. DB에 Update
			// int result = AddressBookDao.updateAddressBook(addrbook);
			// if(result == 1) { return true; }
			// else { return false; }
			return true;
		}
	}
	
	
	@Override
	public void createAddressBook(AddressBook addressBook) {
		shippingAddressDao.insertShippingAddress(addressBook);
		
	}
}
