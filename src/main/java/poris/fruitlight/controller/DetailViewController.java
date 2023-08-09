package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.detailViewProduct;
import poris.fruitlight.service.DetailViewService;

@Slf4j
@Controller
@RequestMapping("/detailView")
public class DetailViewController {
	@Resource
	private DetailViewService detailViewService;
	
	@GetMapping("/")
	public String detailView(Model model) {
		detailViewProduct product = detailViewService.getProduct(1);
		model.addAttribute("product", product);
		List<detailViewProduct> optionList = detailViewService.getOptions(product.getName());
		model.addAttribute("optionList", optionList);
		return "detailView";
	}
	
	//장바구니 담기
	@RequestMapping("/addCartProduct")
	public String addCartProduct(HttpServletRequest request) {
		List<CartProduct> list = new ArrayList<CartProduct>();
		
		String[] strPidList = request.getParameterValues("pids");
		String[] strStockList = request.getParameterValues("stocks");
		int i = 0;
		for(i=0; i<strPidList.length; i++) {
			CartProduct product = new CartProduct();
			product.setPid(Integer.parseInt(strPidList[i]));
			product.setStock(Integer.parseInt(strStockList[i]));
			list.add(product);
		}
		
		detailViewService.addToCart(list);
		return "redirect:/detailView";
	}
	
	//바로구매
	@RequestMapping("/buyDirect")
	public String buyDirect(HttpServletRequest request) {
		//List<CartProduct> list = new ArrayList<CartProduct>();
		
		String[] strPidList = request.getParameterValues("pids");
		String[] strStockList = request.getParameterValues("stocks");
		int i = 0;
		for(i=0; i<strPidList.length; i++) {
			CartProduct product = new CartProduct();
			product.setPid(Integer.parseInt(strPidList[i]));
			product.setStock(Integer.parseInt(strStockList[i]));
			//list.add(product);
		}
		
		//detailViewService.addToCart(list);
		return "redirect:/order";
	}
}
