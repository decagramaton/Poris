package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.Coupon;

/**
 * 
 * @author 이은지
 *
 */
public interface CouponService {
	/**
	 * 
	 * @param uid(보여줄 쿠폰 목록을 가진 현재 로그인한 회원 id)
	 * @return List<Coupon>(보유한 쿠폰 리스트)
	 */
	public List<Coupon> getCoupon(int uid);
}
