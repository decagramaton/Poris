package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.service.CartProductService;
import poris.fruitlight.service.CouponService;

@Slf4j
@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource
	private CartProductService cartProductService;
	@Resource
	private CouponService couponService;
	
	@RequestMapping("/")
	public String cart(Model model) {
		log.info("실행");
		List<CartProduct> listProduct = cartProductService.getCartProduct(1);
		model.addAttribute("listProduct", listProduct);
		
		List<Coupon> listCoupon = couponService.getCoupon(1);
		//[price] 특성이 [java.lang.String] 유형에 없습니다. 에러..
		/*for(Coupon coupon : listCoupon) {
			String strPrice = "" + coupon.getPrice();
			log.info(strPrice);
		}*/
		model.addAttribute("listCoupon", listCoupon);
		
		return "cart";
	}
	
	//개별삭제
	@RequestMapping("/delete")
	public String delete(int pid) {
		cartProductService.deleteProduct(pid);
		return "redirect:/cart/";
	}
	
	//선택삭제 및 전체삭제
	@RequestMapping("/deleteChecked")
	public String deleteChecked(HttpServletRequest request) {
		String[] strPidList = request.getParameterValues("pidsChecked");
		for(String strPid : strPidList) {
			int pid = Integer.parseInt(strPid);
			cartProductService.deleteProduct(pid);
		}
		return "redirect:/cart/";
	}

	//수량변경
	@RequestMapping("/changeStock")
	public String changeStock(CartProduct cartProduct) {
		cartProductService.changeStock(cartProduct);
		return "redirect:/cart/";
	}

}
