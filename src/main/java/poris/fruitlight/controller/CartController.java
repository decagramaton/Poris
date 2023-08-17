package poris.fruitlight.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import oracle.net.aso.c;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.OrderParam;
import poris.fruitlight.dto.ProductList;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.CartService;
import poris.fruitlight.util.AlertScript;

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
	
	private Shopper loginShopper;
	
	/**
	 * 
	 * @param model
	 * @return 장바구니(cart) 페이지
	 */
	@RequestMapping("/cart")
	public String cart(HttpServletResponse response, HttpSession session, Model model) {
		loginShopper = (Shopper) session.getAttribute("ShopperInfo");
		if(loginShopper == null) {
			try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
		} else {
			List<CartProduct> listProduct = cartProductService.getCartProduct(loginShopper.getShopperNo());
			
			for(CartProduct cartProduct : listProduct) {
				cartProduct.setBase64Img(Base64.getEncoder().encodeToString(cartProduct.getMEDIA_DATA()));
		    }
			
			model.addAttribute("listProduct", listProduct);
			
			List<Coupon> listCoupon = cartProductService.getCoupon(1);
			model.addAttribute("listCoupon", listCoupon);
		}
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
		Cart cart = new Cart();
		cart.setSHOPPER_NO(loginShopper.getShopperNo());
		cart.setPRODUCT_NO(pno);
		cartProductService.deleteProduct(cart);
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
			Cart cart = new Cart();
			cart.setSHOPPER_NO(loginShopper.getShopperNo());
			cart.setPRODUCT_NO(pno);
			cartProductService.deleteProduct(cart);
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
		cart.setSHOPPER_NO(loginShopper.getShopperNo());
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
	@GetMapping("/cart/buyFromCart")
	public String buyFromCart(
			HttpSession session,
			@RequestParam List<Integer> pnos, 
			@RequestParam List<String> pnames,
			@RequestParam List<String> options,
			@RequestParam List<Integer> stocks,
			@RequestParam List<Integer> prices,
			@RequestParam int totalPrice,
			@RequestParam int discountPrice,
			@RequestParam int shippingPrice,
			@RequestParam int orderPrice,
			@RequestParam List<Integer> cnos) {
		
		List<OrderParam> orderParamList = new ArrayList<>();
		
		for(int i=0; i<pnos.size(); i++) {
			OrderParam oderParam = new OrderParam();
			oderParam.setProductNo(pnos.get(i));
			oderParam.setProductName(pnames.get(i));
			oderParam.setProductOption(options.get(i));
			oderParam.setProductStock(stocks.get(i));
			oderParam.setProductPrice(prices.get(i));
			
			orderParamList.add(oderParam);
		}
		
		session.setAttribute("orderParamList", orderParamList);
		session.setAttribute("totalPrice", totalPrice);
		session.setAttribute("discountPrice", discountPrice);
		session.setAttribute("shippingPrice", shippingPrice);
		session.setAttribute("orderPrice", orderPrice);
		session.setAttribute("couponList", cnos);
		session.setAttribute("from", "cart");
		
		return "redirect:/order";
	}
}
