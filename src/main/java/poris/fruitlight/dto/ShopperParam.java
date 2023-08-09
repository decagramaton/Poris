package poris.fruitlight.dto;

import lombok.Data;

@Data
public class ShopperParam {
	// 결제 페이지 - 구매자 정보 데이터 DTO
	private String name;		// 구매자 실명
	private String email;		// 구매자 이메일 - 결제 후 주문 내역 이메일 전송
	private String tel;			// 구매자 연락처
}
