package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.AddressBookParam;

public interface AddressBookService {
	/**
	 * DB에 저장된 배송지의 정보를 모두 조회하는 메소드
	 * @author 고재승
	 * @return 배송지 정보의 목록을 반환합니다.
	 */
	public List<AddressBookParam> getAddressBookList();
	
	/**
	 * 수정된 배송지 정보를 전달 후, 성공 여부를 반환받는 메소드
	 * @param ChangeAddressBook - 받을 사람, 받을 주소, 받는 사람 연락처, 배송 요청사항
	 * @return true or false
	 */
	public boolean changeAddressBook(AddressBookParam ChangeAddressBook);
}
