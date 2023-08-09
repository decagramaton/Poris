package poris.fruitlight.dto;

import lombok.Data;

@Data
public class AddressBookParam {
	// 배송지 목록 관련 테이블 DTO
	private String recipientName;		// 받는 사람
	private String streetAddress;		// 받을 주소
	private String recipientTel;		// 받는 사람의 연락처
	private String recipientSummary;	// 배송 요청사항
}
