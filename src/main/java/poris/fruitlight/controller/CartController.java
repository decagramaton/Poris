package poris.fruitlight.controller;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import oracle.net.aso.c;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.ProductList;
import poris.fruitlight.service.CartService;

/**
 * 
 * @author 이은지
 *
 */
@Slf4j
@Controller
public class CartController {
	@Resource
	private CartService cartProductService;
	
	/**
	 * 
	 * @param model
	 * @return 장바구니(cart) 페이지
	 */
	@RequestMapping("/cart")
	public String cart(Model model) {
		List<CartProduct> listProduct = cartProductService.getCartProduct(1);
		
		for(CartProduct cartProduct : listProduct) {
			cartProduct.setBase64Img(Base64.getEncoder().encodeToString(cartProduct.getMEDIA_DATA()));
	      }
		
		model.addAttribute("listProduct", listProduct);
		
		List<Coupon> listCoupon = cartProductService.getCoupon(1);
		model.addAttribute("listCoupon", listCoupon);
		
		return "cart";
	}
	
	/**
	 * 
	 * @param pid(삭제할 상품의 no)
	 * @return 리다이렉트로 장바구니(cart) 페이지
	 */
	//개별삭제
	@RequestMapping("/cart/delete")
	public String delete(int pno) {
		cartProductService.deleteProduct(pno);
		return "redirect:/cart";
	}
	
	/**
	 * 
	 * @param request(ajax로 삭제할 상품의 no 리스트)
	 * @return 리다이렉트로 장바구니(cart) 페이지
	 */
	//선택삭제 및 전체삭제
	@RequestMapping("/cart/deleteChecked")
	public String deleteChecked(@RequestParam List<Integer> pnos) {
		for(Integer pno : pnos) {
			cartProductService.deleteProduct(pno);
		}
		return "redirect:/cart";
	}

	/**
	 * 
	 * @param cartProduct(수량 변경할 상품 객체) 
	 * @param model
	 * @return 장바구니(cart) 페이지
	 */
	//수량변경
	@RequestMapping("/cart/changeStock")
	public void changeStock(int pno, int stock) {
		Cart cart = new Cart();
		cart.setSHOPPER_NO(1);
		cart.setPRODUCT_NO(pno);
		cart.setCART_PRODUCT_STOCK(stock);
		
		cartProductService.changeStock(cart);
	}

	/**
	 * 
	 * @param request(ajax로 삭제할 상품의 id 리스트)
	 * @return 리다이렉트로 장바구니(cart) 페이지
	 */
	//구매
	@RequestMapping("/cart/buyFromCart")
	public String buyFromCart(HttpServletRequest request) {
		//구매할 상품 리스트
		String[] strPidList = request.getParameterValues("pidsChecked");
		for(String strPid : strPidList) {
			int pid = Integer.parseInt(strPid);
			cartProductService.deleteProduct(pid);
		}
		//사용할 쿠폰 리스트
		String[] strCidList = request.getParameterValues("cidsChecked");
		
		return "order";
	}
}
