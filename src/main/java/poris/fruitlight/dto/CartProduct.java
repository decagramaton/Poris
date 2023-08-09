package poris.fruitlight.dto;

import lombok.Data;

/**
 * 
 * @author 이은지
 *
 */
@Data
public class CartProduct {
	//장바구니 상품  DTO
	private int pid;				//상품 id(sequence)
	private byte[] img;				//상품 이미지
	private String name;			//상품 이름
	private String option;			//상품 옵션
	private int price;				//상품 가격
	private int stock;				//상품 수량
	private int shippingPrice;		//배송비
	private int shippingFreeRule;	//배송비 무료 조건 금액
}
