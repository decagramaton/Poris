package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.Coupon;

public interface CouponService {
	public List<Coupon> getCoupon(int uid);
}
