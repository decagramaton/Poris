package poris.fruitlight.dto;

import lombok.Data;

/**
 * 상품상세 -> 결제 또는 장바구니 -> 결제 DTO 객체
 * @author 이은지
 *
 */
@Data
public class OrderParam {
	private int productNo;
	private String productName;
	private int productStock;
	private int productPrice;
}