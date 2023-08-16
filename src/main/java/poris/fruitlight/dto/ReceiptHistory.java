package poris.fruitlight.dto;

import lombok.Data;

/**
 * RECEIPT_HISTORY (주문상세내역) DTO
 * @author 이은지
 *
 */
@Data
public class ReceiptHistory {
	private int ORDER_NO;	//주문 번호
	private int PRODUCT_NO;	//상품번호
	private int PRICE;		//상품가격
	private int STOCK;		//상품수량
}
