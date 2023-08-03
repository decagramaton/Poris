package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.service.CartService;

@Controller
public class CartController {
	@Resource
	private CartService cartService;
	
	@RequestMapping("/cart")
	public String cart(Model model) {
		List<CartProduct> listProduct = cartService.getCartProduct(1);
		
		model.addAttribute("listProduct", listProduct);
		return "cart";
	}
}
