package poris.fruitlight.dto;

import lombok.Data;

@Data
public class Cart {
	private int SHOPPER_NO;			//회원 no
	private int PRODUCT_NO;			//상품 no
	private int CART_PRODUCT_STOCK;	//장바구니상품수량
}
