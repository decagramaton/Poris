package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
		List<CartProduct> listProduct = cartProductService.getCartProduct(1);
		model.addAttribute("listProduct", listProduct);
		
		List<Coupon> listCoupon = couponService.getCoupon(1);
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
	@PostMapping("/changeStock")
	public String changeStock(CartProduct cartProduct, Model model) {
		cartProductService.changeStock(cartProduct);
		
		List<CartProduct> listProduct = cartProductService.getCartProduct(1);
		model.addAttribute("listProduct", listProduct);
		
		List<Coupon> listCoupon = couponService.getCoupon(1);
		model.addAttribute("listCoupon", listCoupon);
		
		/*return "redirect:/cart/";를 하면 안됨 어떤 상품을 선택했는지가 페이지에 남아있어야 함..
		return "cart"를 하면 model에 아무것도 없으니까 listProduct랑 lisCoupon이 없어서 상품이 아무것도 없는 페이지가 뜸

		어카지........ 쿠키 아니면 세션?*/
		
		return "cart";
	}

	//구매
	@RequestMapping("/buy")
	public String buy(HttpServletRequest request) {
		//구매할 상품 리스트
		String[] strPidList = request.getParameterValues("pidsChecked");
		for(String strPid : strPidList) {
			int pid = Integer.parseInt(strPid);
			cartProductService.deleteProduct(pid);
		}
		//사용할 쿠폰 리스트
		String[] strCidList = request.getParameterValues("cidsChecked");
		
		return "redirect:/cart/";
	}
}
