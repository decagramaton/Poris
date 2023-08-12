package poris.fruitlight.dto;

import lombok.Data;

/**
 * 
 * @author 이은지
 *
 */
@Data
public class Coupon {
	//쿠폰 DTO
	private int COUPON_NO;		//쿠폰 no(sequence)
	private String COUPON_NAME;	//쿠폰 이름
	private String COUPON_TYPE;	//쿠폰 분류(원 or %)
	private String COUPON_KIND;	//쿠폰 종류(배송비 or 상품)
	private int DISCOUNT_PRICE;	//쿠폰 할인금액
	private int DISCOUNT_RULE;	//쿠폰 적용 조건 금액
}
