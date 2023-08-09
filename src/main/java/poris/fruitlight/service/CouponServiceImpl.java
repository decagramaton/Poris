package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Coupon;

/**
 * 
 * @author 이은지
 *
 */
@Slf4j
@Service
public class CouponServiceImpl implements CouponService {
	@Override
	public List<Coupon> getCoupon(int uid) {
		List<Coupon> list = new ArrayList<>();
		//10000원 첫 구매 금액제한없음
		Coupon coupon1 = new Coupon();
		coupon1.setCouponId(1);
		coupon1.setType("원");
		coupon1.setKind("상품");
		coupon1.setPrice(10000);
		coupon1.setName("첫 구매");
		coupon1.setDiscountRule(0);
		list.add(coupon1);
		
		//10% null 30000
		Coupon coupon2 = new Coupon();
		coupon2.setCouponId(2);
		coupon2.setType("%");
		coupon2.setKind("상품");
		coupon2.setPrice(10);
		coupon2.setName(null);
		coupon2.setDiscountRule(30000);
		list.add(coupon2);
		
		//3000원 배송비 null 10000
		Coupon coupon3 = new Coupon();
		coupon3.setCouponId(3);
		coupon3.setType("원");
		coupon3.setKind("배송비");
		coupon3.setPrice(3000);
		coupon3.setName(null);
		coupon3.setDiscountRule(10000);
		list.add(coupon3);
		
		return list;
	}

}
