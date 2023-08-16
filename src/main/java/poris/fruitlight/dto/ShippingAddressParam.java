package poris.fruitlight.dto;

import lombok.Data;

@Data
public class ShippingAddressParam {
	// 결제 페이지 - 받는 사람 정보를 출력에 사용하는 DTO
	private int shippingAddressNo;
	private String name;		// 받는 사람 이름
	private String address;		// 보내는 주소
	private String tel;			// 받는 사람의 연락처
}
