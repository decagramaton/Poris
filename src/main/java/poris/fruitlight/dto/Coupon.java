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
	private int couponId;		//쿠폰 id(sequence)
	private String type;		//쿠폰 분류(원 or %)
	private String kind;		//쿠폰 종류(배송비 or 상품)
	private int price;			//쿠폰 할인금액
	private String name;		//쿠폰 이름
	private int discountRule;	//쿠폰 적용 조건 금액
}
