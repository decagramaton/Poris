package poris.fruitlight.dto;

import lombok.Data;

@Data
public class Coupon {
	private int couponId;
	private String type;  //원 or %
	private String kind;  //배송비 or 상품(카테고리별로 해도 재밌을듯)
	private int price;
	private String name;  //null => (if kind == "배송비") {kind} + price + type + "할인쿠폰" or 첫 구매
	private int discountRule;  //null => 금액제한없음 or 30000원이상 구매시
}
