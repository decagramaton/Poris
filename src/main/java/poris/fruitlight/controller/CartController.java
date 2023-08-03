package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.service.CartService;
import poris.fruitlight.service.CouponService;

@Slf4j
@Controller
public class CartController {
	@Resource
	private CartService cartService;
	@Resource
	private CouponService couponService;
	
	@RequestMapping("/cart")
	public String cart(Model model) {
		List<CartProduct> listProduct = cartService.getCartProduct(1);
		model.addAttribute("listProduct", listProduct);
		
		List<Coupon> listCoupon = couponService.getCoupon(1);
		//[price] 특성이 [java.lang.String] 유형에 없습니다. 에러..
		for(Coupon coupon : listCoupon) {
			String strPrice = "" + coupon.getPrice();
			log.info(strPrice);
		}
		model.addAttribute("listCoupon", listCoupon);
		
		return "cart";
	}
}
