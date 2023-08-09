package poris.fruitlight.dto;

import lombok.Data;

@Data
public class DeliveryParam {
	// 결제 페이지 - 주문 상품 목록 출력 관련 DTO
	private String name;				// 배송 제품명
	private int stock;					// 배송 제품 개수
	private int productPrice;			// 배송 제품 가격
}